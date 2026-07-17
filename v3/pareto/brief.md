# Agentic Audit Brief: Pareto

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 20 (0 matched; 20 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Pareto (`pareto`)
- Website: [https://pareto.credit/](https://pareto.credit/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, optimism, polygon, polygon-zkevm
- Contract surface: 204 unique implementations (204 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $202,329,760.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Pareto. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across arbitrum, ethereum, optimism, polygon. Structural roles: 4 supporting, 3 core, 1 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: supporting (4), core (3), infra (1)
- Contract kinds: contract (8)
- Detected standards: erc1967proxy (2), accesscontrol (1), erc165 (1), erc20 (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 32 contracts are derived from known codebases. 32 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x06975bb418effb0029fe278a6fa15b92bb97496f`, chain 1)
- UnnamedContract (`0x0b4f695b05902efc14344d19ed1d0b0e061c8a3e`, chain 1)
- UnnamedContract (`0x14b8e918848349d1e71e806a52c13d4e0d3246e0`, chain 1)
- UnnamedContract (`0x17e9ab2992dfecbe779a06a92a6cdb9fe6aeeef3`, chain 1)
- UnnamedContract (`0x271c616157e69a43b4977412a64183cf110edf16`, chain 1)
- UnnamedContract (`0x3fc0265e92eeafed0ccd9f8621764ce0981882ce`, chain 1)
- UnnamedContract (`0x433d5b175148da32ffe1e1a37a939e1b7e79be4d`, chain 1)
- UnnamedContract (`0x4462ed748b8f7985a4ac6b538dfc105fce2dd165`, chain 1)
- UnnamedContract (`0x45054c6753b4bce40c5d54418dabc20b070f85be`, chain 1)
- UnnamedContract (`0x5cc24f44ccaa80dd2c079156753fc1e908f495dc`, chain 1)
- UnnamedContract (`0x5ecf8bf9eae51c2ff47fac8808252facd8e36797`, chain 1)
- UnnamedContract (`0x97ccc1c046d067ab945d3cf3cc6920d3b1e54c88`, chain 1)
- UnnamedContract (`0x9cf358aff79dea96070a85f00c0ac79569970ec3`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xa30be796fb2babf9228359e86a041c14e29f86fc`, chain 1)
- UnnamedContract (`0xae7913c672c7f1f76c2a1a0ac4de97d082681234`, chain 1)
- UnnamedContract (`0xbc6cffafc8f98d7df780ce05fa55e14781c1c14d`, chain 1)
- UnnamedContract (`0xc26a6fa2c37b38e549a4a1807543801db684f99c`, chain 1)
- UnnamedContract (`0xc35d078092872ec1f2ae82bcd6f0b6b89f0850de`, chain 1)
- UnnamedContract (`0xc49b4ecc14aa31ef0ad077edcf53fab4201b724c`, chain 1)
- UnnamedContract (`0xda86e15d0cda3a05db930b248d7a2f775e575a44`, chain 1)
- UnnamedContract (`0xe8ea8bae250028a8709a3841e0ae1a44820d677b`, chain 1)
- UnnamedContract (`0xec6a70f62a83418c7fb238182ed2865f80491a8b`, chain 1)
- UnnamedContract (`0xf6223c567f21e33e859ed7a045773526e9e3c2d5`, chain 1)
- UnnamedContract (`0xfb3bd022d5dacf95ee28a6b07825d4ff9c5b3814`, chain 1)
- UnnamedContract (`0xa3a3741c48298e21eebe5a59beaf6f89dc0e0c4c`, chain 10)
- UnnamedContract (`0xb988641e8d493b5bff65e63819975b6b33477057`, chain 42161)
- UnnamedContract (`0xf40d482d7fc94c30b256dc7e722033bae68ecf90`, chain 42161)
- GnosisSafe (`0xbaecba470c229984b75bc860efe8e97ae082bb9f`, chain 1)
- GnosisSafeProxy (`0xfdbb4d606c199f091143bd604c85c191a526fbd0`, chain 10)
- GnosisSafeProxy (`0x61a944ca131ab78b23c8449e0a2ef935981d5cf6`, chain 137)
- Timelock (`0x45f4fb4d0ccc439bb7b85ba63064958ab7e31ee4`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (4 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 32/50 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 32 own, 18 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 154 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 29 standard proxy/library)
- Proxy deployments represented within implementation groups: 41
- Confirmed-live implementations: 32 of 204 unique; 172 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/162
- Verified + Unaudited implementations: 162
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 204
- Raw deployments: 204
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 6 fresh, 8 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (162)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x08db226d63ce724a6091ba82d28dfc76ceca23d8` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x154f023f7a41012a63fa72729f0dc5162a81dc89` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x1ee6470cd75d5686d0b2b90c0305fa46fb0c89a1` | ⚠️ Unaudited |
| ArbitrumExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba4eee20f434bc3908a0b18da496348657133a7e` | ⚠️ Unaudited |
| CelsiusxStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e90cf05acb23d8dfa856a74e74a165c6a7af8b3` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6ee6639665cceb15bcceb9980fc445dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1de9d660d3cb53031cfe1a58de40b171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c638235ee32657e8f720a23cec1bfc77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ebeac13f6403d19c95b6b75008b12fd21a93aab` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888fab8bd39a663b63161f5ee1eae31a25b653` | ⚠️ Unaudited |
| ConvexStrategyPlainPool3Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03563deef50b957f69232de055ea1a8aa6d854d9` | ⚠️ Unaudited |
| DelegateStakingRewardsIDLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747e819b878956fb6e5eb936a6415a5d037ff388` | ⚠️ Unaudited |
| EarlyRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1f71ed24aba6c8da8ca8c046bbc9804625d88fc` | ⚠️ Unaudited |
| EthenaCooldownRequest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0c4a2b14f0acd936226a598be6bfed190e098d1` | ⚠️ Unaudited |
| EulerStakingPYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf93471a82241c2be469d83d960932721b098ffb` | ⚠️ Unaudited |
| FalconXAAAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48fc1a04e5e18c994c3165c9ad0d3553d7f57724` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | optimism | unit-251136 | `0x0b2c639c533813f4aa9d7837caf62653d097ff85` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8397259c983751daf40400790063935a11afa28a` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251135 | `0xbaecba470c229984b75bc860efe8e97ae082bb9f` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-251123 | `0xfdbb4d606c199f091143bd604c85c191a526fbd0` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-251137 | `0x61a944ca131ab78b23c8449e0a2ef935981d5cf6` | ⚠️ Unaudited |
| GovernableFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x107a369bc066c77ff061c7d2420618a6ce31b925` | ⚠️ Unaudited |
| GovernorAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02faf7cfee786111eae6747a0c344b48c1ed5e5` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2256b25cfc8e35c3135664fd03e77595042fe31b` | ⚠️ Unaudited |
| HypernativeBatchPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b0f494ef778907336bd7e631607db2c8019bf76` | ⚠️ Unaudited |
| Idle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x875773784af8135ea0ef43b5a374aad105c5d39e` | ⚠️ Unaudited |
| IdleAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc3bba4ef3d1355a76e69900f98a59d30ef54f3` | ⚠️ Unaudited |
| IdleAaveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5a5d7832e9084fd88885823afa8cd99250a70c` | ⚠️ Unaudited |
| IdleBatchedMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbf03a2d7037eb59ae03d3a2927f1d7ec805c69` | ⚠️ Unaudited |
| IdleCDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ea9ae797972ad9fc52c55105d184d8b059bb716` | ⚠️ Unaudited |
| IdleCDOEpochDepositQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6976e70270ac078391880515b8ce2dc047a724dc` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x07ee2f1272914e869d0e47e08b5a10007b8fdf31` | ⚠️ Unaudited |
| IdleCDOEpochVariantArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0e90cf05acb23d8dfa856a74e74a165c6a7af8b3` | ⚠️ Unaudited |
| IdleCDOEpochVariantOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x0581f1f01e05b77612feaf529da3e048e1424a7e` | ⚠️ Unaudited |
| IdleCDOEpochVariantPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x5c9aca3ce6dec45d21041ed9964c7242ecd85a83` | ⚠️ Unaudited |
| IdleCDOEpochVariantPrefunded | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73fb8d2d96486b6aac8713f0c1cc2633e03a0f6a` | ⚠️ Unaudited |
| IdleCDOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c9916bb9498f637e2fa86c2028e26275dc9a631` | ⚠️ Unaudited |
| IdleCDOInstadappLiteVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d0f8a0f04d54197f85fee6d5523df2d84a73b27` | ⚠️ Unaudited |
| IdleCDOOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b8a1e78ac707f9b0b5eb4f34b02d9af84d2b689` | ⚠️ Unaudited |
| IdleCDOPoLidoVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56050f117d675041da6a4b501f0cb75d455759a1` | ⚠️ Unaudited |
| IdleCDOPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x710426b69e50863b1689f36dc324265c7dd076c9` | ⚠️ Unaudited |
| IdleCDORegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84fdee80f18957a041354e99c7eb407467d94d8e` | ⚠️ Unaudited |
| IdleCDOTranche | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251118 | `0x24e16f9fad32891f8ba69ce8fedd273a2649331a` | ⚠️ Unaudited |
| IdleCDOTruefiCreditVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2361130282a24421d9fdf2d1072c8ede2a79f108` | ⚠️ Unaudited |
| IdleCDOUsualVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b55b28de948d9e5bbe62f30d47f8f0f29a7e8b` | ⚠️ Unaudited |
| IdleCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55583f7ca92f4cf051e6f55d77a967ba9b2c1edd` | ⚠️ Unaudited |
| IdleCompoundETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a7aca7618801ca90f91beaa5a1a2e90a55605ca` | ⚠️ Unaudited |
| IdleCompoundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c39daf173646c4ce9e6a678425ed965c98ccc66` | ⚠️ Unaudited |
| IdleCreditVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e` | ⚠️ Unaudited |
| IdleCreditVaultImpliedPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1745c027ab3082c3b1019db69af295f095500663` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c89df6c8b1ab81ef90855120fafb93d7fca3254` | ⚠️ Unaudited |
| IdleDepositForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x43bd6a78b37b50e3f52cacec53f1202dbde6a761` | ⚠️ Unaudited |
| IdleDSR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x587fe6430a1148df4868e9e71357a179110c608a` | ⚠️ Unaudited |
| IdleEulerStakingStrategyPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956f650177f95ef142aa2a26da407ad014cf5784` | ⚠️ Unaudited |
| IdleEulerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3886557ed1698dbd496a4a0f2e00df8918ea45e0` | ⚠️ Unaudited |
| IdleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d4e705315aca451db40bf7c067077c768b3ffd0` | ⚠️ Unaudited |
| IdleFulcrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x727d9c331e9481167dc61a9289c948da25be825e` | ⚠️ Unaudited |
| IdleFulcrumV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02072abc26f1d69849b6dca0b1ea805dc4cbe2e1` | ⚠️ Unaudited |
| IdleFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8788050c3026557c539a2b8fce146e27fa4acc4f` | ⚠️ Unaudited |
| IdleMcdBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ab2a7ed1a0c58dea84de880b4f1710229137211` | ⚠️ Unaudited |
| IdleMStableStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b8c3ee1bafb4af5826d41137cd5caf878083619` | ⚠️ Unaudited |
| IdlePoLidoStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4916ee4a761e5cff5b4a3183f109f3e141a12569` | ⚠️ Unaudited |
| IdlePriceCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaefb1325a2c1756bc3fcc516d6c2cf947d225358` | ⚠️ Unaudited |
| IdlePYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3af1317450d291c328525a8eb183d5cca45553d` | ⚠️ Unaudited |
| IdlePYTClear | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0fdcdc3df70420bad4f7ead4852f961b5d809df1` | ⚠️ Unaudited |
| IdlePYTClearJunior | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff31c69a983bac080f23f21be965650758d19d18` | ⚠️ Unaudited |
| IdlePYTClearPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fa86028323ba310fe4488f74085de99ed0264d8` | ⚠️ Unaudited |
| IdleRebalancer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x781616fb046a4e39c239e39bfeff1a07d4b753f4` | ⚠️ Unaudited |
| IdleRebalancerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec470753b56ced3784ce29db7c297f0c1b75fc87` | ⚠️ Unaudited |
| IdleRebalancerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21fcd8adac59adc2eb94355eb2f43f869bbc9582` | ⚠️ Unaudited |
| IdleRebalancerV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5a50d4125882083aaefdd370848771286a84a` | ⚠️ Unaudited |
| IdleRebalancerV3SUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b98a5e0e67e68f502e8950992e0b1c0aee0a506` | ⚠️ Unaudited |
| IdleRebalancerV3USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2403457ce59e56dd69d2fc4f22e77d7ab180deb1` | ⚠️ Unaudited |
| IdleRibbonPSMStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x051ba97b84a921f4134376af2c7e3a38229b0933` | ⚠️ Unaudited |
| IdleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10cecc30087f4b3e894dad8398307faa2f0ac2b9` | ⚠️ Unaudited |
| IdleTokenFungible | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d41f858d803af86e5192a77a798ad7d97e906ca` | ⚠️ Unaudited |
| IdleTokenFungibleOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1b0f494ef778907336bd7e631607db2c8019bf76` | ⚠️ Unaudited |
| IdleTokenGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2854a270fe9c839ffe453e9178d1cfef109d6b8e` | ⚠️ Unaudited |
| IdleTokenHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b7400cc634a49650cb3212d882512424fed00ed` | ⚠️ Unaudited |
| IdleTokenHelperMatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17e0d3f5caede03c97becac4ecb27739a15e9485` | ⚠️ Unaudited |
| IdleTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12b98c621e8754ae70d0fdbbc73d6208bc3e3ca6` | ⚠️ Unaudited |
| IdleTokenV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fec85c0eaaace2b24926eabbf8373b26240931a` | ⚠️ Unaudited |
| IdleTokenV3SUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51c77689a9c2e8ccbecd4ec9770a1fa5fa83eef1` | ⚠️ Unaudited |
| IdleTokenV3USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42740698959761baf1b06baa51efbd88cb1d862b` | ⚠️ Unaudited |
| IdleTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x544897a3b944fdeb1f94a0ed973ea31a80ae18e1` | ⚠️ Unaudited |
| IdleTrancheAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70728f08e97303d757be4cd97a7d27b65dd41e6d` | ⚠️ Unaudited |
| IdleUsdcOtcSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x863a08bfc7ae938c4f96c2c3ef82fa309b33e765` | ⚠️ Unaudited |
| IdleViewHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2adf7ccf0241b60747d194b3ea163e28105dadec` | ⚠️ Unaudited |
| KeyringIdleWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x168dc532aa8071003daa1a8094d938511f412e2b` | ⚠️ Unaudited |
| LockedIDLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02682c933428e7a9b7527dd9385f1e0c5d4a4f48` | ⚠️ Unaudited |
| MasterChefTokenizerPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ac74fe6f3c9123254418eefce37e4f7271a2b72` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| MaticWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ⚠️ Unaudited |
| MerkleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69369507aa7a44156cc297448ab57e3c15d26485` | ⚠️ Unaudited |
| MetamorphoPYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96dd27112bdd615c3a2d649fe22d8ee27e448152` | ⚠️ Unaudited |
| MetaMorphoSnippets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x603cb545b98aca3691be869871b34ae72ccfddca` | ⚠️ Unaudited |
| MinimalInitializableProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad27d10ef37e809b67b1a7e74f65e781cc5a693d` | ⚠️ Unaudited |
| MorphoAavePYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9db5a6bd77572748e541a0cf42f787f5fe03049e` | ⚠️ Unaudited |
| MorphoAaveV2SupplyVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb45d9790e7f335b491c9532f7ad15aa1a9dfac` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a9196b06f339ad9f3ee752c987b401f2e1e2718` | ⚠️ Unaudited |
| ParetoDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0f3e8de8dfdf3bf9d864865b5f890cae933a0d73` | ⚠️ Unaudited |
| ParetoDollarQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ace8d682987c2219fe8cd314b858c326a4c3fd` | ⚠️ Unaudited |
| ParetoDollarStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b5f6ec63abcf8253e0a8c36c858e0290484c894` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x972a64d108e250df98dbeac8170678501f5ef181` | ⚠️ Unaudited |
| PriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a8f07dd4c3d315869405d702ee8f6ea695e8c5` | ⚠️ Unaudited |
| PriceOracleV2Matic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x27f06d00d73ec426193473726bb0671267fd27f0` | ⚠️ Unaudited |
| PriceOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2335e0fcd008d953ad3c5879e3719d20156d5fa0` | ⚠️ Unaudited |
| ProgrammableBorrower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d0799a2f740120dacbfec33c5374b9086d069b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0138a84f821809e2d01b16d053f4b4a5b88b725e` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031f71b5369c251a6544c41ce059e6b3d61e42c6` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8b5b65c6464651403955ac6d71f9c0204169d3` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x466cfdff869666941cdb89daa412c3cddc55d6c1` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | polygon | unit-251124 | `0x45f4fb4d0ccc439bb7b85ba63064958ab7e31ee4` | ⚠️ Unaudited |
| TokenGeyserPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2540971d944921b51e3434503922ea92f2ee0862` | ⚠️ Unaudited |
| TranchesChainlinkOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0da050cf37747fd665adacdc0ce482f62442fb94` | ⚠️ Unaudited |
| TrancheWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79f05f75df6c156b2b98ac1fbfb3637fc1e6f048` | ⚠️ Unaudited |
| TrancheWrapperWSTETHBalancer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf9ea02daab6b4b3b71cce20a84088a71bf723a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x00d39058943b4a6f01cb3386a7f44b84ab482c8b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0186e34de71987303b4ed4a027ed939a1178a73b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0198792f2849397908c092b6b57654e1a57a4cdc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x01b8a788d2742d8d1706fce7204fb523c51e175c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0962fb33a7e0172d0e413b0fab003bee5142e6b6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0ad21c3ac4ffe7c1ed2b1b717cd051ded365fa32` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0cac674ebd77bbd899f6079932768f6d59da089a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0fe4fc1301afe4afe8c3ac288c3e13cdace71b04` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x16f6be72882b24527f94c7bccabf77b62608083b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1d659f4357e30de73ed2dc02ed4e34bca262dcc8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1eb1b47d0d8bcd9d761f52d26fcd90bba225344c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1f5a97fb665e295303d2f7215ba2160cc5313c8e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x25e7337037817dd9bddd0334ca1591f370518893` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x271ce5ded4ccbd28833bddf8a8093517299920f0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x29c794b9a70752c41d65ebccef1c1ee697387510` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x29d094110c7a89f1cb6c975df0a38cae80f24b21` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x35168324dc1981addc3bc915788e200bedf77865` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x35df8a95b348dd87167ed00b3421ba15d95ac1c8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3687c0f8760371fc1bd1c7bc28695c388cded5a0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x37de1d299c93743472343699c58ec95000870dc5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3bcba0afd36c9b350f46c570f89ab70817d122cb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4473bc90118b18be890af42d793b5252c4dc382d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x62b17c9083db5941197e83bd385985b8878b58fb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9e0c5ee5e4b187cf18b23745fcf2b6ae66a9b52f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbc48967c34d129a2ef25dd4dc693cc7364d02eb9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x2361130282a24421d9fdf2d1072c8ede2a79f108` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x10417734001162ea139e8b044dfe28dbb8b28ad0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | arbitrum | unit-251139 | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ⚠️ Unaudited |
| TruefiCreditLineStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d4e705315aca451db40bf7c067077c768b3ffd0` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e379c9cff64944be82b849f8fd5972c7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0735a62b0b6e837fa67130589988436fd26f0e12` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02daefc2e8aad089d094579499508398e3057966` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-251138 | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x275da8e61ea8e02d51edd8d0dc5c0e62b4cdb0be` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3024656ae91d7bf724f613c314bc56030ba2344c` | ⚠️ Unaudited |
| VesterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf875f2c6e4cc1688dfe4ecf79583193b6089972` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3310b0b57b86d376040b755f94a925f39c4320` | ⚠️ Unaudited |
| yxToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d81b042bb9939b4d32cdf7861774c442a2685ce` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251090 | `0x06975bb418effb0029fe278a6fa15b92bb97496f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251091 | `0x0b4f695b05902efc14344d19ed1d0b0e061c8a3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251092 | `0x14b8e918848349d1e71e806a52c13d4e0d3246e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251093 | `0x17e9ab2992dfecbe779a06a92a6cdb9fe6aeeef3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251094 | `0x271c616157e69a43b4977412a64183cf110edf16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251095 | `0x3fc0265e92eeafed0ccd9f8621764ce0981882ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251096 | `0x433d5b175148da32ffe1e1a37a939e1b7e79be4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251097 | `0x4462ed748b8f7985a4ac6b538dfc105fce2dd165` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251098 | `0x45054c6753b4bce40c5d54418dabc20b070f85be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251099 | `0x5cc24f44ccaa80dd2c079156753fc1e908f495dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251100 | `0x5ecf8bf9eae51c2ff47fac8808252facd8e36797` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-251101 | `0x6dbdeef7a188beaffc2c57006e5d8edaf0c0e9e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251102 | `0x97ccc1c046d067ab945d3cf3cc6920d3b1e54c88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251103 | `0x9cf358aff79dea96070a85f00c0ac79569970ec3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251104 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251105 | `0xa30be796fb2babf9228359e86a041c14e29f86fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251106 | `0xae7913c672c7f1f76c2a1a0ac4de97d082681234` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251107 | `0xbc6cffafc8f98d7df780ce05fa55e14781c1c14d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251108 | `0xc26a6fa2c37b38e549a4a1807543801db684f99c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251109 | `0xc35d078092872ec1f2ae82bcd6f0b6b89f0850de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251110 | `0xc49b4ecc14aa31ef0ad077edcf53fab4201b724c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251111 | `0xda86e15d0cda3a05db930b248d7a2f775e575a44` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-251112 | `0xe7e13f902ea13e6eaaa4ed9a2de5898436d12cbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251113 | `0xe8ea8bae250028a8709a3841e0ae1a44820d677b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-251114 | `0xeba43518e4fdda8d82ad711da3b27717779dbdf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251115 | `0xec6a70f62a83418c7fb238182ed2865f80491a8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251116 | `0xf6223c567f21e33e859ed7a045773526e9e3c2d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251117 | `0xfb3bd022d5dacf95ee28a6b07825d4ff9c5b3814` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251119 | `0x2bcf124aa4f7f32f0fe54f498d924b934c942b31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251120 | `0x463465c334742d72907ca5fb97db44688b4ec3dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-251121 | `0xa3a3741c48298e21eebe5a59beaf6f89dc0e0c4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251122 | `0xd2c0d848aa5ad1a4c12be89e713e70b73211989b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-251125 | `0x4ddb301403ee3c4b4099ed128b34c36d86f6df35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-251126 | `0xae65d6c295e4a28519182a632fb25b7c1966aed7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-251127 | `0xeab324e9450d1effa087cce8eff6c1fb476d60ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-251128 | `0xf9e2ae779a7d25cde46fccc41a27b8a4381d4e52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251129 | `0x133f1c751f25c2aaf0e83f0609a67074915144a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251130 | `0x3919396cd445b03e6bb62995a7a4cb2ac544245d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251131 | `0x5b11507f8a91005ad1591f54ef64133aaba6d06e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251132 | `0x97f476f664a95106931f78113489e0361cf1c9fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251133 | `0xb988641e8d493b5bff65e63819975b6b33477057` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251134 | `0xf40d482d7fc94c30b256dc7e722033bae68ecf90` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Link](https://drive.google.com/file/d/1bu-K45CsMWeIST676uEyIgTSAOImDtXe/view?usp=sharing) | Hans Friese | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Link](https://drive.google.com/file/d/1aIGWfo1-WXTgE3DfLfZYyJ6NNs8-esNT/view?usp=sharing) | Hans Friese | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Link](https://drive.google.com/file/d/1rTfKCkQbhVEk6qgYsluuHD2acXRxA4e1/view?usp=sharing) | Hans Friese | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Link](https://drive.google.com/file/d/1nr5kvwheKoYBDWe4M5DotKcapHWoqFSh/view?usp=sharing) | Hans Friese | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Link](https://drive.google.com/file/d/1OC3TEhRQNeHrVSdRTbrOteSrafNYXoHq/view?usp=sharing) | Hans Friese | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Link](https://drive.google.com/file/d/12q-79KRkB9r2zPjyztFRYVBo1ynb-FFn/view?usp=sharing) | Hans Friese | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Link](https://skynet.certik.com/projects/idle-finance) | CertiK | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Link](https://diligence.security/audits/2021/06/idle-finance) | Consensys Diligence | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Link](https://certificate.quantstamp.com/full/idle-finance.pdf) | Quantstamp | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [Link](https://certificate.quantstamp.com/full/idle-governance.pdf) | Quantstamp | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Link](https://drive.google.com/file/d/1tkpk3Rl-O5JWPN0jT2717DtFUnpksRlB/view?usp=sharing) | Sherlock (0x52) | Contest | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Link](https://drive.google.com/file/d/1K8K84VQrejNZnRzvjuIFMPHMw2ReWoQH/view?usp=sharing) | Sherlock (0x52) | Contest | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Link](https://drive.google.com/file/d/1UwmUQX-9VwK-2FIkKOu_62k4Lm-gC1K-/view?usp=drive_link) | Sherlock (0x52) | Contest | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Link](https://drive.google.com/file/d/1B5VFcZMcf8KVbBkslmfutIzHmraOkdUX/view) | Sherlock (0x52) | Contest | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Link](https://drive.google.com/file/d/1V1LP5WR01QxHN8M51OXG6N7vrG9b2d0Y/view) | Sherlock (0x52) | Contest | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Link](https://drive.google.com/file/d/1n8RNsqN7hXcQHwtmksKHYhW8zXVfiDB5/view?usp=sharing) | Sherlock (0x52) | Contest | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Link](https://drive.google.com/file/d/1P8QsDc118cJmp5cCOneefM5NN7xhx5Io/view?usp=sharing) | Sherlock | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Link](https://drive.google.com/file/d/15UH3nytMdm_BYSX2XHd77-uZlTXsOLV1/view?usp=sharing) | X77 | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Link](https://drive.google.com/file/d/1dBlNpGjnhcryl0s-muvuQGORVz-TzBCM/view?usp=sharing) | Sherlock (0x52) | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Link](https://drive.google.com/file/d/1ONqxBgT1GvdYoA-QBAQ7OGlBDicQ4xcI/view?usp=sharing) | Sherlock (0x52) | Contest | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17952] Link — no match: Scope section explicitly lists 2 contracts: IdleCDOEpochQueue.sol and IdleCreditVault.sol. Audit date is November 7, 2024 from the header.
- [17953] Link — no match: Only one contract in scope: IdleCDOEpochDepositQueue.sol
- [17954] Link — no match: Scope section explicitly lists two contracts: IdleCDOEpochVariant.sol and IdleCreditVault.sol. Audit date is October 8, 2024 from the title.
- [17955] Link — no match: Scope section explicitly lists two contracts: IdleCDOEpochVariant.sol and IdleCreditVault.sol. Audit date is August 6, 2024 from the header.
- [17956] Link — no match: Scope section explicitly lists two contracts: IdleCDO.sol and IdleCDOInstadappLiteVariant.sol. Audit date found in header of report.
- [17957] Link — no match: Scope explicitly lists 2 files: IdleCDO.sol and IdleCDOInstadappLiteVariant.sol. Audit date from cover page: 'September 2, 2023'.
- [17958] Link — no match: Extracted from 'Audited Files/SHA256' section listing two Solidity files. Audit date from 'Last Audit was delivered on 3/17/2022'.
- [17959] Link — no match: Scope table in Appendix 1 lists 9 files. Audit date inferred from 'June & July 2021' (end of July).
- [17960] Link — no match: Extracted contract names from scope descriptions, findings, test results, and coverage tables. The audit date is from the cover page: 'April 26th 2021'.
- [17961] Link — no match: Scope explicitly lists PriceOracle.sol, Idle.sol, and IdleController.sol as audited files.
- [17962] Link — no match: All 12 contracts listed in the Scope section of the audit report.
- [17963] Link — no match: All 12 contracts listed in the Scope section of the audit report.
- [17964] Link — no match: Extracted 6 contract names from the scope section file list. Audit date from 'Date Audited: March11-March12,2026' -> end date March 12, 2026.
- [17965] Link — no match: Scope section lists three files; contract names extracted from filenames. Audit date is February 21-22, 2026, using end date.
- [17966] Link — no match: Scope section explicitly lists 6 files with contract names extracted from filenames. Audit date is January 20, 2026 (end date of range).
- [17967] Link — no match: All contracts listed in the Scope section of the audit report.
- [17968] Link — no match: Scope section explicitly lists 8 files with full paths. Audit date range April 24-28, 2025, end date used.
- [17969] Link — no match: Scope section explicitly lists 7 contracts with file paths. Audit date is 21.04.2025 from cover page and timeline.
- [17970] Link — no match: Scope section lists 5 contracts in USP repository. Contract names extracted from file paths and findings context.
- [17971] Link — no match: Scope section explicitly lists 7 files. Audit date from 'Date Audited: December 13 - December 21, 2024'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Link | IdleCDOEpochQueue | unmatched — not counted | — | listed in scope section | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope section | no |
| Link | IdleCDOEpochDepositQueue | unmatched — not counted | — | listed in scope section | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope section | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope section | no |
| Link | IdleCDO | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOInstadappLiteVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDO | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOInstadappLiteVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDO | unmatched — not counted | — | Audited Files/SHA256 section lists IdleCDO.sol | no |
| Link | IdleCDOTrancheRewardsStorage | unmatched — not counted | — | Audited Files/SHA256 section lists IdleCDOTrancheRewardsStorage.sol | no |
| Link | GuardedLaunchUpgradable | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IdleCDO | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IdleCDOStorage | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IdleCDOTranche | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IdleCDOTrancheRewards | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IdleCDOTrancheRewardsStorage | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IIdleCDOStrategy | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IERC20Detailed | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IIdleCDOTrancheRewards | unmatched — not counted | — | listed in scope table in Appendix 1 | no |
| Link | IdleTokenV3_1 | unmatched — not counted | — | listed in scope and findings | no |
| Link | IdleRebalancerV3_1 | unmatched — not counted | — | listed in scope and findings | no |
| Link | IdleTokenGovernance | unmatched — not counted | — | listed in scope and findings | no |
| Link | IdleTokenHelper | unmatched — not counted | — | listed in scope and findings | no |
| Link | IdleCompound | unmatched — not counted | — | findings mention file | no |
| Link | IdleFulcrum | unmatched — not counted | — | findings mention file | no |
| Link | IdleRebalancer | unmatched — not counted | — | findings mention file | no |
| Link | IdleTokenV3 | unmatched — not counted | — | findings mention file | no |
| Link | IdleRebalancerV3 | unmatched — not counted | — | findings mention file | no |
| Link | IdleFactory | unmatched — not counted | — | findings mention file | no |
| Link | IdleMcdBridge | unmatched — not counted | — | findings mention file | no |
| Link | IdleAave | unmatched — not counted | — | findings mention file | no |
| Link | GST2Consumer | unmatched — not counted | — | findings mention file | no |
| Link | IdleDSR | unmatched — not counted | — | findings mention file | no |
| Link | IdleDyDx | unmatched — not counted | — | findings mention file | no |
| Link | IdleCompoundV2 | unmatched — not counted | — | findings mention file | no |
| Link | IdleFulcrumV2 | unmatched — not counted | — | findings mention file | no |
| Link | IdleAaveV2 | unmatched — not counted | — | test results mention | no |
| Link | IdleCompoundETH | unmatched — not counted | — | test results mention | no |
| Link | IdleFulcrumDisabled | unmatched — not counted | — | test results mention | no |
| Link | yxToken | unmatched — not counted | — | findings mention file | no |
| Link | IdleBatchConverter | unmatched — not counted | — | coverage table | no |
| Link | IdleViewHelper | unmatched — not counted | — | coverage table | no |
| Link | MinimalInitializableProxyFactory | unmatched — not counted | — | coverage table | no |
| Link | GST2ConsumerV2 | unmatched — not counted | — | coverage table | no |
| Link | PriceOracle.sol | unmatched — not counted | — | listed in scope | no |
| Link | Idle.sol | unmatched — not counted | — | listed in scope | no |
| Link | IdleController.sol | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochQueue | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariantPrefunded | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOStorage | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultFactory | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultImpliedPrice | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultManagerOrchestrator | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultWriteOffEscrow | unmatched — not counted | — | listed in scope | no |
| Link | IProgrammableBorrower | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | ProgrammableBorrower | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochQueue | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariantPrefunded | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOStorage | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultFactory | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultImpliedPrice | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultManagerOrchestrator | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultWriteOffEscrow | unmatched — not counted | — | listed in scope | no |
| Link | IProgrammableBorrower | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | ProgrammableBorrower | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochQueue | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariantPrefunded | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDO | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultWriteOffEscrow | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochQueue | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | GuardedLaunchUpgradable | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDO | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOStorage | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOTranche | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | GuardedLaunchUpgradable | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDO | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOStorage | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOTranche | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVaultWriteOffEscrow | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |
| Link | Constants | unmatched — not counted | — | listed in scope | no |
| Link | EmergencyUtils | unmatched — not counted | — | listed in scope | no |
| Link | ParetoDollar | unmatched — not counted | — | listed in scope | no |
| Link | ParetoDollarQueue | unmatched — not counted | — | listed in scope | no |
| Link | ParetoDollarStaking | unmatched — not counted | — | listed in scope | no |
| Link | IParetoDollar | unmatched — not counted | — | listed in scope | no |
| Link | IParetoDollarQueue | unmatched — not counted | — | listed in scope | no |
| Link | IParetoDollarStaking | unmatched — not counted | — | listed in scope | no |
| Link | Constants | unmatched — not counted | — | listed in scope table | no |
| Link | EmergencyUtils | unmatched — not counted | — | listed in scope table | no |
| Link | ParetoDollar | unmatched — not counted | — | listed in scope table | no |
| Link | ParetoDollarQueue | unmatched — not counted | — | listed in scope table | no |
| Link | ParetoDollarStaking | unmatched — not counted | — | listed in scope table | no |
| Link | IParetoDollar | unmatched — not counted | — | listed in scope table | no |
| Link | IParetoDollarQueue | unmatched — not counted | — | listed in scope table | no |
| Link | ParetoDollarQueue | unmatched — not counted | — | listed in scope | no |
| Link | ParetoDollarStaking | unmatched — not counted | — | listed in scope | no |
| Link | EmergencyUtils | unmatched — not counted | — | listed in scope | no |
| Link | ParetoDollar | unmatched — not counted | — | listed in scope | no |
| Link | Deploy | unmatched — not counted | — | mentioned in findings | no |
| Link | GuardedLaunchUpgradable | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDO | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochQueue | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOEpochVariant | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOStorage | unmatched — not counted | — | listed in scope | no |
| Link | IdleCDOTranche | unmatched — not counted | — | listed in scope | no |
| Link | IdleCreditVault | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x45f4fb4d0ccc439bb7b85ba63064958ab7e31ee4` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 121 |
| upstream | 6 |
| standard_library | 35 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 20
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 123 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=20
- Match method counts: n/a

Zero-match audit list:

- [17952] Link
- [17953] Link
- [17954] Link
- [17955] Link
- [17956] Link
- [17957] Link
- [17958] Link
- [17959] Link
- [17960] Link
- [17961] Link
- [17962] Link
- [17963] Link
- [17964] Link
- [17965] Link
- [17966] Link
- [17967] Link
- [17968] Link
- [17969] Link
- [17970] Link
- [17971] Link

Fork inheritance lineage and inherited audits are included when available.
