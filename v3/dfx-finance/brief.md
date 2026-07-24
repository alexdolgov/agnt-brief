# Agentic Audit Brief: DFX Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: DFX Finance (`dfx-finance`)
- Website: [https://docs.dfx.finance/](https://docs.dfx.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 356 unique implementations (478 raw deployments)
- Coverage basis: 0/40 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $106,814.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for DFX Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across arbitrum, base, ethereum, polygon. Structural roles: 32 unclassified, 5 supporting, 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: unclassified (32), supporting (5), core (3)
- Contract kinds: contract (40)
- Detected standards: erc165 (3), erc20 (3)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

2 of 120 contracts are derived from known codebases. 118 contracts have no detected origin.

### Forked Contracts

**Curves** (`0xb397946634f30c51da0d38e7dcbb10363e50961e`, chain 1)
Origin: dfx-finance (`0x0dc8c8...d07ed4`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Swaps** (`0x0dc8c87340fb9cf95ba687852e04bddf08d07ed4`, chain 1)
Origin: xave-finance (`0x20e1d8...1ef8b0`)
Containment: 76.5% - 13 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- deposit(uint256,uint256,uint256,uint256,uint256,uint256)
- setAssimilator(address,address,address,address)

Removals (removed from original):
- depositWithWhitelist(uint256,address,uint256,bytes32[],uint256,uint256)
- isWhitelisted(uint256,address,uint256,bytes32[])
- setCap(uint256)
- turnOffWhitelisting()

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0a62a05cd19cdf1065bb92d3a885470b920b7bb7`, chain 1)
- UnnamedContract (`0x16eff9cc584eb95bdfe4584cc90de57f30759ed1`, chain 1)
- UnnamedContract (`0x18900ef687bb37dca9ad228dbef2f938596b162e`, chain 1)
- UnnamedContract (`0x1e07d4dad0614a811a12bdcd66016f48c6942a60`, chain 1)
- UnnamedContract (`0x32b3737e05226c837f24ed8b6c5970966a48f7f7`, chain 1)
- UnnamedContract (`0x38f818fcd57f8a1782bbcc1c90cb0fd03e7f0bd1`, chain 1)
- UnnamedContract (`0x45c38b5126eb70e8b0a2c2e9fe934625641bf063`, chain 1)
- UnnamedContract (`0x49afb348c5db7c72f0c6ef548562eead34e8c720`, chain 1)
- UnnamedContract (`0x4b0d7530f5ab428abac06fa92163f00de89f7d27`, chain 1)
- UnnamedContract (`0x512c1d73c2c3b68fdc0424ebb6ed4734984cd20d`, chain 1)
- UnnamedContract (`0x520b0284bcd3fb0ba427df1fcd1de444c7c676a5`, chain 1)
- UnnamedContract (`0x58a8e0e6069ad4ee521be15b46f8e499fd389222`, chain 1)
- UnnamedContract (`0x5a8a83fc252ef0f11fccfe5b3c8e06e722bcf160`, chain 1)
- UnnamedContract (`0x64423386b619e0f50f2619a67070688edbda80b7`, chain 1)
- UnnamedContract (`0x7401b86b25a32b822bece417d07fd71fc586b80a`, chain 1)
- UnnamedContract (`0x7611f64bdb95077c9e9e6f9ad9a1e7abfbd2b4a7`, chain 1)
- UnnamedContract (`0x778bd1f343f3294e6685cd2457946ab106219017`, chain 1)
- UnnamedContract (`0x7c5702403af7e0ee054f10683b02e8d6da6f70ac`, chain 1)
- UnnamedContract (`0x7d1ba2c18cbde0d790cc1d626f0c70b3c13c9eec`, chain 1)
- UnnamedContract (`0x814a90726fb9f7cf7566e28db634ff5fa959ceb1`, chain 1)
- UnnamedContract (`0x85e9690c2d4c6cae31d96f9b5afe6d111d165157`, chain 1)
- UnnamedContract (`0x8cd86fbc94bebfd910caae7ae4ce374886132c48`, chain 1)
- UnnamedContract (`0x978e49f33e2c07a4d1918e95b58ac13f61ee8aa4`, chain 1)
- UnnamedContract (`0x9adeac3b6d29d9d5e543b8579e803a7cce72c9cd`, chain 1)
- UnnamedContract (`0x9afd65013770525e43a84e49c87b3015c2c32517`, chain 1)
- UnnamedContract (`0xa2bc5552a5a083e78ec820a91e97933133255572`, chain 1)
- UnnamedContract (`0xab44c9482db0fe517705d6df72f949d5eea91c3f`, chain 1)
- UnnamedContract (`0xacc5dca0b684f444bc6b4be30b95ca7d928a4b9c`, chain 1)
- UnnamedContract (`0xb0de1886dd949b5dbfb9febf7ba283f5ff87c7eb`, chain 1)
- UnnamedContract (`0xb1acc32a8ad25906cb368387df0c62759082e715`, chain 1)
- UnnamedContract (`0xb63398a968454f0a6665a42667977c6d86d89d67`, chain 1)
- UnnamedContract (`0xb7db2f8d25c51a26799be6765720c3c6d84cd2f2`, chain 1)
- UnnamedContract (`0xbe5869c78668b2c49c571005f3754a92472d9e1b`, chain 1)
- UnnamedContract (`0xbfa98e686ea480f6dabd82519d15cb65c664fe7f`, chain 1)
- UnnamedContract (`0xc147cee0f6bb0e56240868c9f53ae916d3b86073`, chain 1)
- UnnamedContract (`0xc4c879a66128ee434e5d576f8409ff540e23809e`, chain 1)
- UnnamedContract (`0xce2b8e0c196b7f9297a9c168dfe1a97768297835`, chain 1)
- UnnamedContract (`0xda9dcc7fd51f0d9aa069a82647a5f3ba594edaed`, chain 1)
- UnnamedContract (`0xe15d4757fa0afa3f6ed0752aff7bd776127e0045`, chain 1)
- UnnamedContract (`0xe2550759f8b57b95c2650d17c169bc3009ec750a`, chain 1)
- UnnamedContract (`0xe3358f654df1955c1735460e5b4188bfb8bedb6a`, chain 1)
- UnnamedContract (`0xe7006808e855f3707ec58bdfb66a096a7a6155e1`, chain 1)
- UnnamedContract (`0xe96917b84e9f7d5abc8d341b7f0ee82f7721dac0`, chain 1)
- UnnamedContract (`0xee309d1c4dcd289ee93ebd456e491d51539503e4`, chain 1)
- UnnamedContract (`0xee499d42a88af0ae665347d3e797515a56a4e799`, chain 1)
- UnnamedContract (`0xf10d0eaea98bd5aed3654848a2c0ef7d837c114b`, chain 1)
- UnnamedContract (`0xf4470c9360dd1cc7a03d3b7ba44f285d99857292`, chain 1)
- UnnamedContract (`0xf8053a18bd7a608e54e3694fe042702ca560d1a3`, chain 1)
- UnnamedContract (`0xf866aca6dc860e088045cbb5ee9ea48744ee2b48`, chain 1)
- UnnamedContract (`0xfa96a8e4b4121f1bb32e116824ad0bdf91a55c38`, chain 1)
- UnnamedContract (`0x09bc21344d499be68a64a8e61845eb3a4f5e334e`, chain 137)
- UnnamedContract (`0x0bfa2f59682811d22b39810005886ea1b1bf36cc`, chain 137)
- UnnamedContract (`0x10c47bbca5a1c35a13d3ea2eac43fba14da6ffa9`, chain 137)
- UnnamedContract (`0x112cd00bb9ae305057799a02d6a9eac8421f0243`, chain 137)
- UnnamedContract (`0x210b640328d7089f67fdaa2cc0bad944fb8328f4`, chain 137)
- UnnamedContract (`0x2385d7ab31f5a470b1723675846cb074988531da`, chain 137)
- UnnamedContract (`0x2b2e46507c87d32476777182635e993932f099f8`, chain 137)
- UnnamedContract (`0x3591040ce5df8828b3ed4ec39d030f832d43fd53`, chain 137)
- UnnamedContract (`0x45e95e17ec184a825110c651c940d71f8b3c90dc`, chain 137)
- UnnamedContract (`0x4b36791e5dd82d1f004d75c70c3a4ec947b05d0e`, chain 137)
- UnnamedContract (`0x5c277fa56f1dc3c0fcfaa834d0b628b9c1379f24`, chain 137)
- UnnamedContract (`0x6691fa63aa1d7e422dc5d19c9b04f25909fde966`, chain 137)
- UnnamedContract (`0x6b6cf32ddfe8ff68ece1185b27d9e26b583c4199`, chain 137)
- UnnamedContract (`0x73ce2a29d0ed41e8172154ceabf8ee7abba382a9`, chain 137)
- UnnamedContract (`0x7b95c61f05e9720b778e81d8794f0f5dca704d1a`, chain 137)
- UnnamedContract (`0x87cb8083995645e7c7a1548872f26fc616949222`, chain 137)
- UnnamedContract (`0x901b188dccf0e0cee168b21a0dd416f323e902a2`, chain 137)
- UnnamedContract (`0x9cf4e0da7dc2200ad4b936beddb8345f349cf37f`, chain 137)
- UnnamedContract (`0xa97a67549e739a9d738a9f272fadab0aff05355e`, chain 137)
- UnnamedContract (`0xaab708fbd208ac262821e229ded16234277b2b13`, chain 137)
- UnnamedContract (`0xab504470b6d716023c86df258979b1c7d5713d77`, chain 137)
- UnnamedContract (`0xb53901a1aad3aed655173f0b4a003b8bbdbf9003`, chain 137)
- UnnamedContract (`0xbc408da6a7237682c8672ef7a66aff09a9069b15`, chain 137)
- UnnamedContract (`0xca2cc643227ff2d362ec830be0e16514556e32ec`, chain 137)
- UnnamedContract (`0xd3cfe9a23ac0a7e9880892ddfaa1eba61009d09b`, chain 137)
- UnnamedContract (`0xd3d3d6b9e86028b944edf85331e6dd907a13df7d`, chain 137)
- UnnamedContract (`0xd4c87d251ae76e83fdd7e3931a454b08c92cc215`, chain 137)
- UnnamedContract (`0xd82ced36d81f3e5d28be7f2f5e515ef943d870a0`, chain 137)
- UnnamedContract (`0xe5ce84bba5b27ccfb7d92cb3e1426d8a986854dd`, chain 137)
- UnnamedContract (`0xf626acb046cc03ec45acff7f02792044cc225fe4`, chain 137)
- UnnamedContract (`0xfe1128e43580b3df1e7042e0586c9179c3a416dc`, chain 137)
- UnnamedContract (`0x0c84e1265aec391ce7f867573d9cc2ae1314d0af`, chain 42161)
- UnnamedContract (`0x2a22a524337c7fa74a121471834981e4fd6e6a5e`, chain 42161)
- UnnamedContract (`0x2b28e826b55e399f4d4699b85f68666ac51e6f70`, chain 42161)
- UnnamedContract (`0x3c3badfbf97ec7caebff761694dd642f2c8b11e8`, chain 42161)
- UnnamedContract (`0x3c48b93c4c1d77a76e28a30bcdac7b317d78faba`, chain 42161)
- UnnamedContract (`0x4c8411c5bba98223297388798d6d04ea6da7728a`, chain 42161)
- UnnamedContract (`0x52257e7e7617374c1f0981bb17dd115c2f382a74`, chain 42161)
- UnnamedContract (`0x78b8d9ed56812cf932851edee4e1c2294cf462f5`, chain 42161)
- UnnamedContract (`0x7e5739244940cd3c8137ba90b6eb0c139da5f35c`, chain 42161)
- UnnamedContract (`0x8dc15673477fc356db21ad8224db41123d3f8ce8`, chain 42161)
- UnnamedContract (`0x8f9775afb5ec8283d1648822c062869d8283f77b`, chain 42161)
- UnnamedContract (`0x9544995b5312b26acdf09e66e699c34310b7c856`, chain 42161)
- UnnamedContract (`0xb3151ae4e44a3f145f40fab1306e6652e2f9837c`, chain 42161)
- UnnamedContract (`0xb48ccfce88e7e321e4a582b62844d814cf092ad1`, chain 42161)
- UnnamedContract (`0xb8af0e22e605c72944772a2440e4cfd8750addf8`, chain 42161)
- UnnamedContract (`0xbfa98e686ea480f6dabd82519d15cb65c664fe7f`, chain 42161)
- UnnamedContract (`0xc63c6bfe1e7efccfadcb2eb4a0fd3b1b0e659e55`, chain 42161)
- UnnamedContract (`0xc72d590bef51e24f0e4eb1b1a11654ae75f93bdf`, chain 42161)
- UnnamedContract (`0xccf12d3a5b6eafe47c5ca9b23091d86db5878129`, chain 42161)
- UnnamedContract (`0xcd8a5ea5c44a231cb42f13056f55c65af32cb565`, chain 42161)
- UnnamedContract (`0xde9c71503648c03f529305e03d259f2eba9c8fde`, chain 42161)
- UnnamedContract (`0xe15d4757fa0afa3f6ed0752aff7bd776127e0045`, chain 42161)
- UnnamedContract (`0xe6c74a83d2b8d1b6a1b46d499cf274dfba647ad3`, chain 42161)
- UnnamedContract (`0xe8ccd43bb84c0c4f39f3c9629f7dd77a5fd38bd5`, chain 42161)
- UnnamedContract (`0xe96917b84e9f7d5abc8d341b7f0ee82f7721dac0`, chain 42161)
- UnnamedContract (`0xf6a1775ccfdfe2c37b3375798a3cf3b7ded4532d`, chain 42161)
- UnnamedContract (`0xfbdf837b5c6bdf86b57f8ed44e05e8a5da3a094e`, chain 42161)
- Router (`0x0bf90521ebd840947845f4466018456aab08bb09`, chain 1)
- Router (`0x9bba6805f25b35bdf65e50a42015369e7825428e`, chain 1)
- Router (`0x575f1ed1e14ac1152bf2f1cdfb2c1865ca246f51`, chain 137)
- Router (`0x5cf6d43e4cd920fc7754926a267d46e096baa168`, chain 137)
- Router (`0xbc3011980ff3462980a8ebc49d8c6585e4624406`, chain 42161)
- StakingRewardsMulti (`0x6e87a3b9e0a9de58b3c5fa81c93461e82ee04e7b`, chain 137)
- StakingRewardsMulti (`0x6f1b9bbd779286b39a19bb6afba914354365169c`, chain 137)
- StakingRewardsMulti (`0xa1fcb23ce4f0aaea0de82b2a34c86fcc17d259fd`, chain 137)
- StakingRewardsMulti (`0xba6f70c3dbcf712fa946a0c527c57ef7b654e2d5`, chain 137)
- Swaps (`0x5a0b0b891aeec2afbefd094938b40eab5ae2db61`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 40; live-surface rows included: 40 (40 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 148/148 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/40 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 148 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 208 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 148 of 356 unique; 208 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/66
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 290
- Unique implementations: 356
- Raw deployments: 478
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssimilatorFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383860 | `0x65071363538824f18a0261200843f03f7293757a` | ⚠️ Unaudited |
| AssimilatorFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383891 | `0xde9c71503648c03f529305e03d259f2eba9c8fde` | ⚠️ Unaudited |
| AssimilatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 14 deployments: ethereum `0x14684c1139c7238d9fb4f9a16019d45ee7ef753d`; ethereum `0x275757b9d16f20a8bb776828e2b6b9eea1fa2300`; ethereum `0x583ef72807095cd68ffde9a764cf73df401cb772`; ethereum `0x74caafa85447d893b08c4f5bf0a722561f380687`; polygon `0x03df87a207a73e9f4e96c7f3546d25e187babd97`; polygon `0x1134daeaa652e11360631e3cc93e688204d9354b`; polygon `0x3eba4ae4699cf5518bfc8f8401ed94c4a95444c6`; polygon `0x5c690559a6a4d2fd1c7fd18442423e078e6da105`; polygon `0x60d9dacc26280c79b14739a141819f641681d03a`; polygon `0x6df563d3cb5ba31e6ff2f753ecd60c52e61b7e38`; polygon `0x6fa11a01c00d62bf0ab8aa76bec9105bf952cded`; polygon `0x749e13d4c04d98292174e5006c85186b9e9f6628`; polygon `0x7e5739244940cd3c8137ba90b6eb0c139da5f35c`; polygon `0xfb20d3c2dd6cf44c2c1e6d8c8bd9b353257e4e50` | ⚠️ Unaudited |
| AssimilatorFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-383916 | `0x3a3f59467880bd9cabe680e46b23e456b8d903ff` | ⚠️ Unaudited |
| AssimilatorFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-383954 | `0xff6ab33c1ab250e030fbec45a6ac0a017864818e` | ⚠️ Unaudited |
| AssimilatorFactory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383958 | `0x1134daeaa652e11360631e3cc93e688204d9354b` | ⚠️ Unaudited |
| AssimilatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd18405163f6c928a1508b442b76a5135883024` | ⚠️ Unaudited |
| CadcToUsdAssimilator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12310b7726eae2d2438361fd126a25d8381fe891` | ⚠️ Unaudited |
| Config | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7`; ethereum `0x4ba227405f65dd83af6c2a502bd828ee22597869`; ethereum `0x5f91831b5606605c95e1b7078921265defd5f5e6`; polygon `0x1d80d6e0083b48e54f9c336e183631ea822b35ad`; polygon `0x359b23de83b2c90139996ac0e9e5d4709b69c4ec`; polygon `0x393a33412fbfbccb59b6eebb2d05aaa5e62cadca`; polygon `0x49077e0aea32711ed206678f01f9961f6e2bf531`; polygon `0x68a2abd67b5929892fdcff251a1a64abe5e8d50f`; polygon `0x74982d2fd25ca0e0dee702e40affd93bae04d3a6`; polygon `0x7fa0071664d6e344dbadeccee101e3ba9e448543`; polygon `0x9ddb041c7545d1f644aa57b5b828e8a6c879a11d`; polygon `0xf710a9efcb9dbcd1c20cc961652d5b0a2777c941`; polygon `0xfc7b7795aa5d8a813b9bbf4d7f2cc05df5aa843a`; arbitrum `0x74982d2fd25ca0e0dee702e40affd93bae04d3a6` | ⚠️ Unaudited |
| Curve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x3fb5e30d3ce5f3f194c90a2689b1fd20c82f1637`; base `0x86fffd464875581a0f4b7b2ea1187c74c6fb9fba`; base `0xc015f66ad7780df4d73f99c5cee415eb6b26acb0` | ⚠️ Unaudited |
| Curves | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383880 | `0xb397946634f30c51da0d38e7dcbb10363e50961e` | ⚠️ Unaudited |
| DFXSnapshot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x95e9208771ef6e46c07f0089324ccebbc07c1dea`; ethereum `0xb77684c5a62464c5fb0d9478efe629e94ef8d3ed` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe328208da684e2da63dc27837869e33507dd0ae` | ⚠️ Unaudited |
| EursToUsdAssimilator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39f45038d763dd88791ce9bde8d6c18081c7d522` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42` | ⚠️ Unaudited |
| IDRX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x18bc5bcc660cf2b9ce3cd51a404afe1a0cbd3c22`; base `0x36aa37a29378cd3fe12fa67b7e1f0a7558ec8693` | ⚠️ Unaudited |
| MC2Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd675972cba7969dd173f457872478cd6ed3749c7` | ⚠️ Unaudited |
| MerkleDistributorWithRecover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0d3ea9faa63ee87d6eb901759c18fa0a10c37f35`; ethereum `0x38f4a25cda1bbd72b7fe64e4a6d1486cc25cea19`; ethereum `0x597f028008fbbf3bd66854760d6daf5ed5a02ef0`; ethereum `0xa190fdded25fd4f997258987b2b45c847b700316` | ⚠️ Unaudited |
| NzdsToUsdAssimilator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x583af720640e95a32a2e7973596add2e67a3cb34` | ⚠️ Unaudited |
| OFTAdapterV1Decimal2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf75f1e19912352e1ad8c8ce9577381c277d232d0` | ⚠️ Unaudited |
| Orchestrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383846 | `0x1190da269ffe6f4567fed0c3c9bba01f88372254` | ⚠️ Unaudited |
| Orchestrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383883 | `0xbc875fac17a1334a340e8ea7035368d6c8d8222e` | ⚠️ Unaudited |
| Orchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 9 deployments: ethereum `0x5c690559a6a4d2fd1c7fd18442423e078e6da105`; ethereum `0xa0f599414c0f66e372200b16e9533c9c9e777fdd`; polygon `0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7`; polygon `0x3bd0e9716bfa3bc0e755046f6893fcf78d34fe3c`; polygon `0x425fa6974dcad050e401f795ac1332c5f8ce94a9`; polygon `0x74caafa85447d893b08c4f5bf0a722561f380687`; polygon `0x876bb32f32b4fcd3bf7a83af04340c6ec0cc3409`; polygon `0xd0562cd2af6d1d2c78fc5a52e57620c41b517277`; polygon `0xd3773e7ccdc2fa9aafdffb741544248af5bfe1e1` | ⚠️ Unaudited |
| Orchestrator | unknown | project_anchor | own_supporting | 0 | polygon | unit-383910 | `0x11654bb1e4bc79894e4447545af6c1630b56921f` | ⚠️ Unaudited |
| Orchestrator | unknown | project_anchor | own_supporting | 0 | polygon | unit-383924 | `0x6b5debc22960ece445f787f9cddb0508fc3f2bf4` | ⚠️ Unaudited |
| Orchestrator | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383957 | `0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7` | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x03416eed4ecd6ecdf95ac106ca0572469d18b5cb`; ethereum `0xc706884898f9ffd13c204dc8d9af2a87c647c13b`; ethereum `0xc7f49e9b4991663cb3d216de351843dbd12eb7ca`; polygon `0x1fa99c42775db6f4829fae22e24772bee7116323`; polygon `0x3f9414fb09f9ab3de99606ac20c4eb64786d0d21`; polygon `0x85e9690c2d4c6cae31d96f9b5afe6d111d165157`; polygon `0x8baf5fea3a13c2702bbb4491333132d80fc45cea`; polygon `0xc7da9f5bda76e2c62d3455bc18e836032fe87945`; polygon `0xcd743a1cbeda7e6606215689e8ab2ee283a5c58c`; polygon `0xf524f967fa5d9f46c29f4bc3cf2c7f338ff26f4f` | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383842 | `0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0` | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383867 | `0x809423ef4e30f58a9334e695cc3815ae706182f3` | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | project_anchor | own_supporting | 0 | polygon | unit-383915 | `0x3a2f9e9cdc6791c52dbb79dd271bd02817082379` | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | project_anchor | own_supporting | 0 | polygon | unit-383930 | `0x85fa8b9df88cbfbeada955bff4a7337b27151dbd` | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383969 | `0x85e9690c2d4c6cae31d96f9b5afe6d111d165157` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | ethereum | unit-383843 | `0x0bf90521ebd840947845f4466018456aab08bb09` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | ethereum | unit-383874 | `0x9bba6805f25b35bdf65e50a42015369e7825428e` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 9 deployments: ethereum `0x9d0950c595786aba7c26dfddf270d66a8b18b4fa`; ethereum `0xa557373168c1914422b669cbaf9145b225066a7f`; ethereum `0xc7da9f5bda76e2c62d3455bc18e836032fe87945`; ethereum `0xf04d98dbb50884250be010f25c2650579552b51b`; polygon `0x142e17a35ebdda78ac86ce5c0ae4a85d5c2dc1e6`; polygon `0x5131dac921a133f8a297dcb1a7545b2db8d6370a`; polygon `0x911073ad69875090152b3fd767d750cf5002193f`; polygon `0xb4802e1805558dac082eba2771f93bbb981e5549`; polygon `0xe325dc2c5968105b63c2db75333126a66fdf7345` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | polygon | unit-383919 | `0x575f1ed1e14ac1152bf2f1cdfb2c1865ca246f51` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | polygon | unit-383922 | `0x5cf6d43e4cd920fc7754926a267d46e096baa168` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-383976 | `0xbc3011980ff3462980a8ebc49d8c6585e4624406` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x2f9575851a373a86a481d4170f1cd20194c348c2`; ethereum `0x58c88f583b26f59215f43633f4181f210379226e`; ethereum `0x5eaaeff69f2ab64d1cc0244fb31b236ca989544f`; ethereum `0x84bf8151394dcf32146965753b28760550f3d7a8`; ethereum `0xd09607e80936f6abf35eee75e77115a93a5fe9d5`; ethereum `0xd52d48db08e8224ef6e2be8f54f3c84e790b1c32`; ethereum `0xddb720069fdfe7be2e2883a1c06be0f353f7c4c8`; ethereum `0xe06fa52e0d2d58fe192285bfa0507f09cdd9824a`; ethereum `0xe690e93fd96b2b8d1cdecde5f08422f3dd82e164` | ⚠️ Unaudited |
| StakingRewardsMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 20 deployments: polygon `0x071fff5d7c410203a6716b8dd7a5057361f87f51`; polygon `0x0dc8c87340fb9cf95ba687852e04bddf08d07ed4`; polygon `0x2d0ff6105766d673d50e7d2e3f4ffa3546b4eb7e`; polygon `0x3aa383af6bf83a8b824b2ce3c03bbbb1c003a32a`; polygon `0x4ba227405f65dd83af6c2a502bd828ee22597869`; polygon `0x5646c3122b67203ca39f33d3ff20abe3ad2413fd`; polygon `0x649e074b9983406d6e2a197fdfff555595fb8f4e`; polygon `0x65071363538824f18a0261200843f03f7293757a`; polygon `0x706e5060c1570d5e43512316471d31057d21764d`; polygon `0x809423ef4e30f58a9334e695cc3815ae706182f3`; polygon `0x825357ba11c73579edc3d087e022c63a2514d462`; polygon `0x95a9e4b1a19936c20ec0d8368f6c4fcef852d882`; polygon `0x9adeac3b6d29d9d5e543b8579e803a7cce72c9cd`; polygon `0xbc875fac17a1334a340e8ea7035368d6c8d8222e`; polygon `0xc7a1dad538ab69f571668ef7750226f7e76be3a0`; polygon `0xc93fe43fa88d40e8ca9e8ac41f83ba5205201f44`; polygon `0xd9184bb1ea0f04cfbdb1aef2629234c0f4f66577`; polygon `0xe45d26a0dd727879fa3dd9e9433b8aa51b975278`; polygon `0xec98e49657a8024f403894c1f27bddb145c2decd`; polygon `0xf825968d6b6160fdf40d0e178d81c2c3db4190b2` | ⚠️ Unaudited |
| StakingRewardsMulti | unknown | project_anchor | own_supporting | 0 | polygon | unit-383926 | `0x6e87a3b9e0a9de58b3c5fa81c93461e82ee04e7b` | ⚠️ Unaudited |
| StakingRewardsMulti | unknown | project_anchor | own_supporting | 0 | polygon | unit-383927 | `0x6f1b9bbd779286b39a19bb6afba914354365169c` | ⚠️ Unaudited |
| StakingRewardsMulti | unknown | project_anchor | own_supporting | 0 | polygon | unit-383935 | `0xa1fcb23ce4f0aaea0de82b2a34c86fcc17d259fd` | ⚠️ Unaudited |
| StakingRewardsMulti | unknown | project_anchor | own_supporting | 0 | polygon | unit-383942 | `0xba6f70c3dbcf712fa946a0c527c57ef7b654e2d5` | ⚠️ Unaudited |
| Swaps | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383844 | `0x0dc8c87340fb9cf95ba687852e04bddf08d07ed4` | ⚠️ Unaudited |
| Swaps | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383862 | `0x74982d2fd25ca0e0dee702e40affd93bae04d3a6` | ⚠️ Unaudited |
| Swaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 9 deployments: ethereum `0x2b2bfe80547f50e1a67bbf0d52c24e0683f67b6d`; ethereum `0xe35d0d2d4e0cba78c31806998a3af1862a681c26`; polygon `0x1190da269ffe6f4567fed0c3c9bba01f88372254`; polygon `0x29364aadb9e70ad603e6f677f06b28cf696fce4e`; polygon `0x2cd18405163f6c928a1508b442b76a5135883024`; polygon `0x47fa06909bc39739201591e20523a52e4142dd2b`; polygon `0x50e5f616598c8eae1fea9c4337987d2fc1723636`; polygon `0x6d0ac92ca8dc4a76f1d7d98e702bb2f7d08543ec`; polygon `0x9bba6805f25b35bdf65e50a42015369e7825428e` | ⚠️ Unaudited |
| Swaps | unknown | project_anchor | own_supporting | 0 | polygon | unit-383920 | `0x5a0b0b891aeec2afbefd094938b40eab5ae2db61` | ⚠️ Unaudited |
| Swaps | unknown | project_anchor | own_supporting | 0 | polygon | unit-383936 | `0xa49bf76606a82e75b9d6769ced0aa1b4cd8e5ecd` | ⚠️ Unaudited |
| Swaps | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383959 | `0x1190da269ffe6f4567fed0c3c9bba01f88372254` | ⚠️ Unaudited |
| TimeLock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x30d940c7b4a21e10f3fcaf4faabe8fe826a5b92d` | ⚠️ Unaudited |
| TrybToUsdAssimilator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3664456ae047f8f3e2c256b1a30780516c406f4` | ⚠️ Unaudited |
| UsdcToUsdAssimilator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3cb209dc9ddc45ce4fd9a2f5dd33a8c6a9b6ea52`; ethereum `0xab23b50fc7835d0f1b892746992f28646305306c` | ⚠️ Unaudited |
| ViewLiquidity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383845 | `0x1134daeaa652e11360631e3cc93e688204d9354b` | ⚠️ Unaudited |
| ViewLiquidity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383903 | `0xf825968d6b6160fdf40d0e178d81c2c3db4190b2` | ⚠️ Unaudited |
| ViewLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 9 deployments: ethereum `0x2633652933e6318edec9a510bcaeb6f47150284b`; ethereum `0xe553c6c9e3c8bf66f396a3bfe88e4ff4c8ef2fbb`; polygon `0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0`; polygon `0x1123e6b7dd33beafbaeaaabd0a5f920113284d2e`; polygon `0x2e28f70b3ac5932c82623145481a3662928c6b14`; polygon `0x7c799d864ab0ed9a30f4bc0f66884602aae1d7bb`; polygon `0x9166d82e2d3c2c25850c3df0bb21518db44ab9c6`; polygon `0xe0e43558b4d0f71d16f4f5cd9e11e026bba48f95`; polygon `0xf3cc0702493d394323187f330830b7bf0a9b545d` | ⚠️ Unaudited |
| ViewLiquidity | unknown | project_anchor | own_supporting | 0 | polygon | unit-383947 | `0xd3f216db1e43ebae3c1d3fe35853e81fbc845cbc` | ⚠️ Unaudited |
| ViewLiquidity | unknown | project_anchor | own_supporting | 0 | polygon | unit-383949 | `0xd6af8d8bf04104f9b0f9f20b863e60d8f9b3e6f0` | ⚠️ Unaudited |
| ViewLiquidity | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383955 | `0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0` | ⚠️ Unaudited |
| XsgdToUsdAssimilator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe36ded0af2929870977f05a1f017bab6cf8190f8` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 21 deployments: ethereum `0x0c84e1265aec391ce7f867573d9cc2ae1314d0af`; ethereum `0x0e1532173120b81226eaf012c553267c0f5346ff`; ethereum `0x3c380dc5bb35d095972d0d6ca7c302f915d1d080`; ethereum `0x607690f749fadb8fb87fc01f6dbdee277eea5fdf`; ethereum `0x64d65e3d70ba0f8812a9d1d7b8b5c51dab78cd15`; ethereum `0x6fa11a01c00d62bf0ab8aa76bec9105bf952cded`; ethereum `0x7c1f74c9dd441e5954d25096693ae6e67050d308`; ethereum `0x8955300082645728e2c2e5c75d8ceb82e51adf56`; ethereum `0xbb3aef24b2dd80ecfc866f381ce3f2a4a5a4e399`; ethereum `0xefe8f6ba38ca707ce0aca62f00596314d64a6e74`; ethereum `0xf0572e2bf615911656616170b8d12436abfece0e`; polygon `0x1687f015321eacd48606db96d2895eac36523a18`; polygon `0x18c751767e0e7cb1fce69fff77700b06e441c304`; polygon `0x2420d5b50c268c20f6edb34df93ced68f57cf493`; polygon `0x659b4ca6e603a19dd20434bccf79a5f36473a9a4`; polygon `0x77527e4450236d2e429d667c23cda4a88c304f21`; polygon `0x81c1f4739ad6a5d44fa17e88aeec563bed9fe958`; polygon `0xfcb58a28017530aa40a43719184a026fc82a648f`; polygon `0xfd2c0ed6326130d1923d81674c8cfd7034435f29`; arbitrum `0x17ff40a68fe98aaafe199931888bffb692a25320`; arbitrum `0x60b818c16795ac1caee5f555f64891e896757771` | ⚠️ Unaudited |
| Zap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383887 | `0xc470d3bd46e1fb0536714b7141bd122d132e5ec7` | ⚠️ Unaudited |
| Zap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383900 | `0xf3cc0702493d394323187f330830b7bf0a9b545d` | ⚠️ Unaudited |
| Zap | unknown | project_anchor | own_supporting | 0 | polygon | unit-383934 | `0xa070fb11969a50aacc885b7b5245cbc84de2214c` | ⚠️ Unaudited |
| Zap | unknown | project_anchor | own_supporting | 0 | polygon | unit-383941 | `0xb6c42f1dd6fdd0f44ed669f6c14c05cab0bf482b` | ⚠️ Unaudited |
| Zap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383964 | `0x3e1941aa6d077262373c9fc1f29775e8e01bf083` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (290)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020e1688ced40fd93f7ce12635700ba02150bfa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05783d5ccfe87678b6fea6bb2c3ed4927d03f08b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07d1ffdcf06e32edd964e15bcad59badde6c7d08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383841 | `0x0a62a05cd19cdf1065bb92d3a885470b920b7bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ac9bef7f5d59dfe0bba3a8d97e456a99f11f257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ee2c90746110ce2c13b44cc779b7232cf127a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f0accbc8e386a40ebab5bf376101367e6f9d64e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383847 | `0x16eff9cc584eb95bdfe4584cc90de57f30759ed1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383848 | `0x18900ef687bb37dca9ad228dbef2f938596b162e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dbfc9bacdc2925eb412672de1d639c667dad41f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383849 | `0x1e07d4dad0614a811a12bdcd66016f48c6942a60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2014ce7b64ce6c2c4b9e7289db430823412cc8ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2635eac0197638d0534f9db6aaf439dffe7cff4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a22a524337c7fa74a121471834981e4fd6e6a5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c7275dc37dd9799776a7d8a121df338738d0bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cb1140ccf67236a38ae4ef15eff8b560639b979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dd1e3ed087722d04b8852619c4c6954d59038b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31696bdbcd03fb06b1f62dd0dede9b25af2f3160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3217f129e2ac70df0ba2919f467faf16afed0e9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32b1e7ca34d1c1a28701ce731b4d2845152197b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383850 | `0x32b3737e05226c837f24ed8b6c5970966a48f7f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34af386106e1b6b4e229980772eb7134363710e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363f4f43d63446dc0881b4666675f404fdefd42b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383851 | `0x38f818fcd57f8a1782bbcc1c90cb0fd03e7f0bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39d606e5e7c51f4ebac9215acc63fe106f382564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bc9016ec6daac5ac474de1ae3bfdc3c28e724bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c56a223fe8f61269e25ef1116f9f185074c6c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d0bffc1acc4ca12a4f1cb4ac69895f45176e185` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431808eb31a0c78ff92dab0dde9bd53c32bb951d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383852 | `0x45c38b5126eb70e8b0a2c2e9fe934625641bf063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4600c103c1db1eabcf7342209b3f258011215885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x483b291d35b4215b03a11d75aa22982170d0575a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383853 | `0x49afb348c5db7c72f0c6ef548562eead34e8c720` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383854 | `0x4b0d7530f5ab428abac06fa92163f00de89f7d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c3f97741fd62ac8c8c789ae62fddf6aab7d6fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3e0c5d4b7d4002cd981bf9f70e2433456432a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50d076204d4cca465ccc97f976b295bea450d887` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383855 | `0x512c1d73c2c3b68fdc0424ebb6ed4734984cd20d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383856 | `0x520b0284bcd3fb0ba427df1fcd1de444c7c676a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57e65158f30beae5930b29c84b594b1473123dd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383857 | `0x58a8e0e6069ad4ee521be15b46f8e499fd389222` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383858 | `0x5a8a83fc252ef0f11fccfe5b3c8e06e722bcf160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1c7aec59232e8594ac1565d976b59e4d83fe29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cb2e2961929305d63dbededac39ef34042c4514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cfd640a991253bdb7ed181b0b48ae0a1c10753f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed584b4a2babc2a7e09d91bd2ca036e7d9abfa9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383859 | `0x64423386b619e0f50f2619a67070688edbda80b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71c0ddbf6da72a67c29529d6f67f97c00c4751d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71eb1046607a2496a2fd48ab73d1973ee9fadff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73725cd88c92b67619a8e403e9f8e75ed0de9e32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383861 | `0x7401b86b25a32b822bece417d07fd71fc586b80a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7434f10acf7c7df2b6303442edb16f5c5b8ae6b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x755b70c54055caed71477c4c6543947f1a54bf49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383863 | `0x7611f64bdb95077c9e9e6f9ad9a1e7abfbd2b4a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383864 | `0x778bd1f343f3294e6685cd2457946ab106219017` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383865 | `0x7c5702403af7e0ee054f10683b02e8d6da6f70ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383866 | `0x7d1ba2c18cbde0d790cc1d626f0c70b3c13c9eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e5739244940cd3c8137ba90b6eb0c139da5f35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ffe7048e468b3bf08fd6f6998e34f44883f1923` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383868 | `0x814a90726fb9f7cf7566e28db634ff5fa959ceb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x814cc1b756b2727e2dbe9197b521bde94e1f0a80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8193dcd2369bf94c6f28a181cff9bca38e34bcd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85ad6dcfd14696da299e6a5097dfef0aceae902d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383869 | `0x85e9690c2d4c6cae31d96f9b5afe6d111d165157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86e8c4e7549fbca7eba1aefbdbc23993f721e5ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8846073d63ec30630afd17968deeb734b04f2555` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383870 | `0x8cd86fbc94bebfd910caae7ae4ce374886132c48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dc15673477fc356db21ad8224db41123d3f8ce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f36313af9cb9547672cc555ce2c6e77c9ed8222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f56a51d8d0a8db503fffde91389533941a433a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x951f08c63bf55992039f35e1f62b0562d3206c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9544995b5312b26acdf09e66e699c34310b7c856` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383871 | `0x978e49f33e2c07a4d1918e95b58ac13f61ee8aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x984b4c1fae2b8952cf063a8eb2e80f02641ff49d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383872 | `0x9adeac3b6d29d9d5e543b8579e803a7cce72c9cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383873 | `0x9afd65013770525e43a84e49c87b3015c2c32517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa234498fe6fb0ca18870d895fdea032f47fc8516` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383875 | `0xa2bc5552a5a083e78ec820a91e97933133255572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa45f70ad02445c5c23510e93375021edc591c6d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab208ec4428410af36c698298455b65fb460be73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383876 | `0xab44c9482db0fe517705d6df72f949d5eea91c3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383877 | `0xacc5dca0b684f444bc6b4be30b95ca7d928a4b9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383878 | `0xb0de1886dd949b5dbfb9febf7ba283f5ff87c7eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383879 | `0xb1acc32a8ad25906cb368387df0c62759082e715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb41ab47a724fb24f1dc0e57380411c7fc5cdd00b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb48ccfce88e7e321e4a582b62844d814cf092ad1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383881 | `0xb63398a968454f0a6665a42667977c6d86d89d67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb70ccee4eded08141c25c52f5deb680e5991bd86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383882 | `0xb7db2f8d25c51a26799be6765720c3c6d84cd2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9c445be34e7c5f1055a0bfd5d18245f0d009cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcca5f36426af49a8bd4094326c7b59ee42c03c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383884 | `0xbe5869c78668b2c49c571005f3754a92472d9e1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383885 | `0xbfa98e686ea480f6dabd82519d15cb65c664fe7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383886 | `0xc147cee0f6bb0e56240868c9f53ae916d3b86073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc28423742bb6daf3d9d111a9b3bfa9e8a26c052f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc31cb0ba6de9c01c67d8ccf944320251ce3c99f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383888 | `0xc4c879a66128ee434e5d576f8409ff540e23809e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccf12d3a5b6eafe47c5ca9b23091d86db5878129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383889 | `0xce2b8e0c196b7f9297a9c168dfe1a97768297835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1bb1f6d0c9134f2a421118f7389129480f2026d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9bb8427de9eb6a13204681acbb5cf85d37d15d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383890 | `0xda9dcc7fd51f0d9aa069a82647a5f3ba594edaed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383892 | `0xe15d4757fa0afa3f6ed0752aff7bd776127e0045` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383893 | `0xe2550759f8b57b95c2650d17c169bc3009ec750a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383894 | `0xe3358f654df1955c1735460e5b4188bfb8bedb6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4849852ebd938dadac9f1705f376ffb4ba49e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6c74a83d2b8d1b6a1b46d499cf274dfba647ad3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383895 | `0xe7006808e855f3707ec58bdfb66a096a7a6155e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383896 | `0xe96917b84e9f7d5abc8d341b7f0ee82f7721dac0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383897 | `0xee309d1c4dcd289ee93ebd456e491d51539503e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383898 | `0xee499d42a88af0ae665347d3e797515a56a4e799` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383899 | `0xf10d0eaea98bd5aed3654848a2c0ef7d837c114b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383901 | `0xf4470c9360dd1cc7a03d3b7ba44f285d99857292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf599de56f0dd387cabd49c80c16bcc7528e6a63f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6a1775ccfdfe2c37b3375798a3cf3b7ded4532d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf767088845698616f03673a961af7ab0aff62d9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383902 | `0xf8053a18bd7a608e54e3694fe042702ca560d1a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8389313bb9317fd88692adb657684fa5622b157` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383904 | `0xf866aca6dc860e088045cbb5ee9ea48744ee2b48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383905 | `0xfa96a8e4b4121f1bb32e116824ad0bdf91a55c38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdad1faa0f8ab7342e061040246c2d802b1ceca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0315933970a2e5d30cf23fd02330a2c74c10503b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03727e09916db88ebdf5404a44e8d79e56770488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x041c38a5b26e3ed50eaaad603d02adbf4d297f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x09617d0dd0211dc43365401bcd74a04a9a624569` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383906 | `0x09bc21344d499be68a64a8e61845eb3a4f5e334e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383907 | `0x0bfa2f59682811d22b39810005886ea1b1bf36cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10009b11846776004a5a87025de20e7ee3bc5c17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383908 | `0x10c47bbca5a1c35a13d3ea2eac43fba14da6ffa9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383909 | `0x112cd00bb9ae305057799a02d6a9eac8421f0243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x127c1f0f8a772da96de08fded8e3085f60572191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x134d2cff3ee13fd22625b5f1f72b349fb6ba82c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1451a2c13624ed7a9bbc85b15be8668ef862788f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14684c1139c7238d9fb4f9a16019d45ee7ef753d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2014ce7b64ce6c2c4b9e7289db430823412cc8ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x208555dafd0319efc25b481bb810922e493f27b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383911 | `0x210b640328d7089f67fdaa2cc0bad944fb8328f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x23368c25af4f88f4b20ac559cec7f7fbe1a45560` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383912 | `0x2385d7ab31f5a470b1723675846cb074988531da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2718bd0cee913d9941ba4a5acfcf8bbe6094e789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x273e1beedc3d104252f3cde8490eb3699e8e8c02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x29909f955c39bc908e673062215982cd0344275b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a22a524337c7fa74a121471834981e4fd6e6a5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383913 | `0x2b2e46507c87d32476777182635e993932f099f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c7275dc37dd9799776a7d8a121df338738d0bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2fa66cf0f1c87e9692e2f6e80b91d56d08fc9c4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x31696bdbcd03fb06b1f62dd0dede9b25af2f3160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x350fcc6c2950193764699ffa5bf7f3ba6e5a9967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x357b39222e4da3aafabb227927e424b3b0261362` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383914 | `0x3591040ce5df8828b3ed4ec39d030f832d43fd53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x385bc91e0b5ff072686b7cf45cfa740d50942649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d3708cf6762d7792cf7cf3896b945e7d744716c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4468653cc5f69f0a1031ac7300aef815353dbed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x450270547b9462aa8663c4cf978d63c47893fabb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383917 | `0x45e95e17ec184a825110c651c940d71f8b3c90dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49250f9eba0ba61f8c284f7c9da6db5754e1fe25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a5bb820a07ed593839e305ec5d315cd7facc480` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383918 | `0x4b36791e5dd82d1f004d75c70c3a4ec947b05d0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ca7c417ee8e60e8494a26123a2cce07aad4efe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50d0ddb0d1a8a7e7487aad011371b90a2aa30993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5127a512a8e9961cf7a10a86a1267e7ef4a75653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x538f00dd2daa8a76367ef77ea2672fac26ee8273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57e65158f30beae5930b29c84b594b1473123dd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x583ef72807095cd68ffde9a764cf73df401cb772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b1c7aec59232e8594ac1565d976b59e4d83fe29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383921 | `0x5c277fa56f1dc3c0fcfaa834d0b628b9c1379f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cb2e2961929305d63dbededac39ef34042c4514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x65368954a989cb334e1be6de1c11be8219626569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66028bbbf2b92495fccda5f36113644b5fb1dd1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383923 | `0x6691fa63aa1d7e422dc5d19c9b04f25909fde966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6a4acbe0e58b324efd44e43a4b3d8d8c5b7db68f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383925 | `0x6b6cf32ddfe8ff68ece1185b27d9e26b583c4199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x705bb92341d709fb7f381a5754e5ccea8451b446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x71d1635420de031626c13782620f6c5c1de8ca71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383928 | `0x73ce2a29d0ed41e8172154ceabf8ee7abba382a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383929 | `0x7b95c61f05e9720b778e81d8794f0f5dca704d1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7d3d69c14497a1cbc01f79fff71426a6e6993c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ffe7048e468b3bf08fd6f6998e34f44883f1923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x80e9f62371063574f6e0889874d3f24416c49c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x85ad6dcfd14696da299e6a5097dfef0aceae902d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383931 | `0x87cb8083995645e7c7a1548872f26fc616949222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8dc15673477fc356db21ad8224db41123d3f8ce8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383932 | `0x901b188dccf0e0cee168b21a0dd416f323e902a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x92751a61cf6e7f56c784d40652e605a1448448b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x951f08c63bf55992039f35e1f62b0562d3206c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9616a6a3cdb4e8f44a4b83234041ca8a898e1b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x99063f5da142be6763967a752d53a85232391943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x998814004f9d6ae314ec359b6b5149cd872a98b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c196de629ca01630f2349650a4208a1f638a463` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383933 | `0x9cf4e0da7dc2200ad4b936beddb8345f349cf37f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9cf7306ebce2088570dd1946fed544213fe1d378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e2d9e8b0f96b00be37c1edb97e47b09d6653b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e9f4ce3604ea21c7232ac0d1891f842cecfb74d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f1413d756fba0bcc7fe550f31aead482c3431f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa51c0b378c044c44415ad8f00c2e1152eafe9c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5a3ae034bdda0364cf4a00ea1aee0396467ff2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383937 | `0xa97a67549e739a9d738a9f272fadab0aff05355e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383938 | `0xaab708fbd208ac262821e229ded16234277b2b13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383939 | `0xab504470b6d716023c86df258979b1c7d5713d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac538cfa97034b579c1fc2064ebef12d213afb3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb26665584803fb4ee8222f9adffa6ffb17e886e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb48ccfce88e7e321e4a582b62844d814cf092ad1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383940 | `0xb53901a1aad3aed655173f0b4a003b8bbdbf9003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb90c770becea7f075bbdbae6429dbe0b11f178d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xba9105a36b1a2d6c3543c84ec69ee9a195fd5806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb544711d3847e152f720f6eafc5bf16d12d7bb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383943 | `0xbc408da6a7237682c8672ef7a66aff09a9069b15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf5c7de5f9c6299a8e466c297b230e854b132841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf898856ee32ae2996bd281cca21fcc8143017f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc1b1bdff464a58ab2a45a38a4ff3e275feb6a528` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc31cb0ba6de9c01c67d8ccf944320251ce3c99f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6e2231d6c4c81c4383122b1dcb496c7a2c73db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc98a1f2544dbb48e7c0474381e8c166d77b073e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca1a0c42fde0378505d258aeca711cc6b13daabc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383944 | `0xca2cc643227ff2d362ec830be0e16514556e32ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb301a916daafa3eec47fe37005b60c24576dc8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb75737d0ae0caa9921a2f5104b21009ec352f10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd066e43b367bf3fc5c20bb2be413c98106d4a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd5a683374d87c103cdf8f7ae2581eb236d0109b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd859b3d69f4f255e8e7005df54255cc06cea8a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce91633c24ae6adbefd535a8ed844ca5190bae26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1bb1f6d0c9134f2a421118f7389129480f2026d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383945 | `0xd3cfe9a23ac0a7e9880892ddfaa1eba61009d09b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383946 | `0xd3d3d6b9e86028b944edf85331e6dd907a13df7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd471643919f6bfd718df10b76b4c580f2eb8c48e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383948 | `0xd4c87d251ae76e83fdd7e3931a454b08c92cc215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd616a109c21cc6ca082ac7402ce4c6b2a0b159ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd6782c5ca9c676c209630b3ca1944e902d02cecb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383950 | `0xd82ced36d81f3e5d28be7f2f5e515ef943d870a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb8228a77163b1dfb91b620415524207c6eb8526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdc0f15754747b8ddb5e5370a1f5ce700102d1414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdeb6cc23a87621e449c3a3a889c06014fd269dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf3818a4eef39eb07f3ab69bef8173976aa53aa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfc6205b17ee2f97df47fdbf4c2b4c0bda807678` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383951 | `0xe5ce84bba5b27ccfb7d92cb3e1426d8a986854dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe62331b2f9e1be0f073ca1d5bb2c7318f889e9a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe6c74a83d2b8d1b6a1b46d499cf274dfba647ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe71a96f8b5839986814f885844c19092236fe363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea33748e98783368e5d75e0c0ba3d3e1ca5a394d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec2d6a149cea219607dc99b077b0e2a020ecbb2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec7df682c3bf69c66e368bccba9632da41e4107f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf3c0737fea3292c1c8eb796908488ff17a82f79e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383952 | `0xf626acb046cc03ec45acff7f02792044cc225fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6a1775ccfdfe2c37b3375798a3cf3b7ded4532d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6d960bfc8d29f0e902c981d85cc9882153ca878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd0a4d3213fd3d4424891acc93585361763925a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383953 | `0xfe1128e43580b3df1e7042e0586c9179c3a416dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383956 | `0x0c84e1265aec391ce7f867573d9cc2ae1314d0af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f54a2b462aaf2f37a1c9771c7d9a1d8f9d10a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23613f27ff87b46420c55385260f79b857f9c29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2635eac0197638d0534f9db6aaf439dffe7cff4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29909f955c39bc908e673062215982cd0344275b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383960 | `0x2a22a524337c7fa74a121471834981e4fd6e6a5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383961 | `0x2b28e826b55e399f4d4699b85f68666ac51e6f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31696bdbcd03fb06b1f62dd0dede9b25af2f3160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bc9016ec6daac5ac474de1ae3bfdc3c28e724bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383962 | `0x3c3badfbf97ec7caebff761694dd642f2c8b11e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383963 | `0x3c48b93c4c1d77a76e28a30bcdac7b317d78faba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383965 | `0x4c8411c5bba98223297388798d6d04ea6da7728a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x506f968b70553e1e556a6a80bada5ebd3e32be4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383966 | `0x52257e7e7617374c1f0981bb17dd115c2f382a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x71eb1046607a2496a2fd48ab73d1973ee9fadff0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383967 | `0x78b8d9ed56812cf932851edee4e1c2294cf462f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383968 | `0x7e5739244940cd3c8137ba90b6eb0c139da5f35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85ad6dcfd14696da299e6a5097dfef0aceae902d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383970 | `0x8dc15673477fc356db21ad8224db41123d3f8ce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f36313af9cb9547672cc555ce2c6e77c9ed8222` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383971 | `0x8f9775afb5ec8283d1648822c062869d8283f77b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383972 | `0x9544995b5312b26acdf09e66e699c34310b7c856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x998814004f9d6ae314ec359b6b5149cd872a98b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e2d9e8b0f96b00be37c1edb97e47b09d6653b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae9768c8b71bf9604827cef53d73b5923d0a8752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383973 | `0xb3151ae4e44a3f145f40fab1306e6652e2f9837c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383974 | `0xb48ccfce88e7e321e4a582b62844d814cf092ad1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383975 | `0xb8af0e22e605c72944772a2440e4cfd8750addf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383977 | `0xbfa98e686ea480f6dabd82519d15cb65c664fe7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc31cb0ba6de9c01c67d8ccf944320251ce3c99f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383978 | `0xc63c6bfe1e7efccfadcb2eb4a0fd3b1b0e659e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc6e2231d6c4c81c4383122b1dcb496c7a2c73db3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383979 | `0xc72d590bef51e24f0e4eb1b1a11654ae75f93bdf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383980 | `0xccf12d3a5b6eafe47c5ca9b23091d86db5878129` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd859b3d69f4f255e8e7005df54255cc06cea8a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383981 | `0xcd8a5ea5c44a231cb42f13056f55c65af32cb565` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383982 | `0xde9c71503648c03f529305e03d259f2eba9c8fde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383983 | `0xe15d4757fa0afa3f6ed0752aff7bd776127e0045` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383984 | `0xe6c74a83d2b8d1b6a1b46d499cf274dfba647ad3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383985 | `0xe8ccd43bb84c0c4f39f3c9629f7dd77a5fd38bd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383986 | `0xe96917b84e9f7d5abc8d341b7f0ee82f7721dac0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383987 | `0xf6a1775ccfdfe2c37b3375798a3cf3b7ded4532d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383988 | `0xfbdf837b5c6bdf86b57f8ed44e05e8a5da3a094e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 357
- Live contracts: 35
- Unknown liveness contracts: 322
- Source-verified contracts: 175
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate auto own=3, candidate review=109, contamination review=9, exact address book overlap=4, source verified unclassified=50, unverified unclassified=182

Showing first 200 of 357 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x506f968b70553e1e556a6a80bada5ebd3e32be4d` | non_address_book | unknown | unknown | unverified | n/a | `0x2c8be17f32634e8575065560c00baebdf5ecddbb` |
| arbitrum | candidate review | AssimilatorFactory<br>`0x1134daeaa652e11360631e3cc93e688204d9354b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| arbitrum | candidate review | Orchestrator<br>`0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| arbitrum | candidate review | ProportionalLiquidity<br>`0x85e9690c2d4c6cae31d96f9b5afe6d111d165157` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| arbitrum | candidate review | Swaps<br>`0x1190da269ffe6f4567fed0c3c9bba01f88372254` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| arbitrum | candidate review | ViewLiquidity<br>`0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| arbitrum | candidate review | Zap<br>`0x17ff40a68fe98aaafe199931888bffb692a25320` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| arbitrum | candidate review | Zap<br>`0x3e1941aa6d077262373c9fc1f29775e8e01bf083` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| arbitrum | candidate review | Zap<br>`0x60b818c16795ac1caee5f555f64891e896757771` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| arbitrum | source verified unclassified | Config<br>`0x74982d2fd25ca0e0dee702e40affd93bae04d3a6` | non_address_book | unknown | unknown | verified | n/a | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0f54a2b462aaf2f37a1c9771c7d9a1d8f9d10a6c` | non_address_book | unknown | unknown | unverified | n/a | `0x7bd71d235c8e32ba5590ac5cd699476b700d245d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xae9768c8b71bf9604827cef53d73b5923d0a8752` | non_address_book | unknown | unknown | unverified | n/a | `0x7bd71d235c8e32ba5590ac5cd699476b700d245d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x23613f27ff87b46420c55385260f79b857f9c29a` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x29909f955c39bc908e673062215982cd0344275b` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x31696bdbcd03fb06b1f62dd0dede9b25af2f3160` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3bc9016ec6daac5ac474de1ae3bfdc3c28e724bf` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x71eb1046607a2496a2fd48ab73d1973ee9fadff0` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x85ad6dcfd14696da299e6a5097dfef0aceae902d` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x998814004f9d6ae314ec359b6b5149cd872a98b7` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9e2d9e8b0f96b00be37c1edb97e47b09d6653b8f` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc31cb0ba6de9c01c67d8ccf944320251ce3c99f8` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc6e2231d6c4c81c4383122b1dcb496c7a2c73db3` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcd859b3d69f4f255e8e7005df54255cc06cea8a2` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2635eac0197638d0534f9db6aaf439dffe7cff4e` | non_address_book | unknown | unknown | unverified | n/a | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8f36313af9cb9547672cc555ce2c6e77c9ed8222` | non_address_book | unknown | unknown | unverified | n/a | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| base | source verified unclassified | ElevatedMinterBurner<br>`0xfe328208da684e2da63dc27837869e33507dd0ae` | non_address_book | unknown | unknown | verified | n/a | `0x46d58b6230be4af3dfa7883fffd6a17ba1db2965` |
| base | source verified unclassified | ERC1967Proxy<br>`0x18bc5bcc660cf2b9ce3cd51a404afe1a0cbd3c22` | non_address_book | unknown | unknown | verified | n/a | `0x46d58b6230be4af3dfa7883fffd6a17ba1db2965` |
| base | source verified unclassified | IDRX<br>`0x36aa37a29378cd3fe12fa67b7e1f0a7558ec8693` | non_address_book | unknown | unknown | verified | n/a | `0x46d58b6230be4af3dfa7883fffd6a17ba1db2965` |
| ethereum | candidate review | Orchestrator<br>`0xa0f599414c0f66e372200b16e9533c9c9e777fdd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | candidate review | ProportionalLiquidity<br>`0x03416eed4ecd6ecdf95ac106ca0572469d18b5cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | candidate review | ProportionalLiquidity<br>`0xc706884898f9ffd13c204dc8d9af2a87c647c13b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | candidate review | Router<br>`0x9d0950c595786aba7c26dfddf270d66a8b18b4fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | candidate review | Router<br>`0xa557373168c1914422b669cbaf9145b225066a7f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | candidate review | Swaps<br>`0x2b2bfe80547f50e1a67bbf0d52c24e0683f67b6d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | candidate review | ViewLiquidity<br>`0xe553c6c9e3c8bf66f396a3bfe88e4ff4c8ef2fbb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | candidate review | Zap<br>`0x0e1532173120b81226eaf012c553267c0f5346ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | candidate review | Zap<br>`0x3c380dc5bb35d095972d0d6ca7c302f915d1d080` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | candidate review | Zap<br>`0x607690f749fadb8fb87fc01f6dbdee277eea5fdf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | candidate review | Zap<br>`0x64d65e3d70ba0f8812a9d1d7b8b5c51dab78cd15` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | candidate review | Zap<br>`0x7c1f74c9dd441e5954d25096693ae6e67050d308` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | candidate review | Zap<br>`0xefe8f6ba38ca707ce0aca62f00596314d64a6e74` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | candidate review | Zap<br>`0xf0572e2bf615911656616170b8d12436abfece0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | contamination review | CadcToUsdAssimilator<br>`0x12310b7726eae2d2438361fd126a25d8381fe891` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | contamination review | DFXSnapshot<br>`0x95e9208771ef6e46c07f0089324ccebbc07c1dea` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | contamination review | EursToUsdAssimilator<br>`0x39f45038d763dd88791ce9bde8d6c18081c7d522` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | contamination review | MC2Rewarder<br>`0xd675972cba7969dd173f457872478cd6ed3749c7` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | contamination review | MerkleDistributorWithRecover<br>`0x0d3ea9faa63ee87d6eb901759c18fa0a10c37f35` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | contamination review | NzdsToUsdAssimilator<br>`0x583af720640e95a32a2e7973596add2e67a3cb34` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | contamination review | TrybToUsdAssimilator<br>`0xf3664456ae047f8f3e2c256b1a30780516c406f4` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | contamination review | UsdcToUsdAssimilator<br>`0x3cb209dc9ddc45ce4fd9a2f5dd33a8c6a9b6ea52` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | contamination review | XsgdToUsdAssimilator<br>`0xe36ded0af2929870977f05a1f017bab6cf8190f8` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | source verified unclassified | DFXSnapshot<br>`0xb77684c5a62464c5fb0d9478efe629e94ef8d3ed` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | source verified unclassified | MerkleDistributorWithRecover<br>`0x38f4a25cda1bbd72b7fe64e4a6d1486cc25cea19` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | source verified unclassified | MerkleDistributorWithRecover<br>`0x597f028008fbbf3bd66854760d6daf5ed5a02ef0` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | source verified unclassified | MerkleDistributorWithRecover<br>`0xa190fdded25fd4f997258987b2b45c847b700316` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | source verified unclassified | StakingRewards<br>`0x2f9575851a373a86a481d4170f1cd20194c348c2` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | source verified unclassified | StakingRewards<br>`0x58c88f583b26f59215f43633f4181f210379226e` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | source verified unclassified | StakingRewards<br>`0x5eaaeff69f2ab64d1cc0244fb31b236ca989544f` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | source verified unclassified | StakingRewards<br>`0x84bf8151394dcf32146965753b28760550f3d7a8` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | source verified unclassified | StakingRewards<br>`0xd09607e80936f6abf35eee75e77115a93a5fe9d5` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | source verified unclassified | StakingRewards<br>`0xddb720069fdfe7be2e2883a1c06be0f353f7c4c8` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | source verified unclassified | StakingRewards<br>`0xe06fa52e0d2d58fe192285bfa0507f09cdd9824a` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | source verified unclassified | StakingRewards<br>`0xe690e93fd96b2b8d1cdecde5f08422f3dd82e164` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | source verified unclassified | UsdcToUsdAssimilator<br>`0xab23b50fc7835d0f1b892746992f28646305306c` | non_address_book | unknown | unknown | verified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0f0accbc8e386a40ebab5bf376101367e6f9d64e` | non_address_book | unknown | unknown | unverified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50d076204d4cca465ccc97f976b295bea450d887` | non_address_book | unknown | unknown | unverified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf599de56f0dd387cabd49c80c16bcc7528e6a63f` | non_address_book | unknown | unknown | unverified | n/a | `0x555552aeff29c81a44006f648c236a11f6fe2f3f` |
| ethereum | candidate review | AssimilatorFactory<br>`0xde9c71503648c03f529305e03d259f2eba9c8fde` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| ethereum | candidate review | Orchestrator<br>`0x1190da269ffe6f4567fed0c3c9bba01f88372254` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| ethereum | candidate review | ProportionalLiquidity<br>`0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| ethereum | candidate review | Swaps<br>`0x74982d2fd25ca0e0dee702e40affd93bae04d3a6` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| ethereum | candidate review | ViewLiquidity<br>`0x1134daeaa652e11360631e3cc93e688204d9354b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| ethereum | candidate review | Zap<br>`0x6fa11a01c00d62bf0ab8aa76bec9105bf952cded` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| ethereum | candidate review | Zap<br>`0x8955300082645728e2c2e5c75d8ceb82e51adf56` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| ethereum | candidate review | Zap<br>`0xc470d3bd46e1fb0536714b7141bd122d132e5ec7` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| ethereum | source verified unclassified | Config<br>`0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7` | non_address_book | unknown | unknown | verified | n/a | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xccf12d3a5b6eafe47c5ca9b23091d86db5878129` | non_address_book | unknown | unknown | unverified | n/a | `0x6e714c42438ec860bd3a50cbe104d2dab50193b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x020e1688ced40fd93f7ce12635700ba02150bfa4` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x05783d5ccfe87678b6fea6bb2c3ed4927d03f08b` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07d1ffdcf06e32edd964e15bcad59badde6c7d08` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ac9bef7f5d59dfe0bba3a8d97e456a99f11f257` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ee2c90746110ce2c13b44cc779b7232cf127a30` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1dbfc9bacdc2925eb412672de1d639c667dad41f` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2014ce7b64ce6c2c4b9e7289db430823412cc8ea` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c7275dc37dd9799776a7d8a121df338738d0bee` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2cb1140ccf67236a38ae4ef15eff8b560639b979` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2dd1e3ed087722d04b8852619c4c6954d59038b4` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x31696bdbcd03fb06b1f62dd0dede9b25af2f3160` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3217f129e2ac70df0ba2919f467faf16afed0e9b` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x32b1e7ca34d1c1a28701ce731b4d2845152197b7` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34af386106e1b6b4e229980772eb7134363710e6` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x363f4f43d63446dc0881b4666675f404fdefd42b` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x39d606e5e7c51f4ebac9215acc63fe106f382564` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3bc9016ec6daac5ac474de1ae3bfdc3c28e724bf` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c56a223fe8f61269e25ef1116f9f185074c6c44` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d0bffc1acc4ca12a4f1cb4ac69895f45176e185` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x431808eb31a0c78ff92dab0dde9bd53c32bb951d` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x483b291d35b4215b03a11d75aa22982170d0575a` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c3f97741fd62ac8c8c789ae62fddf6aab7d6fd3` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e3e0c5d4b7d4002cd981bf9f70e2433456432a5` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x57e65158f30beae5930b29c84b594b1473123dd0` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b1c7aec59232e8594ac1565d976b59e4d83fe29` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5cb2e2961929305d63dbededac39ef34042c4514` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5cfd640a991253bdb7ed181b0b48ae0a1c10753f` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ed584b4a2babc2a7e09d91bd2ca036e7d9abfa9` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71c0ddbf6da72a67c29529d6f67f97c00c4751d5` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71eb1046607a2496a2fd48ab73d1973ee9fadff0` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x73725cd88c92b67619a8e403e9f8e75ed0de9e32` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7434f10acf7c7df2b6303442edb16f5c5b8ae6b2` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x755b70c54055caed71477c4c6543947f1a54bf49` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ffe7048e468b3bf08fd6f6998e34f44883f1923` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x814cc1b756b2727e2dbe9197b521bde94e1f0a80` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8193dcd2369bf94c6f28a181cff9bca38e34bcd1` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85ad6dcfd14696da299e6a5097dfef0aceae902d` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86e8c4e7549fbca7eba1aefbdbc23993f721e5ca` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8846073d63ec30630afd17968deeb734b04f2555` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f56a51d8d0a8db503fffde91389533941a433a0` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x951f08c63bf55992039f35e1f62b0562d3206c5e` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa234498fe6fb0ca18870d895fdea032f47fc8516` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa45f70ad02445c5c23510e93375021edc591c6d2` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab208ec4428410af36c698298455b65fb460be73` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb41ab47a724fb24f1dc0e57380411c7fc5cdd00b` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb48ccfce88e7e321e4a582b62844d814cf092ad1` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb70ccee4eded08141c25c52f5deb680e5991bd86` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9c445be34e7c5f1055a0bfd5d18245f0d009cf1` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbcca5f36426af49a8bd4094326c7b59ee42c03c6` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc28423742bb6daf3d9d111a9b3bfa9e8a26c052f` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc31cb0ba6de9c01c67d8ccf944320251ce3c99f8` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1bb1f6d0c9134f2a421118f7389129480f2026d` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd9bb8427de9eb6a13204681acbb5cf85d37d15d7` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4849852ebd938dadac9f1705f376ffb4ba49e51` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf767088845698616f03673a961af7ab0aff62d9a` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8389313bb9317fd88692adb657684fa5622b157` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfdad1faa0f8ab7342e061040246c2d802b1ceca2` | non_address_book | unknown | unknown | unverified | n/a | `0x9715c357cc02a60906e137608f95ca0148f438e7` |
| ethereum | candidate auto own | Curves<br>`0xb397946634f30c51da0d38e7dcbb10363e50961e` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate auto own | Swaps<br>`0x0dc8c87340fb9cf95ba687852e04bddf08d07ed4` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | AssimilatorFactory<br>`0x14684c1139c7238d9fb4f9a16019d45ee7ef753d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | AssimilatorFactory<br>`0x275757b9d16f20a8bb776828e2b6b9eea1fa2300` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | AssimilatorFactory<br>`0x583ef72807095cd68ffde9a764cf73df401cb772` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | AssimilatorFactory<br>`0x65071363538824f18a0261200843f03f7293757a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | AssimilatorFactory<br>`0x74caafa85447d893b08c4f5bf0a722561f380687` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | AssimilatorV2<br>`0x2cd18405163f6c928a1508b442b76a5135883024` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | Orchestrator<br>`0x5c690559a6a4d2fd1c7fd18442423e078e6da105` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | Orchestrator<br>`0xbc875fac17a1334a340e8ea7035368d6c8d8222e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | ProportionalLiquidity<br>`0x809423ef4e30f58a9334e695cc3815ae706182f3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | ProportionalLiquidity<br>`0xc7f49e9b4991663cb3d216de351843dbd12eb7ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | Router<br>`0xc7da9f5bda76e2c62d3455bc18e836032fe87945` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | Router<br>`0xf04d98dbb50884250be010f25c2650579552b51b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | Swaps<br>`0xe35d0d2d4e0cba78c31806998a3af1862a681c26` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | ViewLiquidity<br>`0x2633652933e6318edec9a510bcaeb6f47150284b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | ViewLiquidity<br>`0xf825968d6b6160fdf40d0e178d81c2c3db4190b2` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | Zap<br>`0x0c84e1265aec391ce7f867573d9cc2ae1314d0af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | Zap<br>`0xbb3aef24b2dd80ecfc866f381ce3f2a4a5a4e399` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | candidate review | Zap<br>`0xf3cc0702493d394323187f330830b7bf0a9b545d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | source verified unclassified | Config<br>`0x4ba227405f65dd83af6c2a502bd828ee22597869` | non_address_book | unknown | unknown | verified | n/a | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | source verified unclassified | Config<br>`0x5f91831b5606605c95e1b7078921265defd5f5e6` | non_address_book | unknown | unknown | verified | n/a | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2635eac0197638d0534f9db6aaf439dffe7cff4e` | non_address_book | unknown | unknown | unverified | n/a | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a22a524337c7fa74a121471834981e4fd6e6a5e` | non_address_book | unknown | unknown | unverified | n/a | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4600c103c1db1eabcf7342209b3f258011215885` | non_address_book | unknown | unknown | unverified | n/a | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e5739244940cd3c8137ba90b6eb0c139da5f35c` | non_address_book | unknown | unknown | unverified | n/a | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8dc15673477fc356db21ad8224db41123d3f8ce8` | non_address_book | unknown | unknown | unverified | n/a | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f36313af9cb9547672cc555ce2c6e77c9ed8222` | non_address_book | unknown | unknown | unverified | n/a | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9544995b5312b26acdf09e66e699c34310b7c856` | non_address_book | unknown | unknown | unverified | n/a | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x984b4c1fae2b8952cf063a8eb2e80f02641ff49d` | non_address_book | unknown | unknown | unverified | n/a | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe6c74a83d2b8d1b6a1b46d499cf274dfba647ad3` | non_address_book | unknown | unknown | unverified | n/a | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6a1775ccfdfe2c37b3375798a3cf3b7ded4532d` | non_address_book | unknown | unknown | unverified | n/a | `0xc02cd35432b72ab6cf8f511c62ff2e89d7baa0fb` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0315933970a2e5d30cf23fd02330a2c74c10503b` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x09617d0dd0211dc43365401bcd74a04a9a624569` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x127c1f0f8a772da96de08fded8e3085f60572191` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x273e1beedc3d104252f3cde8490eb3699e8e8c02` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x350fcc6c2950193764699ffa5bf7f3ba6e5a9967` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3d3708cf6762d7792cf7cf3896b945e7d744716c` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x450270547b9462aa8663c4cf978d63c47893fabb` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x49250f9eba0ba61f8c284f7c9da6db5754e1fe25` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4ca7c417ee8e60e8494a26123a2cce07aad4efe5` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x50d0ddb0d1a8a7e7487aad011371b90a2aa30993` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5127a512a8e9961cf7a10a86a1267e7ef4a75653` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x65368954a989cb334e1be6de1c11be8219626569` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6a4acbe0e58b324efd44e43a4b3d8d8c5b7db68f` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x705bb92341d709fb7f381a5754e5ccea8451b446` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x71d1635420de031626c13782620f6c5c1de8ca71` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x92751a61cf6e7f56c784d40652e605a1448448b2` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9f1413d756fba0bcc7fe550f31aead482c3431f6` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xac538cfa97034b579c1fc2064ebef12d213afb3e` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb26665584803fb4ee8222f9adffa6ffb17e886e1` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbf5c7de5f9c6299a8e466c297b230e854b132841` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xca1a0c42fde0378505d258aeca711cc6b13daabc` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcb301a916daafa3eec47fe37005b60c24576dc8b` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcb75737d0ae0caa9921a2f5104b21009ec352f10` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcd5a683374d87c103cdf8f7ae2581eb236d0109b` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd471643919f6bfd718df10b76b4c580f2eb8c48e` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd616a109c21cc6ca082ac7402ce4c6b2a0b159ce` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd6782c5ca9c676c209630b3ca1944e902d02cecb` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdb8228a77163b1dfb91b620415524207c6eb8526` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdc0f15754747b8ddb5e5370a1f5ce700102d1414` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdf3818a4eef39eb07f3ab69bef8173976aa53aa0` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe71a96f8b5839986814f885844c19092236fe363` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xec2d6a149cea219607dc99b077b0e2a020ecbb2c` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf3c0737fea3292c1c8eb796908488ff17a82f79e` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf6d960bfc8d29f0e902c981d85cc9882153ca878` | non_address_book | unknown | unknown | unverified | n/a | `0x1246e96b7bc94107aa10a08c3ce3aecc8e19217b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2021-05-03-Trail_of_Bits.pdf](https://github.com/dfx-finance/protocol/blob/main/audits/2021-05-03-Trail_of_Bits.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13028] 2021-05-03-Trail_of_Bits.pdf — no match: Extracted from the executive summary and findings sections. The audit date is from the cover page: 'May 3, 2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2021-05-03-Trail_of_Bits.pdf | Curve | ambiguous — not counted | 0x8dc156… (alternative) `0x8dc15673477fc356db21ad8224db41123d3f8ce8` — deployed 2023-03-01 22:36:36+03 — liveness: live (current_address_book_code)<br>0xccf12d… (alternative) `0xccf12d3a5b6eafe47c5ca9b23091d86db5878129` — deployed 2023-11-10 13:24:08+03 — liveness: live (current_address_book_code)<br>0x85e969… (alternative) `0x85e9690c2d4c6cae31d96f9b5afe6d111d165157` — deployed 2023-11-14 04:13:23+03 — liveness: live (current_address_book_code)<br>0x10c47b… (alternative) `0x10c47bbca5a1c35a13d3ea2eac43fba14da6ffa9` — deployed 2023-11-08 19:02:33+03 — liveness: live (current_address_book_code)<br>Curves (alternative) `0xb397946634f30c51da0d38e7dcbb10363e50961e` — deployed 2023-02-11 23:16:59+03 — liveness: live (current_address_book_code)<br>0x87cb80… (alternative) `0x87cb8083995645e7c7a1548872f26fc616949222` — deployed 2023-02-11 22:27:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2021-05-03-Trail_of_Bits.pdf | CurveFactory | unmatched — not counted | — | listed in scope and findings | no |
| 2021-05-03-Trail_of_Bits.pdf | Router | ambiguous — not counted | Router (alternative) `0x575f1ed1e14ac1152bf2f1cdfb2c1865ca246f51` — deployed 2023-02-11 22:32:07+03 — liveness: live (current_address_book_code)<br>0x78b8d9… (alternative) `0x78b8d9ed56812cf932851edee4e1c2294cf462f5` — deployed 2023-03-15 22:01:12+03 — liveness: live (current_address_book_code)<br>Router (alternative) `0x0bf90521ebd840947845f4466018456aab08bb09` — deployed 2023-11-14 04:52:23+03 — liveness: live (current_address_book_code)<br>Router (alternative) `0xbc3011980ff3462980a8ebc49d8c6585e4624406` — deployed 2023-11-10 13:25:24+03 — liveness: live (current_address_book_code)<br>Router (alternative) `0x9bba6805f25b35bdf65e50a42015369e7825428e` — deployed 2023-02-12 00:04:35+03 — liveness: live (current_address_book_code)<br>Router (alternative) `0x5cf6d43e4cd920fc7754926a267d46e096baa168` — deployed 2023-11-08 19:03:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2021-05-03-Trail_of_Bits.pdf | Orchestrator | ambiguous — not counted | Orchestrator (alternative) `0x6b5debc22960ece445f787f9cddb0508fc3f2bf4` — deployed 2023-02-11 22:27:57+03 — liveness: live (current_address_book_code)<br>Orchestrator (alternative) `0x1190da269ffe6f4567fed0c3c9bba01f88372254` — deployed 2023-11-14 04:13:23+03 — liveness: live (current_address_book_code)<br>Orchestrator (alternative) `0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7` — deployed 2023-11-10 13:24:17+03 — liveness: live (current_address_book_code)<br>Orchestrator (alternative) `0xbc875fac17a1334a340e8ea7035368d6c8d8222e` — deployed 2023-02-11 23:16:59+03 — liveness: live (current_address_book_code)<br>Orchestrator (alternative) `0x11654bb1e4bc79894e4447545af6c1630b56921f` — deployed 2023-11-08 19:01:41+03 — liveness: live (current_address_book_code)<br>0xf6a177… (alternative) `0xf6a1775ccfdfe2c37b3375798a3cf3b7ded4532d` — deployed 2023-03-01 22:36:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2021-05-03-Trail_of_Bits.pdf | Assimilators | unmatched — not counted | — | listed in scope and findings | no |
| 2021-05-03-Trail_of_Bits.pdf | Swaps | ambiguous — not counted | Swaps (alternative) `0xa49bf76606a82e75b9d6769ced0aa1b4cd8e5ecd` — deployed 2023-11-08 19:02:09+03 — liveness: live (current_address_book_code)<br>Swaps (alternative) `0x5a0b0b891aeec2afbefd094938b40eab5ae2db61` — deployed 2023-02-11 22:27:57+03 — liveness: live (current_address_book_code)<br>Swaps (alternative) `0x0dc8c87340fb9cf95ba687852e04bddf08d07ed4` — deployed 2023-02-11 23:16:59+03 — liveness: live (current_address_book_code)<br>Swaps (alternative) `0x74982d2fd25ca0e0dee702e40affd93bae04d3a6` — deployed 2023-11-14 04:13:23+03 — liveness: live (current_address_book_code)<br>Swaps (alternative) `0x1190da269ffe6f4567fed0c3c9bba01f88372254` — deployed 2023-11-10 13:24:33+03 — liveness: live (current_address_book_code)<br>0x7e5739… (alternative) `0x7e5739244940cd3c8137ba90b6eb0c139da5f35c` — deployed 2023-03-01 22:36:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2021-05-03-Trail_of_Bits.pdf | CurveMath | unmatched — not counted | — | referenced in findings | no |
| 2021-05-03-Trail_of_Bits.pdf | ProportionalLiquidity | ambiguous — not counted | ProportionalLiquidity (alternative) `0x809423ef4e30f58a9334e695cc3815ae706182f3` — deployed 2023-02-11 23:16:59+03 — liveness: live (current_address_book_code)<br>ProportionalLiquidity (alternative) `0x85e9690c2d4c6cae31d96f9b5afe6d111d165157` — deployed 2023-11-10 13:24:25+03 — liveness: live (current_address_book_code)<br>ProportionalLiquidity (alternative) `0x85fa8b9df88cbfbeada955bff4a7337b27151dbd` — deployed 2023-02-11 22:27:57+03 — liveness: live (current_address_book_code)<br>ProportionalLiquidity (alternative) `0x3a2f9e9cdc6791c52dbb79dd271bd02817082379` — deployed 2023-11-08 19:01:41+03 — liveness: live (current_address_book_code)<br>ProportionalLiquidity (alternative) `0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0` — deployed 2023-11-14 04:13:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2021-05-03-Trail_of_Bits.pdf | CurveStorage | unmatched — not counted | — | referenced in findings | no |
| 2021-05-03-Trail_of_Bits.pdf | CadcToUsdAssimilator | unmatched — not counted | — | listed in findings | no |
| 2021-05-03-Trail_of_Bits.pdf | XsgdToUsdAssimilator | unmatched — not counted | — | listed in findings | no |
| 2021-05-03-Trail_of_Bits.pdf | EursToUsdAssimilator | unmatched — not counted | — | listed in findings | no |
| 2021-05-03-Trail_of_Bits.pdf | UsdcToUsdAssimilator | unmatched — not counted | — | listed in findings | no |
| 2021-05-03-Trail_of_Bits.pdf | IOracle | unmatched — not counted | — | listed in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x65071363538824f18a0261200843f03f7293757a` | AssimilatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde9c71503648c03f529305e03d259f2eba9c8fde` | AssimilatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3a3f59467880bd9cabe680e46b23e456b8d903ff` | AssimilatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xff6ab33c1ab250e030fbec45a6ac0a017864818e` | AssimilatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1134daeaa652e11360631e3cc93e688204d9354b` | AssimilatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1190da269ffe6f4567fed0c3c9bba01f88372254` | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbc875fac17a1334a340e8ea7035368d6c8d8222e` | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x11654bb1e4bc79894e4447545af6c1630b56921f` | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6b5debc22960ece445f787f9cddb0508fc3f2bf4` | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7` | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0` | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x809423ef4e30f58a9334e695cc3815ae706182f3` | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3a2f9e9cdc6791c52dbb79dd271bd02817082379` | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x85fa8b9df88cbfbeada955bff4a7337b27151dbd` | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x85e9690c2d4c6cae31d96f9b5afe6d111d165157` | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0bf90521ebd840947845f4466018456aab08bb09` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9bba6805f25b35bdf65e50a42015369e7825428e` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x575f1ed1e14ac1152bf2f1cdfb2c1865ca246f51` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x5cf6d43e4cd920fc7754926a267d46e096baa168` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbc3011980ff3462980a8ebc49d8c6585e4624406` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6e87a3b9e0a9de58b3c5fa81c93461e82ee04e7b` | StakingRewardsMulti | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6f1b9bbd779286b39a19bb6afba914354365169c` | StakingRewardsMulti | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa1fcb23ce4f0aaea0de82b2a34c86fcc17d259fd` | StakingRewardsMulti | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xba6f70c3dbcf712fa946a0c527c57ef7b654e2d5` | StakingRewardsMulti | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0dc8c87340fb9cf95ba687852e04bddf08d07ed4` | Swaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x74982d2fd25ca0e0dee702e40affd93bae04d3a6` | Swaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x5a0b0b891aeec2afbefd094938b40eab5ae2db61` | Swaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa49bf76606a82e75b9d6769ced0aa1b4cd8e5ecd` | Swaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1190da269ffe6f4567fed0c3c9bba01f88372254` | Swaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1134daeaa652e11360631e3cc93e688204d9354b` | ViewLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf825968d6b6160fdf40d0e178d81c2c3db4190b2` | ViewLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd3f216db1e43ebae3c1d3fe35853e81fbc845cbc` | ViewLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd6af8d8bf04104f9b0f9f20b863e60d8f9b3e6f0` | ViewLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0` | ViewLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc470d3bd46e1fb0536714b7141bd122d132e5ec7` | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf3cc0702493d394323187f330830b7bf0a9b545d` | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa070fb11969a50aacc885b7b5245cbc84de2214c` | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xb6c42f1dd6fdd0f44ed669f6c14c05cab0bf482b` | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3e1941aa6d077262373c9fc1f29775e8e01bf083` | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 64 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 290 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [13028] 2021-05-03-Trail_of_Bits.pdf

Fork inheritance lineage and inherited audits are included when available.
