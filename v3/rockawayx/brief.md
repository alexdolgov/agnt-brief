# Agentic Audit Brief: RockawayX

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: RockawayX (`rockawayx`)
- Website: [https://rockawayx.com/](https://rockawayx.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum, sei
- Contract surface: 303 unique implementations (303 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $163,746,061.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for RockawayX in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x280839980a7ed0d7717f64125fe241012e5f5815`, chain 1)
- UnnamedContract (`0x7af35ab3e5373da511c5f1331f44335a36da1a55`, chain 1)
- UnnamedContract (`0xa0c49ffa4b7941830235cde974d9b2a8420cd375`, chain 1)
- UnnamedContract (`0xd0580192e98ea6ceb9c7b6191ed2e27560911697`, chain 1)
- UnnamedContract (`0xe16b821b9f6b0a6f06a2c4a61d5d1f71cfa53f1e`, chain 1)
- UnnamedContract (`0xf7c0d8853e69dcd37ee7599c6280d2632f3360b4`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 297 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 101 standard proxy/library)
- Proxy deployments represented within implementation groups: 142
- Confirmed-live implementations: 6 of 303 unique; 297 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/297
- Verified + Unaudited implementations: 297
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 303
- Raw deployments: 303
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (297)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountableYield | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0f0a9d3f0bc6006143c96e6995572b51413cb3c4` | ⚠️ Unaudited |
| AcreAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0` | ⚠️ Unaudited |
| acreBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0391a651c080e99b38c179575342512769d9d5` | ⚠️ Unaudited |
| AcreBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b0fdf4f5c6036b3c8b8b451680ce87b0ffe701e` | ⚠️ Unaudited |
| AcreBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c727b81eb776e2614c72430e306cefd614bb837` | ⚠️ Unaudited |
| AcreMBtc1CustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd48f19fe29f6f342fbee72fe04f9ffcc977f8d5` | ⚠️ Unaudited |
| bondBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9114650a2b8f8598a6b6aa1cb2837e145f59f9fd` | ⚠️ Unaudited |
| BondBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c0dc750493023e776584957bd923896bd321d28` | ⚠️ Unaudited |
| BondBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2a5dfe394687750e476ab39c054f6a124fc2e817` | ⚠️ Unaudited |
| BondBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1f78393689d2979f99b5c90131e166ae32bc05a4` | ⚠️ Unaudited |
| BondBtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29dcb0ffa494c2ac331ff8a40b70cf331b939ff5` | ⚠️ Unaudited |
| bondETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a640e217a3c5579b920f740b556f44b6e9820c5` | ⚠️ Unaudited |
| BondEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1c53c83553a71d88c1b1e4bf479bb9d9db0c23a6` | ⚠️ Unaudited |
| BondEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa454ec183507a5f0e8abf039c61d5e34f16e7072` | ⚠️ Unaudited |
| BondEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x556655081b2b39c184b544d962eada7f8b731c12` | ⚠️ Unaudited |
| BondEthRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cc1568dcee6dd720e9bd1c3f6384fb2fe5db43d` | ⚠️ Unaudited |
| bondUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xad4748098c2a771cc034d7dfc10fad9f9ed605fd` | ⚠️ Unaudited |
| BondUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b638490b1cde379d5468b66828653b303cf96d9` | ⚠️ Unaudited |
| BondUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014fb7d0fbc4e13b3324ef911909700eb929eb1b` | ⚠️ Unaudited |
| BondUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x14557b2719edf86f43e332b4f46f642024a2519d` | ⚠️ Unaudited |
| BondUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x71b76c2a371da950ad2a2eb5b469f5f932e341c6` | ⚠️ Unaudited |
| carryTradeUSDTRYLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2bf11d2e04bc40daa95c24b8b90ec4f5c57dd326` | ⚠️ Unaudited |
| CarryTradeUsdTryLeverageCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83f77010abc9cf9af847d486819673d1923dbe3e` | ⚠️ Unaudited |
| CarryTradeUsdTryLeverageDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x098f1641704e7db6cba67ee9ede908bb0d89294b` | ⚠️ Unaudited |
| CarryTradeUsdTryLeverageDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x55ed98baa90d59931c9cfeaa89acdfb8d31bac76` | ⚠️ Unaudited |
| CarryTradeUsdTryLeverageRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84a3a13ee09cf79e41e2ef6b926bc7b15f122882` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedAdjusted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494f142c35167cfbdd3887e8d7897822e63c9618` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99` | ⚠️ Unaudited |
| DataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b16ea685735acabe519d682a08acade018f003` | ⚠️ Unaudited |
| DepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0eb6cdad90174f1db606ec186ddd0b5ed80847` | ⚠️ Unaudited |
| EmberETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc5d944aa9b7c9937e49a3f001545b7e215f2772` | ⚠️ Unaudited |
| EmberVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x09924110f016cd289fbec05dda78c65813746438` | ⚠️ Unaudited |
| EmberVaultMintBurnOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8992e22010e2c09e7cc4feca676cdc3c848af092` | ⚠️ Unaudited |
| EmberVaultValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x234bd14719f93382bd541af877808336883d1b09` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1dc4836e5a0a95105bee1899e3b6bbb1714480fb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x833f55cabd389cce4681b77f759756d1eec4b1e3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xb5a30e1fa2cf3c8dea882124b3ab5a47a27c5dd2` | ⚠️ Unaudited |
| eUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4089dc8b6637218f13465d28950a82a7e90cbe27` | ⚠️ Unaudited |
| hypeBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48599ab08115cdf5731a7d8e5da1ac71d3c83459` | ⚠️ Unaudited |
| HypeBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x910cde06dfdcb06540744683812b8e2eb04a6f4c` | ⚠️ Unaudited |
| HypeBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x389035180efd4ee704f6e1b6a11e8889a1bbcac4` | ⚠️ Unaudited |
| hypeETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x140e71cd72d7ab5735fe8a73028bbe71821ff8ab` | ⚠️ Unaudited |
| HypeEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ed03d76c8e826c6c02eb2e86c38a0d89afcd463` | ⚠️ Unaudited |
| HypeEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x109e2a83502edf977fb035929a51414e93f6867c` | ⚠️ Unaudited |
| HypeUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d874a929ce6f5c21ab00f1677ccf43fbb7f3a9e` | ⚠️ Unaudited |
| HypeUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33ed485dcf400e9354173aebf6de37d8c03c6fa9` | ⚠️ Unaudited |
| JIV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x334b32f6298167d9efdc0f7affe447dba53e3d42` | ⚠️ Unaudited |
| JivCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x540f331ebc800b68d4972a01d57b2e1fe45d57ff` | ⚠️ Unaudited |
| MApolloCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x562bb5014793e8d2df2b493a947fbd522d420c55` | ⚠️ Unaudited |
| MApolloDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d371cc63fb8efd48aff59c5a0c064863ae4999c` | ⚠️ Unaudited |
| MBasisCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54d4783f47889c73861152f027a1aedf75d439d0` | ⚠️ Unaudited |
| MBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31bad33f5ed359e39ec1d1df18d995bfa2a20d75` | ⚠️ Unaudited |
| MBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f5b02328db057c84217003ad3519c541fe887c9` | ⚠️ Unaudited |
| mEDGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39c1891875afa8faae0ea8d9d3e769c46174fb87` | ⚠️ Unaudited |
| MEdgeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0391508a7cf5cf30c233d08849813c2959c0ea2f` | ⚠️ Unaudited |
| MEdgeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057a3a6b45d9bb351f0123de1b8e00fe5a56a7d1` | ⚠️ Unaudited |
| MEdgeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc904de3f0a5ad6d85609ec37fc0f30edafa73cc6` | ⚠️ Unaudited |
| MEdgeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6142ad2733c45d42ef3c625d4e33689406cc3ad5` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sei | n/a | `0x6137dcfdd3c83fe2922b1cba4105d2e92b327a06` | ⚠️ Unaudited |
| mevBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7813671f9c083b63fcbecbc182e9a0fc7de629a4` | ⚠️ Unaudited |
| MevBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931403532a4a30fee41bfe79f5b2159dcd0a5b43` | ⚠️ Unaudited |
| MevBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3549f6936dafb87f456dca3a061bc9225ff44b3c` | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26504103cc0704de4fad7d6be6538f8b9ed6ab3c` | ⚠️ Unaudited |
| mEVETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a9fc40d8d7dc06ca32a299aab5aa0e43ca049a` | ⚠️ Unaudited |
| MEvEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae7db385026e1ccd7e3f5afc2a61fd9be3623d5` | ⚠️ Unaudited |
| MEvEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5be2e2f5b53a9d22cf537fcba1793865ed44e7c` | ⚠️ Unaudited |
| MEvEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2801b9b6b2596813f08a8d26ac3e2e37a1899f80` | ⚠️ Unaudited |
| MEvEthRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x818fb14558d848ffd54758b21472db334cee1605` | ⚠️ Unaudited |
| MEvUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06e7279e596af4804a0fcc78ece24059da75cf26` | ⚠️ Unaudited |
| MFarmDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x313c76ecd990b728681f29464978d5637cb78164` | ⚠️ Unaudited |
| MFarmRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb73d1e0aedcd5bbeca0119e88288204101411e89` | ⚠️ Unaudited |
| MFOneCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6dfd4f744273142acdaafd96e3a194d604a14db3` | ⚠️ Unaudited |
| MFOneDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3291e8fd4cc415b62ca3789907a4eee759fbfd` | ⚠️ Unaudited |
| MFOneRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d98b671af8c51f6ffa94248b90df1b11dff6c47` | ⚠️ Unaudited |
| mGLOBAL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7433806912eae67919e66aea853d46fa0aef98a8` | ⚠️ Unaudited |
| MGlobalCustomAggregatorFeedGrowth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x66aa9fcd63df74e1f67a9452e6e59fbc67f75e38` | ⚠️ Unaudited |
| MGlobalDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x58476f452df10e6bf17dc1fee418e98de9e14868` | ⚠️ Unaudited |
| MGlobalDepositVaultWithAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xce29c36c6d4556f2d01d79414c1354b968dddef1` | ⚠️ Unaudited |
| MGlobalInfiniFiCustomAggregatorFeedGrowth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x192c91da9ec9b23d94ff83b47c9bbabfd2029eea` | ⚠️ Unaudited |
| MGlobalRedemptionVaultWithAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0fc8bdfb1e6a705c1375810989b1d70a982b01b` | ⚠️ Unaudited |
| MGlobalRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1e0fd66753198c7b8ba64edee8d41d8628bf20d7` | ⚠️ Unaudited |
| mHYPER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10e2352da4790e547095f06fa3ef3093881080fb` | ⚠️ Unaudited |
| MHyperBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c7a74f9e391f66cd1ad9d934ad897b2cdd085de` | ⚠️ Unaudited |
| MHyperBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f6e5852f89c5a94119b039b355ad7043e959393` | ⚠️ Unaudited |
| MHyperBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbccac5cbf0691da65e48810d316a1e5b9f895a52` | ⚠️ Unaudited |
| MHyperDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa62249abe86e75717ef9705f2fdb19b39c130e5e` | ⚠️ Unaudited |
| MHyperEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c68087e994d24d454ba6c96f7a3152f6a2e9850` | ⚠️ Unaudited |
| MHyperEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f4e7d11e54f34f5d02dade106a690efdbc74834` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x570c15bc5faf98531a8b351d69e22e41e3505e47` | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x148c86390a4ae6f7a02df5903bc0a89e8b4581a0` | ⚠️ Unaudited |
| MidasTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3eee3e0d2398799c884a47fc40c029c8e241852` | ⚠️ Unaudited |
| mKRalpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e2f09d19a6925bbf1386121505597c13fdc0b89` | ⚠️ Unaudited |
| MKRalphaRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34f70193d920fa9824f4a467c08f1a45e3651ede` | ⚠️ Unaudited |
| MLiquidityCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31a9d3157687ea3c7267515c110c431bd13a0403` | ⚠️ Unaudited |
| MLiquidityDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e14dd4f41955a1b10d4482345a1a4b06aaefac` | ⚠️ Unaudited |
| MLiquidityDepositVaultWithAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc616e6edb81ba30b8de057eb96557315a1990ea2` | ⚠️ Unaudited |
| MLiquidityRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e5aab1aad75853ab8114264c3bf3427b0634c9e` | ⚠️ Unaudited |
| MLiquidityRedemptionVaultWithAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8521b0063d4b90658cc8849db78641da0235d1cf` | ⚠️ Unaudited |
| mM1USD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d2b45df39cae12dfc18b47eb60268ae275dbf18` | ⚠️ Unaudited |
| MM1UsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6f16c920624795b838189a003cb04edda4a538` | ⚠️ Unaudited |
| MM1UsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb6bdbb7a87acf272eb6f51144c60b968ca9c0a6` | ⚠️ Unaudited |
| MM1UsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0f7e323103b29e1b18d521de957ed0c4c0a8189e` | ⚠️ Unaudited |
| MM1UsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326b2532bdc58ab4ec57cfe1495f9997f32b0c74` | ⚠️ Unaudited |
| MMevCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f3488694e6a1a371cfcd94795a7ef18981dc679` | ⚠️ Unaudited |
| MMevDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff00e912c8f449c8a9fac6861b84e1b5c080d81` | ⚠️ Unaudited |
| MMevDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac5c4dcd870c835f8943e62ab33cdadba850e5e5` | ⚠️ Unaudited |
| MMevRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x482d1e94a26bbaef59fc5d038c41b679120d00cb` | ⚠️ Unaudited |
| mPortofino | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x636cdf65a5bb03c25c63ceb20e971f101ed060b9` | ⚠️ Unaudited |
| MPortofinoRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9111ddd2cf8e2727ab08e6f2adb9c53480b0c31` | ⚠️ Unaudited |
| MRe7BtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091f974e277a19485b9a713ac768850bc5af383b` | ⚠️ Unaudited |
| MRe7BtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9953c4e85e6d249520e8ff2b134e5ded875615` | ⚠️ Unaudited |
| MRe7DepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c764c938385bc439dc1596413e1557deed62d8` | ⚠️ Unaudited |
| mROX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac6eab36317a2c4191138fa54c04d5cb0aba232` | ⚠️ Unaudited |
| MRoxCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cd3c7241cbf5dbefe610ddc944ce85d5380d1f1` | ⚠️ Unaudited |
| MRoxDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2c7d47c56015be6aa8442da78796a965928e7c4e` | ⚠️ Unaudited |
| MRoxDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x511d88e64d843ee11bf039a3eb837393001aede7` | ⚠️ Unaudited |
| MRoxRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x780d42a5a58e57318324d5666a6f638959ac2aa9` | ⚠️ Unaudited |
| MSlDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521f6153b7c5080f550517d9b76d9c08766ccb2f` | ⚠️ Unaudited |
| MSlRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d1c52c7cd203e4f84d084a33a062c61d51762fc` | ⚠️ Unaudited |
| MSyrupUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307be9748111571739b92a5dda10191f29057a8b` | ⚠️ Unaudited |
| msyrupUSDp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2530e3d2b30738b2e8d0dd3eb9b17946b0567ea5` | ⚠️ Unaudited |
| MSyrupUsdpCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e2165801d84865587252155fb4580381f7a3fc4` | ⚠️ Unaudited |
| MSyrupUsdpRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5113bf83400d184cde30af154117e29351e1cc91` | ⚠️ Unaudited |
| MSyrupUsdtCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e9dbcbcc8c976face7481288bbb9ab285e4d70c` | ⚠️ Unaudited |
| MSyrupUsdtDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca035326aa66b5db40fb6d3693772f073cd94bc` | ⚠️ Unaudited |
| MSyrupUsdtRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1314fb72f67681e7617e59bcf92002a9311d2084` | ⚠️ Unaudited |
| mTBILL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ab67aa19f6b387ba12fcedb6d1447e0c25897c` | ⚠️ Unaudited |
| MTBillDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e0357e38fc7fae9c29050aef3744d4055490ada` | ⚠️ Unaudited |
| mTU | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e06f54d24189e22fee10e0bc4e04ce4444c0dde` | ⚠️ Unaudited |
| MTuCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x464cf50c350b09a3201403f3bb89feee08d0b6f8` | ⚠️ Unaudited |
| Multicall3 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7165c2257ab6b6285389d8459938786c0ccd83d7` | ⚠️ Unaudited |
| MWildUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19623f6af10bcd83b01c787e16219a738877851e` | ⚠️ Unaudited |
| MWildUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d8f821e72382e433f1bcf079c0365f976b2ccd0` | ⚠️ Unaudited |
| MWildUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa70009c23dbf1222d66b0ca847b4c33ae2e07b41` | ⚠️ Unaudited |
| mWIN | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4e72025984424e52838cf8953e2863eff036b67a` | ⚠️ Unaudited |
| MWinCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f1593dffe91f154bc703dfcbab971dcbf42be00` | ⚠️ Unaudited |
| MWinDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d0cb5685791f6e9abc1b876e3b9017f8aa1807c` | ⚠️ Unaudited |
| MWinDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ea22780397d82116b905e7471cca458aaf6053` | ⚠️ Unaudited |
| MWinRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x605704d7b36d1677a8d242ded68ed505523c7924` | ⚠️ Unaudited |
| ObeatUsdLzElevatedMinterBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07cf28d71a38c12e258922d9857ac415ae1ff579` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbf25b58cb8dfad688f7bcb2b87d71c23a6600aac` | ⚠️ Unaudited |
| qHVN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a4efe79eb90f905c0c5677bbae3a0b352f10fa3` | ⚠️ Unaudited |
| QHVNCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58ae954b1958d5067e0957ee112bb9448bc1259a` | ⚠️ Unaudited |
| QHVNDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cce99e0a53dd5490defd2ee0c7a6842cd01cd56` | ⚠️ Unaudited |
| QHVNDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76860b0d85c7d51b5d9daa2c8e11cd2725e7ee4e` | ⚠️ Unaudited |
| QHVNRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045d7fad3253e63e4b22a11d0981ace44f011f0b` | ⚠️ Unaudited |
| qHVNUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7cf76875b1cc85c60cecd2d9d903849219fa05d` | ⚠️ Unaudited |
| QHVNUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ead9ce3b0b2b065b1a771d3e03148ac6156c4ea` | ⚠️ Unaudited |
| QHVNUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24216d96bffaa897ec1c4590afcea835b016c5cc` | ⚠️ Unaudited |
| QHVNUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x194f39af778d65139d1498fc8ce979050d513c0d` | ⚠️ Unaudited |
| QHVNUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc35d61f68b48555b71034098c3955ede764d1cb1` | ⚠️ Unaudited |
| RedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f1372244cedcaf8ee1759d2f02435628f14975f` | ⚠️ Unaudited |
| RedemptionVaultWIthBUIDL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe123ebc5697151890dddf05943de393ceaccc7e9` | ⚠️ Unaudited |
| RedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x283cbedecb447dbe114b4268f79ba8b046e32f39` | ⚠️ Unaudited |
| RedemptionVaultWithUSTB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x489a797714708cf088d158714a376d8ff740d701` | ⚠️ Unaudited |
| RsEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd52ba087e30928886baba15b1584d4ac9abaab2a` | ⚠️ Unaudited |
| SaveCreReceiverProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x230f0b2e321d0e32ea50696710a98ca84503a391` | ⚠️ Unaudited |
| sGold | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5c9e1c4d60dba50a68cbe3b0c1b5731a6fd08af6` | ⚠️ Unaudited |
| SGoldCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4402d9e2a00e22e1708a66b72ecec662046e0b35` | ⚠️ Unaudited |
| SGoldDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020845bec222cf26c5f760efc166029d15bb1c4b` | ⚠️ Unaudited |
| SGoldDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x526df1fe8464c9b82699a60fac7f64197985cd2b` | ⚠️ Unaudited |
| SGoldRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xef9cbc37bab198c903cddbf939e2cef6db434af7` | ⚠️ Unaudited |
| StakedUSDeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce2326260c168525a3e905391e8bfee00ebd0cea` | ⚠️ Unaudited |
| stockMarketTRBasisTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x827ce7e8e35861d9ac7fe002755767b695a5594a` | ⚠️ Unaudited |
| StockMarketTRBasisTradeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1c7bec0281080c0a4f85e55151191af27ec69940` | ⚠️ Unaudited |
| StockMarketTRBasisTradeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c505d128f272af1aaa0ebadc33754bfb6d7b169` | ⚠️ Unaudited |
| StockMarketTRBasisTradeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480bed1598b583480d90f6d752f31fb405eeef16` | ⚠️ Unaudited |
| StockMarketTRBasisTradeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x85a7a5fff71eaef79e76730f2e717a04aadea27b` | ⚠️ Unaudited |
| SyrupAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad298d3ec4af69af52701a539d3bd14873ac8493` | ⚠️ Unaudited |
| SyrupUSDCAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa869cbc273daae91d6109ee5bb958ac6b7198b67` | ⚠️ Unaudited |
| TACmBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x570f37365fffff0a3884892b7363c0a8615bbc08` | ⚠️ Unaudited |
| TACmBtcRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6808e4d8add893d0227690f435e1ff734d9ccdf4` | ⚠️ Unaudited |
| TACmEDGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c5b87e3bde1c70ad11d546a513e305bc07aa26c` | ⚠️ Unaudited |
| TACmEdgeRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x375af40dd6772bb9ad216ad7cbe4d8f91eae36d8` | ⚠️ Unaudited |
| TACmMEV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d3147d11c88f5008db19cb5dd945ae682910202` | ⚠️ Unaudited |
| tBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eed111a10c25a739b0d72bd2383f958b9fde211` | ⚠️ Unaudited |
| tETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72cca9794018c10ce47af3fc8d47e167d0761e96` | ⚠️ Unaudited |
| TEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42e82b2ee52cdc922cfed82bfcef90ada31215b5` | ⚠️ Unaudited |
| TEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46eab5259e1a2f18cbbfeeaa093130a456d09e78` | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc32652ab236f32482f5018b027c8b54c13750ebf` | ⚠️ Unaudited |
| TokenizedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc87dbbb8c67e4f19fcd2e297c05937567b2572ce` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x007115416ab6c266329a03b09a8aa39ac2ef7d9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x030b69280892c888670edcdcd8b69fd8026a0bf3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0312a9d1ff2372ddedcbb21e4b6389afc919ac4b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x03fda274c303b128eba9e00bf555a3f4f4f26ec3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x056339c044055819e8db84e71f5f2e1f536b2e5b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0a2a51f2f206447de3e3a80fcf92240244722395` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0aecdf39d9d02833a055bf1eca518a83f66f4802` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0d89c1c4799353f3805a3e6c4e1cbbb83217d123` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0f50b401509798f1919a4e8d38192f78734e49c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x10cc8dbca90db7606013d8cd2e77eb024df693bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x12570b84b633629b1db532fd3420f34a30acfc68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x141f0e9ed8ba2295254c9df9476cce7bc29172b1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x15a4c3e5a3e955a81a570e617d83680f57ee3862` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x15f724b35a75f0c28f352b952ea9d1b24e348c57` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1615cbc603192ae8a9ff20e98dd0e40a405d76e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x164645fbc7220a3b4f8f5c6b473bcf1b6db146dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x16d4f955b0aa1b1570fe3e9bb2f8c19c407cdb67` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x18f7f9f20c495a7f4868ba807c64a5d0a9ee8648` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x19ab19e61a930bc5c7b75bf06cdd954218ca9f0b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1a57aba59d50b192f8440e205e3b8b885be128cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1ce3e159f37c36fd1ff9c3b5af8725ef890955dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1fe17936c1cdc73c857263997716e3a60b9291c7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x20226607b4fa64228abf3072ce561d6257683464` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x20c5486ddc82272856730cc6ae2c9485ee1c5bee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x21f3bcfa912f674c2af3bed5bf8e47a3f40ea749` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x238a700ed6165261cf8b2e544ba797bc11e466ba` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27c0d44b02e1b732f37ba31c466a35053a7780b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27e6f273941c5536154c1a6c20c97db7dc1b0ea7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2a8c22e3b10036f3aef5875d04f8441d4188b656` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2ce15146958bf305dadebbbf31f2d5a4f2574b43` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2db1ec186acdeaf7d0fc78bffe335560b0fe0085` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2ddc913e4c7674a7e42c55db48a92c47158e91c6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2f98a13635f6cec0cc45bc1e43969c71d68091d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x307267989a7bec3a57fd7fd96017c49803589fd0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x30acceedff97a3fe11ab52ee7425af4589338c06` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x30d9d1e76869516aea980390494aaed45c3efc1a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x319a05e260acc2490768a726ccfd341d4b3d5106` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x34031e751da2ab19009d8f7eb268face2bdfd0dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x37769af173ea65dfc2880179940d5566817af6ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x38092073c5483ba9d844cc6733976957011e8aee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x39592bdbf6f3b96dd4547063945ab9ece769ae4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x39f0507060c12bb88cb68a496544011d2f341455` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3de2e700d220928ff5180691004824d8ad42f5d4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x41438435c20b1c2f1fca702d387889f346a0c3de` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x41c60765fa36109b19b21719f4593f19ddefa663` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x43881b05c3be68b2d33eb70addf9f666c5005f68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x48e284d0729eb1925066307072758d95dbbb49c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4bcfda0a844b49da8bb19562ee52cc385395001a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x513bd45be7643fe6c30c41cd4b327e8e341aaf9a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5356b8e06589de894d86b24f4079c629e8565234` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5455222ccdd32f85c1998f57dc6cf613b4498c2a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x54602a8e47bf82073d75e0ac2aef67f84fbcb8e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x548857309befb6fb6f20a9c5a56c9023d892785b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5572eb7f4fb679ff6a99203f12b0484dc1062d78` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x56814399caaedcee4f58d2e55da058a81dde744f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5696b69be96e936e8e489070eb3d4f0e1fe966af` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x57b3be350c777892611cedc93bcf8c099a9ecdab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5a096ac89eaef68930352a15da49e4eb8590bf1d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5a42864b14c0c8241ef5ab62dae975b163a2e0c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5ad2e3d65f8ecdc36eeba38bae3cc6ff258d2dfa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5aea6d35ed7b3b7ae78694b7da2ee880756af5c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5e154946561aea4e750aac6dead23d37e00e47f6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x605a84861ee603e385b01b9048bea6a86118db0a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x649f8698068ad143a7e18ba9cb0be112d5986aeb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x65c4e04cc26aadd1ec95c54cd6dba61a270f15ca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x65df7299a9010e399a38d6b7159d25239cdf039b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6d62d3c3c8f9912890788b50299bf4d2c64823b6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6f51d8af5be2cf3517b8d6cd07361be382e83be6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x711077ddc66b18e6dcb0a5cb3743f3938a03ce75` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x72e4549f3647426794149554625bc0827c77d3aa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x76cc16608aa7cd32631bb151801bb095313f7bbd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7833397da276d6b588e76466c14c82b2d733cfb6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7a4c56b1baaad0ff5d248892e137d415da41b3b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7cf9dec92ca9fd46f8d86e7798b72624bc116c05` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7d5b8ab9c948fb11433e0eddadd718dc5cb040bb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7e8c632ab231479886af1bc02b9d646e4634da93` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x81c097e86842051b1ed4299a9e4d213cb07f6f42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x841eeb3e2489b2282b0e14202dc8bd8f7624e29a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8493f1f2b834c2837c87075b0edac17f5273789a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x87c9053c819bb28e0d73d33059e1b3da80afb0cf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x88956c00a5fa046c823eaed747f21a95d2264403` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8f382ae7bbdbecda835d26ce3ba64010eaee1386` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x92004dcc5359ed67f287f32d12715a37916decde` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9a5cf6c0a1cee5226e31e3d0a81f2ca2462d8387` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9aebf5d6f9411bac355021ddfbe9b2c756bdd358` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9c3743582e8b2d7ccb5e08caf3c9c33780ac446f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9f49b0980b141b539e2a94ec0864faf699ff9524` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9f7dd5462c183b6577858e16a13a4d864ce2f972` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9fb442d6b612a6dcd2acc67bb53771ef1d9f661a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa01227a26a7710bc75071286539e47adb6dea417` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa19f6e0df08a7917f2f8a33db66d0af31ff5eca6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa48cfd53263ade6abdb0ac75287cc0d5a2eee17f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xafcc1c556ee0436c10a3054b3d615abb93a352b5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb5d6483c556bc6810b55b983315016fcb374186d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbdc0304210972be75fd2247838bff2b64474f15c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbf2a93b420225558a76fc9888c687c14977e6e7c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc344db27feba7f0a881a50f0f702a525a44f2368` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc8495eaff71d3a563b906295fcf2f685b1783085` | ⚠️ Unaudited |
| turtlePST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ad29418f8e6f882c3c141053b6e430ccaf52a5` | ⚠️ Unaudited |
| TurtlePstCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3764f87c1b1a3420575cd875a0537c187665a10d` | ⚠️ Unaudited |
| TurtlePstDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c286495125ef839eb4501a075e353ef751dc481` | ⚠️ Unaudited |
| TurtlePstDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x95ef0179867545bea9dbdab27955551c0802307e` | ⚠️ Unaudited |
| TurtlePstRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f13585b2e7af340b7f182064f4184df36731de9` | ⚠️ Unaudited |
| TUsdeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f0c371f808996187729ed1bee13ace2e901d526` | ⚠️ Unaudited |
| TUsdeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x507f409ba7e5ef489d5c0e3c4568b24985a029d0` | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac3e68ea5e9dbc592246e2d0d57913aff77a603` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f829b1b473cba86838e1b7bb7e144dbde228e21` | ⚠️ Unaudited |
| WrappedEEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3f5fafb87318c0deaebff096aba019501fcb69` | ⚠️ Unaudited |
| WstEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa74f994672f232a30067da820f0e54881edbb9d7` | ⚠️ Unaudited |
| ZeroGBtcvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f211552e0d7acb267a9eb98b80ee00f47cb9e9a` | ⚠️ Unaudited |
| ZeroGEthvDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac79fed395c2238c4fa13084ee440e19e4deb0fe` | ⚠️ Unaudited |
| ZeroGEthvDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01feb0bba21552385de157174f32d97bc0e6afcc` | ⚠️ Unaudited |
| ZeroGEthvRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x364fb05060e7562b0c6379b5bd3371c412e049aa` | ⚠️ Unaudited |
| zeroGUSDV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x733acea2a9193a249fdb58ede4ea3c8ddc5fa347` | ⚠️ Unaudited |
| ZeroGUsdvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cf94465f8db8a273673dfe950bd1c9e34442aab` | ⚠️ Unaudited |
| ZeroGUsdvDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091074f37e8c72ddb8720afae77c44a855080e8a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391509 | `0x280839980a7ed0d7717f64125fe241012e5f5815` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391510 | `0x7af35ab3e5373da511c5f1331f44335a36da1a55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391511 | `0xa0c49ffa4b7941830235cde974d9b2a8420cd375` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391512 | `0xd0580192e98ea6ceb9c7b6191ed2e27560911697` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391513 | `0xe16b821b9f6b0a6f06a2c4a61d5d1f71cfa53f1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391514 | `0xf7c0d8853e69dcd37ee7599c6280d2632f3360b4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 193 |
| upstream | 1 |
| standard_library | 103 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
