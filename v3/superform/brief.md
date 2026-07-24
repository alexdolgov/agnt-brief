# Agentic Audit Brief: Superform

## Export Authority

- Production state: **published scope**
- Raw selected rows: 18 across 5 audit(s)
- Eligible audit results: 14 (5 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Superform (`superform`)
- Website: [https://app.superform.xyz](https://app.superform.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, blast, bsc, ethereum, fantom, hyperliquid, linea, optimism, polygon
- Contract surface: 192 unique implementations (274 raw deployments)
- Coverage basis: 7/9 confirmed own live verified implementations (77.8%); conservative 77.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $22,050,136.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Superform. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, base, ethereum, fantom, hyperliquid. Structural roles: 5 core, 3 supporting, 1 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (5), supporting (3), unclassified (1)
- Contract kinds: contract (9)
- Detected standards: erc20 (3), erc165 (2), ownable (2), accesscontrol (1), erc20permit (1), erc4626 (1), ownable2step (1)
- Frameworks: uniswap-v2 (7), openzeppelin-upgradeable (2), boringcrypto (1), chainlink (1), foundry (1), openzeppelin (1), solady (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ECDSAPPSOracle (`0x366d88f03b8ef34eb49f32a927ff6e1609f694f2`, chain 1)
- SuperBank (`0x6fcc6a6a825fc14e6e56fd14978fc6b97acb5d15`, chain 1)
- SuperGovernor (`0xb5396ef2bf8ca360ceb4166b77afb2bed20e74d4`, chain 1)
- SuperOracle (`0x8943128dbab4279d561654deed2930bb975aa070`, chain 1)
- SuperVault (`0x2c71f70e2ec720ae061ae7e0316fc9654d94f417`, chain 8453)
- SuperVaultAggregator (`0x10ac0b33e1c4501cf3ec1cb1ae51ebfdbd2d4698`, chain 1)
- Up (`0x1d926bbe67425c9f507b9a0e8030eedc7880bf33`, chain 1)
- UpOFT (`0x642ffc3496aca19106bab7a42f1f221a329654fe`, chain 999)
- UpOFT (`0x5b2193fdc451c1f847be09ca9d13a4bf60f8c86b`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/9 (77.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 183 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 34
- Confirmed-live implementations: 9 of 192 unique; 183 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/137
- Verified + Unaudited implementations: 130
- Verified by bytecode match: 0
- Unverified implementations: 55
- Unique implementations: 192
- Raw deployments: 274
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 5 fresh, 4 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 55.6% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xMacro | Tier 2 | 7 | 5.1% | 2025-11 |
| GetRecon | Tier 2 | 5 | 3.6% | 2025-11 |
| Spearbit | Tier 1 | 5 | 3.6% | 2025-08 |
| sujithsomraaj | Tier 2 | 1 | 0.7% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ECDSAPPSOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257356 | `0x366d88f03b8ef34eb49f32a927ff6e1609f694f2` | ✅ Audited |
| SuperBank | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257357 | `0x6fcc6a6a825fc14e6e56fd14978fc6b97acb5d15` | ✅ Audited |
| SuperGovernor | governance | project_anchor | own_supporting | 0 | ethereum | unit-257359 | `0xb5396ef2bf8ca360ceb4166b77afb2bed20e74d4` | ✅ Audited |
| SuperOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257358 | `0x8943128dbab4279d561654deed2930bb975aa070` | ✅ Audited |
| SuperVault | core_logic | project_anchor | own_supporting | 0 | base | unit-257360 | `0x2c71f70e2ec720ae061ae7e0316fc9654d94f417` | ✅ Audited |
| SuperVaultAggregator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-257354 | `0x10ac0b33e1c4501cf3ec1cb1ae51ebfdbd2d4698` | ✅ Audited |
| Up | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257355 | `0x1d926bbe67425c9f507b9a0e8030eedc7880bf33` | ✅ Audited |

### ⚠️ Verified + Unaudited (130)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcrossSendFundsAndExecuteOnDstHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39962be24192d0d6b6e3a19f332e3c825604d16a` | ⚠️ Unaudited |
| AcrossV3Adapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dc34c4eb23973f3551526c2afe8ffb7f70f0fd7` | ⚠️ Unaudited |
| AdminProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x935c01e50f7c216dc7a97b1884f7431aaa164552`; arbitrum `0xcc09f5bd7582d02bb31825d09589f4773b65ecc9` | ⚠️ Unaudited |
| ApproveAndAcrossSendFundsAndExecuteOnDstHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72422ab917e4a698369767f7ace667a769e0f3f2` | ⚠️ Unaudited |
| ApproveAndDeposit4626VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37535d96712fbaef6d868e721e7b987ad1e6a86` | ⚠️ Unaudited |
| ApproveAndDeposit5115VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44c7a40f05771fdaeaee61f36902d95cbf593988` | ⚠️ Unaudited |
| ApproveAndRequestDeposit7540VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x840b2b0553683de46c5e6382d1a405f44773b43f` | ⚠️ Unaudited |
| ApproveAndSwapKyberSwapHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc9d10d9710dbf82924a3f7733293457ad12d37d` | ⚠️ Unaudited |
| ApproveAndSwapOdosV2Hook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x067696e1efbd25cafd3b55648ed253c20a7d9671` | ⚠️ Unaudited |
| ApproveERC20Hook | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b789980dc6cc7d88e30c442d704646ff7f6d306` | ⚠️ Unaudited |
| BatchTransferFromHook | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x816d5de8835fb7a003896f486fcce46a6debb00a` | ⚠️ Unaudited |
| BatchTransferHook | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x852c6e00a7ec7590318deaad03030d4ddd74c93a` | ⚠️ Unaudited |
| CancelDepositRequest7540Hook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bba42ddaa6ef6ccd228bd6270565f87154e921a` | ⚠️ Unaudited |
| CancelRedeemRequest7540Hook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x542601afaeeb2e5dfc7d1f2feef5911285f0c2c0` | ⚠️ Unaudited |
| CircleGatewayAddDelegateHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ae1263fd7d6017770147393ce130f16e1fe2cc` | ⚠️ Unaudited |
| CircleGatewayMinterHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x659b720a5e8e08d2c379165d17ba5f74dd104824` | ⚠️ Unaudited |
| CircleGatewayRemoveDelegateHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00fbc4e3608a26e0d05905759c2a6188fda0e2cd` | ⚠️ Unaudited |
| CircleGatewayWalletHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6383d09cf761feaa4108b65130793c7eda356db5` | ⚠️ Unaudited |
| ClaimCancelDepositRequest7540Hook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf958a047d90b202a7097b5f9b67bb8cb5285858` | ⚠️ Unaudited |
| ClaimCancelRedeemRequest7540Hook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0668f9a638f34928f0bd91588e7b157f0699d594` | ⚠️ Unaudited |
| CloneFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99fdfcc95a45ca4604e3c1eb86f2b5d9e217f460` | ⚠️ Unaudited |
| CloneRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57c041e4504b05a7b3a3597134a1da78e719fc73` | ⚠️ Unaudited |
| DebridgeAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be003c2cd2dacd4cd23488db7e74568475a36d8` | ⚠️ Unaudited |
| DeBridgeCancelOrderHook | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5dbbbe2d8b9ff884a7ed33f1352021cd2b482c9` | ⚠️ Unaudited |
| DeBridgeSendOrderAndExecuteOnDstHook | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x162225095a384787a257bced9b8893b29c8f1795` | ⚠️ Unaudited |
| DeploymentController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87ebac6021f133e217ff6b8e374cae2c3456936e` | ⚠️ Unaudited |
| Deposit4626VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa067037b29431c1ff23deb9b10cc8a1669b0698e` | ⚠️ Unaudited |
| Deposit5115VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32209a2302865784bc1dc0bd3c55d0a6eb205851` | ⚠️ Unaudited |
| Deposit7540VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab1b12e090775fa67df6e1b44dfaee676c1dc84` | ⚠️ Unaudited |
| ERC4626YieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd12a40b2abd166e17f18854f57ccd202091d9fb8` | ⚠️ Unaudited |
| ERC5115YieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec64fe4256e9e2b935f9acb13cf0b1ce06c6dd5c` | ⚠️ Unaudited |
| ERC7540YieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8963d668adce629996ca0247885771b490612005` | ⚠️ Unaudited |
| esVKAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6cb30b737ba441d7b5cf449d122223c55c03b3f8` | ⚠️ Unaudited |
| EthenaCooldownSharesHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bd7698cc3e3f4ccf5d6cbc74a611bddeab18aef` | ⚠️ Unaudited |
| EthenaUnstakeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaebeec6548b727fd4f3464b19d99f4676d7e7796` | ⚠️ Unaudited |
| FirelightYieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x211e048350c5b61704245bdabfefe95a1239dfe7` | ⚠️ Unaudited |
| FlatFeeLedger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab56d09ad9975116fceb14970f2ffb3bb0ad683e` | ⚠️ Unaudited |
| GenericVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5769f1c62fa2aa6087df3dd1fa6a7ae89bb45ffd`; arbitrum `0xd6dfe8b986e89ce841331f833ba82dc12b8cd828` | ⚠️ Unaudited |
| GlmFeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xb0b61275dec07b3e8035cad6ccd17233d0cbb29d`; arbitrum `0xeb404c91e2f29cd55313daf9735ea71337370e22` | ⚠️ Unaudited |
| GlmManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3e2d8202d1ed655f9e5fb969204201fc87a59df9`; arbitrum `0xdfe351a2a5fe211f25d30818c8b6a85c154b8db2` | ⚠️ Unaudited |
| GlmManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x8e9657fa74edb8bfd4473f1dfeb6715432c01be1`; arbitrum `0x90b0a11b784954a2ebd357380b8ad68e54f43cef` | ⚠️ Unaudited |
| GlmManagerCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x233547580a7223231b8dc8ab34d1606ea673b264`; arbitrum `0x36b5fbe6875e2ce74587da5838dcb6dc0dc09da0` | ⚠️ Unaudited |
| GlmManagerCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x55b40e454853c593e8cddb28b2d0a87ff02a1e33`; arbitrum `0x56d88e5494244aa8a65d5b5ff2957d3f4e182f76`; arbitrum `0x602b1b18aab600fc436394278c6052e383baf829`; arbitrum `0x6eb066e6b0802ed66cc56ec8ef5aedaf408e0796`; arbitrum `0x8e0219cbf8c037c280afda693c3efce169954d85`; arbitrum `0xb78feaa4bdb53e6d1c82776c07b0b7f50ad09fd4`; arbitrum `0xddde50033f68ffb461ac4773f7f0013462bbcd95` | ⚠️ Unaudited |
| GlmPriceReader | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xc7bdf21b20b22030d375424cf576e34454de71fb`; arbitrum `0xe4d0c7ac6deb2f7027ad82c5c42c5baafa73d67a` | ⚠️ Unaudited |
| GlmRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x1b634f37794a8e34af81db6163788de9ea9a8bab`; arbitrum `0x204c00a9c59154513864a19affe10f64633e62c1`; arbitrum `0x479a4679af724727c5ef057892b2e1df043a2149` | ⚠️ Unaudited |
| GlmRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6ed6c5be7a8d1f8e4556b1f61ed056f5e7627c51`; arbitrum `0x90d425b973697253162c0ca625546a92b55047ae` | ⚠️ Unaudited |
| GlmRebalanceCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x237328712a706309c1d9ae447bcce2e690eddda8`; arbitrum `0xaf71fff38a28f652aba33a31d0638f8f10997ad2` | ⚠️ Unaudited |
| GlmRebalanceCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x246409c1d5c90384b9740bf03d61b1d8d14dbf14`; arbitrum `0x6529a5c84c1c3a3fa438d0b45e27832cb6e434f3`; arbitrum `0x7033befb41b23c81a51a99c412db884daa63fd1e`; arbitrum `0x8d80f047c03db7a1c89b70c0130491cdf587732e`; arbitrum `0xa8756813b03dc63cb298e6f981aff28297f299f9` | ⚠️ Unaudited |
| GlmRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0652c29f6d521e56de14ce4c8f2a55aa72651365`; arbitrum `0xd318de159b1320bed03b4553eb58591a43156c47` | ⚠️ Unaudited |
| GlmRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8d64c3098ee103e364766e6cacf37fd442cef49b`; arbitrum `0x942d3489593ec6983b5fbe52dbaed554df090305` | ⚠️ Unaudited |
| GlmVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x0308cb92edc5a2fa9eb64b2f50a32185986eada2`; arbitrum `0xadbf04c5bf840f342d78308adcbcac13217fe2fb`; arbitrum `0xc319c8b89fbd06aab509cbeb4cd6c441d9f0581b`; arbitrum `0xe561e780850ef311684d2519fff745772a99d4be` | ⚠️ Unaudited |
| GlmVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4a2e51a8e25bd7d9d6a858269bb8a927495fe661`; arbitrum `0xb455f2ab7905785e90ed09ff542290a722b3fbb5` | ⚠️ Unaudited |
| MarkRootAsUsedHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe61774aa87a05fb1b5665158f2b5e0e10c71b5e2` | ⚠️ Unaudited |
| MerklClaimRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c12d4453ed2278b37ecd169f4b8693537b228df` | ⚠️ Unaudited |
| MultiRewardEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23dbbe898a8b69ea0681f8d8c74f4b17daae5fcd` | ⚠️ Unaudited |
| MultiStrategyVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xcede40b40f7af69f5aa6b12d75fd5ea9ce138b93`; arbitrum `0xe1543d4b3b25913d788ccf80288095ab298f20f8` | ⚠️ Unaudited |
| NexusAccountFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4153db38136e74a88a77b51a955a88823820c050` | ⚠️ Unaudited |
| NexusBootstrap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebeb4d51723ba345080d81bbf178d93e84bc9be` | ⚠️ Unaudited |
| OfframpTokensHook | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbbd9a7026e29e889d28882606660fc5be0bea73` | ⚠️ Unaudited |
| PendlePTAmortizedOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd64089698f82cbcd91ba5e0422adfa81d247eb62` | ⚠️ Unaudited |
| PendlePTAmortizedOracleV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2185b40476510ad27d17af90889ce91be9282a04` | ⚠️ Unaudited |
| PendlePTYieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98d40e5b9d0911f15278223d58fddcb5cb4799a6` | ⚠️ Unaudited |
| PendleRouterRedeemHook | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaae2db58e2f426b910f518ccbb627545aedaff2f` | ⚠️ Unaudited |
| PendleRouterSwapHook | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02a0a95c379220e9759960a8ee923cbbc2d305cd` | ⚠️ Unaudited |
| PendleUnifiedHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x433f9a343e4132a294e02d4a09da4b575eeba9ad` | ⚠️ Unaudited |
| PermissionRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb67c4c9c3cebcec2fd3fde436340d728d990a8d9` | ⚠️ Unaudited |
| PiggyBBQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7c75ab140bdae8bcda92fc1c8de6b1e29da336d` | ⚠️ Unaudited |
| PiggyDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x3076a0c4f44f1ec229c850380f3dd970094ca873`; base `0x9bbfe54d18bced9a2dd7304a676f7b898b5bcb1a`; base `0xa0b94071cdf8d2dea4feceedaf35eb2985ce1afc` | ⚠️ Unaudited |
| PrimeCashProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | ethereum | n/a | 9 deployments: ethereum `0x265329c8f15671d7ca501710e3bd0e6cb257948f`; ethereum `0x39a1f8e5d2422ccc5e08c5b4019ab70147f5cc95`; ethereum `0x4a9e282635567cc4d3c6a24e16c2335f10dee9b8`; ethereum `0x4ebfc11ad2dd1c2a450ba194558d797ee5d305a6`; ethereum `0x54fa13a38a690bc69584a7ac8b834c1770959974`; ethereum `0x7ef4d0168b12b168f14b67c708bc16f7e8bf3dec`; ethereum `0x83706a2ec580fe1fdb84744366fa02fb8e25d29d`; ethereum `0xaeeafb1259f01f363d09d7027ad80a9d442de762`; ethereum `0xfbadc4f18ddc7ebdbc920d3f9b0ca7a1296788d1` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x053abef168984912e1500cea50889e382a9da624`; arbitrum `0x906f16c457ff219b08bbd245cb8497251b9c9f43`; arbitrum `0xcddb0a102f23409e1789dea69d6105ddd4e787a9`; arbitrum `0xeec16e611ddf561bcc3962ca7914563a6d518e34` | ⚠️ Unaudited |
| RecordPurchasePendlePTAmortizedOracleHook | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x771d4ff615f87ea00488a2dbcb70df98bda03fa3` | ⚠️ Unaudited |
| RecordPurchasePendlePTAmortizedOracleHookV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e61eb90817e28abbb5a40045921b69bb784431` | ⚠️ Unaudited |
| RecordRedemptionPendlePTAmortizedOracleHook | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68a34af34e64a8b3bb72983088aceb2fae326fc` | ⚠️ Unaudited |
| RecordRedemptionPendlePTAmortizedOracleHookV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a4f700923324b14bd546630fe87b1ee08c89634` | ⚠️ Unaudited |
| Redeem4626VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c3edf3f7c43828bb72a668e2b29f9e2d9af5a69` | ⚠️ Unaudited |
| Redeem5115VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ab1fd107825f9bb3e079d23508a07486b44e6f5` | ⚠️ Unaudited |
| Redeem7540VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe165fbbc89a60756f57cf0e34c04c35cc1bba79d` | ⚠️ Unaudited |
| RequestDeposit7540VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe7738b26992a322d53edeb9a39331bf11b60097` | ⚠️ Unaudited |
| RequestRedeem7540VaultHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c21c130acf3eadd781ae79d75ff5fc4bd216797` | ⚠️ Unaudited |
| RumVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b4f9b565d56dfc581130acd82055c48556ae8bb` | ⚠️ Unaudited |
| SakeVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0xaf92175d43472124990d965d6e6858effd4e5e35`; arbitrum `0xbe052ecdd81031c70a67a2e10f1a2ff05c874020`; arbitrum `0xead0212278b0d6bc032b090b4fd3aabfde9570ec` | ⚠️ Unaudited |
| SetOperator7540Hook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86f9dce0a1a83c501ba95a1ab1088d67978636a8` | ⚠️ Unaudited |
| SetSlippageHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6551d0140ffdb28920e5e84dc3da31f4bfe4364e` | ⚠️ Unaudited |
| SpectraPTYieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ecd1150b3d198d75c51dbb41bb7711bd1e3260` | ⚠️ Unaudited |
| StakingVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x25172c73958064f9abc757ffc63eb859d7dc2219`; arbitrum `0x504f828886ab10d09ca1c116d6e1c5b8963cb109`; arbitrum `0x58a2704dea4168d307eff593e897ec73c6670f6a`; arbitrum `0x62ac4341eaa3f81649df6774cc16d9765e0a9cb4`; arbitrum `0x823033d1014f0f4da2bb5b2ce4bc73d6e7eae7a8`; arbitrum `0xdd0d135b5b52b7edd90a83d4a4112c55a1a6d23a` | ⚠️ Unaudited |
| StakingYieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a685cad15b7bb46094497243dcf94ad6557394c` | ⚠️ Unaudited |
| StringPoRAddressList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b2091c4eccb16756c2ade0a298fcc75c25a3219` | ⚠️ Unaudited |
| SuperDestinationExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac58e854798d4aae5989b18ad5a1c0ff17817ef` | ⚠️ Unaudited |
| SuperDestinationValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadeff5a0684392c4c273a9c638d1db8c5dfd0098` | ⚠️ Unaudited |
| SuperExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc8edcc41154aafc74d261ad3d87140d21f6281` | ⚠️ Unaudited |
| SuperFrens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x4fdf7e39b8d3bb2503e97f49360e199c38c1dfee`; base `0x55bf2f25bd1e5a97b948948f2e64bf0720093822`; base `0x5a3c6729ac93d87cfd3788c307478c0df2a402b3`; base `0x73317659b5a768b712d8d079f4df298510053135`; base `0x9c451e5f05c03cefc30404dfd193788799c58c7a`; base `0xb5fec2c7344cfba8e785dbada927f32559a4741d` | ⚠️ Unaudited |
| SuperLedger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04916bb42564cded96e10f55c059d65e4fcb1be6` | ⚠️ Unaudited |
| SuperLedgerConfiguration | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e2d71289cba19f831856f85dec7f194b0165e69` | ⚠️ Unaudited |
| SuperNativePaymaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2288c49689c2cced5c5bdd74ac3b775e61a7a532` | ⚠️ Unaudited |
| SuperSenderCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6fb94d2f10a3b4349f592ffa80c4b7c97c1799` | ⚠️ Unaudited |
| SuperSponsorshipPaymaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c71eb1817a2707e8e40ac978b1993b98f1366aa` | ⚠️ Unaudited |
| SuperValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb46b4773c5f53ff941533f5dfeffd0713f5f9f8e` | ⚠️ Unaudited |
| SuperVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x0b538db1bd28ecc978e863d89ace34a9f9101fc2`; base `0x3392f08d93de2e1675c2e0d19f3ed021746f742c`; base `0x369b2d0c701f791645ecf40f14d390f69a6023e3`; base `0x7f68862632a1c27a16fe75cd4225628547da6450`; base `0xd8ba05abcbe0baf1ee748104da11fb8f717fd291` | ⚠️ Unaudited |
| SuperVaultYieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeebb42210d8a8b165dcf154b325c588ee8df149a` | ⚠️ Unaudited |
| SuperYieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98f0682ef39de9cd6028d91090be6edae129f52d` | ⚠️ Unaudited |
| Swap1InchHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1303d5f3e3d9e4a81945cb0c2e309e1940d2425c` | ⚠️ Unaudited |
| SwapKyberSwapHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x828d8a9c015cef90b373a071500ae463ed204df9` | ⚠️ Unaudited |
| TemplateRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ea65ae3d7e60e374221cde29844df81f447d68c` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0xef101508bf4dc6cf0f0a0c135f39a41fab4e4389`; ethereum `0xf7de3c70f2db39a188a81052d2f3c8e3e217822a` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0xbd34db7ef42533a51eb0f53ed9d91d06880bcdf1`; base `0xe9f2a5f9f3c846f29066d7fb3564f8e6b6b2d65b` | ⚠️ Unaudited |
| TransferERC20Hook | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6031c3953bc12d9af4651b7ed517190a31a67ca4` | ⚠️ Unaudited |
| TransferHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d54e1b4060bbd598ee6ec8f7a587ff1789164e9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x056b76f57b1d1fad01c80b72b1a7af136fdcb285`; arbitrum `0xe68e600c65315f0390c2de7e576aa7fed02a5d6e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x421c25a322c7683af7c0076664f8ab36a2f76a1d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4fcb03f2dc8dd39286b0fe203277ee0cb25b1192`; arbitrum `0xa9f8995fa6950fd8e01a35397d9fdcd0673ac341` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x806e8538fc05774ea83d9428f778e423f6492475` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x9198989a85e35adec46309e06684dca444c9cf27` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xc53a53552191bee184557a15f114a87a757e5b6f` | ⚠️ Unaudited |
| UpOFT | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-257362 | `0x642ffc3496aca19106bab7a42f1f221a329654fe` | ⚠️ Unaudited |
| UpOFT | unknown | project_anchor | own_supporting | 0 | base | unit-257361 | `0x5b2193fdc451c1f847be09ca9d13a4bf60f8c86b` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0xc9ed56fbcbc3f0ce764d38e039cdaf36aa3c284c`; arbitrum `0xd11a312a7d9745c62dfc014d72e7bb2403dabf72`; arbitrum `0xd3a17928245064b6df5095a76e277fe441d538a4` | ⚠️ Unaudited |
| VaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf40749d72ab5422cc5d735a373e66d67f7ca9393` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb205e94d402742b919e851892f7d515592a7a6cc` | ⚠️ Unaudited |
| VaultRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48943f145686bf5c4580d545cda405844d1f777b` | ⚠️ Unaudited |
| VKAPublicSale | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x6aa23c0d1ed749d6b5cf25a57159f3fd704e44d5`; arbitrum `0xa6a5755cb552b52a98d64f4aa11e313c20704181`; arbitrum `0xca600f65d72dcb307c06ef949302eb0720db7138`; arbitrum `0xe969f32a2ee6b7f3ad4b5455efc9b6797199cd58` | ⚠️ Unaudited |
| VKAVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x28a9affc94f0264078d248a301b36af15500fa35`; arbitrum `0x5cd9847edaec40d56976d2d850820cc20e68d037`; arbitrum `0x74dfbce364ae37046742274e73a7b7fb236d8a24`; arbitrum `0x9a730078b61e0c0ea9b07cbd23443eef54ae976f`; arbitrum `0xcc3b785186951cafd4cf1867dd5f98b5b7e54cde`; arbitrum `0xd11ea666f6b7b05ab4bca8c240c659dfe759d1c4` | ⚠️ Unaudited |
| VKAWhitelistedSale | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x1be85fde1ad5264e88e5a6dec8ca800071369df0`; arbitrum `0x1ea2ae7ec69508fbd83978f4a7afd7c0dffae711`; arbitrum `0x6985c055d10fb5dcbacf424ce67f70864fcdd24f`; arbitrum `0x87aac02808cbd258b8d04c3dc67cea9a9cda58f5` | ⚠️ Unaudited |
| VodkaV2GMXHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x5c6a40b51e62f47eae748470cd776d6c3f100ea1`; arbitrum `0x6ff9822ea9622fc0f973e7a1e64262daa44a78ce`; arbitrum `0xa52a42539c29542a5bccea605ed32cc666a6ba1f`; arbitrum `0xdd4a1a99ba62796fcea2ea58eb73b5c270cd84aa` | ⚠️ Unaudited |
| VodkaVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x31753244102660fb2b87978c02bce42cc3d32260`; arbitrum `0x7f15d2d2972d4e37955f7566e3ff23fe81e2e475`; arbitrum `0xa8fcd3565051ceb7b4200781ab186b2f1d14ac23`; arbitrum `0xb3d9da37d66b63e3de653cedd31ebca9873de99e`; arbitrum `0xc72cd5b6771fabcf0d23d99d9286cdcd74614c75` | ⚠️ Unaudited |
| Water | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x9045ae36f963b7184861bdce205ea8b08913b48c` | ⚠️ Unaudited |
| Water | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xdb197b57be684148c905a433252dc87d0dc50b87`; arbitrum `0xe136dcbc734f60a0670fb780257a199afd1651af` | ⚠️ Unaudited |
| WaterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44afbde22fe0ae82c8980052d4b70e8dd087909b` | ⚠️ Unaudited |
| WaterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4996372aeedd7ef2e42a7170ce7e1603783727eb` | ⚠️ Unaudited |
| WaterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ea253d8a948d455524354fb3b3c3bf0f8959385` | ⚠️ Unaudited |
| YoYieldSourceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x125d43f5f35c032a45aad41ebe344d5c65d626d4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (55)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0709c6211adaf33d218275fdaceea7d8c872ab79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1101eec94dd79bee1b5a77b96c15ac24a4691e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e80aace37fb7a9c858b9398f23dd3e771d52b22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65f289cdf87b54095401a17af3c3eb626b8e5e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x860ec9cfa60c0fd3c0b5940c2c3376cfc57daaf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a3a6698c3d142b9dad80f114947d46671a5290e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3aa31f8d4da6005aafb0d61e5012a64d15f5b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d51a5e4d774d5fd65a915af732ac23c388d1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf77f98fd73524253a19086105c6c3944039053d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf09106eaa87a5d81dacfc91f6f564131c57495be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf78c9ab2ad1104a0597a1e32e4b2f5e074c5c4a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfda77d57d22c7eb62ef768212ba8b08f82c9b5e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0xbc85043544cc2b3fd095d54b6431822979bbb62a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22037285999e216de3b079c25ce464cfbb6aa1f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7fa5212be2b53a0bf3ca6b06664232695625f108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94ca885c5498d6e53b802e589aa340878cb60b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa4725c386164ea9ad932bc306a1f87da7526aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc5f472e7772caedc7d09277120b4dff24fb8ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd059e58645bce3380677ae0b54d628a018e942b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b64206eadd25f27145d1b29a27e3a242d0922f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fcfe2978374af129cd4f3366b17a57367851f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bd690d27ae6a5036348a44fae5458ede27e472a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1db17afe14732a5267a0839d5f3de0af1426cb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2402248b74fabe16d93f48448f03c74a9f24afe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x243331e8e825db310fda328e35755670f878db9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f87dba133b630dc45b10c36b5c5d6c5cd1e5c4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3602c76ab5ada70d40a8e09bcfb91f2c195e20be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3988e57f06c0ef1703e6103602098567b786040c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4489066f5e0ad20ff4ee7347219126043fdf6b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x468020394c40cc6129626f763deaab1665996844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4870f46792706b9f783da0f7ab5a6a56664245aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4aef25d0279d69c2426b1ec485b89a63ee4fb96d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b2c17942a0c306bf12ffd95077cc5be0bd18c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b946b0b2d19f59884d756babaf93c079fbfc809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69c5290eeae87d10d0b8d8dc6291dd31292a6a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f6603e80235168d033420f91f4cf287c9ac04d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x712ccb82a52cb582f9b5cf70a3b6b0c8f2456e91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78e3599d603b91d03c29b1ec199c9ce17a499099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e0bd79e561f3f5adc1d3090dc2af54165072412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7eb6bb4cba7daa374c062ba7c939d92c9fdf5508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87719a2aa570a90c962827f986ef085da496f08f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ac3b69aa4b14649f746dec66ab0e9ff1624482b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x932249c0ca46245a88455716a63b511208cbe824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x953a1176bc13954b157ae06267ed8c8237c3c1f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9cdc06b2f251d5ae181c57e4509c6cba4076e258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac588fbf8bd947e80c4c280fad37e24f458e3ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb3c6f7c755eb9c83363249d883ccdc551232c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd252bdf427de269f37b004ecd18ba9591e43a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbc9c265afe8d64b3774b91cb01ad6745e6ca03e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1bfbd1eba60e91899b460d5ba905eff9c93be55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4364d0dfc6e6e155048602cc6d5b1900abb1783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef771d198656e6dc44c4bc834d8a96418ce1f82f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeff1094d76c4f44f17583d78ecfc4965d8078739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2774575fbe5ab3f62c723306a7486786d34a2ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd44f30c71854d98e1a334b23af822bce5020696` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 159
- Live contracts: 0
- Unknown liveness contracts: 159
- Source-verified contracts: 114
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=28, contamination review=9, source verified unclassified=77, unverified unclassified=45

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | contamination review | CloneFactory<br>`0x99fdfcc95a45ca4604e3c1eb86f2b5d9e217f460` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | contamination review | CloneRegistry<br>`0x57c041e4504b05a7b3a3597134a1da78e719fc73` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | contamination review | DeploymentController<br>`0x87ebac6021f133e217ff6b8e374cae2c3456936e` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | contamination review | MultiRewardEscrow<br>`0x23dbbe898a8b69ea0681f8d8c74f4b17daae5fcd` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | contamination review | PermissionRegistry<br>`0xb67c4c9c3cebcec2fd3fde436340d728d990a8d9` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | contamination review | StakingVaultFactory<br>`0x25172c73958064f9abc757ffc63eb859d7dc2219` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | contamination review | TemplateRegistry<br>`0x1ea65ae3d7e60e374221cde29844df81f447d68c` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | contamination review | VaultController<br>`0xf40749d72ab5422cc5d735a373e66d67f7ca9393` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | contamination review | VaultRegistry<br>`0xb205e94d402742b919e851892f7d515592a7a6cc` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | source verified unclassified | AdminProxy<br>`0x935c01e50f7c216dc7a97b1884f7431aaa164552` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | source verified unclassified | AdminProxy<br>`0xcc09f5bd7582d02bb31825d09589f4773b65ecc9` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | source verified unclassified | GenericVaultAdapter<br>`0x5769f1c62fa2aa6087df3dd1fa6a7ae89bb45ffd` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | source verified unclassified | GenericVaultAdapter<br>`0xd6dfe8b986e89ce841331f833ba82dc12b8cd828` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | source verified unclassified | MultiStrategyVault<br>`0xe1543d4b3b25913d788ccf80288095ab298f20f8` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | source verified unclassified | StakingVaultFactory<br>`0x504f828886ab10d09ca1c116d6e1c5b8963cb109` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | source verified unclassified | StakingVaultFactory<br>`0x58a2704dea4168d307eff593e897ec73c6670f6a` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | source verified unclassified | StakingVaultFactory<br>`0x62ac4341eaa3f81649df6774cc16d9765e0a9cb4` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | source verified unclassified | StakingVaultFactory<br>`0x823033d1014f0f4da2bb5b2ce4bc73d6e7eae7a8` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | source verified unclassified | StakingVaultFactory<br>`0xdd0d135b5b52b7edd90a83d4a4112c55a1a6d23a` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | source verified unclassified | Vault<br>`0xc9ed56fbcbc3f0ce764d38e039cdaf36aa3c284c` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | source verified unclassified | Vault<br>`0xd11a312a7d9745c62dfc014d72e7bb2403dabf72` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | source verified unclassified | Vault<br>`0xd3a17928245064b6df5095a76e277fe441d538a4` | non_address_book | unknown | unknown | verified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0b64206eadd25f27145d1b29a27e3a242d0922f9` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1bd690d27ae6a5036348a44fae5458ede27e472a` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1db17afe14732a5267a0839d5f3de0af1426cb9e` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x243331e8e825db310fda328e35755670f878db9d` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3602c76ab5ada70d40a8e09bcfb91f2c195e20be` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5b946b0b2d19f59884d756babaf93c079fbfc809` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x69c5290eeae87d10d0b8d8dc6291dd31292a6a41` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8ac3b69aa4b14649f746dec66ab0e9ff1624482b` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x932249c0ca46245a88455716a63b511208cbe824` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbb3c6f7c755eb9c83363249d883ccdc551232c9d` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeff1094d76c4f44f17583d78ecfc4965d8078739` | non_address_book | unknown | unknown | unverified | n/a | `0x22f5413c075ccd56d575a54763831c4c27a37bdb` |
| arbitrum | candidate review | ProxyAdmin<br>`0x053abef168984912e1500cea50889e382a9da624` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x0652c29f6d521e56de14ce4c8f2a55aa72651365` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x1be85fde1ad5264e88e5a6dec8ca800071369df0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x36b5fbe6875e2ce74587da5838dcb6dc0dc09da0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x4fcb03f2dc8dd39286b0fe203277ee0cb25b1192` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x6985c055d10fb5dcbacf424ce67f70864fcdd24f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x6aa23c0d1ed749d6b5cf25a57159f3fd704e44d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x87aac02808cbd258b8d04c3dc67cea9a9cda58f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x90b0a11b784954a2ebd357380b8ad68e54f43cef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x90d425b973697253162c0ca625546a92b55047ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xaf71fff38a28f652aba33a31d0638f8f10997ad2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xb455f2ab7905785e90ed09ff542290a722b3fbb5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xca600f65d72dcb307c06ef949302eb0720db7138` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xe4d0c7ac6deb2f7027ad82c5c42c5baafa73d67a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xe68e600c65315f0390c2de7e576aa7fed02a5d6e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xe969f32a2ee6b7f3ad4b5455efc9b6797199cd58` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xeb404c91e2f29cd55313daf9735ea71337370e22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | esVKAToken<br>`0x6cb30b737ba441d7b5cf449d122223c55c03b3f8` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmFeeCalculator<br>`0xb0b61275dec07b3e8035cad6ccd17233d0cbb29d` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmManager<br>`0x3e2d8202d1ed655f9e5fb969204201fc87a59df9` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmManager<br>`0x8e9657fa74edb8bfd4473f1dfeb6715432c01be1` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmManager<br>`0xdfe351a2a5fe211f25d30818c8b6a85c154b8db2` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmManagerCallback<br>`0x233547580a7223231b8dc8ab34d1606ea673b264` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmManagerCallback<br>`0x55b40e454853c593e8cddb28b2d0a87ff02a1e33` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmManagerCallback<br>`0x56d88e5494244aa8a65d5b5ff2957d3f4e182f76` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmManagerCallback<br>`0x602b1b18aab600fc436394278c6052e383baf829` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmManagerCallback<br>`0x6eb066e6b0802ed66cc56ec8ef5aedaf408e0796` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmManagerCallback<br>`0x8e0219cbf8c037c280afda693c3efce169954d85` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmManagerCallback<br>`0xb78feaa4bdb53e6d1c82776c07b0b7f50ad09fd4` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmManagerCallback<br>`0xddde50033f68ffb461ac4773f7f0013462bbcd95` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmPriceReader<br>`0xc7bdf21b20b22030d375424cf576e34454de71fb` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmRebalance<br>`0x1b634f37794a8e34af81db6163788de9ea9a8bab` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmRebalance<br>`0x204c00a9c59154513864a19affe10f64633e62c1` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmRebalance<br>`0x479a4679af724727c5ef057892b2e1df043a2149` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmRebalance<br>`0x6ed6c5be7a8d1f8e4556b1f61ed056f5e7627c51` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmRebalanceCallback<br>`0x237328712a706309c1d9ae447bcce2e690eddda8` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmRebalanceCallback<br>`0x246409c1d5c90384b9740bf03d61b1d8d14dbf14` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmRebalanceCallback<br>`0x6529a5c84c1c3a3fa438d0b45e27832cb6e434f3` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmRebalanceCallback<br>`0x7033befb41b23c81a51a99c412db884daa63fd1e` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmRebalanceCallback<br>`0x8d80f047c03db7a1c89b70c0130491cdf587732e` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmRebalanceCallback<br>`0xa8756813b03dc63cb298e6f981aff28297f299f9` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmRouter<br>`0x8d64c3098ee103e364766e6cacf37fd442cef49b` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmRouter<br>`0x942d3489593ec6983b5fbe52dbaed554df090305` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmRouter<br>`0xd318de159b1320bed03b4553eb58591a43156c47` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmVault<br>`0x0308cb92edc5a2fa9eb64b2f50a32185986eada2` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmVault<br>`0x4a2e51a8e25bd7d9d6a858269bb8a927495fe661` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmVault<br>`0xadbf04c5bf840f342d78308adcbcac13217fe2fb` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmVault<br>`0xc319c8b89fbd06aab509cbeb4cd6c441d9f0581b` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | GlmVault<br>`0xe561e780850ef311684d2519fff745772a99d4be` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | ProxyAdmin<br>`0x906f16c457ff219b08bbd245cb8497251b9c9f43` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | ProxyAdmin<br>`0xcddb0a102f23409e1789dea69d6105ddd4e787a9` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | RumVault<br>`0x8b4f9b565d56dfc581130acd82055c48556ae8bb` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | SakeVaultV2<br>`0xaf92175d43472124990d965d6e6858effd4e5e35` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | SakeVaultV2<br>`0xbe052ecdd81031c70a67a2e10f1a2ff05c874020` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | SakeVaultV2<br>`0xead0212278b0d6bc032b090b4fd3aabfde9570ec` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VKAPublicSale<br>`0xa6a5755cb552b52a98d64f4aa11e313c20704181` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VKAVesting<br>`0x28a9affc94f0264078d248a301b36af15500fa35` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VKAVesting<br>`0x5cd9847edaec40d56976d2d850820cc20e68d037` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VKAVesting<br>`0x74dfbce364ae37046742274e73a7b7fb236d8a24` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VKAVesting<br>`0x9a730078b61e0c0ea9b07cbd23443eef54ae976f` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VKAVesting<br>`0xcc3b785186951cafd4cf1867dd5f98b5b7e54cde` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VKAVesting<br>`0xd11ea666f6b7b05ab4bca8c240c659dfe759d1c4` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VKAWhitelistedSale<br>`0x1ea2ae7ec69508fbd83978f4a7afd7c0dffae711` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VodkaV2GMXHandler<br>`0x5c6a40b51e62f47eae748470cd776d6c3f100ea1` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VodkaV2GMXHandler<br>`0x6ff9822ea9622fc0f973e7a1e64262daa44a78ce` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VodkaV2GMXHandler<br>`0xa52a42539c29542a5bccea605ed32cc666a6ba1f` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VodkaV2GMXHandler<br>`0xdd4a1a99ba62796fcea2ea58eb73b5c270cd84aa` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VodkaVaultV2<br>`0x31753244102660fb2b87978c02bce42cc3d32260` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VodkaVaultV2<br>`0x7f15d2d2972d4e37955f7566e3ff23fe81e2e475` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VodkaVaultV2<br>`0xa8fcd3565051ceb7b4200781ab186b2f1d14ac23` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VodkaVaultV2<br>`0xb3d9da37d66b63e3de653cedd31ebca9873de99e` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | VodkaVaultV2<br>`0xc72cd5b6771fabcf0d23d99d9286cdcd74614c75` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | Water<br>`0xdb197b57be684148c905a433252dc87d0dc50b87` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | Water<br>`0xe136dcbc734f60a0670fb780257a199afd1651af` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | WaterV2<br>`0x44afbde22fe0ae82c8980052d4b70e8dd087909b` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | WaterV3<br>`0x4996372aeedd7ef2e42a7170ce7e1603783727eb` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | source verified unclassified | WaterV4<br>`0x5ea253d8a948d455524354fb3b3c3bf0f8959385` | non_address_book | unknown | unknown | verified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x056b76f57b1d1fad01c80b72b1a7af136fdcb285` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0fcfe2978374af129cd4f3366b17a57367851f89` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2402248b74fabe16d93f48448f03c74a9f24afe5` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2f87dba133b630dc45b10c36b5c5d6c5cd1e5c4b` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3988e57f06c0ef1703e6103602098567b786040c` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4489066f5e0ad20ff4ee7347219126043fdf6b4e` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x468020394c40cc6129626f763deaab1665996844` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4870f46792706b9f783da0f7ab5a6a56664245aa` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4aef25d0279d69c2426b1ec485b89a63ee4fb96d` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4b2c17942a0c306bf12ffd95077cc5be0bd18c18` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6f6603e80235168d033420f91f4cf287c9ac04d1` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x712ccb82a52cb582f9b5cf70a3b6b0c8f2456e91` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x78e3599d603b91d03c29b1ec199c9ce17a499099` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7e0bd79e561f3f5adc1d3090dc2af54165072412` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7eb6bb4cba7daa374c062ba7c939d92c9fdf5508` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x87719a2aa570a90c962827f986ef085da496f08f` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x953a1176bc13954b157ae06267ed8c8237c3c1f8` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9cdc06b2f251d5ae181c57e4509c6cba4076e258` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa9f8995fa6950fd8e01a35397d9fdcd0673ac341` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xac588fbf8bd947e80c4c280fad37e24f458e3ea2` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbd252bdf427de269f37b004ecd18ba9591e43a85` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcbc9c265afe8d64b3774b91cb01ad6745e6ca03e` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe1bfbd1eba60e91899b460d5ba905eff9c93be55` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe4364d0dfc6e6e155048602cc6d5b1900abb1783` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xef771d198656e6dc44c4bc834d8a96418ce1f82f` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf2774575fbe5ab3f62c723306a7486786d34a2ed` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfd44f30c71854d98e1a334b23af822bce5020696` | non_address_book | unknown | unknown | unverified | n/a | `0xf54737427b50251e27eb03ec7c610acd21f3cb23` |
| base | candidate review | SuperFrens<br>`0x4fdf7e39b8d3bb2503e97f49360e199c38c1dfee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | candidate review | SuperFrens<br>`0x55bf2f25bd1e5a97b948948f2e64bf0720093822` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | candidate review | SuperFrens<br>`0x5a3c6729ac93d87cfd3788c307478c0df2a402b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | candidate review | SuperFrens<br>`0x73317659b5a768b712d8d079f4df298510053135` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | candidate review | SuperFrens<br>`0x9c451e5f05c03cefc30404dfd193788799c58c7a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | candidate review | SuperFrens<br>`0xb5fec2c7344cfba8e785dbada927f32559a4741d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | candidate review | SuperVault<br>`0x0b538db1bd28ecc978e863d89ace34a9f9101fc2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | candidate review | SuperVault<br>`0x3392f08d93de2e1675c2e0d19f3ed021746f742c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | candidate review | SuperVault<br>`0x369b2d0c701f791645ecf40f14d390f69a6023e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | candidate review | SuperVault<br>`0x7f68862632a1c27a16fe75cd4225628547da6450` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | candidate review | SuperVault<br>`0xd8ba05abcbe0baf1ee748104da11fb8f717fd291` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | source verified unclassified | PiggyBBQ<br>`0xe7c75ab140bdae8bcda92fc1c8de6b1e29da336d` | non_address_book | unknown | unknown | verified | n/a | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | source verified unclassified | PiggyDAO<br>`0x3076a0c4f44f1ec229c850380f3dd970094ca873` | non_address_book | unknown | unknown | verified | n/a | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | source verified unclassified | PiggyDAO<br>`0x9bbfe54d18bced9a2dd7304a676f7b898b5bcb1a` | non_address_book | unknown | unknown | verified | n/a | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | source verified unclassified | PiggyDAO<br>`0xa0b94071cdf8d2dea4feceedaf35eb2985ce1afc` | non_address_book | unknown | unknown | verified | n/a | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | unverified unclassified | TokenizedStrategy<br>`0xbd34db7ef42533a51eb0f53ed9d91d06880bcdf1` | non_address_book | unknown | unknown | unverified | n/a | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | unverified unclassified | UnnamedContract<br>`0x22037285999e216de3b079c25ce464cfbb6aa1f1` | non_address_book | unknown | unknown | unverified | n/a | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | unverified unclassified | UnnamedContract<br>`0x7fa5212be2b53a0bf3ca6b06664232695625f108` | non_address_book | unknown | unknown | unverified | n/a | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | unverified unclassified | UnnamedContract<br>`0x94ca885c5498d6e53b802e589aa340878cb60b3a` | non_address_book | unknown | unknown | unverified | n/a | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | unverified unclassified | UnnamedContract<br>`0xaa4725c386164ea9ad932bc306a1f87da7526aca` | non_address_book | unknown | unknown | unverified | n/a | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | unverified unclassified | UnnamedContract<br>`0xfc5f472e7772caedc7d09277120b4dff24fb8ef9` | non_address_book | unknown | unknown | unverified | n/a | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |
| base | unverified unclassified | UnnamedContract<br>`0xfd059e58645bce3380677ae0b54d628a018e942b` | non_address_book | unknown | unknown | unverified | n/a | `0x48ab8adf869ba9902ad483fb1ca2efdab6eabe92` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025.08.22-orion.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.08.22-orion.pdf) | Orion Security | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [2025.11.30-octane-security.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.30-octane-security.pdf) | Octane Security | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025.11.27-0xMacro.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.27-0xMacro.pdf) | 0xMacro | Audit | 2025-11 | fresh | Direct | n/a | matched | 7 | 0 | 0 | 17 | n/a |
| [2023-09-gerard-persoon.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-09-gerard-persoon.pdf) | Gerard Persoon | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 33 | high |
| [2023-09-hans-friese.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-09-hans-friese.pdf) | Hans Friese | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [2023-12-cantina-competition.md](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-12-cantina-competition.md) | Spearbit | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | medium |
| [report-cantinacode-superform.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/report-cantinacode-superform.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [report-competition-superform.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/report-competition-superform.pdf) | Unknown (competition) | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | medium |
| [2025.03.24-sujithsomraaj.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.03.24-sujithsomraaj.pdf) | sujithsomraaj | Audit | 2025-03 | aging | Direct | n/a | matched | 1 | 0 | 0 | 28 | n/a |
| [2025.04.19-cantinacode.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.04.19-cantinacode.pdf) | Spearbit | Audit | 2025-04 | aging | Direct | n/a | matched | 1 | 0 | 0 | 31 | n/a |
| [2025.05.05-nodesecurity.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.05.05-nodesecurity.pdf) | nodesecurity | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [2025.06.02-cantina-competition.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.06.02-cantina-competition.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 43 | n/a |
| [2025.06.30-cantinacode.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.06.30-cantinacode.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | n/a | matched | 4 | 0 | 0 | 10 | n/a |
| [2025.11.07-GetRecon.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.07-GetRecon.pdf) | GetRecon | Audit | 2025-11 | fresh | Direct | n/a | matched | 5 | 0 | 0 | 6 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3981] 2025.08.22-orion.pdf — no match: No reason recorded
- [3986] 2025.11.30-octane-security.pdf — no match: The report title states 'Security Analysis of Superform: v2-periphery (main)' and the only contract explicitly mentioned in findings is SuperVaultStrategy. No other contracts are listed in scope.
- [3987] 2025.11.27-0xMacro.pdf — matched: No reason recorded
- [14877] 2023-09-gerard-persoon.pdf — no match: Extracted contract names from the scope section and findings. The scope section lists repositories but not individual files; however, the findings reference specific .sol files which are assumed to be in scope. The audit date is explicitly stated as 'Date: 2023-11-03' at the top of the report.
- [14878] 2023-09-hans-friese.pdf — no match: Scope section states 'Everything in the src folder except vendor is in scope.' All contracts mentioned in findings are within src folder. Audit date is September 2, 2023 from cover page.
- [14879] 2023-12-cantina-competition.md — no match: No explicit scope section found; contract names extracted from findings context and file paths mentioned in the report.
- [14880] report-cantinacode-superform.pdf — no match: Only one contract (SuperFrens) is explicitly referenced in findings. No explicit scope section listing all contracts; the report mentions review of 'superrewards-contracts' but only SuperFrens.sol is cited.
- [14881] report-competition-superform.pdf — no match: Extracted contract names from findings context; no explicit scope section found. Date from cover page.
- [14882] 2025.03.24-sujithsomraaj.pdf — matched: No reason recorded
- [14883] 2025.04.19-cantinacode.pdf — matched: No reason recorded
- [14884] 2025.05.05-nodesecurity.pdf — no match: No reason recorded
- [14885] 2025.06.02-cantina-competition.pdf — no match: No reason recorded
- [14887] 2025.06.30-cantinacode.pdf — matched: No reason recorded
- [14888] 2025.11.07-GetRecon.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025.08.22-orion.pdf | ApproveAndSwapOdosV2Hook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | BaseHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | BaseLedger | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | BatchTransferFromHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | ChainAgnosticSafeSignatureValidation | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | CircleGatewayAddDelegateHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | CircleGatewayMinterHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | CircleGatewayRemoveDelegateHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | Constants | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | DeBridgeSendOrderAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | DebridgeAdapter | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | DeployV2Base | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | DeployV2Core | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | HookDataUpdater | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | MarkRootAsUsedHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | MerklClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperDestinationExecutor | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperDestinationValidator | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperExecutor | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperNativePaymaster | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperValidator | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SwapOdosV2Hook | unmatched — not counted | — | — | no |
| 2025.11.30-octane-security.pdf | SuperVaultStrategy | unmatched — not counted | — | listed in scope and findings reference file src/SuperVault/SuperVaultStrategy.sol | no |
| 2025.11.27-0xMacro.pdf | AssetMetadataLib | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | Bank | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ECDSAPPSOracle | own contract | ECDSAPPSOracle (selected) `0x366d88f03b8ef34eb49f32a927ff6e1609f694f2` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | IECDSAPPSOracle | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | IHookExecutionData | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperBank | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperGovernor | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperOracle | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperOracleL2 | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperVault | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperVaultAggregator | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperVaultEscrow | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperVaultStrategy | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperBank | own contract | SuperBank (selected) `0x6fcc6a6a825fc14e6e56fd14978fc6b97acb5d15` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperGovernor | own contract | SuperGovernor (selected) `0xb5396ef2bf8ca360ceb4166b77afb2bed20e74d4` — deployed 2025-12-01 21:45:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperOracle | own contract | SuperOracle (selected) `0x8943128dbab4279d561654deed2930bb975aa070` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperOracleBase | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperOracleL2 | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperVault | own contract | SuperVault (selected) `0x2c71f70e2ec720ae061ae7e0316fc9654d94f417` — deployed 2026-01-16 12:38:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperVaultAccountingLib | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperVaultAggregator | own contract | SuperVaultAggregator (selected) `0x10ac0b33e1c4501cf3ec1cb1ae51ebfdbd2d4698` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperVaultEscrow | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperVaultStrategy | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | Up | own contract | Up (selected) `0x1d926bbe67425c9f507b9a0e8030eedc7880bf33` — deployed 2025-06-16 23:06:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-09-gerard-persoon.pdf | CoreStateRegistry | unmatched — not counted | — | Listed in scope and findings reference CoreStateRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | ERC4626FormImplementation | unmatched — not counted | — | Listed in scope and findings reference ERC4626FormImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | LiquidityHandler | unmatched — not counted | — | Listed in scope and findings reference LiquidityHandler.sol | no |
| 2023-09-gerard-persoon.pdf | PaymentHelper | unmatched — not counted | — | Listed in scope and findings reference PaymentHelper.sol | no |
| 2023-09-gerard-persoon.pdf | ERC1155A | unmatched — not counted | — | Listed in scope and findings reference ERC1155A.sol | no |
| 2023-09-gerard-persoon.pdf | SuperRegistry | unmatched — not counted | — | Listed in scope and findings reference SuperRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | LayerzeroImplementation | unmatched — not counted | — | Listed in scope and findings reference LayerzeroImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | TimelockStateRegistry | unmatched — not counted | — | Listed in scope and findings reference TimelockStateRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | DataLib | unmatched — not counted | — | Listed in scope and findings reference DataLib.sol | no |
| 2023-09-gerard-persoon.pdf | WormholeSRImplementation | unmatched — not counted | — | Listed in scope and findings reference WormholeSRImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | BaseStateRegistry | unmatched — not counted | — | Listed in scope and findings reference BaseStateRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | BroadcastRegistry | unmatched — not counted | — | Listed in scope and findings reference BroadcastRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | SuperTransmuter | unmatched — not counted | — | Listed in scope and findings reference SuperTransmuter.sol | no |
| 2023-09-gerard-persoon.pdf | ERC4626KYCDaoForm | unmatched — not counted | — | Listed in scope and findings reference ERC4626KYCDaoForm.sol | no |
| 2023-09-gerard-persoon.pdf | DstSwapper | unmatched — not counted | — | Listed in scope and findings reference DstSwapper.sol | no |
| 2023-09-gerard-persoon.pdf | BaseForm | unmatched — not counted | — | Listed in scope and findings reference BaseForm.sol | no |
| 2023-09-gerard-persoon.pdf | FormBeacon | unmatched — not counted | — | Listed in scope and findings reference FormBeacon.sol | no |
| 2023-09-gerard-persoon.pdf | SuperformFactory | unmatched — not counted | — | Listed in scope and findings reference SuperformFactory.sol | no |
| 2023-09-gerard-persoon.pdf | BaseRouterImplementation | unmatched — not counted | — | Listed in scope and findings reference BaseRouterImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | LiFiTxDataExtractor | unmatched — not counted | — | Listed in scope and findings reference LiFiTxDataExtractor.sol | no |
| 2023-09-gerard-persoon.pdf | LiFiValidator | unmatched — not counted | — | Listed in scope and findings reference LiFiValidator.sol | no |
| 2023-09-gerard-persoon.pdf | StandardizedCallFacet | unmatched — not counted | — | Listed in scope and findings reference StandardizedCallFacet.sol | no |
| 2023-09-gerard-persoon.pdf | SuperRBAC | unmatched — not counted | — | Listed in scope and findings reference SuperRBAC.sol | no |
| 2023-09-gerard-persoon.pdf | PayloadHelper | unmatched — not counted | — | Listed in scope and findings reference PayloadHelper.sol | no |
| 2023-09-gerard-persoon.pdf | Transmuter | unmatched — not counted | — | Listed in scope and findings reference Transmuter.sol | no |
| 2023-09-gerard-persoon.pdf | SuperPositions | unmatched — not counted | — | Listed in scope and findings reference SuperPositions.sol | no |
| 2023-09-gerard-persoon.pdf | IBridgeValidator | unmatched — not counted | — | Listed in scope and findings reference IBridgeValidator.sol | no |
| 2023-09-gerard-persoon.pdf | SuperformRouter | unmatched — not counted | — | Listed in scope and findings reference SuperformRouter.sol | no |
| 2023-09-gerard-persoon.pdf | HyperlaneImplementation | unmatched — not counted | — | Listed in scope and findings reference HyperlaneImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | WormholeARImplementation | unmatched — not counted | — | Listed in scope and findings reference WormholeARImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | PayloadUpdaterLib | unmatched — not counted | — | Listed in scope and findings reference PayloadUpdaterLib.sol | no |
| 2023-09-gerard-persoon.pdf | ERC4626Form | unmatched — not counted | — | Listed in scope and findings reference ERC4626Form.sol | no |
| 2023-09-gerard-persoon.pdf | ERC4626TimelockForm | unmatched — not counted | — | Listed in scope and findings reference ERC4626TimelockForm.sol | no |
| 2023-09-hans-friese.pdf | LayerzeroImplementation | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | BaseForm | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | BaseStateRegistry | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | CelerImplementation | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | HyperlaneImplementation | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | CoreStateRegistry | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | PayMaster | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | PaymentHelper | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SocketValidator | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperformRouter | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | ERC4626FormImplementation | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | TwoStepsFormStateRegistry | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperRBAC | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperRegistry | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperformFactory | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | MultiTxProcessor | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | LiquidityHandler | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperPositions | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | FormBeacon | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | PayloadUpdaterLib | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | Error | unmatched — not counted | — | mentioned in findings context | no |
| 2023-12-cantina-competition.md | SuperformRouter | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | BaseRouterImplementation | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | CoreStateRegistry | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC4626FormImplementation | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SuperPositions | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC1155A | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | LayerzeroImplementation | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | LiFiValidator | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | DstSwapper | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC4626KYCDaoForm | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | EmergencyQueue | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SuperformFactory | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SuperRegistry | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SuperRBAC | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | BaseForm | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | BaseStateRegistry | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SocketValidator | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC4626Form | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC4626TimelockForm | unmatched — not counted | — | mentioned in findings as audited contract | no |
| report-cantinacode-superform.pdf | SuperFrens | unmatched — not counted | — | Context in findings: SuperFrens.sol | no |
| report-competition-superform.pdf | SuperPositions | unmatched — not counted | — | mentioned in finding 3.1.1 | no |
| report-competition-superform.pdf | ERC1155A | unmatched — not counted | — | mentioned in finding 3.1.2 | no |
| report-competition-superform.pdf | BaseRouterImplementation | unmatched — not counted | — | mentioned in finding 3.1.3 | no |
| report-competition-superform.pdf | ERC4626KYCDaoForm | unmatched — not counted | — | mentioned in finding 3.1.4 | no |
| report-competition-superform.pdf | CoreStateRegistry | unmatched — not counted | — | mentioned in finding 3.2.1 | no |
| report-competition-superform.pdf | ERC4626FormImplementation | unmatched — not counted | — | mentioned in finding 3.2.3 | no |
| report-competition-superform.pdf | SuperformRouter | unmatched — not counted | — | mentioned in finding 3.2.8 | no |
| report-competition-superform.pdf | LiFiValidator | unmatched — not counted | — | mentioned in finding 3.2.9 | no |
| report-competition-superform.pdf | DstSwapper | unmatched — not counted | — | mentioned in finding 3.2.10 | no |
| report-competition-superform.pdf | LiquidityHandler | unmatched — not counted | — | mentioned in finding 3.2.13 | no |
| 2025.03.24-sujithsomraaj.pdf | AbstractYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | AcrossReceiveFundsAndExecuteGateway | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | AcrossSendFundsAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | BaseClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | BaseHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | BaseLedger | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | BasePaymaster | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | Deposit4626VaultHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | ERC1155Ledger | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | ERC5115YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | ERC7540YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | FluidStakeHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | FluidStakeWithPermitHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | FluidUnstakeHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | GearboxStakeHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | GearboxUnstakeHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | ISuperLedger | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | PeripheryRegistry | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperExecutor | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperLedgerConfiguration | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperMerkleValidator | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperNativePaymaster | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperOracle | own contract | SuperOracle (selected) `0x8943128dbab4279d561654deed2930bb975aa070` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.03.24-sujithsomraaj.pdf | SuperRegistry | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperRegistryImplementer | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SwapOdosHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | Withdraw4626VaultHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | YearnClaimOneRewardHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | AbstractYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | AcrossReceiveFundsAndExecuteGateway | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | AcrossSendFundsAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | AcrossTargetExecutor | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveAndDeposit4626VaultHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveAndGearboxStakeHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveAndRequestDeposit7540VaultHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveAndSwapOdosHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveERC20Hook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | BaseClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | BaseHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | BaseLedger | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | Deposit7540VaultHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ERC5115YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | FluidClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | FluidUnstakeHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | FluidYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | GearboxUnstakeHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | GearboxYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | HookDataDecoder | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | PaymasterGasCalculator | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | StakingYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperDestinationValidator | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperExecutor | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperLedgerConfiguration | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperMerkleValidator | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperNativePaymaster | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperOracle | own contract | SuperOracle (selected) `0x8943128dbab4279d561654deed2930bb975aa070` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.04.19-cantinacode.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SwapOdosHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | TransferERC20Hook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | Withdraw7540VaultHook | unmatched — not counted | — | — | no |
| 2025.05.05-nodesecurity.pdf | DebridgeAdapter | unmatched — not counted | — | — | no |
| 2025.05.05-nodesecurity.pdf | SuperDestinationExecutor | unmatched — not counted | — | — | no |
| 2025.05.05-nodesecurity.pdf | SuperDestinationValidator | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | AbstractYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | AcrossSendFundsAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndDeposit4626VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndRedeem4626VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndRedeem5115VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndSwapOdosHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndWithdraw7540VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveERC20Hook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | BaseLedger | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | BatchTransferFromHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ClaimCancelRedeemRequest7540Hook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | DeBridgeSendOrderAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | Deposit5115VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ERC4626YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ERC5115YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | EthenaCooldownSharesHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | EthenaUnstakeHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | FlatFeeLedger | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | FluidClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | GearboxClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | MorphoBorrowHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | MorphoRepayAndWithdrawHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | MorphoRepayHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | PendlePTYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | PendleRouterSwapHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | Redeem4626VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | Redeem5115VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | RequestDeposit7540VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SpectraExchangeHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperBundler | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperDestinationExecutor | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperDestinationValidator | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperExecutor | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperExecutorBase | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperLedger | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperLedgerConfiguration | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperMerkleValidator | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperNativePaymaster | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperPosition | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperValidatorBase | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SwapOdosHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | YearnClaimOneRewardHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | ApproveAndFluidStakeHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | ApproveAndGearboxStakeHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | BaseHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | BundlerRegistry | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | ECDSAPPSOracle | own contract | ECDSAPPSOracle (selected) `0x366d88f03b8ef34eb49f32a927ff6e1609f694f2` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.06.30-cantinacode.pdf | RequestDeposit7540VaultHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | RequestRedeem7540VaultHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | SuperGovernor | own contract | SuperGovernor (selected) `0xb5396ef2bf8ca360ceb4166b77afb2bed20e74d4` — deployed 2025-12-01 21:45:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.06.30-cantinacode.pdf | SuperVault | own contract | SuperVault (selected) `0x2c71f70e2ec720ae061ae7e0316fc9654d94f417` — deployed 2026-01-16 12:38:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.06.30-cantinacode.pdf | SuperVaultAggregator | own contract | SuperVaultAggregator (selected) `0x10ac0b33e1c4501cf3ec1cb1ae51ebfdbd2d4698` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.06.30-cantinacode.pdf | SuperVaultEscrow | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | SuperVaultStrategy | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | UpDistributor | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | Bank | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | ECDSAPPSOracle | own contract | ECDSAPPSOracle (selected) `0x366d88f03b8ef34eb49f32a927ff6e1609f694f2` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | ERC4626YieldOracle | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | ERC7540YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | MerklClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | SuperBank | own contract | SuperBank (selected) `0x6fcc6a6a825fc14e6e56fd14978fc6b97acb5d15` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | SuperGovernor | own contract | SuperGovernor (selected) `0xb5396ef2bf8ca360ceb4166b77afb2bed20e74d4` — deployed 2025-12-01 21:45:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | SuperOracleBase | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | SuperVault | own contract | SuperVault (selected) `0x2c71f70e2ec720ae061ae7e0316fc9654d94f417` — deployed 2026-01-16 12:38:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | SuperVaultAggregator | own contract | SuperVaultAggregator (selected) `0x10ac0b33e1c4501cf3ec1cb1ae51ebfdbd2d4698` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | SuperVaultStrategy | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | `0x642ffc3496aca19106bab7a42f1f221a329654fe` | UpOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5b2193fdc451c1f847be09ca9d13a4bf60f8c86b` | UpOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 121 |
| upstream | 8 |
| standard_library | 6 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 18 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 247 unmatched
- Matched-own operational status: 18 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, medium=3
- Match method counts: unique_name=18

Zero-match audit list:

- [3981] 2025.08.22-orion.pdf
- [3986] 2025.11.30-octane-security.pdf
- [14877] 2023-09-gerard-persoon.pdf
- [14878] 2023-09-hans-friese.pdf
- [14879] 2023-12-cantina-competition.md
- [14880] report-cantinacode-superform.pdf
- [14881] report-competition-superform.pdf
- [14884] 2025.05.05-nodesecurity.pdf
- [14885] 2025.06.02-cantina-competition.pdf

Fork inheritance lineage and inherited audits are included when available.
