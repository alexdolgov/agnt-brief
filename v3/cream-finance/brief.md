# Agentic Audit Brief: CREAM Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: CREAM Finance (`cream-finance`)
- Website: [https://cream.finance/](https://cream.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, polygon
- Contract surface: 167 unique implementations (541 raw deployments)
- Coverage basis: 0/44 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,253,258.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for CREAM Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 212 contract row(s) across arbitrum, bsc, ethereum, polygon. Structural roles: 153 unclassified, 57 core, 2 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 212
- Structural roles: unclassified (153), core (57), supporting (2)
- Contract kinds: contract (212)
- Detected standards: erc20 (51), ownable (5), erc1967proxy (1)
- Frameworks: openzeppelin (9)
- Upgradeable-pattern rows: 2

## Fork Analysis

1 of 157 contracts are derived from known codebases. 156 contracts have no detected origin.

### Forked Contracts

**Comptroller** (`0x49a08f9f445af5734cf15a1deab3b1c6a7988fb4`, chain 56)
Origin: shoebill-finance (`0x81a679080b3a03c93e802af7594c1eec8f197761`)
Containment: 86.7% - 13 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- _setCompSpeeds(address[],uint256[])
- getCompAddress()

Removals (removed from original):
- _setRewardDistributor(address)
- isDeprecated(CToken)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x00000000219ab540356cbb839cbe05303d7705fa`, chain 1)
- UnnamedContract (`0x69f2b8d8846e3dcd94c09e4f3cbb8d2ba8d9423f`, chain 1)
- UnnamedContract (`0x84858f72d991f11a760dd2d26caff7962307900c`, chain 1)
- UnnamedContract (`0xa5462bc7bb1dd43b0db84c2de71e34a03ac11deb`, chain 1)
- UnnamedContract (`0xa8682cfd2b6c714d2190fa38863d545c7a0b73d5`, chain 1)
- UnnamedContract (`0xd400e22dca840cc7e342df1d9945684bbd587659`, chain 1)
- UnnamedContract (`0x1a014ffe0cd187a298a7e79ba5ab05538686ea4a`, chain 56)
- UnnamedContract (`0x139dd8bb6355d20342e08ff013150b1ae5040a42`, chain 137)
- UnnamedContract (`0x139dd8bb6355d20342e08ff013150b1ae5040a42`, chain 42161)
- AdminUpgradeabilityProxy (`0xc581b735a1688071a1746c968e0798d642ede491`, chain 1)
- CErc20Delegator (`0x011a014d5e8eb4771e575bb1000318d509230afa`, chain 1)
- CErc20Delegator (`0x01da76dea59703578040012357b81ffe62015c2d`, chain 1)
- CErc20Delegator (`0x054b7ed3f45714d3091e82aad64a1588dc4096ed`, chain 1)
- CErc20Delegator (`0x081fe64df6dc6fc70043aedf3713a3ce6f190a21`, chain 1)
- CErc20Delegator (`0x10a3da2bb0fae4d591476fd97d6636fd172923a8`, chain 1)
- CErc20Delegator (`0x10fdbd1e48ee2fd9336a482d746138ae19e649db`, chain 1)
- CErc20Delegator (`0x1241b10e7ea55b22f5b2d007e8fecdf73dcff999`, chain 1)
- CErc20Delegator (`0x17107f40d70f4470d20cb3f138a052cae8ebd4be`, chain 1)
- CErc20Delegator (`0x197070723ce0d3810a0e47f06e935c30a480d4fc`, chain 1)
- CErc20Delegator (`0x19d1666f543d42ef17f66e376944a22aea1a8e46`, chain 1)
- CErc20Delegator (`0x1a122348b73b58ea39f822a89e6ec67950c2bbd0`, chain 1)
- CErc20Delegator (`0x1d0986fb43985c88ffa9ad959cc24e6a087c7e35`, chain 1)
- CErc20Delegator (`0x1f9b4756b008106c806c7e64322d7ed3b72cb284`, chain 1)
- CErc20Delegator (`0x1ff8cdb51219a8838b52e9cac09b71e591bc998e`, chain 1)
- CErc20Delegator (`0x21011bc93d9e515b9511a817a1ed1d6d468f49fc`, chain 1)
- CErc20Delegator (`0x228619cca194fbe3ebeb2f835ec1ea5080dafbb2`, chain 1)
- CErc20Delegator (`0x22b243b96495c547598d9042b6f94b01c22b2e9e`, chain 1)
- CErc20Delegator (`0x250fb308199fe8c5220509c1bf83d21d60b7f74a`, chain 1)
- CErc20Delegator (`0x25555933a8246ab67cbf907ce3d1949884e82b55`, chain 1)
- CErc20Delegator (`0x28526bb33d7230e65e735db64296413731c5402e`, chain 1)
- CErc20Delegator (`0x299e254a8a165bbeb76d9d69305013329eea3a3b`, chain 1)
- CErc20Delegator (`0x2a537fa9ffaea8c1a41d3c2b68a9cb791529366d`, chain 1)
- CErc20Delegator (`0x2a867fd776b83e1bd4e13c6611afd2f6af07ea6d`, chain 1)
- CErc20Delegator (`0x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6`, chain 1)
- CErc20Delegator (`0x3225e3c669b39c7c8b3e204a8614bb218c5e31bc`, chain 1)
- CErc20Delegator (`0x338286c0bc081891a4bda39c7667ae150bf5d206`, chain 1)
- CErc20Delegator (`0x3623387773010d9214b10c551d6e7fc375d31f58`, chain 1)
- CErc20Delegator (`0x38f27c03d6609a86ff7716ad03038881320be4ad`, chain 1)
- CErc20Delegator (`0x3c6c553a95910f9fc81c98784736bd628636d296`, chain 1)
- CErc20Delegator (`0x4112a717edd051f77d834a6703a1ef5e3d73387f`, chain 1)
- CErc20Delegator (`0x4202d97e00b9189936edf37f8d01cff88bdd81d4`, chain 1)
- CErc20Delegator (`0x44fbebd2f576670a6c33f6fc0b00aa8c5753b322`, chain 1)
- CErc20Delegator (`0x45406ba53bb84cd32a58e7098a2d4d1b11b107f6`, chain 1)
- CErc20Delegator (`0x4baa77013ccd6705ab0522853cb0e9d453579dd4`, chain 1)
- CErc20Delegator (`0x4ee15f44c6f0d8d1136c83efd2e8e4ac768954c6`, chain 1)
- CErc20Delegator (`0x4fe11bc316b6d7a345493127fbe298b95adaad85`, chain 1)
- CErc20Delegator (`0x51f48b638f82e8765f7a26373a2cb4ccb10c07af`, chain 1)
- CErc20Delegator (`0x523effc8bfefc2948211a05a905f761cba5e8e9e`, chain 1)
- CErc20Delegator (`0x58da9c9fc3eb30abbcbbab5ddabb1e6e2ef3d2ef`, chain 1)
- CErc20Delegator (`0x59089279987dd76fc65bf94cb40e186b96e03cb3`, chain 1)
- CErc20Delegator (`0x5c291bc83d15f71fb37805878161718ea4b6aee9`, chain 1)
- CErc20Delegator (`0x5ecad8a75216cea7dff978525b2d523a251eea92`, chain 1)
- CErc20Delegator (`0x65883978ada0e707c3b2be2a6825b1c4bdf76a90`, chain 1)
- CErc20Delegator (`0x697256caa3ccafd62bb6d3aa1c7c5671786a5fd9`, chain 1)
- CErc20Delegator (`0x6ba0c66c48641e220cf78177c144323b3838d375`, chain 1)
- CErc20Delegator (`0x6d1b9e01af17dd08d6dec08e210dfd5984ff1c20`, chain 1)
- CErc20Delegator (`0x71cefcd324b732d4e058afacba040d908c441847`, chain 1)
- CErc20Delegator (`0x73f6cba38922960b7092175c0add22ab8d0e81fc`, chain 1)
- CErc20Delegator (`0x797aab1ce7c01eb727ab980762ba88e7133d2157`, chain 1)
- CErc20Delegator (`0x7aaa323d7e398be4128c7042d197a2545f0f1fea`, chain 1)
- CErc20Delegator (`0x7c3297cfb4c4bbd5f44b450c0872e0ada5203112`, chain 1)
- CErc20Delegator (`0x7ea9c63e216d5565c3940a2b3d150e59c2907db3`, chain 1)
- CErc20Delegator (`0x81e346729723c4d15d0fb1c5679b9f2926ff13c6`, chain 1)
- CErc20Delegator (`0x8379baa817c5c5ab929b03ee8e3c48e45018ae41`, chain 1)
- CErc20Delegator (`0x85759961b116f1d36fd697855c57a6ae40793d9b`, chain 1)
- CErc20Delegator (`0x892b14321a4fcba80669ae30bd0cd99a7ecf6ac0`, chain 1)
- CErc20Delegator (`0x89e42987c39f72e2ead95a8a5bc92114323d5828`, chain 1)
- CErc20Delegator (`0x8b3ff1ed4f36c2c2be675afb13cc3aa5d73685a5`, chain 1)
- CErc20Delegator (`0x8b86e0598616a8d4f1fdae8b59e55fb5bc33d0d6`, chain 1)
- CErc20Delegator (`0x8b950f43fcac4931d408f1fcda55c6cb6cbf3096`, chain 1)
- CErc20Delegator (`0x8c3b7a4320ba70f8239f83770c4015b5bc4e6f91`, chain 1)
- CErc20Delegator (`0x903560b1cce601794c584f58898da8a8b789fc5d`, chain 1)
- CErc20Delegator (`0x92b767185fb3b04f881e3ac8e5b0662a027a1d9f`, chain 1)
- CErc20Delegator (`0x98e329eb5aae2125af273102f3440de19094b77c`, chain 1)
- CErc20Delegator (`0x9baf8a5236d44ac410c0186fe39178d5aad0bb87`, chain 1)
- CErc20Delegator (`0xab10586c918612ba440482db77549d26b7abf8f7`, chain 1)
- CErc20Delegator (`0xb092b4601850e23903a42eacbc9d8a0eec26a4d5`, chain 1)
- CErc20Delegator (`0xc25eae724f189ba9030b2556a1533e7c8a732e14`, chain 1)
- CErc20Delegator (`0xc36080892c64821fa8e396bc1bd8678fa3b82b17`, chain 1)
- CErc20Delegator (`0xc68251421edda00a10815e273fa4b1191fac651b`, chain 1)
- CErc20Delegator (`0xc7fd8dcee4697ceef5a2fd4608a7bd6a94c77480`, chain 1)
- CErc20Delegator (`0xcbae0a83f4f9926997c8339545fb8ee32edc6b76`, chain 1)
- CErc20Delegator (`0xcd22c4110c12ac41acefa0091c432ef44efaafa0`, chain 1)
- CErc20Delegator (`0xce4fe9b4b8ff61949dcfeb7e03bc9faca59d2eb3`, chain 1)
- CErc20Delegator (`0xd5103afcd0b3fa865997ef2984c66742c51b2a8b`, chain 1)
- CErc20Delegator (`0xd532944df6dfd5dd629e8772f03d4fc861873abf`, chain 1)
- CErc20Delegator (`0xd692ac3245bb82319a31068d6b8412796ee85d2c`, chain 1)
- CErc20Delegator (`0xd7394428536f63d5659cc869ef69d10f9e66314b`, chain 1)
- CErc20Delegator (`0xdbb5e3081def4b6cdd8864ac2aeda4cbf778fecf`, chain 1)
- CErc20Delegator (`0xdfff11dfe6436e42a17b86e7f419ac8292990393`, chain 1)
- CErc20Delegator (`0xe585c76573d7593abf21537b607091f76c996e73`, chain 1)
- CErc20Delegator (`0xe6c3120f38f56deb38b69b65cc7dcaf916373963`, chain 1)
- CErc20Delegator (`0xe89a6d0509faf730bd707bf868d9a2a744a363c7`, chain 1)
- CErc20Delegator (`0xef58b2d5a1b8d3cde67b8ab054dc5c831e9bc025`, chain 1)
- CErc20Delegator (`0xeff039c3c1d668f408d09dd7b63008622a77532c`, chain 1)
- CErc20Delegator (`0xf04ce2e71d32d789a259428ddcd02d3c9f97fb4e`, chain 1)
- CErc20Delegator (`0xf55bbe0255f7f4e70f63837ff72a577fbddbe924`, chain 1)
- CErc20Delegator (`0xf8445c529d363ce114148662387eba5e62016e20`, chain 1)
- CErc20Delegator (`0xfd609a03b393f1a1cfcacedabf068cad09a924e2`, chain 1)
- CErc20Delegator (`0x04c61ef58a6f1d6c572045a39a5434ab9dee69fb`, chain 56)
- CErc20Delegator (`0x0e9d900c884964dc4b26db96ba113825b1a09baa`, chain 56)
- CErc20Delegator (`0x11883cdea6bab720092791cc89affa54428ce069`, chain 56)
- CErc20Delegator (`0x19b08ff7d90d63ad109c6fabb8e0fcc866477a41`, chain 56)
- CErc20Delegator (`0x19ee64850862cfd234e20c0db4eda286f12ec907`, chain 56)
- CErc20Delegator (`0x1af8c1c3ad36a041cb6678fed86b1e095004fd16`, chain 56)
- CErc20Delegator (`0x264bc4ea2f45cf6331ad6c3ac8d7257cf487fcbc`, chain 56)
- CErc20Delegator (`0x26a490a0f419dcfbed97e568403654c2746a7110`, chain 56)
- CErc20Delegator (`0x2bc4eb013ddee29d37920938b96d353171289b7c`, chain 56)
- CErc20Delegator (`0x2d3bfadf9bc94e3ab796029a030e863f1898aa06`, chain 56)
- CErc20Delegator (`0x36cdf5972aca2b70f10d0f7af0d95871abc065d9`, chain 56)
- CErc20Delegator (`0x3942936782d788ce69155f776a51a5f1c9dd9b22`, chain 56)
- CErc20Delegator (`0x3b0be453a4008ebc2edd457e7bd355f1c5469d68`, chain 56)
- CErc20Delegator (`0x426d6d53187be3288fe37f214e3f6901d8145b62`, chain 56)
- CErc20Delegator (`0x4cb7f1f4ad7a6b53802589af3b90612c1674fec4`, chain 56)
- CErc20Delegator (`0x4ebdef163ff08ac1d56a89bafefd6c01cc28a48f`, chain 56)
- CErc20Delegator (`0x53d88d2ffdbe71e81d95b08ae0ca49d0c4a8515f`, chain 56)
- CErc20Delegator (`0x5ea2dd1de21ed3b5316cef89985edc66cf9b2a0e`, chain 56)
- CErc20Delegator (`0x5fa61a5a65920f90af970b13b7f28daeef0440b7`, chain 56)
- CErc20Delegator (`0x738f3810b3da0f3e6dc8c689d0d72f3b4992c43b`, chain 56)
- CErc20Delegator (`0x7f746a80506a4cafa39938f7c08ad59cfa6de418`, chain 56)
- CErc20Delegator (`0x7fd568d6a1a11b19427c8ccb90f7bb80e4ab1c5f`, chain 56)
- CErc20Delegator (`0x81c15d3e956e55e77e1f3f257f0a65bd2725fc55`, chain 56)
- CErc20Delegator (`0x84902bd5ccef97648bf69c5096729a9367043beb`, chain 56)
- CErc20Delegator (`0x8cc7e2a6de999758499658bb702143fd025e09b2`, chain 56)
- CErc20Delegator (`0x9095e8d707e40982affce41c61c10895157a1b22`, chain 56)
- CErc20Delegator (`0x98b7871702b602e65eaef46051d75ca334f872d0`, chain 56)
- CErc20Delegator (`0x9972dd9912367cf395bea752ad49d81f33f7ca85`, chain 56)
- CErc20Delegator (`0x9b53e7d5e3f6cc8694840ed6c9f7fee79e7bcee5`, chain 56)
- CErc20Delegator (`0xa8d75a0d17d2f4f2f4673975ab8470269d019c96`, chain 56)
- CErc20Delegator (`0xaa46e2c21b7763a73db48e9b318899253e66e20c`, chain 56)
- CErc20Delegator (`0xb31f5d117541825d6692c10e4357008edf3e2bcd`, chain 56)
- CErc20Delegator (`0xbe7e1d74acae787355169bc61a8729b2040fce6b`, chain 56)
- CErc20Delegator (`0xbf9b95b78bc42f6cf53ff2a0ce19d607cfe1ff82`, chain 56)
- CErc20Delegator (`0xc17c8c5b8bb9456c624f8534fde6cbda2451488c`, chain 56)
- CErc20Delegator (`0xcb87cee8c77cdfd310fb3c58ff72e688d46f90b1`, chain 56)
- CErc20Delegator (`0xd83c88db3a6ca4a32fff1603b0f7ddce01f5f727`, chain 56)
- CErc20Delegator (`0xdcf60e349a5aaeeecdd2fb6772931fbf3486ed1c`, chain 56)
- CErc20Delegator (`0xe39b9e0366940eb3ca62b85ffae838ef0f8b14e0`, chain 56)
- CErc20Delegator (`0xe692714717a89e4f2ab89dd17d8dddd7bb52de8e`, chain 56)
- CErc20Delegator (`0xea466cd2583a0290b9e7b987a769a7eb468fb0a5`, chain 56)
- CErc20Delegator (`0xef6d459fe81c3ed53d292c936b2df5a8084975de`, chain 56)
- CErc20Delegator (`0xf77df34f4bf632fb5ca928592a73a29a42bcf0b1`, chain 56)
- CEther (`0xd06527d5e56a3495252a528c4987003b712860ee`, chain 1)
- CEther (`0x1ffe17b99b439be0afc831239ddecda2a790ff3a`, chain 56)
- ClonableBeaconProxy (`0xf4d48ce3ee1ac3651998971541badbb9a14d7234`, chain 42161)
- Comp (`0x2ba592f78db6436527729929aaf6c908497cb200`, chain 1)
- Comp (`0xd4cb328a82bdf5f03eb737f37fa6b370aef3e888`, chain 56)
- CreamEth2 (`0x49d72e3973900a195a155a46441f0c08179fdb64`, chain 1)
- CreamETH2 (`0xcbc1065255cbc3ab41a6868c22d1f1c573ab89fd`, chain 1)
- CreamLock (`0x780f75ad0b02afeb6039672e6a6cede7447a8b45`, chain 1)
- CreamLock (`0xbdc3372161dfd0361161e06083ee5d52a9ce7595`, chain 1)
- CreamLock (`0xd5586c1804d2e1795f3fbbafb1fbb9099ee20a6c`, chain 1)
- CreamLock (`0xe618c25f580684770f2578faca31fb7acb2f5945`, chain 1)
- PriceOracleV1 (`0x20ca53e2395fa571798623f1cfbd11fe2c114c24`, chain 42161)
- StakingRewardsLock (`0x2689008dcda0c2b744b344b9e5a3d5a042c227da`, chain 1)
- StakingRewardsLock (`0x9d2850c3112b5fb851c4aae23c1e97c1736898cb`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 212; live-surface rows included: 212 (177 live, 35 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 42/164 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/44 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 53 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 98 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 215
- Confirmed-live implementations: 53 of 167 unique; 114 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/131
- Verified + Unaudited implementations: 131
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 167
- Raw deployments: 541
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (131)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BEP20CREAM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f7347ebb25f2e314a5806b71dd67fe96c120326` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0d3303ffaf107cd732396570bf07b2dbd79b619f`; ethereum `0x1232b1601419b8b9874683f680e793343f8cbda6`; ethereum `0x136d6f80bb3a853d151686bfed2c9309aea6ddec`; ethereum `0x209a6919956c35201c1488addcd8dc5a1d5c3c53`; ethereum `0xf8062eedf80d8d2527ce89435f670cb996ab4e54` | ⚠️ Unaudited |
| BNBReserveReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb16a4e6086fc32debc38388f7d156a9b8deb1d4d` | ⚠️ Unaudited |
| BSCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e4ae385d1f68e4d4feb455e0526c08c77464ed6` | ⚠️ Unaudited |
| BSCWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70266e9b23dadead1210ff58b6723a6ca0cf18ea` | ⚠️ Unaudited |
| CCakeLPDelegate | unknown | project_anchor | own_supporting | 10 | bsc | unit-383576 (10 proxies) | 10 deployments: bsc `0x04c61ef58a6f1d6c572045a39a5434ab9dee69fb`; bsc `0x19b08ff7d90d63ad109c6fabb8e0fcc866477a41`; bsc `0x26a490a0f419dcfbed97e568403654c2746a7110`; bsc `0x36cdf5972aca2b70f10d0f7af0d95871abc065d9`; bsc `0x5ea2dd1de21ed3b5316cef89985edc66cf9b2a0e`; bsc `0x5fa61a5a65920f90af970b13b7f28daeef0440b7`; bsc `0x7fd568d6a1a11b19427c8ccb90f7bb80e4ab1c5f`; bsc `0x98b7871702b602e65eaef46051d75ca334f872d0`; bsc `0x9972dd9912367cf395bea752ad49d81f33f7ca85`; bsc `0xe39b9e0366940eb3ca62b85ffae838ef0f8b14e0` | ⚠️ Unaudited |
| CCakeLPDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x3d9927cbd279f09dc9cbb017a4ed517b06e17034` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x018a82a5bd6e0a4ae8c5cf54527775d17d9ff5ab`; ethereum `0xbddeb563e90f6cbf168a7cda4927806477e5b6c6` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x1a9e503562ce800ea8e68e2cf0cfa0aec2edb509`; ethereum `0x218e5bbc524479d5c593931692019bb026ff6117`; ethereum `0x2939f9236574cd6658c18b35a8aaf6b7e9ccff07`; ethereum `0xb72cf0b8aa920e8e3cf7c9097732c3f7a4c3aaa5`; ethereum `0xe9ea58efb13733d413365f02ea52b21d25f0ceb6`; bsc `0x225a75dcd93c620aec7dcd8dd205a367fb750d65`; bsc `0xb316f4f692d3bc53b79c83c97fdd45bc94255f53` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x1bcafa2c1b3a522e41baa60c2e318981ea8d1eb5`; ethereum `0xa87e8e61dfac8af5944d353cd26b96b20d5f4d01`; ethereum `0xf7c5314806bb349744cf5e721f4d3395259b8531` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383534 | 2 deployments: ethereum `0x22b243b96495c547598d9042b6f94b01c22b2e9e`; ethereum `0x852dc31074d42beb1ee8fba7829cb5bd4d68aaf3` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x460ea730d204c822ce709f00a8e5959921715adc`; ethereum `0xcc44572b57372dac502bcd784705e083779b2afc`; ethereum `0xf047d4be569fb770db143a6a90ef203fc1295922` | ⚠️ Unaudited |
| CCapableWrappedNativeDelegate | unknown | project_anchor | own_supporting | 1 | bsc | unit-383581 | 2 deployments: bsc `0x15cc701370cb8ada2a2b6f4226ec5cf6aa93bc67`; bsc `0x54ece7a254583d51935e9cec498ce9f971f45043` | ⚠️ Unaudited |
| CCapableWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19b82ad0c0fa58bfa2634a20ed052c1c913b22eb` | ⚠️ Unaudited |
| CCollateralCapErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6fd01c92f0390670cce399b532017cdb2b930f` | ⚠️ Unaudited |
| CCollateralCapErc20CheckRepayDelegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383541 | `0x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 23 | ethereum | n/a | 23 deployments: ethereum `0x00e5c0774a5f065c285068170b20393925c84bf3`; ethereum `0x12a9cc33a980daa74e00cc2d1a0e74c57a93d12c`; ethereum `0x1b3e95e8ecf7a7cab6c4de1b344f94865abd12d5`; ethereum `0x215f34af6557a6598dbda9aa11cc556f5ae264b1`; ethereum `0x226f3738238932ba0db2319a8117d9555446102f`; ethereum `0x30190a3b52b5ab1daf70d46d72536f5171f22340`; ethereum `0x3c9f5385c288ce438ed55620938a4b967c080101`; ethereum `0x48759f220ed983db51fa7a8c0d2aab8f3ce4166a`; ethereum `0x672473908587b10e65dab177dbaeadcbb30bf40b`; ethereum `0x76eb2fe28b36b3ee97f3adae0c69606eedb2a37c`; ethereum `0x7736ffb07104c0c400bb0cc9a7c228452a732992`; ethereum `0x86bbd9ac8b9b44c95ffc6baae58e25033b7548aa`; ethereum `0x8e595470ed749b85c6f7669de83eae304c2ec68f`; ethereum `0x8fc8bfd80d6a9f17fb98a373023d72531792b431`; ethereum `0x9e8e207083ffd5bdc3d99a1f32d1e6250869c1a9`; ethereum `0xa7c4054afd3dbbbf5bfe80f41862b89ea05c9806`; ethereum `0xa8caea564811af0e92b1e044f3edd18fa9a73e4f`; ethereum `0xb8c5af54bbdcc61453144cf472a9276ae36109f9`; ethereum `0xca55f9c4e77f7b8524178583b0f7c798de17fd54`; ethereum `0xe7bff2da8a2f619c2586fb83938fa56ce803aa16`; ethereum `0xecab2c76f1a8359a06fab5fa0ceea51280a97ecf`; ethereum `0xfa3472f7319477c9bfecdd66e4b948569e7621b9`; ethereum `0xfeeb92386a055e2ef7c2b598c872a4047a7db59f` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 63 | ethereum | unit-383520 (63 proxies) | 63 deployments: ethereum `0x054b7ed3f45714d3091e82aad64a1588dc4096ed`; ethereum `0x081fe64df6dc6fc70043aedf3713a3ce6f190a21`; ethereum `0x10a3da2bb0fae4d591476fd97d6636fd172923a8`; ethereum `0x10fdbd1e48ee2fd9336a482d746138ae19e649db`; ethereum `0x17107f40d70f4470d20cb3f138a052cae8ebd4be`; ethereum `0x197070723ce0d3810a0e47f06e935c30a480d4fc`; ethereum `0x19d1666f543d42ef17f66e376944a22aea1a8e46`; ethereum `0x1d0986fb43985c88ffa9ad959cc24e6a087c7e35`; ethereum `0x1ff8cdb51219a8838b52e9cac09b71e591bc998e`; ethereum `0x21011bc93d9e515b9511a817a1ed1d6d468f49fc`; ethereum `0x250fb308199fe8c5220509c1bf83d21d60b7f74a`; ethereum `0x25555933a8246ab67cbf907ce3d1949884e82b55`; ethereum `0x28526bb33d7230e65e735db64296413731c5402e`; ethereum `0x299e254a8a165bbeb76d9d69305013329eea3a3b`; ethereum `0x2a537fa9ffaea8c1a41d3c2b68a9cb791529366d`; ethereum `0x2a867fd776b83e1bd4e13c6611afd2f6af07ea6d`; ethereum `0x3225e3c669b39c7c8b3e204a8614bb218c5e31bc`; ethereum `0x338286c0bc081891a4bda39c7667ae150bf5d206`; ethereum `0x3623387773010d9214b10c551d6e7fc375d31f58`; ethereum `0x3c6c553a95910f9fc81c98784736bd628636d296`; ethereum `0x4112a717edd051f77d834a6703a1ef5e3d73387f`; ethereum `0x44fbebd2f576670a6c33f6fc0b00aa8c5753b322`; ethereum `0x51f48b638f82e8765f7a26373a2cb4ccb10c07af`; ethereum `0x523effc8bfefc2948211a05a905f761cba5e8e9e`; ethereum `0x58da9c9fc3eb30abbcbbab5ddabb1e6e2ef3d2ef`; ethereum `0x59089279987dd76fc65bf94cb40e186b96e03cb3`; ethereum `0x65883978ada0e707c3b2be2a6825b1c4bdf76a90`; ethereum `0x697256caa3ccafd62bb6d3aa1c7c5671786a5fd9`; ethereum `0x71cefcd324b732d4e058afacba040d908c441847`; ethereum `0x797aab1ce7c01eb727ab980762ba88e7133d2157`; ethereum `0x7aaa323d7e398be4128c7042d197a2545f0f1fea`; ethereum `0x7c3297cfb4c4bbd5f44b450c0872e0ada5203112`; ethereum `0x7ea9c63e216d5565c3940a2b3d150e59c2907db3`; ethereum `0x81e346729723c4d15d0fb1c5679b9f2926ff13c6`; ethereum `0x8379baa817c5c5ab929b03ee8e3c48e45018ae41`; ethereum `0x85759961b116f1d36fd697855c57a6ae40793d9b`; ethereum `0x89e42987c39f72e2ead95a8a5bc92114323d5828`; ethereum `0x8b3ff1ed4f36c2c2be675afb13cc3aa5d73685a5`; ethereum `0x8c3b7a4320ba70f8239f83770c4015b5bc4e6f91`; ethereum `0x903560b1cce601794c584f58898da8a8b789fc5d`; ethereum `0x92b767185fb3b04f881e3ac8e5b0662a027a1d9f`; ethereum `0x98e329eb5aae2125af273102f3440de19094b77c`; ethereum `0xab10586c918612ba440482db77549d26b7abf8f7`; ethereum `0xb092b4601850e23903a42eacbc9d8a0eec26a4d5`; ethereum `0xc25eae724f189ba9030b2556a1533e7c8a732e14`; ethereum `0xc36080892c64821fa8e396bc1bd8678fa3b82b17`; ethereum `0xc68251421edda00a10815e273fa4b1191fac651b`; ethereum `0xc7fd8dcee4697ceef5a2fd4608a7bd6a94c77480`; ethereum `0xcbae0a83f4f9926997c8339545fb8ee32edc6b76`; ethereum `0xce4fe9b4b8ff61949dcfeb7e03bc9faca59d2eb3`; ethereum `0xd5103afcd0b3fa865997ef2984c66742c51b2a8b`; ethereum `0xd692ac3245bb82319a31068d6b8412796ee85d2c`; ethereum `0xd7394428536f63d5659cc869ef69d10f9e66314b`; ethereum `0xdbb5e3081def4b6cdd8864ac2aeda4cbf778fecf`; ethereum `0xdfff11dfe6436e42a17b86e7f419ac8292990393`; ethereum `0xe585c76573d7593abf21537b607091f76c996e73`; ethereum `0xe89a6d0509faf730bd707bf868d9a2a744a363c7`; ethereum `0xef58b2d5a1b8d3cde67b8ab054dc5c831e9bc025`; ethereum `0xeff039c3c1d668f408d09dd7b63008622a77532c`; ethereum `0xf04ce2e71d32d789a259428ddcd02d3c9f97fb4e`; ethereum `0xf55bbe0255f7f4e70f63837ff72a577fbddbe924`; ethereum `0xf8445c529d363ce114148662387eba5e62016e20`; ethereum `0xfd609a03b393f1a1cfcacedabf068cad09a924e2` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 6 deployments: ethereum `0x09bdcce2593f0bef0991188c25fb744897b6572d`; ethereum `0x27260eeb2a6c382a6e7d14b8991892790ca929bb`; ethereum `0x297d4da727fbc629252845e96538fc46167e453a`; ethereum `0x9925f2f869048934e62720120798e7cce7e777bb`; ethereum `0x9d029cd7cedcb194e2c361948f279f1788135bb2`; ethereum `0xa0e5a19e091bbe241e655997e50da82da676b083` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 3 | ethereum | unit-383554 (3 proxies) | 4 deployments: ethereum `0x1241b10e7ea55b22f5b2d007e8fecdf73dcff999`; ethereum `0x892b14321a4fcba80669ae30bd0cd99a7ecf6ac0`; ethereum `0x8b950f43fcac4931d408f1fcda55c6cb6cbf3096`; ethereum `0xf330c109dd91d391b5cd654b7fa595fa1a8ac470` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383536 | 2 deployments: ethereum `0x1a122348b73b58ea39f822a89e6ec67950c2bbd0`; ethereum `0x8dc840cead11a46f59c65b1697698a2b60fa0789` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x41c84c0e2ee0b740cf0d31f63f3b6f627dc6b393` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x766175eac1a99c969ddd1ebdbe7e270d508d8fff`; ethereum `0xd37295796c8b885783bd0a4a6c890e3ddeae6705` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbe86e8918dfc7d3cb10d295fc220f941a1470c5c` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 1 | bsc | unit-383574 | 2 deployments: bsc `0x09e470fe983812df81fb8bf6f14fe9a7832fe7ec`; bsc `0x426d6d53187be3288fe37f214e3f6901d8145b62` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | project_anchor | own_supporting | 32 | bsc | unit-383586 (32 proxies) | 32 deployments: bsc `0x0e9d900c884964dc4b26db96ba113825b1a09baa`; bsc `0x11883cdea6bab720092791cc89affa54428ce069`; bsc `0x19ee64850862cfd234e20c0db4eda286f12ec907`; bsc `0x1af8c1c3ad36a041cb6678fed86b1e095004fd16`; bsc `0x264bc4ea2f45cf6331ad6c3ac8d7257cf487fcbc`; bsc `0x2bc4eb013ddee29d37920938b96d353171289b7c`; bsc `0x2d3bfadf9bc94e3ab796029a030e863f1898aa06`; bsc `0x3942936782d788ce69155f776a51a5f1c9dd9b22`; bsc `0x3b0be453a4008ebc2edd457e7bd355f1c5469d68`; bsc `0x4cb7f1f4ad7a6b53802589af3b90612c1674fec4`; bsc `0x4ebdef163ff08ac1d56a89bafefd6c01cc28a48f`; bsc `0x53d88d2ffdbe71e81d95b08ae0ca49d0c4a8515f`; bsc `0x738f3810b3da0f3e6dc8c689d0d72f3b4992c43b`; bsc `0x7f746a80506a4cafa39938f7c08ad59cfa6de418`; bsc `0x81c15d3e956e55e77e1f3f257f0a65bd2725fc55`; bsc `0x84902bd5ccef97648bf69c5096729a9367043beb`; bsc `0x8cc7e2a6de999758499658bb702143fd025e09b2`; bsc `0x9095e8d707e40982affce41c61c10895157a1b22`; bsc `0x9b53e7d5e3f6cc8694840ed6c9f7fee79e7bcee5`; bsc `0xa8d75a0d17d2f4f2f4673975ab8470269d019c96`; bsc `0xaa46e2c21b7763a73db48e9b318899253e66e20c`; bsc `0xb31f5d117541825d6692c10e4357008edf3e2bcd`; bsc `0xbe7e1d74acae787355169bc61a8729b2040fce6b`; bsc `0xbf9b95b78bc42f6cf53ff2a0ce19d607cfe1ff82`; bsc `0xc17c8c5b8bb9456c624f8534fde6cbda2451488c`; bsc `0xcb87cee8c77cdfd310fb3c58ff72e688d46f90b1`; bsc `0xd83c88db3a6ca4a32fff1603b0f7ddce01f5f727`; bsc `0xdcf60e349a5aaeeecdd2fb6772931fbf3486ed1c`; bsc `0xe692714717a89e4f2ab89dd17d8dddd7bb52de8e`; bsc `0xea466cd2583a0290b9e7b987a769a7eb468fb0a5`; bsc `0xef6d459fe81c3ed53d292c936b2df5a8084975de`; bsc `0xf77df34f4bf632fb5ca928592a73a29a42bcf0b1` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x45a6c0f17f0ed70c6a442ce958082ea7a2b8fea7`; bsc `0xcec434c83179604fe2b76121c14cca08f7661730` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x7e545caa813b102d2c6bfb7d6b07a0ea699ccac2`; bsc `0x8166974222577f9ef674c1633f0742256f5a06cf` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 15 | polygon | unit-383558 (15 proxies) | 16 deployments: polygon `0x20d5d319c2964ecb52e1b006a4c059b7f6d6ad0a`; polygon `0x2ee80614ccbc5e28654324a66a396458fa5cd7cc`; polygon `0x4486835e0c567a320c0636d8f6e6e6679a46a271`; polygon `0x468a7bf78f11da82c90b17a93adb7b14999af5ab`; polygon `0x4eceddf62277ed78623f9a94995c680f8fd6c00e`; polygon `0x5dc3a30d8c5937f1529c3c93507c16d86a17072a`; polygon `0x73cf8c5d14aa0ebc89f18272a568319f5bab6cbd`; polygon `0x7ea7174dd0cb4ab84f42177f01e9a8a79475d381`; polygon `0x7ef18d0a9c3fb1a716ff6c3ed0edf52a2427f716`; polygon `0x98182bf525a4252c436ac349a4b79c7e6cd0eb7a`; polygon `0x9b21eb2e30d8320c3c1b8d8465284d78e58cb971`; polygon `0xc29c28132a5b84d38d17660f0580aa6addb5a837`; polygon `0xd4409b8d17d5d49a7ed9ae734b0e8edba29b9ffa`; polygon `0xe82225ba6bed28406912522f01c7102dd9f07e78`; polygon `0xf976c9bc0e16b250e0b1523cffaa9e4c07bc5c8a`; polygon `0xfbbfa5fd64246046e683c423aa2ab0470fbd328d` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: ethereum `0x29791bef310305d15b8fa4cd57953bd8db805305`; ethereum `0x6ada0e02763ede6cb428caebc5f5aa3080fda83c`; ethereum `0xfd42f5e741dd747749d220804eeb96c3f0d4c304`; bsc `0x272613ccd1f6d20ec1ba1a7c61d0c68564d0ae50`; bsc `0xaac5b4bd9528887802e5bd6994afdf1bb0fb1cc5`; polygon `0x5441090c0401ee256b09deb35679ad175d1a0c97`; polygon `0x5b4058a9000e86fe136ac896352c4dfd539e32a1`; arbitrum `0x20d5d319c2964ecb52e1b006a4c059b7f6d6ad0a` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 2 | arbitrum | unit-383569 (2 proxies) | 3 deployments: arbitrum `0x5eb35daf9ef97e9e8cc33c486bad884a62cae9ce`; arbitrum `0xc29c28132a5b84d38d17660f0580aa6addb5a837`; arbitrum `0xd5794ea7b269db3a0ccb396774cc2d0936ffbd86` | ⚠️ Unaudited |
| CCollateralCapErc20NoInterestDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1041f188ffecc499e8d4d0f08dd31b0f41c157` | ⚠️ Unaudited |
| CCTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f08008ef178929e3866f1aeea75beaa8b909b9e`; ethereum `0xfbfb922aa45f8e45d7f05bf83a15b4b6723f0aa9` | ⚠️ Unaudited |
| CCTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x4f12c9dabb5319a252463e6028ca833f1164d045`; ethereum `0x950027632fbd6adadfe82644bfb64647642b6c09`; ethereum `0xbb4b067cc612494914a902217cb6078ab4728e36`; ethereum `0xe3d7a35cc516f383dbab40ad169ec41e1c287a27` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 7 | ethereum | unit-383547 (7 proxies) | 8 deployments: ethereum `0x011a014d5e8eb4771e575bb1000318d509230afa`; ethereum `0x01da76dea59703578040012357b81ffe62015c2d`; ethereum `0x228619cca194fbe3ebeb2f835ec1ea5080dafbb2`; ethereum `0x4ee15f44c6f0d8d1136c83efd2e8e4ac768954c6`; ethereum `0x4fe11bc316b6d7a345493127fbe298b95adaad85`; ethereum `0xc9d8a3b9c39b71969280fc249c87b5d0cb77f3c9`; ethereum `0xcd22c4110c12ac41acefa0091c432ef44efaafa0`; ethereum `0xe6c3120f38f56deb38b69b65cc7dcaf916373963` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x04be8ea0c82ad864a01f977e07692afca8984766`; ethereum `0x0a7d7cf778ca3b0aa83136c228c1d8805861b20f`; ethereum `0x14e45140ab7067d812ccbca506f032f384268a96`; ethereum `0x39d46629a897ba85fb575bcf9d890dcccd5064bb`; ethereum `0x6d419c6f391596f219aa97ea47b9564fa85c5b40`; ethereum `0x81a1ff0fa66b14d526930cb36e610f555eb9cd5e`; ethereum `0x8341f17660148ebc9a738e138db2b6b15f42b56f`; ethereum `0x8ec370ea274748620f3f7aab026ccc31b474c4db`; ethereum `0x9d8a0526219838ca50726ab4a579ddeb8b38fd4d`; ethereum `0xa2782757aa0e3791abca3f6768398e482901b875`; ethereum `0xb5c7aaf07c438a33027dc19d903af775a229be3c`; ethereum `0xbdf447b39d152d6a234b4c02772b8ab5d1783f72`; ethereum `0xc2dc50ae4af10d1e27fa74bd1e0c60878813721b`; ethereum `0xc4b2f8c896058e85bbc675283f9551f0100efa1b`; ethereum `0xe9e0ad069325234035ac21bbff76b557b4d52689`; bsc `0x12c28c919f3cd8cce898afca4446c613b54eccd4`; bsc `0xa80690d8ca20c4de750320ca2d332d8483ba0d2f`; polygon `0xd528697008ac67a21818751a5e3c58c8dae54696` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x09db988a691dc2ed8afd69884975da45f6c7b472` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x19940fa6926d7b1ee937b3987970d48820781fc3` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 4 | ethereum | unit-383515 (4 proxies) | 5 deployments: ethereum `0x1c8645bec146ae9a3489fc5821b69c9191577331`; ethereum `0x1f9b4756b008106c806c7e64322d7ed3b72cb284`; ethereum `0x4202d97e00b9189936edf37f8d01cff88bdd81d4`; ethereum `0x45406ba53bb84cd32a58e7098a2d4d1b11b107f6`; ethereum `0x6d1b9e01af17dd08d6dec08e210dfd5984ff1c20` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383518 | 2 deployments: ethereum `0x2f4ad359d49164d2b794cc7d0324540d22accadb`; ethereum `0x4baa77013ccd6705ab0522853cb0e9d453579dd4` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4e3a36a633f63aee0ab57b5054ec78867cb3c0b8` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x51297aecbda0048f97acd379aa62cca28fd5ff8c` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x7589c9e17bcfce1ccaa1f921196fda177f0207fc`; ethereum `0x9b4048d7f0d75937ae07d205a80b2ab9192e4a06`; ethereum `0xe407e96042c1a581dd81daa36d018429e6df882d` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383552 | 2 deployments: ethereum `0x8b86e0598616a8d4f1fdae8b59e55fb5bc33d0d6`; ethereum `0xf25fb0897580e61420d38945051bb1cda861249f` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383539 | 2 deployments: ethereum `0x9517593d84324e9669174976a98b19c3d2dd9bf9`; ethereum `0x9baf8a5236d44ac410c0186fe39178d5aad0bb87` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x11a36200237e839b485a01fc2661df3a816fc474`; bsc `0x687484d2900005120264aef14600a36ab4fb94df` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0e821d855f4fc427200484ae42369b8a6611c2cb`; ethereum `0x371fb61d214a2fcaca1eace2bc6a9f8a78a331df`; ethereum `0x43bf8dd4edbe9d0d34415c979bae787bc534846f`; ethereum `0x4f624dcf0cbfd73fc800b99965f756c3fb3a3cea`; ethereum `0x6d2ba9cc8a72b6297e98dd7863ffbcdd3768e513`; ethereum `0x6ea8eab7d77f062989ab65f2bc3394e2be68505b`; ethereum `0x7ec77932a5816b432dfe2f94e25c51ea25746817`; ethereum `0x90b280489d773a4e08c87107ad322148d02feb59`; ethereum `0xa34c4f2e3d5f81db3e2c21a3942ae0e60dccd612`; ethereum `0xb2ec68bea6224b46924b06e750341d0b9974f6fd`; ethereum `0xd64f8d48cf67a939824b56e2de374327653de086`; ethereum `0xd6d9e4c301cc548b92ec2745a6aba9a8af44938b`; ethereum `0xe8e202d6773f50562c0fb73cf18248d621a96c43` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383286 | `0xd06527d5e56a3495252a528c4987003b712860ee` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | bsc | unit-383338 | `0x1ffe17b99b439be0afc831239ddecda2a790ff3a` | ⚠️ Unaudited |
| Comp | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383243 | `0x2ba592f78db6436527729929aaf6c908497cb200` | ⚠️ Unaudited |
| Comp | unknown | project_anchor | own_supporting | 0 | bsc | unit-383482 | `0xd4cb328a82bdf5f03eb737f37fa6b370aef3e888` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383532 | 2 deployments: ethereum `0x3d5bc3c8d13dcb8bf317092d84783c2697ae9258`; ethereum `0x7aa375f1fe5e04e18a6b02b4294cfd57ca9f53ba` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5ef4c9384d9d7c39cbc12b62e82900042f1205b4` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xab1c342c7bf5ec5f02adea1c2270670bca144cbb` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 37 deployments: ethereum `0x44a420700aac02c1f10b16152f93acb3aadff193`; ethereum `0x4b147984b0314260fda782a7f508749df4e5a083`; ethereum `0x5d62020528f76bfdbd2b0ee2caa1f4c3cf2117c8`; ethereum `0x76b34af6394f3b98e21eb9b16c89434caa063828`; ethereum `0x78962e442181bc1178fbdd1f0af3fa5467892963`; ethereum `0x7930275241970149be9bf22ce96320eb4ccb16bd`; ethereum `0x79757e7f37b84993345693f298155440735a86c7`; ethereum `0x7d506f872760fa016554595cef4b17ee78ef9902`; ethereum `0x823498fee1d55cbf0581e589c2eb242394239367`; ethereum `0x86c2bb2407fc215c009d4f3df04067881c2e4fe9`; ethereum `0x8a2707e93c9cee3e46a97c2637546988ede4e088`; ethereum `0x9ac75fc3cb8a631f4ecf4c16a89ee95d847b64a7`; ethereum `0xa05e35136ed8ebdd8d620806cc003ebae3a7e88d`; ethereum `0xa7d4f888014c6f80bff622f18c9485633e34708b`; ethereum `0xb036141f1b6b317147784186c93979310164df27`; ethereum `0xb4cf50e2e7dc2ee44890ce5214718a9bb538f957`; ethereum `0xc4ff0ab6883ddd0216bb2cde2104ea462cd0c4e9`; ethereum `0xc855b3a339392abac4e5f89ba5a29c984edd2dde`; ethereum `0xcbb626f91df8057a7ee4bf65cf10d97884e4111c`; ethereum `0xcdca6103791210495a2369021e980fb6118d5aa3`; ethereum `0xd96c52375a63506d3e3fdcfbcc640dccc076367d`; ethereum `0xe293a96b37cc855e3afb07d8f1f1c68258f76e63`; ethereum `0xe376ed92fe72125aa1f6eb9e113da7483dd11bb9`; ethereum `0xf1cd0056fb74de307f4302a9dadaa486d8f494f4`; bsc `0x0549a7232759066282f4abe97a9d8da02f99d618`; bsc `0x105a2a5f18b09fab97941f6f4043b2e25867560b`; bsc `0x127bae9d0f0754886788bf4f2250b5e12f272390`; bsc `0x3952a5b4dd825b44a8b54ae374e4e8e8704155a0`; bsc `0x3b36addc9d193f3b49810e1a2412f3edb0a208b2`; bsc `0x643f20488667bf8e35499d42e1be272b9544157d`; bsc `0x82cd95a302e614a7dbad05fae42c7f9a61f05125`; bsc `0xcaef460e70bdf91ba133a0c0b50b3659e44e20ae`; bsc `0xf851a6ade8c08677b8f0ad7fb1cfa18b01406a81`; bsc `0xffd75711b2fae2acec2f94a0493118febc2cca85`; polygon `0x3ab0e418be311a0bd00c9bac0d0e2029017e01d2`; polygon `0x520b78e8dc48157b2f13edd519a2f8f2f101db80`; polygon `0x9bf8757d33e20713d3fa61c889c892b00f3b3b6e` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2450fd71da52b942f3a3dc67cf7221287339a519`; bsc `0x4db74baaecc4cf591115949b62d0cf945c82d4fd` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 0 | bsc | unit-383380 | `0x49a08f9f445af5734cf15a1deab3b1c6a7988fb4` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | bsc | unit-383583 | 2 deployments: bsc `0x589de0f0ccf905477646599bb3e5c622c84cc0ba`; bsc `0x8075f0a6490ce1bd065eac9032d14dd2468ba6b9` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | polygon | unit-383556 | 2 deployments: polygon `0x20ca53e2395fa571798623f1cfbd11fe2c114c24`; polygon `0x8b9a81b66131a62aef5f229d218ee22b42e92ac2` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-383571 | 2 deployments: arbitrum `0xbadac56c9aca307079e8b8fc699987aac89813ee`; arbitrum `0xd96877ce3771c0504f0643a98f7646ce2226543f` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383304 | `0xcc3e89fbc10e155f1164f8c9cf0703acde53f6fd` | ⚠️ Unaudited |
| CreamEth2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383250 | `0x49d72e3973900a195a155a46441f0c08179fdb64` | ⚠️ Unaudited |
| CreamETH2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x742f5ea935c0fbf312a594f2a663c966107ed0d6` | ⚠️ Unaudited |
| CreamETH2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383276 | `0xcbc1065255cbc3ab41a6868c22d1f1c573ab89fd` | ⚠️ Unaudited |
| CreamLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8584b7ac8b1e4255c18784928fbf1c6fca40ca64`; ethereum `0xd7de27e74f1ca2ce413e19a0b30fcc95395bfcd9` | ⚠️ Unaudited |
| CreamLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383259 | `0x780f75ad0b02afeb6039672e6a6cede7447a8b45` | ⚠️ Unaudited |
| CreamLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383274 | `0xbdc3372161dfd0361161e06083ee5d52a9ce7595` | ⚠️ Unaudited |
| CreamLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383290 | `0xd5586c1804d2e1795f3fbbafb1fbb9099ee20a6c` | ⚠️ Unaudited |
| CreamLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383294 | `0xe618c25f580684770f2578faca31fb7acb2f5945` | ⚠️ Unaudited |
| CreamVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb146bf59f30a54750209ef529a766d952720d0f9`; ethereum `0xc08f48abef36aeeabc5e707b8dc504ae946762ff` | ⚠️ Unaudited |
| CreamY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d09144f3479bb805cb7c92346987420bcbdc10c` | ⚠️ Unaudited |
| CSLPDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0b4722779a0ed7d79101c0d251987e76d4151ffb`; ethereum `0x54704b1b81b66634fb48979a04cef969fcef0dde` | ⚠️ Unaudited |
| CSLPDelegate | unknown | project_anchor | own_supporting | 6 | ethereum | unit-383543 (6 proxies) | 7 deployments: ethereum `0x38f27c03d6609a86ff7716ad03038881320be4ad`; ethereum `0x5c291bc83d15f71fb37805878161718ea4b6aee9`; ethereum `0x5ecad8a75216cea7dff978525b2d523a251eea92`; ethereum `0x6ba0c66c48641e220cf78177c144323b3838d375`; ethereum `0x73f6cba38922960b7092175c0add22ab8d0e81fc`; ethereum `0xc489f7a77cfea584d0077db77a56c35331fc4b1f`; ethereum `0xd532944df6dfd5dd629e8772f03d4fc861873abf` | ⚠️ Unaudited |
| CTokenAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0xa67b44e37200e92e6da6249d8ae6d48f832a038d`; bsc `0x0dfd3bca58f7e0639e87fba6f778c87bfa138ba7`; arbitrum `0x5b4058a9000e86fe136ac896352c4dfd539e32a1`; arbitrum `0xf976c9bc0e16b250e0b1523cffaa9e4c07bc5c8a` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x01e2b783d076087f3e00a852ae0ae45ca77ca922`; polygon `0x1cc6cf8455f7783980b1ee06ecd4ed9acd94e1c7`; polygon `0x543e7ddfa005966254dd49494c5403b86488506b`; arbitrum `0x468a7bf78f11da82c90b17a93adb7b14999af5ab` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-383563 | 2 deployments: polygon `0x3fae5e5722c51cdb5b0afd8c7082e8a6af336ee8`; polygon `0xd96877ce3771c0504f0643a98f7646ce2226543f` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-383567 | 2 deployments: arbitrum `0x5441090c0401ee256b09deb35679ad175d1a0c97`; arbitrum `0x8b9a81b66131a62aef5f229d218ee22b42e92ac2` | ⚠️ Unaudited |
| EasyConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50697a3a8698e36549db3e1e46ef136149224790` | ⚠️ Unaudited |
| FlashloanLender | unknown | project_anchor | own_supporting | 0 | bsc | unit-383459 | `0xb7132898491431b63c7c90df31f13dc6dc414b5a` | ⚠️ Unaudited |
| FlashloanLender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: polygon `0xb3c68d69e95b095ab4b33b4cb67dbc0fbf3edf56`; arbitrum `0x1cc6cf8455f7783980b1ee06ecd4ed9acd94e1c7`; arbitrum `0x4eceddf62277ed78623f9a94995c680f8fd6c00e` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddc76a37c6a6f85caec3747aa4842cf721bfe334` | ⚠️ Unaudited |
| IBAgreement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x30f254104a8a7b7779483eeef5560397a737f812`; ethereum `0xa8e2abccc65e94f3d867b0a9a6ce29fce623f9b9`; ethereum `0xb9910c6fabbdbda7f060772f62b7a2471f54d8f0`; ethereum `0xcddba405f8129e5bae101045aa45aca11c03b1c8` | ⚠️ Unaudited |
| IBAgreementV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae50bd64e45fd87dd05c768ff314b8fe246b3ff` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfecc2d4689394202eabe6329acc1a0c6fe25736f` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x014872728e7d8b1c6781f96ecfbd262ea4d2e1a6`; ethereum `0x1eee7ec51083228869b95b2ad2d7cc105e7b5539`; ethereum `0x523854223c224e376d21dae73f054943c0576816`; ethereum `0x64caa08249041c36eba725f72bcba5fe48c64961`; ethereum `0x66fb6cf0af2cb8f967f2439ea855387cb431fed8`; ethereum `0x9079dc0140c43081696f353ccf71af6f791c9ac0`; ethereum `0x990f82875664bc6eb0e1e8e825ec0f91757e8047`; ethereum `0xa0d8116a3354f1daa2ca99440f32957356790d3a`; ethereum `0xa9d052ab8aba3a0726d4a6b8026b7eee427b86d4`; ethereum `0xaaedafc0a2550c8d25a881904b85d91931ba6992`; ethereum `0xb84ad7455adab0c56146e560f9069a9148cebaac`; ethereum `0xbd95e9e1fd1cc5012a1162af9a034ace03179905`; ethereum `0xc15a2b4bc7ca71808f557906cb328abfde42b17e`; ethereum `0xd34137fc9f6754bcdfce907d06f4d10e897b3eb5`; ethereum `0xe6c2d3b5c08738970acc4625e3113a5b6e38772e`; bsc `0x0a4f9ab20a56dd4624266c610b5f960bd72c5710`; bsc `0x410ecec0229beb4b66c98b217065767277a5d0b0`; bsc `0x4e4c96b038899e2f2597ef693b8278cfeb63e7db`; bsc `0x66d801f9bf3f3225251318565352d49e348aeb6d`; bsc `0x681ab0f8a860fe234025b0205eb69889aff32b75`; bsc `0xed06cb0a3978176d2d7182ae37cbff8aaad0835f`; bsc `0xedbed77f87793071179d27dcebe36cdb53e83003` | ⚠️ Unaudited |
| LiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x004d2829e5c21377dbe561e15c8a830389d524fa`; bsc `0xb4eaf7d8a7ec6b9cfb36c954158e69944120fe8c` | ⚠️ Unaudited |
| LiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd45498dbb6906b77f64d527b18862c938cba5a9d`; bsc `0xd465c5736c70734fa5de6a4fc6a251bbe09e83d2` | ⚠️ Unaudited |
| LiquidityMiningLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x56d21e79d72d7f62e038adc31ccd38989f077d08`; bsc `0x723c4aceca62a3759c1c6d9abe1e3c8f581f9092` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x06091717521c2002f2859c75f53987eaf1e5aa2f`; bsc `0x803bb411e0c0200349e30314d60c30a7509b6245` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0x4f85a4b398b27935ba3c8aa79b0dc5ea52d12ed0`; bsc `0x4237b8469e17231e5327be366eaed6c08844e37e`; bsc `0xf563505a4d933827ab2b1709d8523e6bbf35366b` | ⚠️ Unaudited |
| Normalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734279a9059dbb72cd3401983ef7f40f2ac6d3e9` | ⚠️ Unaudited |
| OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc92ae5e2a955a3440f677c1c60d48baa1cfa9eda` | ⚠️ Unaudited |
| OracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9465f75eecfa4293abcafc02d68e79bd4167f53` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01ae37a333d842428c668d6cc7130e552acab2b1` | ⚠️ Unaudited |
| PriceOracle | unknown | project_anchor | own_supporting | 0 | bsc | unit-383391 | `0x541876d6e61a200efd99711c5fda1f7a50d14847` | ⚠️ Unaudited |
| PriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: ethereum `0x3abce8f1db258fbc64827b0926e14a0f90525cf7`; ethereum `0x4250a6d3bd57455d7c6821eecb6206f507576cd2`; ethereum `0x9a975fe93cff8b0387b958adb9082b0ed0659ad2`; bsc `0x78af64b8a02ea3f6445096a4d866eb8f27141b4b`; polygon `0x0a4accd9d150ad4ddc7ea2e6151243ce668bf2f5` | ⚠️ Unaudited |
| PriceOracleFUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b4bc12971290b9561b99b77f3bea8c5e9e39caa` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x1d8e3881cc063e593673625bbb9e5191be61ae3c`; ethereum `0x3a4b89e371e9f1209fbffb4914087d0760eeafa1`; ethereum `0x4b7dba23bea9d1a2d652373bcd1b78b0e9e0188a`; ethereum `0x647a539282e8456a64dfe28923b7999b66091488`; ethereum `0x653f72f57418132136609cd638d0603990823cae`; ethereum `0x6b96c414ce762578c3e7930da9114cffc88704cb`; ethereum `0x72dbf592fb7add76911450058324d6e512db74a5`; ethereum `0x88e79e39a4f630be09efa4bf473388ab2636370d`; ethereum `0x9a5135157a74b753d11197a821e7f199f5b2fed0`; ethereum `0xc78cad9f1a1ff360fc6d2c07a2919b116750da23`; ethereum `0xe4c1e5d96360847de7dff72d2bd1c4b3d4284e97`; ethereum `0xecb0b5f5387732085a952714be391965c7dc1886`; ethereum `0xf74f976841209efed472ae9e447fa96765b6cd94`; bsc `0xdce8c990534283a6e0c8020e18cc42dcfb1b0ca4` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-383451 | `0xa82958c9f2ff63f6d2dc7d8ee22ae69fd0819477` | ⚠️ Unaudited |
| PriceOracleProxyBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x64e1c4fbba871b391333bcfce817a55aef356041`; bsc `0x6eedcf47711373e758a0ab4e467a36bc2151cd6a`; bsc `0x913b6e507bb1253150433e49a18791c6292a3d7c`; bsc `0xa7ae01e2d0e391ef1e800dd4e0712d36228a1c7d`; bsc `0xab548fff4db8693c999e98551c756e6c2948c408`; bsc `0xaf2b0a5192f01574105d8ad546a5ce614a5eced4`; bsc `0xc2e7fc53503eb419c8078d56895cb598c71177dd` | ⚠️ Unaudited |
| PriceOracleProxyIB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde19f5a7cf029275be9cec538e81aa298e297266` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: polygon `0x812c0b2a2a0a74f6f6ed620fbd2b67fec7db2190`; arbitrum `0x06288754f31d100039b21e62a429e4b81e56b626`; arbitrum `0x73cf8c5d14aa0ebc89f18272a568319f5bab6cbd` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383306 | `0xe82225ba6bed28406912522f01c7102dd9f07e78` | ⚠️ Unaudited |
| PriceOracleV1 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-383302 | `0x20ca53e2395fa571798623f1cfbd11fe2c114c24` | ⚠️ Unaudited |
| ReserveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0c5bf19618a8fcddb132d82bc6c5ea736a1beaed`; ethereum `0x1533ba49dd0a5c8cd9e2e3666dd11128e70b2bcb`; ethereum `0x8c37ed7ac3ba0e8cf3640d31fef6335af84306f4`; ethereum `0xa741bc0ade4b6cd2257e913f23fd024e9f0190eb`; ethereum `0xbdfe6079b50df618e81983dd6ad31cfa6d45d41a`; ethereum `0xd073e970cabfdeffe518c51e24910f887b5808a1`; ethereum `0xdde8310a8a266191a7718b553a6b66ac07f8fe53` | ⚠️ Unaudited |
| StableConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xe649d8b63b8cfd92008edcf6baefd67ade489e30`; bsc `0x028337c13489dff71f8afe9aa9d1d17969aa48b3` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383230 | `0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383232 | `0x1676fc274b65966ed0c6438a26d34c6c92a5981c` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383234 | `0x1e5fe7bad3672d0d0cc041b7154331ee461c3349` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383236 | `0x224061756c150e5048a1e4a3e6e066db35037462` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383239 | `0x2689008dcda0c2b744b344b9e5a3d5a042c227da` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383241 | `0x2ab765c2b4a4e197fbae769f86870f2310a04d61` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383245 | `0x3ba3c0e8a9e5f4a01ce8e086b3d8e8a603a2129e` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383248 | `0x43a8ece49718e22d21077000768aff91849bceff` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383252 | `0x65bc20147e2ca6f3bf0819c38e519f8792043b36` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383256 | `0x71a808fd21171d992ebc17678e8ae139079922d0` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8fcb0ca2e16cab45f8f0c6304d2a022b6dcda3f3`; ethereum `0xadf2b5085873c747f68036f3ae64ae0a7db5501a`; ethereum `0xc29e89845fa794aa0a0b8823de23b760c3d766f5` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383263 | `0x9d2850c3112b5fb851c4aae23c1e97c1736898cb` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383269 | `0xae76e0d0c4767e94eb2898f42a96696ae0061cea` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383271 | `0xb8c3a282de181889ef20488e73e7a149a8c1bfe1` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383278 | `0xcc5f8ca88caba27f15746aeb481f0c446991f863` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383280 | `0xccd5cb3401704af8462a4ffe708a180d3c5c4da0` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383282 | `0xcf679b2e16498a866bd4cbda60d42f208084c6e1` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383284 | `0xd032bfedc68ce5067e3e0b766dbcf653ceea541a` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383292 | `0xe539416a21f6d7ef7e143f1435484d333c274480` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-383565 | `0xf4d48ce3ee1ac3651998971541badbb9a14d7234` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 1 | ethereum | unit-383550 | `0xc581b735a1688071a1746c968e0798d642ede491` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 20 deployments: ethereum `0x1b0c2586df3daad42ac2fdcaa0f6b91623747556`; ethereum `0x26c325c8880ffe5a5744ff667ba7d8651b868710`; ethereum `0x4aa560d1eb33a55bd6210364fa588bda132970a5`; ethereum `0x61e9a6ab4923f5046c0fb80e5c9f98afc9995fad`; ethereum `0xd369e8eaa0d2665dfea6eb51ff2adfca4eaa7891`; ethereum `0xd6c04cf463a52a9c929d434f9f84ee70c1c0ac6f`; ethereum `0xe2d39aed396f03c7bcfab396af33a74cac4bbd2e`; bsc `0x023ca9c6a96151d149b7f54cd0d904f80a6d1ff9`; bsc `0x5f18b46ffb6dfc1a4a2c2fdbc4de48dc741c7ef4`; bsc `0x8122e8585724bfd0a5964847fae47c949b90b899`; bsc `0xd68f6c83e160d86bf1fc0120a0d96a74cf291bff`; bsc `0xeb689084bd7990604eef53376d269f87cb12ca63`; polygon `0x06288754f31d100039b21e62a429e4b81e56b626`; polygon `0x379555965fcdba7a40e8b5b5ef4786f51adeef31`; polygon `0x79ea17bee0a8dcb900737e8caa247c8358a5dfa1`; polygon `0x98d6afda3a488bb8b080c66009326466e986d583`; polygon `0xb1fd648d8ca4be22445963554b85abbfc210bc83`; arbitrum `0x3fae5e5722c51cdb5b0afd8c7082e8a6af336ee8`; arbitrum `0x5dc3a30d8c5937f1529c3c93507c16d86a17072a`; arbitrum `0x7ef18d0a9c3fb1a716ff6c3ed0edf52a2427f716` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbadac56c9aca307079e8b8fc699987aac89813ee` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0ca0f068edad122f09a39f99e7e89e705d6f6ace`; ethereum `0x3986425b96f11972d31c78ff340908832c5c0043` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0x521a06c080ff87cf8d3b47cfa46ca6ecb059e88d`; ethereum `0xa1fb1867ac95b21603a6fc8fa4f438df5df341ac`; bsc `0x1d09144f3479bb805cb7c92346987420bcbdc10c` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383228 | `0x00000000219ab540356cbb839cbe05303d7705fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d919a8f5d9584cbc89430de6b5b0dcb26b9b858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24e45b60e13b6f96e983bb01ea1326fa5169ccd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25bd5c8ed1705793a3daa273c9bc7f15b22c630e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383254 | `0x69f2b8d8846e3dcd94c09e4f3cbb8d2ba8d9423f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70339079ac505bbe46fcf5365c87809585e69112` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383261 | `0x84858f72d991f11a760dd2d26caff7962307900c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x867072d6245467edfdbd0fc8e9f2bf0701f40f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b7f980e5b37e46d0dc5d0f1a9a6e452809e56c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d77680d75ab51d8f889f45770d3d3c14bd2664d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383265 | `0xa5462bc7bb1dd43b0db84c2de71e34a03ac11deb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383267 | `0xa8682cfd2b6c714d2190fa38863d545c7a0b73d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb424bebf463648d0594239dce71df0eb4f33e95f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383288 | `0xd400e22dca840cc7e342df1d9945684bbd587659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7aecf4d4e2215ee2b6b83a3884acd2e0d9adb1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383329 | `0x1a014ffe0cd187a298a7e79ba5ab05538686ea4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2412921958db8701b526fe8e64516f1ad94e8629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x284bb6e4d82de30de4dadaceff4fe1a75e47749b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32a237d2138b2bfff2316d0520c29dc05542d28c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fb9e40430526629425dc753e1c17edcb1c0f039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6af4738ceb03ba0ac6ef6f6094a45d52dd28822d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6de04aa3b1750eabd20e5608d3a96c552ddd3b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ea00ae96bc03c7f255f4adf5b6956c11c90ae70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84d6fe44d88bcda3097f957389ed976cd0807604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc977c6427f255d0ec38da7fc6b46ecd9640ea2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd44029845b2ac6952bf9b58fb23f49e381b60055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe630c712b52763240a270ffe6a20b22b7721786e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe85d398d016f76337c4398f245f15bf073275afc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383297 | `0x139dd8bb6355d20342e08ff013150b1ae5040a42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5eb35daf9ef97e9e8cc33c486bad884a62cae9ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383300 | `0x139dd8bb6355d20342e08ff013150b1ae5040a42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x520b78e8dc48157b2f13edd519a2f8f2f101db80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66e9c76b76f73b7f04108e26d201bc4023386fa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x812c0b2a2a0a74f6f6ed620fbd2b67fec7db2190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd528697008ac67a21818751a5e3c58c8dae54696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee0c0a840cbfc2145580c517b10afabd0b788328` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CREAMSummary.pdf](https://github.com/trailofbits/publications/blob/master/reviews/CREAMSummary.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [trailofbits-CREAMSummary.pdf](https://github.com/CreamFi/compound-protocol/blob/master/audits/trailofbits-CREAMSummary.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [CREAMSummary.pdf](https://3057495129-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MKJWcUfnKdJ1BjWKoMM-3555916521%2Fuploads%2Fgit-blob-1dd4323e898465d6750e678f0000f254227453b9%2FCREAMSummary.pdf) | unknown | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2998] CREAMSummary.pdf — no match: The report does not list specific contract names in scope; it only mentions the repository and commits. No contract names are explicitly identified.
- [2999] trailofbits-CREAMSummary.pdf — no match: The report does not list specific contract names in scope; it only mentions the repository and commits.
- [26660] CREAMSummary.pdf — no match: The report does not list specific contract names in scope; it only mentions the repository and commits. No contract names are explicitly identified.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x04c61ef58a6f1d6c572045a39a5434ab9dee69fb` | CCakeLPDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x22b243b96495c547598d9042b6f94b01c22b2e9e` | CCapableErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x15cc701370cb8ada2a2b6f4226ec5cf6aa93bc67` | CCapableWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6` | CCollateralCapErc20CheckRepayDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x054b7ed3f45714d3091e82aad64a1588dc4096ed` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1241b10e7ea55b22f5b2d007e8fecdf73dcff999` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1a122348b73b58ea39f822a89e6ec67950c2bbd0` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x09e470fe983812df81fb8bf6f14fe9a7832fe7ec` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0e9d900c884964dc4b26db96ba113825b1a09baa` | CCollateralCapErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x20d5d319c2964ecb52e1b006a4c059b7f6d6ad0a` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5eb35daf9ef97e9e8cc33c486bad884a62cae9ce` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x011a014d5e8eb4771e575bb1000318d509230afa` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1c8645bec146ae9a3489fc5821b69c9191577331` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2f4ad359d49164d2b794cc7d0324540d22accadb` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b86e0598616a8d4f1fdae8b59e55fb5bc33d0d6` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9517593d84324e9669174976a98b19c3d2dd9bf9` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd06527d5e56a3495252a528c4987003b712860ee` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1ffe17b99b439be0afc831239ddecda2a790ff3a` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2ba592f78db6436527729929aaf6c908497cb200` | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd4cb328a82bdf5f03eb737f37fa6b370aef3e888` | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3d5bc3c8d13dcb8bf317092d84783c2697ae9258` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x49a08f9f445af5734cf15a1deab3b1c6a7988fb4` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x589de0f0ccf905477646599bb3e5c622c84cc0ba` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x20ca53e2395fa571798623f1cfbd11fe2c114c24` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbadac56c9aca307079e8b8fc699987aac89813ee` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcc3e89fbc10e155f1164f8c9cf0703acde53f6fd` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49d72e3973900a195a155a46441f0c08179fdb64` | CreamEth2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcbc1065255cbc3ab41a6868c22d1f1c573ab89fd` | CreamETH2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x780f75ad0b02afeb6039672e6a6cede7447a8b45` | CreamLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbdc3372161dfd0361161e06083ee5d52a9ce7595` | CreamLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd5586c1804d2e1795f3fbbafb1fbb9099ee20a6c` | CreamLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe618c25f580684770f2578faca31fb7acb2f5945` | CreamLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x38f27c03d6609a86ff7716ad03038881320be4ad` | CSLPDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3fae5e5722c51cdb5b0afd8c7082e8a6af336ee8` | CWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5441090c0401ee256b09deb35679ad175d1a0c97` | CWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb7132898491431b63c7c90df31f13dc6dc414b5a` | FlashloanLender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x541876d6e61a200efd99711c5fda1f7a50d14847` | PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa82958c9f2ff63f6d2dc7d8ee22ae69fd0819477` | PriceOracleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe82225ba6bed28406912522f01c7102dd9f07e78` | PriceOracleProxyUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x20ca53e2395fa571798623f1cfbd11fe2c114c24` | PriceOracleV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2689008dcda0c2b744b344b9e5a3d5a042c227da` | StakingRewardsLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9d2850c3112b5fb851c4aae23c1e97c1736898cb` | StakingRewardsLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf4d48ce3ee1ac3651998971541badbb9a14d7234` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc581b735a1688071a1746c968e0798d642ede491` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 129 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=3
- Match method counts: n/a

Zero-match audit list:

- [2998] CREAMSummary.pdf
- [2999] trailofbits-CREAMSummary.pdf
- [26660] CREAMSummary.pdf

Fork inheritance lineage and inherited audits are included when available.
