# Agentic Audit Brief: iTrust Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: iTrust Finance (`itrust-finance`)
- Website: [https://itrust.finance](https://itrust.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, optimism
- Contract surface: 622 unique implementations (958 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $351,583.98
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for iTrust Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across ethereum, optimism. Structural roles: 4 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: abstract (2), contract (2)
- Detected standards: erc1967proxy (2), erc20 (2), erc20permit (1)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- NXMToken (`0xd7c49cee7e9188cca6ad8ff264c1da2e69d4cf3b`, chain 1)
- TransparentUpgradeableProxy (`0xd82c32dd3585b5bc528688efa408ada09963c238`, chain 1)
- TransparentUpgradeableProxy (`0xf4104cade73d699922cc657a97cb1132bc620978`, chain 1)
- wNXM (`0x0d438f3b5175bebc262bf23753c1e53d03432bde`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 619 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 145
- Confirmed-live implementations: 3 of 622 unique; 619 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/211
- Verified + Unaudited implementations: 211
- Verified by bytecode match: 0
- Unverified implementations: 411
- Unique implementations: 622
- Raw deployments: 958
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (211)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6818254e0a141ca3d85a5f44989f18e820e33ccb`; ethereum `0x9076091b52efd4b90b7bf9ca57576bddf2e03b5f`; ethereum `0xc7dff3d0dfd96dfb6b6db7a6f4151fe4fd028586`; ethereum `0xe969bd6c4a9708f7536f47a2a73bb84ab3eff6fd` | ⚠️ Unaudited |
| AmphorStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x35df8a95b348dd87167ed00b3421ba15d95ac1c8`; ethereum `0x697655518c1e063fa1f14de2bf37602b7316305b`; ethereum `0x73a99d5383ab115a24b4e3f6def02f7dd0e57b16` | ⚠️ Unaudited |
| Artifaqt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34d565bddcff2dd74bc98e056ebd32dd5f5e1d34` | ⚠️ Unaudited |
| BarnBridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0391d2021f89dc339f60fff84546ea23e337750f` | ⚠️ Unaudited |
| Claims | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58676340f458b36997608672be6548c92ce50714` | ⚠️ Unaudited |
| ClaimsData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc2d359f59f6a26162972c3bd0cfbfd8c9ef43af` | ⚠️ Unaudited |
| ClaimsReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebdd9752be578c03491ff1083c0f738aa8687d48` | ⚠️ Unaudited |
| ConvexStrategyETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3bcba0afd36c9b350f46c570f89ab70817d122cb`; ethereum `0x6d8793acbe1bf71072a0cfb24c0d1f6abf897daf` | ⚠️ Unaudited |
| ConvexStrategyMeta3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x35168324dc1981addc3bc915788e200bedf77865`; ethereum `0x6042d559acf454f73d8c0319386e46f65ee77fd7`; ethereum `0xbc1707d16541108b7035e52e1daeb27ca4b6b79f`; ethereum `0xdb7306ddba67dd9d5af08204e314f4de6c29e20d` | ⚠️ Unaudited |
| ConvexStrategyMeta3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4adeb02dd22af00a8b6189bee89769ed76129956`; ethereum `0x81dbe9ff361c0422b86d929a91b48b79da041a70`; ethereum `0xee671e6d7aaf2bb374d5f98c40777a0824021a78` | ⚠️ Unaudited |
| ConvexStrategyMetaBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0198792f2849397908c092b6b57654e1a57a4cdc`; ethereum `0xb73d51af8fc15423664f7ecd759179ad4e6a26ee` | ⚠️ Unaudited |
| ConvexStrategyMUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x271ce5ded4ccbd28833bddf8a8093517299920f0`; ethereum `0xa4b662ee32bf65e839ae27cf9f5550354ffe41ce` | ⚠️ Unaudited |
| ConvexStrategyPlainPool3Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03563deef50b957f69232de055ea1a8aa6d854d9` | ⚠️ Unaudited |
| ConvexStrategyPlainPool3Token | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4ae60bc9a3efc160ae2eba70947a9b47ad2b9094`; ethereum `0x8f889dc453750c91c921bd6fb9a33a8a579b1baa` | ⚠️ Unaudited |
| DelegateStakingRewardsIDLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747e819b878956fb6e5eb936a6415a5d037ff388` | ⚠️ Unaudited |
| EarlyRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1f71ed24aba6c8da8ca8c046bbc9804625d88fc` | ⚠️ Unaudited |
| ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb9200c2aa4053102b984806c63d67e21b8f2070d`; ethereum `0xf938424f7210f31df2aee3011291b658f872e91e` | ⚠️ Unaudited |
| EthenaCooldownRequest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0c4a2b14f0acd936226a598be6bfed190e098d1` | ⚠️ Unaudited |
| EulerStakingPYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf93471a82241c2be469d83d960932721b098ffb` | ⚠️ Unaudited |
| FalconXAAAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x48fc1a04e5e18c994c3165c9ad0d3553d7f57724`; ethereum `0x8fed610aefd81f6bec517854b1a245deca83667e`; ethereum `0xefffa40db994d0f573765e48027527f8c22c8fa2` | ⚠️ Unaudited |
| GearboxStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x29c794b9a70752c41d65ebccef1c1ee697387510`; ethereum `0x9fb97f41aea0b974b30d9db14985843f2bac099b`; ethereum `0xee4043b3e4fdf830a557aa78604e16a599701dfa` | ⚠️ Unaudited |
| GearboxStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67f2c664891e4fcdecba6b596567eb0a872a84e6` | ⚠️ Unaudited |
| GovernableFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x107a369bc066c77ff061c7d2420618a6ce31b925`; ethereum `0x69a62c24f16d4914a48919613e8ee330641bcb94`; ethereum `0xb0aa1f98523ec15932dd5faac5d86e57115571c7` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc72a7b022f95570399bc1fd3956ecd863b391c4e` | ⚠️ Unaudited |
| GovernorAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02faf7cfee786111eae6747a0c344b48c1ed5e5` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2256b25cfc8e35c3135664fd03e77595042fe31b` | ⚠️ Unaudited |
| HypervisorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ae6c8c7005c7317963487bee834047eb497ceae` | ⚠️ Unaudited |
| Idle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x875773784af8135ea0ef43b5a374aad105c5d39e` | ⚠️ Unaudited |
| IdleAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x0bc3bba4ef3d1355a76e69900f98a59d30ef54f3`; ethereum `0x0f4b416a651f57358c2aa86da285100fbe5bc7c9`; ethereum `0x11833cf5145c4ec310b315fa9781c53cdb4b9718`; ethereum `0x13898151591b91ad5c41385b9af333676f481788`; ethereum `0x20aeea0de311420c22868f266e92088e4f198b51`; ethereum `0x23dce3933149aca21c4d5c778c7fd549799f4249`; ethereum `0x292714dd74a03adaf59c0dec61353340e8a85e67`; ethereum `0x2f326f13c6624a4eec1d93bce1b0a5a6b8c9da6e`; ethereum `0x31acf75be792721532f6527f7c99c05b8803f2f7`; ethereum `0x695085c4eae4c0416e26de99059db71d8183b783`; ethereum `0x80af31b494de6e3a5657e5a3abeae59949c7f070`; ethereum `0x9509af16566eb4d7401b50250de73d2f6dfb60c3`; ethereum `0xa3a3741c48298e21eebe5a59beaf6f89dc0e0c4c`; ethereum `0xa91cf5b36a691bda39640156b081cb71c3e9992e`; ethereum `0xb4226b21900513674cfb0263e7930f969e12efff`; ethereum `0xb924982a41aa35f4eb1301833cbe4e1a9b6124e4`; ethereum `0xc0490b219a85f71c3bbae580099bd695edadae37`; ethereum `0xc4ef781fc7fea83f84d2408cb2a5f6bbf3123a77`; ethereum `0xcc6ba0fa7671675c5e94fcb34ee233b9ff58e8a6`; ethereum `0xe85f72cb10eb9406d3857397e194168e43de534d`; ethereum `0xf5d90e680ede7719850bcd7975922bd3095c2f55`; ethereum `0xff9338dae3d2335172156467c5440da4db05ae52` | ⚠️ Unaudited |
| IdleAaveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c5a5d7832e9084fd88885823afa8cd99250a70c`; ethereum `0xfc86f82bdd8ad4e1b79e48d570a04e3f2f208c0f` | ⚠️ Unaudited |
| IdleBatchConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | ethereum | n/a | 10 deployments: ethereum `0x08db226d63ce724a6091ba82d28dfc76ceca23d8`; ethereum `0x174a273f0ea28e55b6dd13259aa43d262b863a86`; ethereum `0x86c8b56d124c2a8e7ea8a9e6a7f8ed99dde5cca8`; ethereum `0xa306796036737d6c2a3f50d3edb9b8d456511db2`; ethereum `0xa6c89a31d59f9c68d9cba28d690c5e52058fb472`; ethereum `0xbfdc7d97559173b52ef2a2f1bc9becf97b0d401d`; ethereum `0xd47b96fb33b79a4dd81a2bfa676ebb669166f619`; ethereum `0xe0bfd08da4daf8f8ba11d1c3802009e75f963497`; ethereum `0xe2ee519399a49f1a2004a25da61e82867a69b9b1`; ethereum `0xee5c50c7c49dec47dde2f9b0233b9e14a8f00cf2` | ⚠️ Unaudited |
| IdleBatchedMint | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x4dbf03a2d7037eb59ae03d3a2927f1d7ec805c69`; ethereum `0x562c4fd96f0652f5fcfa96b0a33088b5a6eaee9b`; ethereum `0x633fb4d38b24dc890b11db2ae2b248d13f996a79` | ⚠️ Unaudited |
| IdleBatchedMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7a9efd7f689c9173db9037f44f3933376821de8d`; ethereum `0x89bf671ce19eabc0c9387960198676875f3ab56a` | ⚠️ Unaudited |
| IdleCDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x1ea9ae797972ad9fc52c55105d184d8b059bb716`; ethereum `0x2d90df48c706874f1b9a02054273996fbf458964`; ethereum `0x31bee1fb186fc3bbc8f7639206d675cf3dea2140`; ethereum `0x3cd51e62e14926dda0949ea3869d5fad0b9ab844`; ethereum `0x46de3a3da932f1cbc151db76ac1bee935611544e`; ethereum `0x4ebe360e970e6e5b98c974d2e9102d46a96bd3bb`; ethereum `0x6f322059caf329b598b3c09de27c4f851780b62f`; ethereum `0xb93450f818ae2ce89bc5d660049753883acbb883`; ethereum `0xc177760cfb98b021338c09afa728882d8c1acbea`; ethereum `0xc9f019fa138ba4fac3b4e400705fbdd75b20af8c`; ethereum `0xd6ab3b405f1c6fe015e35258f7d77456b5ccd0dd`; ethereum `0xe8cc6cfa4d8610a86fa988e11e38ca385a93aecc` | ⚠️ Unaudited |
| IdleCDO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xad6cc71ef6ba82ffad9adf40220d035669eacb58`; ethereum `0xdce26b2c78609b983cf91cccd43e238353653b0e` | ⚠️ Unaudited |
| IdleCDO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbed6e1ff4363730a56dfdcd6689e5d958085299d`; ethereum `0xd0dbcd556ca22d3f3c142e9a3220053fd7a247bc` | ⚠️ Unaudited |
| IdleCDOAmphorVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9e0c5ee5e4b187cf18b23745fcf2b6ae66a9b52f`; ethereum `0xa6b353b2d590d3c0cbcb85c6ef02ef9c1da2aa59` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0b4f695b05902efc14344d19ed1d0b0e061c8a3e`; ethereum `0x49ba0471aff5bb1a6e4588389e27df2a9e8e1933` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x420d54c94810c303986ae3b7688709a6bb552057`; ethereum `0x5ecf8bf9eae51c2ff47fac8808252facd8e36797`; ethereum `0xf0db13c967570e0db9b13a44d9782308b72c4411` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x49ddc46222ebb472d0630cb18b7f77c05d350df8`; ethereum `0x5cc24f44ccaa80dd2c079156753fc1e908f495dc`; ethereum `0xc05b41ef0567c7644d1c40fecb951100a30814e4` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x51257e0d34f7c9795f2547725b6c87ef6140dafa`; ethereum `0x9c8aefb643e538043fe624ff6c2a7c803651292d` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9f22c9f070204b6d5919edc7d4e14e6b0b62c4ef`; ethereum `0xf06dc60e2f7ace741620c11963f470318c34ba7d` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb1947aac0bb38bb467ae251f6ddaf2d6a340d37` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x17979eb3866efdf5aa295f0d41a82c6fd5ceb5e8`; ethereum `0x392504f486a3f7caa24b104a9618f5ae30e2ab9a`; ethereum `0x47b6d73cfcd3a6be3c5fa046438eed6e4df55753`; ethereum `0x4e31d9c49e8c63f4b3926ae6a8848b756fd0b8df`; ethereum `0x5ab109d145d807a2e26d7d797db6f67ed9eb780f`; ethereum `0x6de6ea8659c8cea1f2aaf29758e40ff4c8a1a53f`; ethereum `0x9f3a307b61b152128f416806e737e990ff8b62de`; ethereum `0xd29c4cba2422476295ece570508c825145e792a4`; ethereum `0xd85ad3529716fdb6b58a0b62de94430eceb6837d`; ethereum `0xdd596250f838af8862d30e9c78a143356894a18d`; ethereum `0xe9b123bf0941817e4437595738d3cd59a9802c11` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x433d5b175148da32ffe1e1a37a939e1b7e79be4d`; ethereum `0x8016e6f35a4b32a5ea4c3919418039c7daffccaf` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4462ed748b8f7985a4ac6b538dfc105fce2dd165`; ethereum `0xf70e982682326ab6641d32058526b1b61aae8754` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x49fc162c08a0ebddb00d7876fe435b9d479ebe6c`; ethereum `0xf6223c567f21e33e859ed7a045773526e9e3c2d5` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8fb3f730fb2ab4b28e3d39a67e916dc98d59745c`; ethereum `0xfb77ee48b6a69b4c97af7474b4f175591aeb61b3` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb0ec6865ebda158aeae85461257e8654f9040d36`; ethereum `0xdee2233543d1f29619f949b111c9988089337fee` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc779ec03d2e6a31e309d27cdc0e000b4692eed18`; ethereum `0xd8a70d0506ee5825befce5de099893f0fdadcf98` | ⚠️ Unaudited |
| IdleCDOEpochVariantPrefunded | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x73fb8d2d96486b6aac8713f0c1cc2633e03a0f6a`; ethereum `0xdb90ae28a02b6cb1772192f88fdac5516e094459` | ⚠️ Unaudited |
| IdleCDOEthenaVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1eb1b47d0d8bcd9d761f52d26fcd90bba225344c`; ethereum `0xea08230de3a5978ebef254a6b7d8f2f8b837a373` | ⚠️ Unaudited |
| IdleCDOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c9916bb9498f637e2fa86c2028e26275dc9a631` | ⚠️ Unaudited |
| IdleCDOGearboxVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbc48967c34d129a2ef25dd4dc693cc7364d02eb9`; ethereum `0xe9eccadeb31299cd9edb18959b5b6f4e034b5649` | ⚠️ Unaudited |
| IdleCDOInstadappLiteVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0d0f8a0f04d54197f85fee6d5523df2d84a73b27`; ethereum `0xd49d6beee20f87ee28f00f9376ec962aab9aeae2` | ⚠️ Unaudited |
| IdleCDOInstadappLiteVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8e0a8a5c1e5b3ac0670ea5a613bb15724d51fc37`; ethereum `0xc07c0f6ffa78ddad677a22697c083892209bb83b` | ⚠️ Unaudited |
| IdleCDOInstadappLiteVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc3d127c37957492955c11e15ccf1d2f20010230f`; ethereum `0xf52834404a51f5af1cdbeedaa95b60c8b2187ba0` | ⚠️ Unaudited |
| IdleCDOLeveregedEulerVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x29d094110c7a89f1cb6c975df0a38cae80f24b21`; ethereum `0xb5a2492926815116b69fdb21a471a60ce79148db` | ⚠️ Unaudited |
| IdleCDOLeveregedEulerVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5a62ca401667b18557ef23d84bf27aff5a0164cd`; ethereum `0xcb2bd49d4b7874e6597dedfaa3e7b4e01831c5af` | ⚠️ Unaudited |
| IdleCDOPoLidoVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x56050f117d675041da6a4b501f0cb75d455759a1`; ethereum `0x6df196928ace3c98b12ff0769b3164753e5099aa` | ⚠️ Unaudited |
| IdleCDOPoLidoVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe7bdf364862ef8a31426e6e2b7d5defde3a59a26`; ethereum `0xf87ec7e1ee467d7d78862089b92dd40497cba5b8` | ⚠️ Unaudited |
| IdleCDORegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84fdee80f18957a041354e99c7eb407467d94d8e` | ⚠️ Unaudited |
| IdleCDOTrancheRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x4473bc90118b18be890af42d793b5252c4dc382d`; ethereum `0x8fcd21253aaa7e228531291cc6f644d13b3cf0ba`; ethereum `0x9c3bc87693c65e740d8b2d5f0820e04a61d8375b`; ethereum `0x9ce83d1fd9bb82540fcb48f69870d7153e71533c` | ⚠️ Unaudited |
| IdleCDOTrancheRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64239152e4fa7913c790b1bdce332fccdaaa7219` | ⚠️ Unaudited |
| IdleCDOTruefiVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1f5a97fb665e295303d2f7215ba2160cc5313c8e`; ethereum `0x8b39bbf63b8302ea75a08014b233c72127aad670` | ⚠️ Unaudited |
| IdleCDOTruefiVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40072fc98b3a128950b1857bd7ce57b144477407` | ⚠️ Unaudited |
| IdleCDOUsualVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x41b55b28de948d9e5bbe62f30d47f8f0f29a7e8b`; ethereum `0x9c85f2faf81e18ebfd9a17510d8bd5fe8ebb16e4` | ⚠️ Unaudited |
| IdleCDOUsualVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7c31fdca14368e0da2da7e518687012287bb90b1`; ethereum `0xef8d9df3b1bc40bae634f75a5ab144e82ad7128e` | ⚠️ Unaudited |
| IdleClearpoolPSMStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3687c0f8760371fc1bd1c7bc28695c388cded5a0`; ethereum `0xfe91b8a83d6d7f8bf9b0cf3cbc6eb9687ee17e79` | ⚠️ Unaudited |
| IdleClearpoolPSMStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x89a13b0be966e53429372bc47721e336befcf347`; ethereum `0xfca6b0573034baaca576ea2ef675032fb8df6cec` | ⚠️ Unaudited |
| IdleClearpoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x16f6be72882b24527f94c7bccabf77b62608083b`; ethereum `0x6850398a001776aeb8a4e9af75c3fdab49cecad1`; ethereum `0xb9c8d0a004772000ee199c4348f1933acbfdc1bb` | ⚠️ Unaudited |
| IdleClearpoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x371ec16a15c00a3deac8e6ab929d8da4d68c60cb` | ⚠️ Unaudited |
| IdleClearpoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x478601cabe3c3c0bad9bd5ed024c36648b9a148e`; ethereum `0xb9b541691ad966c85f0a152dfafa1901e1831001` | ⚠️ Unaudited |
| IdleClearpoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x526d62d71c4c61ad4365ef5de3d3e2983b14020c`; ethereum `0x54ae90be2dee0a960953c724839541e75bb1f471`; ethereum `0x84b2deaf87a398f25ec5833000f72b6a4906b5ac`; ethereum `0x931c080c7ed6b3c6988576654e5d56753dc92181` | ⚠️ Unaudited |
| IdleClearpoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6963460d921407e4db82a72837a1e709ac7a0d25`; ethereum `0xc8e2fad99061407e947485c846bd05eae9de1991` | ⚠️ Unaudited |
| IdleClearpoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe250b65b6fa2a61fb99f7c41c1c615b0ed3321f5`; ethereum `0xff35f8a1202e58039c7ccb50bfa75b8254f0e821` | ⚠️ Unaudited |
| IdleCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x55583f7ca92f4cf051e6f55d77a967ba9b2c1edd`; ethereum `0x628b4df112d20c1b001e9ccfb2bf853e4dd9eb6e`; ethereum `0x7e5d8e57a5910005fc65f383cb79f581dc8507f8`; ethereum `0x969ce00488720d4907c75da5fd9565b5ac27e8ba`; ethereum `0x9f0f9729c84ee22e5639d0aa43a94d619570dbd8`; ethereum `0x9fc29bd6b61b6d050c7bcde830f2d70c3f0b4ad4`; ethereum `0xa7988bc7fc7eb3f49cea6059cd4da7212cc126df`; ethereum `0xbe3e788bd11ab3070b5264aeed25c1976ab6ac00`; ethereum `0xe8981aa72d495aa71681c41159c1ec8746ee3fbd` | ⚠️ Unaudited |
| IdleCompoundETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9a7aca7618801ca90f91beaa5a1a2e90a55605ca`; ethereum `0xed4fa9580053bbfd62c3b03cc29a939f44698617` | ⚠️ Unaudited |
| IdleCompoundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x0c39daf173646c4ce9e6a678425ed965c98ccc66`; ethereum `0x0e90cf05acb23d8dfa856a74e74a165c6a7af8b3`; ethereum `0x2d1d26777404bdab35aab8cad9ed1fe5a2f629eb`; ethereum `0x3751b4466a238db35c39b578d4889cfb6847a46b`; ethereum `0x5ccba376bc879362b1069323b74298ee68ff83d6`; ethereum `0x728014ad4820ffbb9f7a73d6cfc4b226c62855b2`; ethereum `0x7466c91238d6e9c16801b4b885cfc3155af3fce3`; ethereum `0x9fd4bf528563f0535fa84c93200e105612b39bfe`; ethereum `0xd4d7e65a66850a19680802096896a31866131a9b` | ⚠️ Unaudited |
| IdleController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x275da8e61ea8e02d51edd8d0dc5c0e62b4cdb0be`; ethereum `0xf66b8c3d9933a8f9362b4d30f2b918cc97e5a31e` | ⚠️ Unaudited |
| IdleController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c08bacc1fc6095f21eb59e57318a6c06d3fca24` | ⚠️ Unaudited |
| IdleCreditVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x01b8a788d2742d8d1706fce7204fb523c51e175c`; ethereum `0x38140673567957dc7946abce45c271cac33fa2f0` | ⚠️ Unaudited |
| IdleCreditVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x05c65c915f9d465dd55993ffae69943638eeb42e`; ethereum `0x40dfe8a2c8b95746b1f36f921fb4e812a1a6725a` | ⚠️ Unaudited |
| IdleCreditVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x06975bb418effb0029fe278a6fa15b92bb97496f`; ethereum `0x55573cb84f02cb5dc4dd923bf5cd9c5b4b12a4a7`; ethereum `0xa30be796fb2babf9228359e86a041c14e29f86fc` | ⚠️ Unaudited |
| IdleCreditVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x17e9ab2992dfecbe779a06a92a6cdb9fe6aeeef3`; ethereum `0x99a1578d340c2799dceca7d0d83e8d03b9c6eb30`; ethereum `0xc226dfc347abd8bef6efbbf67b58589333a004a2` | ⚠️ Unaudited |
| IdleCreditVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1cbd086e16f1188e0e15a153124d6f5c81e57f3e`; ethereum `0x838a31b8735cf36592066a50e2f7579ce52141ac` | ⚠️ Unaudited |
| IdleCreditVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x1ff9a2c8d71318667eb218ad409054a6a36b927a`; ethereum `0x3daceb62bc64cdd4d12f7df6376b9f7ee6888dba`; ethereum `0x62568889198f1bab603e26da7b6c1808838fe489`; ethereum `0x6fddcab28d0c55219a512e5964dee40ee1fe70de`; ethereum `0xc499925d7991ff8204967ac58455293f2db3855a`; ethereum `0xecb20a3d711a6705e5785a885e77572d5c2d6c24`; ethereum `0xed4c67ba05c0f30a437e94b7ed03efb79a363158`; ethereum `0xef6aebf34221bf4ee5faa2ad039b9f4d49b28105` | ⚠️ Unaudited |
| IdleCreditVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4207bf5e9d0e850abe12520c0fed0313c593f1d8`; ethereum `0xc35d078092872ec1f2ae82bcd6f0b6b89f0850de` | ⚠️ Unaudited |
| IdleCreditVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e`; ethereum `0x59aabdad8fdabd227cc71543b128765f93906626`; ethereum `0xb744aa6e6a9b74a745eac32371c47b27d40b0706` | ⚠️ Unaudited |
| IdleCreditVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4bd6af4cf5c00167d0922bc90ed61a800a244ba5`; ethereum `0xd6c6f31091bf6e4a6a48c91cfa4c341f1bab44ff` | ⚠️ Unaudited |
| IdleCreditVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x68c79b15c2270215a47bf10eba954fc95fab635f`; ethereum `0xa8da4580dc0f1bb5b6761677184b58e611736cd5` | ⚠️ Unaudited |
| IdleCreditVaultImpliedPrice | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1745c027ab3082c3b1019db69af295f095500663`; ethereum `0x55bdb81026f9a6e9308f7ee727a9124a92ae383e`; ethereum `0xb05cff1491e9670b4a04ea6bffb3b2ede4f4c477` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1c89df6c8b1ab81ef90855120fafb93d7fca3254`; ethereum `0x8a00a03465277d96f4996f397550259ac6d0deae` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | ethereum | n/a | 6 deployments: ethereum `0x2b914f5e396b0017a866c7e36af9fbba46c2d887`; ethereum `0x9567341f6c94defc1538a05daaaeb159cf0e9739`; ethereum `0xb08afcf83ed084dd7e4df0d83f4f4a2be9109944`; ethereum `0xc3c9b18efaf05ad94ec1867a677cd8b1eaf50086`; ethereum `0xcbed5bc7da17510557cf12f44eb02ad0dc438810`; ethereum `0xcfaa789af38ff91eb0124cd27b3d53094177cc48` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x5dec32675edac1bd6e5dca0ad9affcc7d4257cfb`; ethereum `0x6120e46a4dd1bc8e4a94aee0f71987c62de99931`; ethereum `0xe05f146b17ccc77f6c9224a613bb156d65da43e0`; ethereum `0xf3d8671e662c000ad03d860398932f0644611bdc` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6584f3484494d7014e420080f50b69e5e071507` | ⚠️ Unaudited |
| IdleDSR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x587fe6430a1148df4868e9e71357a179110c608a` | ⚠️ Unaudited |
| IdleEulerStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x0fe4fc1301afe4afe8c3ac288c3e13cdace71b04`; ethereum `0x2a719c74e3530d70711b4f4a34b7bc05984601e6`; ethereum `0x2d29c277ac61376fb011dcafce03ea3c9485f4c2`; ethereum `0x62aa57dd00c3d77f984379892c857bef58fc7722`; ethereum `0xaf141907c3185bee2d451b5a72b89232b0340652` | ⚠️ Unaudited |
| IdleEulerStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55cf2cf79759574a4e868ab83701794afc5a6a06` | ⚠️ Unaudited |
| IdleEulerStakingStrategyPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x956f650177f95ef142aa2a26da407ad014cf5784`; ethereum `0x9d6f65f2ffe08158a00793bf62c62b43629117b5`; ethereum `0xb51be9eea9cbeefe2fe7ac2161ace58444c294e5`; ethereum `0xee76293d97f0613849603090cc75aa97e3cf5e7b`; ethereum `0xfcbd5b780109f030b71286ab59f187e4287aa358` | ⚠️ Unaudited |
| IdleEulerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3886557ed1698dbd496a4a0f2e00df8918ea45e0`; ethereum `0xacdf8fddc5031b11ecd2ecc46898e059989a8cd5` | ⚠️ Unaudited |
| IdleEulerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x3d1775da27dd9c6d936795ac21b94cded8babd69`; ethereum `0x5dad2eef80a8cdfd930ab8f0353ca13bd48c4346`; ethereum `0x8468b8efe7eea52978ccfe3c0248ca6f6895e166`; ethereum `0xba6f9a90ccd403b815ead85b03e5a93286c66b3b`; ethereum `0xc7f1b9c72b8230e470420a4b69af7c50781a3f44` | ⚠️ Unaudited |
| IdleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d4e705315aca451db40bf7c067077c768b3ffd0` | ⚠️ Unaudited |
| IdleFulcrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x727d9c331e9481167dc61a9289c948da25be825e`; ethereum `0x9ff8b75575a244c05697ff74818d202265088bd4` | ⚠️ Unaudited |
| IdleFulcrumV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 17 deployments: ethereum `0x02072abc26f1d69849b6dca0b1ea805dc4cbe2e1`; ethereum `0x2fd3252999806bce78035def25131517d2f5cc29`; ethereum `0x39c71fe893f41ec0d96b85533b5a2b391b61c5e5`; ethereum `0x44b6cdda5d030b29eec58009f6f474082313c470`; ethereum `0x463465c334742d72907ca5fb97db44688b4ec3dc`; ethereum `0x4f80e44af91bdba5b9bcb857e9d8aa56651ae688`; ethereum `0x6735803b326682168d24241b8d80f0c06115f580`; ethereum `0x7e6063f4afcfbe33753d9ae0fb7b880880b17af7`; ethereum `0x8c85dcf93c20d6c166398eb2279a9e4e9f155f02`; ethereum `0x957e8c5d373303007b409d491a77b45e9199b9bc`; ethereum `0xa0aed4ef3c5f3d656bd4cd42e7a018da32f2bb6a`; ethereum `0xb31b1ab117cb61ad4cdcea5013dbd687ab0b6866`; ethereum `0xcdd7db5c25f0de4e3194f56456d504a03676a8c9`; ethereum `0xd17761d118eb7077a4995beec6b71a184fae04c6`; ethereum `0xe160b8450b84887c295e18657c85842bdeca71fe`; ethereum `0xf2bbedf416a388b051938f8d526336f6e043cf72`; ethereum `0xf6e5e4810471a11d83bd75aefd3522d641681936` | ⚠️ Unaudited |
| IdleLeveragedEulerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x37de1d299c93743472343699c58ec95000870dc5`; ethereum `0x7369495d64ec9f8ff107e7857127c340781bb8c9` | ⚠️ Unaudited |
| IdleLeveragedEulerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x54449cd454ba2be50dc9d1ac9bb83a503c908d74`; ethereum `0xee5ec95ce2c8700a2d152db3249fa13b163f0073` | ⚠️ Unaudited |
| IdleLeveragedEulerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7a77231abe02359e0386dfea3b47124e36d44a51`; ethereum `0x96078f94375a81d28013b414b22683e66020eae8` | ⚠️ Unaudited |
| IdleLidoStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0cac674ebd77bbd899f6079932768f6d59da089a`; ethereum `0x3b43870abf343aa999997f97e48648557301fcb2` | ⚠️ Unaudited |
| IdleLidoStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07c97c7437c863932bfa362731d9b0f7420c719` | ⚠️ Unaudited |
| IdleMcdBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ab2a7ed1a0c58dea84de880b4f1710229137211` | ⚠️ Unaudited |
| IdleMStableStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7b8c3ee1bafb4af5826d41137cd5caf878083619`; ethereum `0x854b5b0f86bd1b53492736245a728e0a384252a2` | ⚠️ Unaudited |
| IdleMStableStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x944d369522eb919064b52b9665f4151e52b5045a` | ⚠️ Unaudited |
| IdlePoLidoStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4916ee4a761e5cff5b4a3183f109f3e141a12569` | ⚠️ Unaudited |
| IdlePoLidoStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6110dec9fac2a721c0eee64b769a7e4cccf4aa81`; ethereum `0xd408ee2366b4d8b8eac50a41a05c5dbc1ce9fb50` | ⚠️ Unaudited |
| IdlePriceCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xaefb1325a2c1756bc3fcc516d6c2cf947d225358`; ethereum `0xb988641e8d493b5bff65e63819975b6b33477057` | ⚠️ Unaudited |
| IdlePYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3af1317450d291c328525a8eb183d5cca45553d` | ⚠️ Unaudited |
| IdlePYTClear | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa575b3a6d88e9c1b5196cb7e2a14962a5c533559`; ethereum `0xdb1b149177b5819cf467ad6519cf55416789300a` | ⚠️ Unaudited |
| IdlePYTClearJunior | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff31c69a983bac080f23f21be965650758d19d18` | ⚠️ Unaudited |
| IdlePYTClearPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fa86028323ba310fe4488f74085de99ed0264d8` | ⚠️ Unaudited |
| IdleRebalancer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x781616fb046a4e39c239e39bfeff1a07d4b753f4`; ethereum `0xff9b258a58fe94294bba1c55d927cb77cb938a15` | ⚠️ Unaudited |
| IdleRebalancerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec470753b56ced3784ce29db7c297f0c1b75fc87` | ⚠️ Unaudited |
| IdleRebalancerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x21fcd8adac59adc2eb94355eb2f43f869bbc9582`; ethereum `0x3f03d8e4e8d7fcc8a9965e23bb3daa81cfc4ee24`; ethereum `0x99d053a0f4b4100e739c6b42829c7cb59c031d08`; ethereum `0xabcb303c32cefcc5cff1bb7f17aebd1993b3abd4`; ethereum `0xd8885c65203036faa16a9edaef4897db313f2819`; ethereum `0xdb5cf43033d993ba52cee0a4a9507803f1d57a89`; ethereum `0xe84fa0fd833d6a7954a5bc6298986f5ef264c1fa` | ⚠️ Unaudited |
| IdleRebalancerV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x2be5a50d4125882083aaefdd370848771286a84a`; ethereum `0x47f6ac52a523e4f754170751c170410b757e20f5`; ethereum `0x486f7a09abfd529a7dae8cd35d2a265d1862d295`; ethereum `0x58c405e3c57547adae679be854ff067e15c30762`; ethereum `0x66624b88ac0006fa14955393a5cb1248918c21ba`; ethereum `0x6e706eb9cbb20db0db93fcc3b53053b3d10a3ddd`; ethereum `0x75c8b35e92abca44452d8c8f982a1b539dd19763`; ethereum `0xb0d97bc540f81c21c70d1eccf197d4f40a86d83d`; ethereum `0xe0aad3754e423ae4bb3dd3912af4bc57fd66c604` | ⚠️ Unaudited |
| IdleRebalancerV3SUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6b98a5e0e67e68f502e8950992e0b1c0aee0a506`; ethereum `0xccbcf64863c54980f4242d634bc93182e2741802`; ethereum `0xd2179a3754b96f1cf19f07242d1107d2f68f01e6`; ethereum `0xe925021a3aba8059119a5a9c287065b9e932d130` | ⚠️ Unaudited |
| IdleRebalancerV3USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2403457ce59e56dd69d2fc4f22e77d7ab180deb1`; ethereum `0xbdb57b49ccff778566318a7631448286640f0275` | ⚠️ Unaudited |
| IdleRibbonPSMStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x051ba97b84a921f4134376af2c7e3a38229b0933`; ethereum `0x94bcffc172af69132bbce7df52d567e5ce651dcd` | ⚠️ Unaudited |
| IdleRibbonStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x25e7337037817dd9bddd0334ca1591f370518893`; ethereum `0x263283a6b5ae1671d5c5de75347a61abc83fc16c`; ethereum `0x73f3fb86cb579eeea9d482df2e91b6770a42fd6a` | ⚠️ Unaudited |
| IdleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x10cecc30087f4b3e894dad8398307faa2f0ac2b9`; ethereum `0x2f58a698de73e34e9de2beb41528046c77cbb225` | ⚠️ Unaudited |
| IdleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x48a48c6694168093a3dee02e9e8ac5a14169a652`; ethereum `0x73a44027bdaf5d71296d2c73cfb13e561c76a916`; ethereum `0xd04843ac2ae7cfb7fe9ff6ff43c808af7a030527` | ⚠️ Unaudited |
| IdleTokenFungible | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d41f858d803af86e5192a77a798ad7d97e906ca`; ethereum `0x1440469fba56ea663de7c29bbe8bca7ad5158647` | ⚠️ Unaudited |
| IdleTokenFungible | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1247b148062179cd6156f68d9a1019f671f955c1`; ethereum `0x15bb111f1b7c60b5f97045c1e817878e8ebd218b`; ethereum `0x169e448bff1fa74c9be3fe4dadb14434dcff692f`; ethereum `0x1fc957b768b2f7f4a035bc861ed89e9c7cc01c0e`; ethereum `0xbdbc6d788d8090d3b72c6d5a1f763d5b56eeb907` | ⚠️ Unaudited |
| IdleTokenFungible | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2f5c260550ed0efede4881bc004107c3f04e26a1`; ethereum `0xec9482040e6483b7459cc0db05d51dfa3d3068e1` | ⚠️ Unaudited |
| IdleTokenFungible | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x62a0369c6bb00054e589d12aad7ad81ed789514b`; ethereum `0xaeff59c091ac5db820b20f7a4447036d2ba77f16`; ethereum `0xdc7777c771a6e4b3a82830781bdde4dbc78f320e`; ethereum `0xfa3afc9a194babd56e743fa3b7aa2ccbed3eaaad` | ⚠️ Unaudited |
| IdleTokenFungible | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x742cf09d89dd80494cc106ea737163436b0bcb68`; ethereum `0xf6954b03d6a94ba9e8c80cbe5824f22a401ee5d2` | ⚠️ Unaudited |
| IdleTokenGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x28fac5334c9f7262b3a3fe707e250e01053e07b5`; ethereum `0x3391bc034f2935ef0e1e41619445f998b2680d35`; ethereum `0x375d170b98da0e5394edf3ab2ba1e9360f9c29c6`; ethereum `0xa14ea0e11121e6e951e87c66afe460a00bcd6a16` | ⚠️ Unaudited |
| IdleTokenGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | ethereum | n/a | 8 deployments: ethereum `0x3fe7940616e5bc47b0775a0dccf6237893353bb4`; ethereum `0x5274891bec421b39d23760c04a6755ecb444797c`; ethereum `0x577d963246d28dbe0dc579048adda421b054924a`; ethereum `0x8c81121b15197fa0eeaee1dc75533419dcfd3151`; ethereum `0xc278041fdd8249fe4c1aad1193876857eea3d68c`; ethereum `0xc8e6ca6e96a326dc448307a5fde90a0b21fd7f80`; ethereum `0xf34842d05a1c888ca02769a633df37177415c2f8`; ethereum `0xf52cdcd458bf455aed77751743180ec4a595fd3f` | ⚠️ Unaudited |
| IdleTokenGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea091ed7146e2c3cf3ac11fa296e206e55177b30` | ⚠️ Unaudited |
| IdleTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x12b98c621e8754ae70d0fdbbc73d6208bc3e3ca6`; ethereum `0x1846bdfdb6a0f5c473dec610144513bd071999fb`; ethereum `0x6fbada9e92d0f00a89b2f9769af36dcfc16543b2`; ethereum `0x78751b12da02728f467a44eac40f5cbc16bd7934`; ethereum `0x99233be51ac3c0a8611e4bbf8c4bf8e81a914397`; ethereum `0xcddb1bceb7a1979c6caa0229820707429dd3ec6c`; ethereum `0xd1cdefdbf64910b53cd27d990a4ca049c1c10e4d`; ethereum `0xd6f279b7ccbcd70f8be439d25b9df93aeb60ec55` | ⚠️ Unaudited |
| IdleTokenV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2fec85c0eaaace2b24926eabbf8373b26240931a`; ethereum `0x6ca26545370978cf2b8c210913d8775d02c840e1`; ethereum `0xf6abb2d18ac5428be3eb8971716f554427eb2a9e` | ⚠️ Unaudited |
| IdleTokenV3SUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x51c77689a9c2e8ccbecd4ec9770a1fa5fa83eef1`; ethereum `0x7db7a4a50b26602e56536189aa94678c80f8e5b6`; ethereum `0xb39ca0261a1b2986a6a9fe38d344b56374963de5`; ethereum `0xe79e177d2a5c7085027d7c64c8f271c81430fc9b` | ⚠️ Unaudited |
| IdleTokenV3USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x42740698959761baf1b06baa51efbd88cb1d862b`; ethereum `0x63d27b3da94a9e871222cb0a32232674b02d2f2d` | ⚠️ Unaudited |
| IdleTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x544897a3b944fdeb1f94a0ed973ea31a80ae18e1` | ⚠️ Unaudited |
| IdleTrancheAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70728f08e97303d757be4cd97a7d27b65dd41e6d` | ⚠️ Unaudited |
| IdleTruefiStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x62b17c9083db5941197e83bd385985b8878b58fb`; ethereum `0x7ccaf1e4b3224b9920708e35a0c396497fc08eb5` | ⚠️ Unaudited |
| IdleUsdcOtcSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x863a08bfc7ae938c4f96c2c3ef82fa309b33e765` | ⚠️ Unaudited |
| IdleUsualStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x1d659f4357e30de73ed2dc02ed4e34bca262dcc8`; ethereum `0x775d6f71ac19fc9b9618ef42808987e4e5475408`; ethereum `0xa48d5e8efcdfbcaa9ba8b8fbdf7954a9a2859e71` | ⚠️ Unaudited |
| IdleUsualStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4380208ed0fc5136e93ed1ff67d2cbe1906d29f6`; ethereum `0xd48237a468c66604f64a75dd3511bc443a078e81` | ⚠️ Unaudited |
| IdleViewHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2adf7ccf0241b60747d194b3ea163e28105dadec`; ethereum `0xae2ebae0a2bc9a44bdaa8028909abaccd336b8f5` | ⚠️ Unaudited |
| InstadappLiteETHV2Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x00d39058943b4a6f01cb3386a7f44b84ab482c8b`; ethereum `0xa3bbadbb8765a51851031f0a91b26ed05fe88468`; ethereum `0xbe0dace8d62a14d2d872b20462b4725cc50a1ff6` | ⚠️ Unaudited |
| InstadappLiteETHV2Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74de99f325d70143c9b9b5dcba39bfe602c6c4cd` | ⚠️ Unaudited |
| KeyringIdleWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1a4d23403c31ba26a4b84af09364d503ad2bcc68`; ethereum `0x42e64544e71e8d2ad6590f78a07b1a81133d7cbd`; ethereum `0x6375954d0f91e1721967914d8cd3011ee4bf2688`; ethereum `0x6a6a91c7c7c05f9f6b8bc9f6e5ea231e460450e3`; ethereum `0xb84957322bb6381f21f3414584483458050d77a0`; ethereum `0xda7514ad3b2b3ed739b529b3d0897a18c2dbf80c` | ⚠️ Unaudited |
| LockedIDLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x02682c933428e7a9b7527dd9385f1e0c5d4a4f48`; ethereum `0x30184e352d47e8ff5adc34c42365cdbd992e28d4`; ethereum `0x826c61c3183b261e4d4a9a28adbc358061ecd207`; ethereum `0xb6297d8bcd05ed8308ef7d0b08aefec86856b1f8`; ethereum `0xf241a0151841ae2e6ea750d50c5794b5edc31d99` | ⚠️ Unaudited |
| MCR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2ec5d566bd104e01790b13de33fd51876d57c495`; ethereum `0x9b4825997d2634c4c68c6283ea30cfcabe8bda0a`; ethereum `0xccb40a11aa8c5dfafaa9de9311fe7bd47d0bade7` | ⚠️ Unaudited |
| MemberRoles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x504a7dff5eb2854be0b436da0ac2d3e0b789fe20`; ethereum `0x548bf2610c1f15ec6bb78914aa7f90c59a82f492` | ⚠️ Unaudited |
| MerkleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69369507aa7a44156cc297448ab57e3c15d26485` | ⚠️ Unaudited |
| MetamorphoPYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96dd27112bdd615c3a2d649fe22d8ee27e448152` | ⚠️ Unaudited |
| MetaMorphoSnippets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x603cb545b98aca3691be869871b34ae72ccfddca`; ethereum `0x7a928e2a07e093fb83db52e63dfb93c2f5ff42ff`; ethereum `0xdfd98f2fab869b18ad4322b2c7b1227c576402c6` | ⚠️ Unaudited |
| MetaMorphoStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x0186e34de71987303b4ed4a027ed939a1178a73b`; ethereum `0x0f050055b162feaca563ff36fe905c930361da57`; ethereum `0x4bfd21ebcf0819e8c5a74346517f9db849208ac2`; ethereum `0x937c5122d6fbaddbd74a41e73b9db6deb66d515d`; ethereum `0xa128145d1bdb8ba983f65605e503f30aceaaf1da` | ⚠️ Unaudited |
| MetaMorphoStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0e07ef9f9368a4092ca1ba9f01de1ae7bcaee361`; ethereum `0x1f69f47ba5f9437dcfd856b838fa0070f493ae13`; ethereum `0x462fc48992b2050e5df5df31f68ba6e38161dde2`; ethereum `0x835c848e0486e44620bf07f06182aaf02a1a6dd8`; ethereum `0xb5031e764d502c041b2fd3f52e0ad57e4fdea017` | ⚠️ Unaudited |
| MorphoAavePYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9db5a6bd77572748e541a0cf42f787f5fe03049e` | ⚠️ Unaudited |
| MorphoAaveV2SupplyVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x0cb45d9790e7f335b491c9532f7ad15aa1a9dfac`; ethereum `0x57e142278e93d721f3ebd52ec5d2d28484862f32`; ethereum `0x9182a7c9d9858d54816bac7e3c049b26d3fc56bb`; ethereum `0x9708b5398382ee064a8e718972670351f1c2c860` | ⚠️ Unaudited |
| MorphoAaveV2SupplyVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6c14a1a28dd6dae5734fd960bac0b89a6b401cfd`; ethereum `0xeda9f23294473d69f0943744925a8be9c1fc354f` | ⚠️ Unaudited |
| NXMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08c3a887865684f30351a0ba6d683aa9b539829a` | ⚠️ Unaudited |
| NXMDSValue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4b8246a462f66efab5cd7bd301cd0b9e7b470e41`; ethereum `0xc628050cc70d761fa62b8af7d1ef4ca883c2fd3b` | ⚠️ Unaudited |
| NXMToken | token | project_anchor | own_supporting | 0 | ethereum | unit-266849 | `0xd7c49cee7e9188cca6ad8ff264c1da2e69d4cf3b` | ⚠️ Unaudited |
| ParetoDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7b70fca01ab3745e24303b56f72296614768c337`; ethereum `0x97ccc1c046d067ab945d3cf3cc6920d3b1e54c88` | ⚠️ Unaudited |
| ParetoDollarQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x07ace8d682987c2219fe8cd314b858c326a4c3fd`; ethereum `0xa7780086ab732c110e9e71950b9fb3cb2ea50d89` | ⚠️ Unaudited |
| ParetoDollarQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf81b88fdd604a0ad12292c0acca11d02c2669997` | ⚠️ Unaudited |
| ParetoDollarStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x271c616157e69a43b4977412a64183cf110edf16`; ethereum `0xc238a4daaf9bdc351b48b894f8dafa72e3e029c8` | ⚠️ Unaudited |
| ParetoDollarStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7baf5fe88f271966fa58314b75f1887f2ab617f8` | ⚠️ Unaudited |
| Pool1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd61352232157815cf7b71045557192bf0ce1884` | ⚠️ Unaudited |
| Pool2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cbe5682be6b648cc1100c76d4f6c96997f753d6` | ⚠️ Unaudited |
| PoolData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25916c331797ba10601e1f05a1da0b425302f5a2` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x972a64d108e250df98dbeac8170678501f5ef181` | ⚠️ Unaudited |
| PriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a8f07dd4c3d315869405d702ee8f6ea695e8c5` | ⚠️ Unaudited |
| PriceOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886b102953ab3eaf719df7b80b03cd5203c201f1` | ⚠️ Unaudited |
| ProgrammableBorrower | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x01d0799a2f740120dacbfec33c5374b9086d069b`; ethereum `0x3d6418a1f8412a5ebcc953558bc765aaf4e75588`; ethereum `0xb13d293b72e84df89881f6d8bcfcef8568fbcee6` | ⚠️ Unaudited |
| ProgrammableBorrower | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x36569d9afafc8bfd6bb844ee371f401c695f1bf6`; ethereum `0xb5cebedbb601666e54d214e4aacb35d1dbb5d459` | ⚠️ Unaudited |
| ProgrammableBorrower | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7bfe8d96491f7b1039f14a8e44439e4dc46f9eb7`; ethereum `0x8a5d3958db2c2be9173a180759afc544575b346c` | ⚠️ Unaudited |
| ProposalCategory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a313ff2a3e66db968ee3984bff178973e589322` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0138a84f821809e2d01b16d053f4b4a5b88b725e`; ethereum `0x07116391a797e4b3cfbea13912a15845fa843f5b`; ethereum `0x120508eb8f0895a7de876cf2d49bb04458c68a14`; ethereum `0x3f8c6211b3580c00b431edcbc2fbb23966d05ea9`; ethereum `0x7740792812a00510b50022d84e5c4ac390e01417`; ethereum `0x9438904abc7d8944a6e2a89671fef51c629af351`; ethereum `0xc2ff102e62027de1205a7edd4c8a8f58c1e5e3e8` | ⚠️ Unaudited |
| Quotation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dae0663f252d05314b7352403fa9c16f16f25ee` | ⚠️ Unaudited |
| QuotationData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1776651f58a17a50098d31ba3c3cd259c1903f7a` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031f71b5369c251a6544c41ce059e6b3d61e42c6` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8b5b65c6464651403955ac6d71f9c0204169d3` | ⚠️ Unaudited |
| StakingData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xab599b2697d836e665706dc59566363e2fe0995a` | ⚠️ Unaudited |
| StakingData | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xcc134245424fe9e10a011961451d5ad6cd0c087c` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4a07723bb06bf9307e4e1998834832728e6cdb49`; ethereum `0xd7c1b48877a7dfa7d51cf1144c89c0a3f134f935` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd6dabbc2b275114a2366555d6c481ef08fdc2556`; ethereum `0xda86e15d0cda3a05db930b248d7a2f775e575a44` | ⚠️ Unaudited |
| TokenController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80b72ce39b3d73c46b2b8b9ef3acbf300a0077e7` | ⚠️ Unaudited |
| TokenData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20b3ae826cdb43676e418f7c3b84b75b5697a40` | ⚠️ Unaudited |
| TokenFunctions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf50a17bf58dea5039b73683a51c4026f3c7224e` | ⚠️ Unaudited |
| TokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6d520c82cfa8146afe500e6ddd8b39c1d7bd8326`; ethereum `0xffec41c97e070ab5ebeb6e24258b38f69eed5020` | ⚠️ Unaudited |
| TranchesChainlinkOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0da050cf37747fd665adacdc0ce482f62442fb94`; ethereum `0x50449b3d1f5931d568a1951ee506a9534e7f7dff`; ethereum `0x5bae5119d4c6be71b1a318a7dfbeae85d5aca4a0`; ethereum `0x8f4cb6a9bc3856264ec5f9680ab1cb5fb81574eb` | ⚠️ Unaudited |
| TrancheWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf96f4b91c6d424fb34aa9a33855b5c8ed1fe66d` | ⚠️ Unaudited |
| TrancheWrapperWSTETHBalancer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf9ea02daab6b4b3b71cce20a84088a71bf723a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x0962fb33a7e0172d0e413b0fab003bee5142e6b6`; ethereum `0xa8c7b9c4f18b227abc4b099ba92d6a1cfeb9649c`; ethereum `0xff3bd4bfa3b6c5955ed477f14975c9bfea2b5488` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0cdcbeaddf2276df7f41d8b1f45249bf3d63a8d6`; ethereum `0x6f7a35aafaab9aa4b524fd85c19e9e38c0baa2d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x209d0df488d7863f59b888ec21ce925f7bfd4eb8`; ethereum `0xa1461486c5b4195f5fbc67a0840b16f5b4362075` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x39c70ae0a87c8eb373c40d090126c472e5e23647`; ethereum `0xb2565976b82e17e47457b0ad350126cd23be3071` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x425a8233d30a9a8f48c9319f8d80e232b6682817`; ethereum `0xcec176d1e9b89e36b22031592cb431ab1c8846a0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x42c21c576588f1bef340a26fa3932ba41528f2d3`; ethereum `0x43e744991c4db0a830a396eeeec21c19d6e25fc3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x675a1378777cc2d25dbf430a28738cb6b7a3f8c2`; ethereum `0xdfbff9319366d8d048b8adbfe624401b50e68ea8` | ⚠️ Unaudited |
| VaultV2b | core_logic | project_anchor | own_supporting | 2 | ethereum | unit-266850 (2 proxies) | 2 deployments: ethereum `0xd82c32dd3585b5bc528688efa408ada09963c238`; ethereum `0xf4104cade73d699922cc657a97cb1132bc620978` | ⚠️ Unaudited |
| VesterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf875f2c6e4cc1688dfe4ecf79583193b6089972` | ⚠️ Unaudited |
| Visor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x00ae28c731e1fb152907a2e79d033bd638e17b0d`; ethereum `0x08fb62c84909da3aa5f59e01763e5fdc62de76e9`; ethereum `0x17cc4e5267e1482df05e23888f5b02d05acd2f79`; ethereum `0x8398a38c00f168af0575ce4aaa3d52be920e38f2`; ethereum `0x8daed2da38f4a4eb0c46f2e0e6811f63b7c7752c`; ethereum `0xe2696f3dda0c4bb8b53da3951d6acb005094502d`; ethereum `0xf62dff6d13b8ac6f7707335b4d936a2ca5e16d04` | ⚠️ Unaudited |
| VisorFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae03233307865623aaef76da9ade669b86e6f20a` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0c3310b0b57b86d376040b755f94a925f39c4320`; ethereum `0x1cd24f833af78ae877f90569eaec3174d6769995`; ethereum `0x57d59d4bbb0e2432f1698f33d4a47b3c7a9754f3`; ethereum `0x8f195979f7af6c500b4688e492d07036c730c1b2` | ⚠️ Unaudited |
| wNXM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266848 | `0x0d438f3b5175bebc262bf23753c1e53d03432bde` | ⚠️ Unaudited |
| yxToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0d81b042bb9939b4d32cdf7861774c442a2685ce`; ethereum `0xb299bcdf056d17bd1a46185eca8bce458b00dc4a`; ethereum `0xd2f45883627f26ec34825486ca4c25235a0da0c3`; ethereum `0xf424b10e1e9691ae5fb530fe4c3e6b9971013d49` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (411)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052e51568351effa9ea90df6fe648446f006323b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x062f3442b97ea5e36e721812e957b6379801be29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ee2f1272914e869d0e47e08b5a10007b8fdf31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ac74fe6f3c9123254418eefce37e4f7271a2b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d1bbd727235aebae9069153f970ad806febb4e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec3008da9641bf80c0c82b37e05f59c58c6fcd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10033f0ab5100acde53b649b1db272bdeb24130c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14458f77c6ebdc5b59663fcc8defa076a9c138a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16fff75a55edc9686f2a3763ed1addf10cf054c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6fdd5d25b9882bec7deb697f60db5a53892675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b71388b8ef47eb99b683f8121981cdbacb8a8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1db7976721ab913987bcf87431e626fba6b888c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x222c844c729b4f7180c689c482ed7925cfa5c4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23ac1f73c536657b5cd1aba7ad42753dcc8ff3ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x257377343fc60658c1cf716951d28602629fc96e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26d7977cd8e3c4192645ce3b20601878c410b9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c2b6c09657cdba5a692b1b27ac60c0839511651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c42fdcd742cd4bb058554c1d537e5af667497a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d07e106b5d280e4ccc2d10deee62441c91d4340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fa1a0e96e8d37f0cf288ff517362249b369d0bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fbe7f9eebf7f2c18fd7d1c380d14ddc43005ad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x308e4ca6c8ddb7bc9ae2b9dc1dac55897b362a7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3481dd51b31b8edc13da6dd78cd47ac2af659d69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35b476bf3b66fa1c4bcfe4df9fd2971a3e1c2a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35c93ea0ea2a3c319774473ce6c0f866d94fe28a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37bf48d035d78e432774a0529355b1a7afd93e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39dc833a9bebe7c38eb09c669e4fc24f90d6226a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c278929ad48955b236dec535a597b762b97bfd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42402e60b3aab035c7b63ee7a0a46ac9a86a424a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x429ae76c9f1da661be327b4ec2047ac0ebfa1daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4598454a2aafa5c3e5eb81b5143f2226597c4014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45ad3e014ae7470ff24955d6395334a1030f3976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x461ffb88fd7c29b327ab05f3ca2b07d7a3350f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49196f9a5d4f8a64a06320c0be15a096f0cdc9b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49663768fff9e22c831ece49b5e15bce917eac1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a8f37ee4e314f0b1f87b7b4dbd49dc97da98e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d50a5d8b2470f91cf587effc838c711e454e45e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8af7aa1a7c8c1082abdf2bb416044495b937fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54e7e67a3e152a1d6a10fc50b6b3cc5ad71e91df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57aa7b444458a68a9c2852b9182337ad1dc1c0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58edd11d2e7d07427043888c34a7c077dbdaa754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x593ff7ba8c0fd8bb87ce7214ec0f82119aa67a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b3d6c553e52f8b3fc7cb4a4c67e479c2ce0a7c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6161e1144298f24e2d524263025e6c0292a8c01a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627ca78b2b693364223fb2c24c19cee03a45da60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657b6c7f44687b78e850e7ec4b36641a697b6f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66b59140f0911f01e98c51ca71732b3f96b4b9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66f4a1d4e22207a1a36133a6aec7a60263a0fcd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a897e57ff051a2f713f90db4f010d117042cfc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad40c48876e98c8b5f164d2f89c9ea11f5d73de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cf3bfc6b732c56144f49f794b49335b3e474233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dbe1468414633777ccff98998a00f87e03f11f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e63d9090a8be81324594bcea62952b2e4dd6bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6effde807888adf2e05709fd62caeff3ead13aa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f30c5dcec9d6ce637f41f0eb5a8e8733902377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70fd038b2a72d7712e8e3179f209aa9efc4d3fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7314adf52ea8a69cf3589177096f698ee862f8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x735a3792ac5655b21c0cae47d1c75184705daa52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73b4f354fd8d37fdb7cf13390d366e959e1e2bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7600d5a837bc8acee5c6c5e564e681ddadbe059f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x767789b6cbb04c91fa5e241c2b00bf640d04b9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x776245a376dd5a043e625ed75af5cc678b3a6841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c4414aa6b0c6cb1bc7e5bfb7433138426ac637a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cd106d776fb57e382c18018be1e1dbf72ad290e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80a88449635869f61682bda364218fc6a5385a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80e3df03000de592344d6197607620d015948f8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87d51e4ea403edcc61c9be9893f4ea9447afe6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87fab8ce5461175342b9453a4de4a8be90380f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88d3112d0fba016aacc7c6d5bf094814c9efc920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b42d3ffc89cee457665c02f3fd0a8cadc4c2419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c9394b4adb97b595ee4895910358d09fe674eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cff70cfbda2ac1b804481b88fa1f13d9e0711f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9ad9b82b603fe588ef65203e7a0d2e51ca95f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91d93dbd823221ea9e54fb3e447bd917ce41f2e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9567bc65c9bc403787c5d203807770456096b289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95cc93b8eb5a2b56932b04da50a9ea43b287663a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96697656fc6bed7ebdc0310da9308599ce2bbbff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98611b7b723bd4dd759de423e32feb1775f26ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98801bca96c0a65f6c95cb2010dcb8bd97b33082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98ddbb76544c8a46dd143bb538beb649d94130cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a16d98e31b2697847cc812f9dde98b05c9ba541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2ec6b2d7e769fd67ac68457c2c1943981512cdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3b9ac3935de2ae52894189bad657e1f7e459dd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa409a39df0191943ac4263d26bd67ef6d2584d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa55caa40b32a02becfad1d0d29c4f1cf38c4c743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9b29062abf9bfa213c63440955f5de091ad541f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabadfefba2315dc4da249ccbe6b71692721e1907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad0853408773d2f376d24f9cdadac402b6646687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae37e65a77553a1758ded55442cc29d87259e819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaedc80cd7134f5dbf3b587590fdb19524fb5cc14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3cbb93eb1c0ed51804f4a797397d09859085bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb692e908d11a3048afdf68fa89550c2d638d046d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae90b9c5daf4122ea5ed51492d0a86638f8fcf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb9fd2de55943c88ec2238fb36a345e3f612284f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4c5585cb34739dac215076b79ac5c0e4bf24dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf7e5212ef42bd33bc1839e135f6f2725816eded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5b580114c19e1490cf4573c59db6a2fb2f402bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc63b7780733e68ea76fb4ef42f7beba19e01bd87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc74d886ebaa5674e21a1cb0be3997bddce6ad525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc81733a204cf40ca240d81c12b60d7dc33b2d92d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc839540ae03d1c1ea2f44f271d3a7f8e60fa9a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca637b4ebf69946a2683f7a3d1804528b2c0e9bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb08c549eb76898f01d89e992ff5efa6b60c523b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce87c44e1174a5c9c543beb83fe198f3fac20910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ea643d3ee6042a743f1ab012d55863805876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf66438d3b880f8f80b071f228fff7bcdd38bb90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd293ed74c082a06310626ac422256c538a8ce487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd30747a6e2100e45434b628fb891c3d94a591506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6c6bbf683bb46e96272c4a4ed1905ffdf3942b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd94736dcfa7a020a962994a1ee77382bc1613326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb6f646a4d05e74bbb7b8ae379b6e1f0010ba595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc8cc3e7c8a1ec6e1c1ad009c803f5ce911db4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce86b74a648b6bbade63364ad0ea7f27ce20338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd6df112374700394616c1289a27836fe05129b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeae64b9c3df75f12f946b0d2d8a58f7cd54ee25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3d2f165ae2143ad13e1674ca50865b1304539c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5cb51e2d6682ff6b4d0b37cea7e66227dd15c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5d2638b2b8c9ae8ab96eaad2f28eee4b592eeac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6ff21224b386ae7eb162bbf973e1dfb471a6ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9b1391334b2727ff23206255873d8a7c4c403cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec5ee33a64c10556b3bf20192680c1b92d14d8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2c6126b6e68396191f0603f0d1dccf987d9322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeeff294ebef4ad9be8af2391d66ee716c39e32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf11efcee32ed8b5f28260724a9952d9803bd0a0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf468ae21accb0e44172ac453f0dde1a96f88cb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53686cb7fc4474c77643e45c94c6dc76294d46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf55f3366db9a75a1e3efc28f1241415c633a61ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf721b9419b2b11a212e9de66ee1ec5d2a19ac710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9e2ae779a7d25cde46fccc41a27b8a4381d4e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaf843f864dda372be21b28b03dc0a339af090ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbc535a19974025820db395238bbea4caa0125b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff46ebc4b973e4fbf54cf1e0605cfdfc479086dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x022ca1d3570f6c258ed47c381541d8225176e385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0565b1ab5cee7075b32c2d6a5b9da44b708fb898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06011212ec56b65133b13c4ad3f11f1d40aa2344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x086cc1c04ef1aa4797c18a946c5688bf3949e89d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0886e6bea150ed770b2ee3341332339c5c08d9cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x08e2c2ba4f48e1dd103c12a38d515ba980f4e5ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x08ea9c467ba8042caee81d7b56dfa539ba05e021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x092e6b8dfddb4b732c89deb4a700868cc5d58b70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x09489201600e5eea6b7d9cf4bb2cfe677d7efa9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0a6851c7d112a27019d84dccb9ce0c0cd8b75325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0a9397378c427e39bde0c53e6626523b7d08aacd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0abc94987f6b98bfe6fd40f749e445a2857a4ee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b8f398d8dbb74bf2dc475d02e802334777be900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0bac9ec4126ce5b62bee2e99823c2b2e96c396b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0c09f6c136e144a5d84b4161b2fc3f245700f62e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d1098469d651161cc8211e2973afd5ad1cfb7a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e12de09cf0a8c5653fadba8b3cd441590093b74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e4641f7ba379d20e8bb84819b07c9234d0bddcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0eeff6deac317ac3f5ef286d069d213570eb0840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x102f559555022bdf6630b8c84ecbcadb6e90cbdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1071f3b2893f41094b1c84f090ea023042bb70c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1122494f58831eb5812f9bf6c222f9a0b251279d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x11e6ad917b3d6cfdc282a1dc117ca0bdc0b26821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x129e14f5e79f1423b79d309a2a7ee43121554c2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x146444d363028c5495f7d57a4c49e641ce8017b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x14c50f2527ff4c68fac12394883233c701938636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x15983b0adb819b284baa05011f8a6a23402b0e77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x15c9eae416c2e3fbecf2248003a2b2677127e9db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x16012ef3eec79db8f002a05c7a8102786e5c6c38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1757cf4c1edcfbb42dfdff91644b8d8d5e90f904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x19c185494fd9ed3c8191fe21e965a4e3d2dcb781` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a59ac5d4bdf35b5255c6d301ad23f6eb1530d57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1b0ed6567a53eac1fe6d859d3fb2be11738cf0e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1d94777e3a288a7cdab316f17e43d31800fc58b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1dc1a62f7f333347b3885ffeef71cb4d00829fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1e95faca5f99dcc8e517fea193a3c3b0aac1e0a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f8e523e195c622ddf6a80a8db01687ff6a3caef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x20612e6a0ddadc322b7b48e3c4246fb23836210e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2113a7d5d203be717083746bc6040c3fb8673389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x21382a033e581a2d685826449d6c9b3d6507e23c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x217d47011b23bb961eb6d93ca9945b7501a5bb11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x22e12a53cb40533707881607f808c7939cde9e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x236057f9f13faa625da73cd1cb1e838f15d6c6d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x23823f1c7c4ae2acef3bccfcd5f282ae078150c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2447ce55d230c01fc430725a8613d852289f9985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x25659203022644c4766b2bdf60d276924bddb4a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x266b5d4717661f4ef37af4379c066ab8e046bb22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x278b5a44397c9d8e52743fedec263c4760dc1a1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x279c0d239d0c036e74aadf872d604af37e341373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2a928a7f0a54edfc158e3082b2b66d09d7211700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b89275efb9509c33d9ad92a4586bdf8c4d21505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2c59cef6fb58250aa649b91ecd1f401ada629370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2d356b114cbca8deff2d8783eac2a5a5324fe1df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2db7789c691e4d086ba167f34923bbbc9d844703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f1b03447b23b3a78f5e708a052ac3498bb72c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3030678f4f022ac162b4c70fc22aa4de56ed8486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3094b8e3148f580735786dfcc5ee26ead419e8d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30efe43c4bb21b7f282218923504ddb4118f1815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3198ab211cdf3e4d13a698e1fb819507bca2e579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x31a20e5b7b1b067705419d57ab4f72e81cc1f6bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x32d7426f380100406c56b15d1f9c0b8581b2c20f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x33425d42926283bc19c273110284035980bddc01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x34ed3d919ad7f533bfafe9295363d9f37c0c5658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x356163fc5350a3b2440c73cd27b150e337e508e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3751774fc967973d69cdd020eb15a1cac23e3650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3898b385a644af75b826338446369e4e7ff2f47d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x38f1487bd60142ae3633c082934455f06b613c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x38f84c15d4c3079b5f94177c97858ceff24647bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3a537cf3838fd0165f864dd8cca5c15deb266f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b05d4c58de4e96ea093032c6d70c7e4212a4c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3da91e5ed564ee46d4d734e1f99f395f0969101a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3dfe6fab38d20d189cd7d28b04f8714c289de2ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e238af2906a767fb4cfaeb666f9c341d5cd82b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4063bfac9b1215c55452b961d428d98bce55cd49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x41cccb4935386e0471922d460d9194b7db486d1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x42b6e9b5bb96a02e02e651d3104fc3546e1313f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x42c6a55ab0d8b6caed2573db14c8799b45d21ebc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x43318de9e8f65b591598f17add87ae7247649c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x43d19841d818b2ccc63a8b44ce8c7def8616d98e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4538584c46badffe261e049fa25296cf35b26391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x457c4fd48d73416c55018b340814f7d3e853b511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x46b1ec25e5e7696ecbae9441d3f79d01b118e154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x470a69afec851c1c4022b4a1b9d3a729389564ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4726b4c7b2d2a1efb07a459fcf5224d5f76c56f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x474499e5202d8cc7898358526c8d00b43333326d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x48e2982016ecab46c8c2ce64fdb909931713e22f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4986e171a7d66d5acfbf4299df7893a97636b02c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x49e458c7e1dbea6105fe907b0241fab764dfe340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x516c96b8cbc19f70b3783ccdc74327b2d9f2d644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x51b774ff4b48e73ef8f9699da827ef9e33485abe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5442ff0573fd54a4f6c02a7a0d8e22bdc1a3c671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x565ce8cf5ae8e2adc6849eecc6c3ba07ba56c4a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x566d358f3386abac32cbe750489306c73caac9c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x569099940b5d659c6df24f8cadc410c5598bb141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x57ddc52fe5967b7a82e69aa9b8925b30f2531032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x57faada9e5a3098a38151e4de8426135b0fa4fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5830e9e30b55cb5fd6102805fea2cf951f6afb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a1f813e4adaf68223eeac93966cfa03cf1267c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ae7454827d83526261f3871c1029792644ef1b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5b76e974935c846da918a97e5ffd33e9c9e384fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c779cfae4b6b7a02c32938ddabdada8ab60fb14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ca2e53f00902dd64c7b8436a8f5d10807a84281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5d3174731f2a8c564fcfb2120709f69059642d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5d68d6d5b94b05995e0c5e391362ce7a6b2e741f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5e2b49c68f1fd68af1354c377eacec2f05632d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ed430c56e028e8b9b992fbb18dbcd58b5d31c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5f8b6a881c7f97a73ba21a64f36cb4e5eca6bba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x606b55b96c833277e972aa18e4ef7d3f53bc6073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x63a6344e7dc0032900c261437838b0aa9e869c90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x63d6dd43f6854a06548bc88e890c9afff5d29f4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x63f072928cac9ffd799c6d0f985f9ee3985e9a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x643e4388fb918a7905441afe4b2906c059a1c83c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64c9c8f5e06f6149302a1098030295f1e37bc8dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64cb6ef981e5e432d4362f6a561a31b22e328cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x653c6adfb4a0865b78fec02fedeb5d02d8fd83eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x65682e98fb7519220925b3f4f209b83957da0176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x66269520acd32e54b18731b5806c9e1cfc64c99c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x679c0174f6c288c4bcd5c95c9ec99d50357c59e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x69941ca6528d05f2930d655fed81640c83d48b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6a763c3d2f317d67727110c08a6cd61386ab16ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6ab00f0b713fd6288fc849b25e580ed2ad51d39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6acc550248f0ef1a99f2b39af530197fce7c3184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b33b99e3d3213df963375e6d94aba968351f803` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6c2e0015b431f8c5f6b40138af803504e601d91c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6c36ced2298cc5a61257c85388851c91fc9de189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6c7fd4321183b542e81bcc7de4dfb88f9dbca29f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6c96d32b94526918d3376868d287ff1b92ce07de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6d3705368323900490193324277a221d8db62ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6d53c852fe7e0b60d54c70e454cbbccbce2c39c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6fe6ec1c8d435b7b8596c983ee72358a2f5436fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x70164a1ec9d21c4dba2b4f9b23750f9c7d03286b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x705d97a0eb98a1a611bebde00fd3dcf380ec04f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7291826de06edf5426e13f07fe4fe0df77ffaab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x734c6c0fb8068afc4d795af32b65ba31bb38fdc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x741ad22a9444d1b5e6606a3587effa5b8995321c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x76711e9f14254071ac8767ae675fecf793c22beb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7801efa8e30606d2d4c9848852b56ff03efdad5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x79599f6dd939108f3872cfa67456fcddc66e48f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x79a1219209e91bd7e46e9ae89377adc34c05f18d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7a07c26166dc04f1319e58d630769585ada2cad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ad35a998847fecf33fb1f23c27d3159a9c59d3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7bb0a8506c763f24e3b5b6cbeae7e56e5787d754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7c3f725291010669ef77a404f7d83e10a480e0e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7cafbe06cbb6d7f7dafaf3c62d200e9bd6a1f38e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7d1dbb0eede15baaaf8fa6d6d9025b0390263e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f804722948571f575d06a52c7a414ae42f6f89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x803201e28df62c25c0a463827132a2baada0fe79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x83a6a83eed4c97b2b4b60a02df1ac27c0db5a175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x842e89b7a7ef8ce099540b3613264c933ce0eba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x84e964be3b910e8a8633856b69ebbddc7ba55006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x87de148465727b34cd2a43773738390812b12a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x890b559e10ad1aae73713f2f1924aab4e60cf505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8947da500eb47f82df21143d0c01a29862a8c3c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x897563772ce3ac574412f18ec04581ac377c814a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x89df505c693ac7e07d8d5d6308fe0bd041033cdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8ad0b66851bd6d50d82f623472a0bf6e402381e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8b2e97c18d8ebe2cadb173db3827376633bdead7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8ee4f3705a530aa60749f2e9cef46d73aa1b376c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8f8cc357aaa401cb6f7e01d56c59aa8cb2132018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8f98690b1ddb25e43a50ff878fbd13e439ca52b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9043cf6b9319b07f52d9c8d8964a8b457a64e0ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x912f889034ddd593a087c4e59061e549891e4d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x92fa0dabe2f6d8b5b64e9d0cc869bc737c15bf9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x93714e258b1f5e987ef1ff59ea66d51964952f62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x93b192fb45937a2774bd66b861a2694902d1d465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9434bdb4f2d0233904e0301f8bf09ceaf9c72bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x947e4612bfe3c56eedc15b829b0d1a1c019be420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x94ad305456516e5b621f295fda2c8b55250e71c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9530c16d2a169daa38ee73748661999f2b2f0c1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x95486a41dccff81874c2f61cddda9ec8ee1bcb34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x955f1032678be2d76d9eb4d1a73931d6cb59114d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9712ef637f3834f1fb884908ee105d5170813646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x99a63e20e6f78dbbbd3a07d9f9330a860ef2b4d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9a2017cbf88b994dd7d3894d4652f0ef5f557973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b216ab6b6705b4e3f5a67b1b934532a40b718bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9d3abeaf22ddf68e72b865ca3b23ed880a3be41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa143e04a0090cc55c13a8280d52192a2d008dd6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa484e256d614cdeb221f3e7445a7a955662eb404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa8fbb95cac84b94a54a2bd41ca130cb46dd24349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa9218c6d51b87eb3ee74e14cb5d50bde00be7021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xab4b1cb0e9ccdab5c30ca6c54230e2ed8de2a840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xabde2d8663f0b99ab3fe31ef1af1d32aadd39996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xae19f47b8bdfd0c667796682445c0ba8d549e41e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaea1be15adb75a49aceef392a6d37625d993952a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaf88719228ab83a1260f3a0e021a80f3db150b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xafd4dfe320883cfd9f6127d30f6d7bece90a285e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0dd7b602656c315f970616e72f28d05a5d8f29c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb1414f8b3ab67aa4e18d36ef9e342fcd2d5432aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb193e73b9b4ad9ab815b4add8e435ec258c684e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb23ea6561953b406f4806cd177377d6940420608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb2d2c60e088cb2a531d8e93efab53455a7ad82ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb30e9725fcf5e48886655b962defa9d9e0de1ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb32fe0d20f995fcd540f19326a258679bcd0b9e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb47fb03ffacefa464aa0b1e575ddd42760a2d6fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb484027cb0c538538bad2be492714154f9196f93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb5bec32954a3a75fce4b5b0b38bc6e7ccad4c4ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb6bec915bd5188acd8b30da8d9ecb2ba83b9f86e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xba6f3af1836b2e9eb347dca0490c62cdcbbfb2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbaac5464bf6e767c9af0e8d4677c01be2065fd5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbac6c6e28bd000a72fa18735cc24ceee49f51069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbc4bbd7adb2f1dd79e40dd4029bcff97be9bb1f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbe086e0a2c588ad64c8530048ce4356190d6a6f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbe4c7750bf54ed9f83b189b6a4daeffc760f6882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbf40da2e303c4a7cdb1a7b4d444b10b8e9b91cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbf7f22f78d25fc1dc77f18a93e8e6e153487f6ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbf8523c0e36012291c32bfbd266ea497db705ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc0201ee722280f3f86a20c0aa9fba2ef6fcfd26d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc07520843239c2caa28101d8241d9132669b4271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc10a0a6ff6496e0bd896f9f6da5a7b640b85ea40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc1a135343c8e90998bdef974eeab18f135cb0cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc1f313e9748d40250a25bf8f8e1056df929cc62a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc33cab50ee69bbc6106462b873a19c132eb44cc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc647ab2cab7d6da6081703382ecf2814d8b7c03c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc6bd4862d9b41030ab803dabdc7b2b25ef3379d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc9183e3306a06e64c2a83e655756f70a83152536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc922f4cde42dd658a7d3ea852caf7eae47f6cecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc9fd24b3672dee34bf7e4ab9c4c9b12779fd3dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcaa383b59ec3d8f1fa8da2afbb8b80bf959eb7b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcb933e7adb71c191e0022035a8f48248747d0113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xccf4fdc780401010aa7572102bf82a769b741a19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcd9c0e99396627c7746b4363b880939ac2828d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcdaa51fa12ac485153f5b74f7ba8ed12b673ebfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcde1c5d8998165fb417f58b1f258cb0dec38ba00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd0418b847255b9e55e1f1d5a52241ada23e5197c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd24f796c1ee04a2e68fb7e71c5bb8259fce2745d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd2bc26305b8aa6ef4b9c5954bcbd49975ad05689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd47285b394960a5552631af2aec25558a6a1b823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd47e4307959f2e7111827b0b83a4a2f5a2b0005a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd517215990cbf485e7a3f0158102e4868db61cdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd59cad563741a26283d96f89e9fca6be853c99ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd671dd46ef7c5b2fb6bf3164b444aac69843a91e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd77cc57ca411c67f00a8df9e334fd0d79e9bfcc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdc18854698c80f2d3b9251c01eb910690ca9d512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xde4f5406675a3ad513528f93a8f17c98ce98451f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe070a4d5a17d458a237d20f23b49737da308561c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe0b31640b07e4bcfafc190d7dde951ba3286dd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe0fa68b4d3fca2518ea923d65507a11f20135356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe1095dceb4e4184bfb6ade590998fae94b815f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe1fd1c3d915f500a65d13ee462c78bde4db0ff92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe247ac7de11c1ac0e075666d032b003a35cb75e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe2881cad27db4c27fb3814ad97cca694b80c0fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe2886fe51f2afb6e226218fe99c732907e3d1c74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe2f77e6154a644a70035b693dacd6580e3378332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe412f48849412eb71e6572b5d73e30954778c0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe5109cc91f2c236fbee3752af06dc92d4bdddc84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe6947368ddacde47cc7fe64303125ab9d8421530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe853207c30f3c32eda9aeffddc67357d5332978c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeaedb23b6c1719ace0825c315235f09699dae6ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xebd11dc0ad74a44ee1fdb3e41c8db0c2ae032b3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xed2917eb2e4ac54321272d5e27ad7b22c5532ab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xed8519750eb90cbe9ba8573324a5c4102b97a85e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xee3e5aa9f33b475a0743a2896a3264777e1e0fbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xee97fc872e94de22c92b1eae04f836340068eeeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xef9865a2d2dc2322d8b4e6ac84b13d4121ebff4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xef9e3a581a2d7916b05d24c2ef54a505b3219e72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xefe06b9de2c94f172791c51ef7fc88fa75c64d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf089f0182d994686c865cff4fa99a0fe55465d30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf10424c47f3105757d3155879d5060b50f82a8e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf1299a4b78799c5ff9bd19f0e96c070f4e0d96de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf238b93e4593cdc181bc56bcc776f9d8c346cbc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf270bba56b1a8ca722acbd6e6fb255a51dc065a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf307efbc0dcdd1fb9c97e73a51bc7bd642efdd34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf329b8748216b9f9e39c98e1b60e6e5da6b91731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf3b63b29a2813959a4273e920c6c5df06bfc369a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf4aef21d906992afadde7a9676e1db4feb6390dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf6a6e6f90b4864d0ce86c03230db723077039aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf74c347f3b0bba9000c1882ff91139376f0d8cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf958a078c85069e2dced28ff27bd80db8f1ac945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf9dcbe0732fb68027333fae86a88ac602e239deb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf9ea58018436e01aab73bd49084d9d2558905d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfa2a9d305f2009f2a7a2a95ba501b51f9a06b815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfa4eb2b83345c80b22ba6f15de2e474e3c03e6ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfb1d1af9d849ce7fa506ae30857e5fb850e9a1f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfb6527ba5700b1d8ed135469b15bf8264aeb8335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfc050b42a88c046d54b7a4e3da42d8c9c38db266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfd0740a2041edc475c3fa224875bad9916c73ca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfd99fcb3e53338c6e6f9f0855c24b39df4b1536a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfdbf68a25eee0a1619e2b8d255a1cee9369717c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfeb75318ea0a838c0c8b694e84602cfdc5b8030c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 914
- Live contracts: 0
- Unknown liveness contracts: 914
- Source-verified contracts: 499
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=301, source verified unclassified=198, unverified unclassified=415

Showing first 200 of 914 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AdminUpgradeabilityProxy<br>`0x08db226d63ce724a6091ba82d28dfc76ceca23d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0x174a273f0ea28e55b6dd13259aa43d262b863a86` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0x28fac5334c9f7262b3a3fe707e250e01053e07b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0x3391bc034f2935ef0e1e41619445f998b2680d35` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0x3fe7940616e5bc47b0775a0dccf6237893353bb4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0x5274891bec421b39d23760c04a6755ecb444797c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0x562c4fd96f0652f5fcfa96b0a33088b5a6eaee9b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0x633fb4d38b24dc890b11db2ae2b248d13f996a79` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0x6818254e0a141ca3d85a5f44989f18e820e33ccb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0x86c8b56d124c2a8e7ea8a9e6a7f8ed99dde5cca8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0x8c81121b15197fa0eeaee1dc75533419dcfd3151` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0x9076091b52efd4b90b7bf9ca57576bddf2e03b5f` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0xa14ea0e11121e6e951e87c66afe460a00bcd6a16` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0xa6c89a31d59f9c68d9cba28d690c5e52058fb472` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0xae2ebae0a2bc9a44bdaa8028909abaccd336b8f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0xbfdc7d97559173b52ef2a2f1bc9becf97b0d401d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0xc278041fdd8249fe4c1aad1193876857eea3d68c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0xc7dff3d0dfd96dfb6b6db7a6f4151fe4fd028586` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0xc8e6ca6e96a326dc448307a5fde90a0b21fd7f80` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0xd47b96fb33b79a4dd81a2bfa676ebb669166f619` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0xe0bfd08da4daf8f8ba11d1c3802009e75f963497` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0xe2ee519399a49f1a2004a25da61e82867a69b9b1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0xe969bd6c4a9708f7536f47a2a73bb84ab3eff6fd` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0xee5c50c7c49dec47dde2f9b0233b9e14a8f00cf2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0xf34842d05a1c888ca02769a633df37177415c2f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | AdminUpgradeabilityProxy<br>`0xf52cdcd458bf455aed77751743180ec4a595fd3f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | Claims<br>`0x58676340f458b36997608672be6548c92ce50714` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | ClaimsData<br>`0xdc2d359f59f6a26162972c3bd0cfbfd8c9ef43af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | ClaimsReward<br>`0xebdd9752be578c03491ff1083c0f738aa8687d48` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | EarlyRewards<br>`0xa1f71ed24aba6c8da8ca8c046bbc9804625d88fc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | ERC20<br>`0xb9200c2aa4053102b984806c63d67e21b8f2070d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x997214ec4f289807a6677abbbd97a4cea813296a` |
| candidate review | EthenaCooldownRequest<br>`0xe0c4a2b14f0acd936226a598be6bfed190e098d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | Governance<br>`0xc72a7b022f95570399bc1fd3956ecd863b391c4e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | GovernorAlpha<br>`0x2256b25cfc8e35c3135664fd03e77595042fe31b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | HypervisorFactory<br>`0x8ae6c8c7005c7317963487bee834047eb497ceae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x997214ec4f289807a6677abbbd97a4cea813296a` |
| candidate review | IdleCDO<br>`0x1ea9ae797972ad9fc52c55105d184d8b059bb716` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDO<br>`0x2d90df48c706874f1b9a02054273996fbf458964` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDO<br>`0x31bee1fb186fc3bbc8f7639206d675cf3dea2140` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDO<br>`0x3cd51e62e14926dda0949ea3869d5fad0b9ab844` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDO<br>`0x46de3a3da932f1cbc151db76ac1bee935611544e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDO<br>`0x4ebe360e970e6e5b98c974d2e9102d46a96bd3bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDO<br>`0x6f322059caf329b598b3c09de27c4f851780b62f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDO<br>`0xad6cc71ef6ba82ffad9adf40220d035669eacb58` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDO<br>`0xb93450f818ae2ce89bc5d660049753883acbb883` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDO<br>`0xbed6e1ff4363730a56dfdcd6689e5d958085299d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDO<br>`0xc177760cfb98b021338c09afa728882d8c1acbea` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDO<br>`0xc9f019fa138ba4fac3b4e400705fbdd75b20af8c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDO<br>`0xd6ab3b405f1c6fe015e35258f7d77456b5ccd0dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDO<br>`0xe8cc6cfa4d8610a86fa988e11e38ca385a93aecc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOAmphorVariant<br>`0xa6b353b2d590d3c0cbcb85c6ef02ef9c1da2aa59` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochQueue<br>`0x420d54c94810c303986ae3b7688709a6bb552057` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochQueue<br>`0x49ba0471aff5bb1a6e4588389e27df2a9e8e1933` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochQueue<br>`0x51257e0d34f7c9795f2547725b6c87ef6140dafa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochQueue<br>`0x9f22c9f070204b6d5919edc7d4e14e6b0b62c4ef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochQueue<br>`0xc05b41ef0567c7644d1c40fecb951100a30814e4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochVariant<br>`0x17979eb3866efdf5aa295f0d41a82c6fd5ceb5e8` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochVariant<br>`0x392504f486a3f7caa24b104a9618f5ae30e2ab9a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochVariant<br>`0x47b6d73cfcd3a6be3c5fa046438eed6e4df55753` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochVariant<br>`0x49fc162c08a0ebddb00d7876fe435b9d479ebe6c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochVariant<br>`0x4e31d9c49e8c63f4b3926ae6a8848b756fd0b8df` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochVariant<br>`0x5ab109d145d807a2e26d7d797db6f67ed9eb780f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochVariant<br>`0x8016e6f35a4b32a5ea4c3919418039c7daffccaf` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochVariant<br>`0x8fb3f730fb2ab4b28e3d39a67e916dc98d59745c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochVariant<br>`0xb0ec6865ebda158aeae85461257e8654f9040d36` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochVariant<br>`0xd29c4cba2422476295ece570508c825145e792a4` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochVariant<br>`0xd8a70d0506ee5825befce5de099893f0fdadcf98` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochVariant<br>`0xe9b123bf0941817e4437595738d3cd59a9802c11` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochVariant<br>`0xf70e982682326ab6641d32058526b1b61aae8754` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEpochVariantPrefunded<br>`0x73fb8d2d96486b6aac8713f0c1cc2633e03a0f6a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOEthenaVariant<br>`0xea08230de3a5978ebef254a6b7d8f2f8b837a373` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOFactory<br>`0x3c9916bb9498f637e2fa86c2028e26275dc9a631` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOGearboxVariant<br>`0xe9eccadeb31299cd9edb18959b5b6f4e034b5649` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOInstadappLiteVariant<br>`0x0d0f8a0f04d54197f85fee6d5523df2d84a73b27` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOInstadappLiteVariant<br>`0xc07c0f6ffa78ddad677a22697c083892209bb83b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOInstadappLiteVariant<br>`0xc3d127c37957492955c11e15ccf1d2f20010230f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOInstadappLiteVariant<br>`0xd49d6beee20f87ee28f00f9376ec962aab9aeae2` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOLeveregedEulerVariant<br>`0x5a62ca401667b18557ef23d84bf27aff5a0164cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOLeveregedEulerVariant<br>`0xb5a2492926815116b69fdb21a471a60ce79148db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOPoLidoVariant<br>`0x56050f117d675041da6a4b501f0cb75d455759a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOPoLidoVariant<br>`0x6df196928ace3c98b12ff0769b3164753e5099aa` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOPoLidoVariant<br>`0xe7bdf364862ef8a31426e6e2b7d5defde3a59a26` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOTruefiVariant<br>`0x40072fc98b3a128950b1857bd7ce57b144477407` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOTruefiVariant<br>`0x8b39bbf63b8302ea75a08014b233c72127aad670` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOUsualVariant<br>`0x41b55b28de948d9e5bbe62f30d47f8f0f29a7e8b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOUsualVariant<br>`0x9c85f2faf81e18ebfd9a17510d8bd5fe8ebb16e4` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCDOUsualVariant<br>`0xef8d9df3b1bc40bae634f75a5ab144e82ad7128e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleController<br>`0x2c08bacc1fc6095f21eb59e57318a6c06d3fca24` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleController<br>`0xf66b8c3d9933a8f9362b4d30f2b918cc97e5a31e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVault<br>`0x05c65c915f9d465dd55993ffae69943638eeb42e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVault<br>`0x1ff9a2c8d71318667eb218ad409054a6a36b927a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVault<br>`0x38140673567957dc7946abce45c271cac33fa2f0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVault<br>`0x4207bf5e9d0e850abe12520c0fed0313c593f1d8` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVault<br>`0x55573cb84f02cb5dc4dd923bf5cd9c5b4b12a4a7` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVault<br>`0x6fddcab28d0c55219a512e5964dee40ee1fe70de` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVault<br>`0x838a31b8735cf36592066a50e2f7579ce52141ac` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVault<br>`0x99a1578d340c2799dceca7d0d83e8d03b9c6eb30` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVault<br>`0xecb20a3d711a6705e5785a885e77572d5c2d6c24` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVault<br>`0xed4c67ba05c0f30a437e94b7ed03efb79a363158` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVault<br>`0xef6aebf34221bf4ee5faa2ad039b9f4d49b28105` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVaultFactory<br>`0x4bd6af4cf5c00167d0922bc90ed61a800a244ba5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVaultFactory<br>`0x68c79b15c2270215a47bf10eba954fc95fab635f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVaultWriteOffEscrow<br>`0x1c89df6c8b1ab81ef90855120fafb93d7fca3254` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVaultWriteOffEscrow<br>`0x2b914f5e396b0017a866c7e36af9fbba46c2d887` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleCreditVaultWriteOffEscrow<br>`0x5dec32675edac1bd6e5dca0ad9affcc7d4257cfb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleFactory<br>`0x5d4e705315aca451db40bf7c067077c768b3ffd0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleLeveragedEulerStrategy<br>`0x54449cd454ba2be50dc9d1ac9bb83a503c908d74` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleLeveragedEulerStrategy<br>`0x7369495d64ec9f8ff107e7857127c340781bb8c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleLeveragedEulerStrategy<br>`0x7a77231abe02359e0386dfea3b47124e36d44a51` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleLeveragedEulerStrategy<br>`0x96078f94375a81d28013b414b22683e66020eae8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenGovernance<br>`0x375d170b98da0e5394edf3ab2ba1e9360f9c29c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenGovernance<br>`0x577d963246d28dbe0dc579048adda421b054924a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenGovernance<br>`0xea091ed7146e2c3cf3ac11fa296e206e55177b30` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3<br>`0x12b98c621e8754ae70d0fdbbc73d6208bc3e3ca6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3<br>`0x1846bdfdb6a0f5c473dec610144513bd071999fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3<br>`0x6fbada9e92d0f00a89b2f9769af36dcfc16543b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3<br>`0x78751b12da02728f467a44eac40f5cbc16bd7934` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3<br>`0x99233be51ac3c0a8611e4bbf8c4bf8e81a914397` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3<br>`0xcddb1bceb7a1979c6caa0229820707429dd3ec6c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3<br>`0xd1cdefdbf64910b53cd27d990a4ca049c1c10e4d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3<br>`0xd6f279b7ccbcd70f8be439d25b9df93aeb60ec55` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3_1<br>`0x2fec85c0eaaace2b24926eabbf8373b26240931a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3_1<br>`0x6ca26545370978cf2b8c210913d8775d02c840e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3_1<br>`0xf6abb2d18ac5428be3eb8971716f554427eb2a9e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3SUSD<br>`0x51c77689a9c2e8ccbecd4ec9770a1fa5fa83eef1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3SUSD<br>`0x7db7a4a50b26602e56536189aa94678c80f8e5b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3SUSD<br>`0xb39ca0261a1b2986a6a9fe38d344b56374963de5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3SUSD<br>`0xe79e177d2a5c7085027d7c64c8f271c81430fc9b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3USDT<br>`0x42740698959761baf1b06baa51efbd88cb1d862b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTokenV3USDT<br>`0x63d27b3da94a9e871222cb0a32232674b02d2f2d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleTruefiStrategy<br>`0x7ccaf1e4b3224b9920708e35a0c396497fc08eb5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleUsualStrategy<br>`0x4380208ed0fc5136e93ed1ff67d2cbe1906d29f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleUsualStrategy<br>`0xa48d5e8efcdfbcaa9ba8b8fbdf7954a9a2859e71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | IdleUsualStrategy<br>`0xd48237a468c66604f64a75dd3511bc443a078e81` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | LockedIDLE<br>`0x02682c933428e7a9b7527dd9385f1e0c5d4a4f48` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | LockedIDLE<br>`0x30184e352d47e8ff5adc34c42365cdbd992e28d4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | LockedIDLE<br>`0x826c61c3183b261e4d4a9a28adbc358061ecd207` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | LockedIDLE<br>`0xb6297d8bcd05ed8308ef7d0b08aefec86856b1f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | LockedIDLE<br>`0xf241a0151841ae2e6ea750d50c5794b5edc31d99` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | MCR<br>`0x2ec5d566bd104e01790b13de33fd51876d57c495` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | MCR<br>`0x9b4825997d2634c4c68c6283ea30cfcabe8bda0a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | MCR<br>`0xccb40a11aa8c5dfafaa9de9311fe7bd47d0bade7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | MemberRoles<br>`0x504a7dff5eb2854be0b436da0ac2d3e0b789fe20` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | MemberRoles<br>`0x548bf2610c1f15ec6bb78914aa7f90c59a82f492` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | NXMaster<br>`0x08c3a887865684f30351a0ba6d683aa9b539829a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | Pool1<br>`0xfd61352232157815cf7b71045557192bf0ce1884` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | Pool2<br>`0x7cbe5682be6b648cc1100c76d4f6c96997f753d6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | PoolData<br>`0x25916c331797ba10601e1f05a1da0b425302f5a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | PriceOracle<br>`0x972a64d108e250df98dbeac8170678501f5ef181` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | PriceOracleV2<br>`0xb5a8f07dd4c3d315869405d702ee8f6ea695e8c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | ProgrammableBorrower<br>`0x8a5d3958db2c2be9173a180759afc544575b346c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | ProgrammableBorrower<br>`0xb5cebedbb601666e54d214e4aacb35d1dbb5d459` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | ProposalCategory<br>`0x6a313ff2a3e66db968ee3984bff178973e589322` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | ProxyAdmin<br>`0x0138a84f821809e2d01b16d053f4b4a5b88b725e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | ProxyAdmin<br>`0x120508eb8f0895a7de876cf2d49bb04458c68a14` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | ProxyAdmin<br>`0x3f8c6211b3580c00b431edcbc2fbb23966d05ea9` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | ProxyAdmin<br>`0x7740792812a00510b50022d84e5c4ac390e01417` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | ProxyAdmin<br>`0x9438904abc7d8944a6e2a89671fef51c629af351` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | ProxyAdmin<br>`0xc2ff102e62027de1205a7edd4c8a8f58c1e5e3e8` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | Quotation<br>`0x9dae0663f252d05314b7352403fa9c16f16f25ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | QuotationData<br>`0x1776651f58a17a50098d31ba3c3cd259c1903f7a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | Reservoir<br>`0x031f71b5369c251a6544c41ce059e6b3d61e42c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TokenController<br>`0x80b72ce39b3d73c46b2b8b9ef3acbf300a0077e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | TokenData<br>`0xe20b3ae826cdb43676e418f7c3b84b75b5697a40` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | TokenFunctions<br>`0xdf50a17bf58dea5039b73683a51c4026f3c7224e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| candidate review | TranchesChainlinkOracle<br>`0x0da050cf37747fd665adacdc0ce482f62442fb94` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TranchesChainlinkOracle<br>`0x50449b3d1f5931d568a1951ee506a9534e7f7dff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TranchesChainlinkOracle<br>`0x8f4cb6a9bc3856264ec5f9680ab1cb5fb81574eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TrancheWrapper<br>`0xcf96f4b91c6d424fb34aa9a33855b5c8ed1fe66d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TrancheWrapperWSTETHBalancer<br>`0x6bf9ea02daab6b4b3b71cce20a84088a71bf723a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x00d39058943b4a6f01cb3386a7f44b84ab482c8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x0186e34de71987303b4ed4a027ed939a1178a73b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x0198792f2849397908c092b6b57654e1a57a4cdc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x01b8a788d2742d8d1706fce7204fb523c51e175c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x06975bb418effb0029fe278a6fa15b92bb97496f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x0962fb33a7e0172d0e413b0fab003bee5142e6b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x0b4f695b05902efc14344d19ed1d0b0e061c8a3e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x0cac674ebd77bbd899f6079932768f6d59da089a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x0cdcbeaddf2276df7f41d8b1f45249bf3d63a8d6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x0f050055b162feaca563ff36fe905c930361da57` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x0fe4fc1301afe4afe8c3ac288c3e13cdace71b04` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x1440469fba56ea663de7c29bbe8bca7ad5158647` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x16f6be72882b24527f94c7bccabf77b62608083b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x17e9ab2992dfecbe779a06a92a6cdb9fe6aeeef3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x1cbd086e16f1188e0e15a153124d6f5c81e57f3e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x1d659f4357e30de73ed2dc02ed4e34bca262dcc8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x1eb1b47d0d8bcd9d761f52d26fcd90bba225344c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x1f5a97fb665e295303d2f7215ba2160cc5313c8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x209d0df488d7863f59b888ec21ce925f7bfd4eb8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x25e7337037817dd9bddd0334ca1591f370518893` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x271c616157e69a43b4977412a64183cf110edf16` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x271ce5ded4ccbd28833bddf8a8093517299920f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x29c794b9a70752c41d65ebccef1c1ee697387510` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x29d094110c7a89f1cb6c975df0a38cae80f24b21` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x2d29c277ac61376fb011dcafce03ea3c9485f4c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x35168324dc1981addc3bc915788e200bedf77865` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x35df8a95b348dd87167ed00b3421ba15d95ac1c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x36569d9afafc8bfd6bb844ee371f401c695f1bf6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x3687c0f8760371fc1bd1c7bc28695c388cded5a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x37de1d299c93743472343699c58ec95000870dc5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |
| candidate review | TransparentUpgradeableProxy<br>`0x39c70ae0a87c8eb373c40d090126c472e5e23647` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe5dab8208c1f4cce15883348b72086dbace3e64b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [60fd80c015025a7033cf6ede_iTrust.pdf](https://assets.website-files.com/5f99eb79d508ca853be5f2e8/60fd80c015025a7033cf6ede_iTrust.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13301] 60fd80c015025a7033cf6ede_iTrust.pdf — no match: Scope explicitly lists 8 contracts in the 'Within the scope of this audit' paragraph.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 60fd80c015025a7033cf6ede_iTrust.pdf | iTrustVaultFactory | unmatched — not counted | — | listed in scope | no |
| 60fd80c015025a7033cf6ede_iTrust.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| 60fd80c015025a7033cf6ede_iTrust.pdf | StakingData | unmatched — not counted | — | listed in scope | no |
| 60fd80c015025a7033cf6ede_iTrust.pdf | GovernanceDistribution | unmatched — not counted | — | listed in scope | no |
| 60fd80c015025a7033cf6ede_iTrust.pdf | Burn | unmatched — not counted | — | listed in scope | no |
| 60fd80c015025a7033cf6ede_iTrust.pdf | BaseContract | unmatched — not counted | — | listed in scope | no |
| 60fd80c015025a7033cf6ede_iTrust.pdf | RoundData | unmatched — not counted | — | listed in scope | no |
| 60fd80c015025a7033cf6ede_iTrust.pdf | StakeData | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xd7c49cee7e9188cca6ad8ff264c1da2e69d4cf3b` | NXMToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd82c32dd3585b5bc528688efa408ada09963c238` | VaultV2b | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d438f3b5175bebc262bf23753c1e53d03432bde` | wNXM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 185 |
| upstream | 17 |
| standard_library | 9 |
| needs_review | 411 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [13301] 60fd80c015025a7033cf6ede_iTrust.pdf

Fork inheritance lineage and inherited audits are included when available.
