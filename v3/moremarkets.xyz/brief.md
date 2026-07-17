# Agentic Audit Brief: MoreMarkets.xyz

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

- Project: MoreMarkets.xyz (`moremarkets.xyz`)
- Website: [https://www.moremarkets.xyz/](https://www.moremarkets.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 270 unique implementations (270 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $604,610.80
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for MoreMarkets.xyz. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum. Structural roles: 3 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: infra (3)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (3)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 3

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 3; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 267 discovered implementations shown in the inventory but excluded from coverage (101 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 109
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/270
- Verified + Unaudited implementations: 270
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 270
- Raw deployments: 270
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (270)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcreAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154648 | `0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0` | ⚠️ Unaudited |
| acreBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154656 | `0x7c0391a651c080e99b38c179575342512769d9d5` | ⚠️ Unaudited |
| AcreBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154661 | `0x8b0fdf4f5c6036b3c8b8b451680ce87b0ffe701e` | ⚠️ Unaudited |
| AcreBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154622 | `0x4c727b81eb776e2614c72430e306cefd614bb837` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154613 | `0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99` | ⚠️ Unaudited |
| DataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154552 | `0x01b16ea685735acabe519d682a08acade018f003` | ⚠️ Unaudited |
| DepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154570 | `0x0e0eb6cdad90174f1db606ec186ddd0b5ed80847` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154704 | `0xd7f2f42188932513dcaa4f9c9b241f34a1f70e92` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154712 | `0x0025333734c668ec08887d865c1fc67f9d227550` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154727 | `0x038729fed17e69e5815be936a0918c7623a93b5f` | ⚠️ Unaudited |
| ERC4626InterfaceFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154692 | `0xc0081eca65aa79f10a336d4c60a448302c1e477b` | ⚠️ Unaudited |
| eUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154610 | `0x4089dc8b6637218f13465d28950a82a7e90cbe27` | ⚠️ Unaudited |
| hypeBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154618 | `0x48599ab08115cdf5731a7d8e5da1ac71d3c83459` | ⚠️ Unaudited |
| HypeBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154666 | `0x910cde06dfdcb06540744683812b8e2eb04a6f4c` | ⚠️ Unaudited |
| HypeBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154605 | `0x389035180efd4ee704f6e1b6a11e8889a1bbcac4` | ⚠️ Unaudited |
| hypeETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154579 | `0x140e71cd72d7ab5735fe8a73028bbe71821ff8ab` | ⚠️ Unaudited |
| HypeEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154673 | `0x9ed03d76c8e826c6c02eb2e86c38a0d89afcd463` | ⚠️ Unaudited |
| HypeEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154576 | `0x109e2a83502edf977fb035929a51414e93f6867c` | ⚠️ Unaudited |
| HypeUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154664 | `0x8d874a929ce6f5c21ab00f1677ccf43fbb7f3a9e` | ⚠️ Unaudited |
| HypeUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154599 | `0x33ed485dcf400e9354173aebf6de37d8c03c6fa9` | ⚠️ Unaudited |
| InstaFlashAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154556 | `0x02d72614220c42a5599446d16f5478c3feeefa1a` | ⚠️ Unaudited |
| InstaFlashAggregatorProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154709 | `0xff24bf40d34c4ce74e2d0f95b27eb9773ecbfb14` | ⚠️ Unaudited |
| InstaFlashResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154675 | `0xa41771fc9fe121f95c82198099fd02ff13701924` | ⚠️ Unaudited |
| JIV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154598 | `0x334b32f6298167d9efdc0f7affe447dba53e3d42` | ⚠️ Unaudited |
| JivCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154631 | `0x540f331ebc800b68d4972a01d57b2e1fe45d57ff` | ⚠️ Unaudited |
| MApolloCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154635 | `0x562bb5014793e8d2df2b493a947fbd522d420c55` | ⚠️ Unaudited |
| MApolloDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154623 | `0x4d371cc63fb8efd48aff59c5a0c064863ae4999c` | ⚠️ Unaudited |
| MBasisCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154633 | `0x54d4783f47889c73861152f027a1aedf75d439d0` | ⚠️ Unaudited |
| MBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154655 | `0x7b904f25a1e923cf1f1fc2e5798232132dfd49c7` | ⚠️ Unaudited |
| MBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154640 | `0x5f5b02328db057c84217003ad3519c541fe887c9` | ⚠️ Unaudited |
| mEDGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154607 | `0x39c1891875afa8faae0ea8d9d3e769c46174fb87` | ⚠️ Unaudited |
| MEdgeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154557 | `0x0391508a7cf5cf30c233d08849813c2959c0ea2f` | ⚠️ Unaudited |
| MEdgeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154559 | `0x057a3a6b45d9bb351f0123de1b8e00fe5a56a7d1` | ⚠️ Unaudited |
| MEdgeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154696 | `0xc904de3f0a5ad6d85609ec37fc0f30edafa73cc6` | ⚠️ Unaudited |
| MEdgeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154641 | `0x6142ad2733c45d42ef3c625d4e33689406cc3ad5` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154580 | `0x15b478fbfb02b930e07a8aa3950c23c272917567` | ⚠️ Unaudited |
| mevBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154654 | `0x7813671f9c083b63fcbecbc182e9a0fc7de629a4` | ⚠️ Unaudited |
| MevBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154667 | `0x931403532a4a30fee41bfe79f5b2159dcd0a5b43` | ⚠️ Unaudited |
| MevBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154600 | `0x3549f6936dafb87f456dca3a061bc9225ff44b3c` | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154588 | `0x26504103cc0704de4fad7d6be6538f8b9ed6ab3c` | ⚠️ Unaudited |
| MEvUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154560 | `0x06e7279e596af4804a0fcc78ece24059da75cf26` | ⚠️ Unaudited |
| MFarmDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154597 | `0x313c76ecd990b728681f29464978d5637cb78164` | ⚠️ Unaudited |
| MFarmRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154688 | `0xb73d1e0aedcd5bbeca0119e88288204101411e89` | ⚠️ Unaudited |
| MFOneDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154564 | `0x0c3291e8fd4cc415b62ca3789907a4eee759fbfd` | ⚠️ Unaudited |
| MFOneRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154569 | `0x0d98b671af8c51f6ffa94248b90df1b11dff6c47` | ⚠️ Unaudited |
| mHYPER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154577 | `0x10e2352da4790e547095f06fa3ef3093881080fb` | ⚠️ Unaudited |
| MHyperBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154566 | `0x0c7a74f9e391f66cd1ad9d934ad897b2cdd085de` | ⚠️ Unaudited |
| MHyperBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154625 | `0x4f6e5852f89c5a94119b039b355ad7043e959393` | ⚠️ Unaudited |
| MHyperBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154690 | `0xbccac5cbf0691da65e48810d316a1e5b9f895a52` | ⚠️ Unaudited |
| MHyperDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154676 | `0xa62249abe86e75717ef9705f2fdb19b39c130e5e` | ⚠️ Unaudited |
| MHyperEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154592 | `0x2c68087e994d24d454ba6c96f7a3152f6a2e9850` | ⚠️ Unaudited |
| MHyperEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154595 | `0x2f4e7d11e54f34f5d02dade106a690efdbc74834` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154636 | `0x570c15bc5faf98531a8b351d69e22e41e3505e47` | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154634 | `0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6` | ⚠️ Unaudited |
| MidasTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154706 | `0xe3eee3e0d2398799c884a47fc40c029c8e241852` | ⚠️ Unaudited |
| MLiquidityCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154621 | `0x4b805d11aaa424f205b7bf7c39f5e3b5d8f5a522` | ⚠️ Unaudited |
| MLiquidityDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154645 | `0x67e14dd4f41955a1b10d4482345a1a4b06aaefac` | ⚠️ Unaudited |
| MLiquidityRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154639 | `0x5e5aab1aad75853ab8114264c3bf3427b0634c9e` | ⚠️ Unaudited |
| MMevDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154626 | `0x4ff00e912c8f449c8a9fac6861b84e1b5c080d81` | ⚠️ Unaudited |
| MMevDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154684 | `0xac5c4dcd870c835f8943e62ab33cdadba850e5e5` | ⚠️ Unaudited |
| MMevRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154617 | `0x482d1e94a26bbaef59fc5d038c41b679120d00cb` | ⚠️ Unaudited |
| mPortofino | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154642 | `0x636cdf65a5bb03c25c63ceb20e971f101ed060b9` | ⚠️ Unaudited |
| MPortofinoRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154682 | `0xa9111ddd2cf8e2727ab08e6f2adb9c53480b0c31` | ⚠️ Unaudited |
| MRe7BtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154563 | `0x091f974e277a19485b9a713ac768850bc5af383b` | ⚠️ Unaudited |
| MRe7BtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154585 | `0x1d9953c4e85e6d249520e8ff2b134e5ded875615` | ⚠️ Unaudited |
| MRe7DepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154630 | `0x53c764c938385bc439dc1596413e1557deed62d8` | ⚠️ Unaudited |
| MSlDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154629 | `0x521f6153b7c5080f550517d9b76d9c08766ccb2f` | ⚠️ Unaudited |
| MSlRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154567 | `0x0d1c52c7cd203e4f84d084a33a062c61d51762fc` | ⚠️ Unaudited |
| MSyrupUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154596 | `0x307be9748111571739b92a5dda10191f29057a8b` | ⚠️ Unaudited |
| msyrupUSDp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154587 | `0x2530e3d2b30738b2e8d0dd3eb9b17946b0567ea5` | ⚠️ Unaudited |
| MSyrupUsdpCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154586 | `0x1e2165801d84865587252155fb4580381f7a3fc4` | ⚠️ Unaudited |
| MSyrupUsdpRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154628 | `0x5113bf83400d184cde30af154117e29351e1cc91` | ⚠️ Unaudited |
| MSyrupUsdtCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154672 | `0x9e9dbcbcc8c976face7481288bbb9ab285e4d70c` | ⚠️ Unaudited |
| MSyrupUsdtDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154638 | `0x5ca035326aa66b5db40fb6d3693772f073cd94bc` | ⚠️ Unaudited |
| MSyrupUsdtRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154578 | `0x1314fb72f67681e7617e59bcf92002a9311d2084` | ⚠️ Unaudited |
| mTBILL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154680 | `0xa7ab67aa19f6b387ba12fcedb6d1447e0c25897c` | ⚠️ Unaudited |
| MTBillDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154593 | `0x2e0357e38fc7fae9c29050aef3744d4055490ada` | ⚠️ Unaudited |
| Multicall3 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-154651 | `0x7165c2257ab6b6285389d8459938786c0ccd83d7` | ⚠️ Unaudited |
| MulticallFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154609 | `0x3d2e2dbe93be3645311713b6cc980b16f5519390` | ⚠️ Unaudited |
| MultiSign | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154575 | `0x1073d55dfb892ed86151015402db8b1cdb6ede78` | ⚠️ Unaudited |
| MWildUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154581 | `0x19623f6af10bcd83b01c787e16219a738877851e` | ⚠️ Unaudited |
| MWildUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154665 | `0x8d8f821e72382e433f1bcf079c0365f976b2ccd0` | ⚠️ Unaudited |
| MWildUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154678 | `0xa70009c23dbf1222d66b0ca847b4c33ae2e07b41` | ⚠️ Unaudited |
| ObeatUsdLzElevatedMinterBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154561 | `0x07cf28d71a38c12e258922d9857ac415ae1ff579` | ⚠️ Unaudited |
| Permit2Facet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154555 | `0x02d05d3725b540a4b2ba263fdd38c9cfad6a6347` | ⚠️ Unaudited |
| PermitFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154643 | `0x6626a60c28a796fea0ea7324a1bac058fc4c7828` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-154691 | `0xbf25b58cb8dfad688f7bcb2b87d71c23a6600aac` | ⚠️ Unaudited |
| RedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154594 | `0x2f1372244cedcaf8ee1759d2f02435628f14975f` | ⚠️ Unaudited |
| RedemptionVaultWIthBUIDL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154705 | `0xe123ebc5697151890dddf05943de393ceaccc7e9` | ⚠️ Unaudited |
| RedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154589 | `0x283cbedecb447dbe114b4268f79ba8b046e32f39` | ⚠️ Unaudited |
| RedemptionVaultWithUSTB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154619 | `0x489a797714708cf088d158714a376d8ff740d701` | ⚠️ Unaudited |
| Roles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154707 | `0xf3bd578bda56176bbf8529b5c945193cf54db1f5` | ⚠️ Unaudited |
| RsEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154703 | `0xd52ba087e30928886baba15b1584d4ac9abaab2a` | ⚠️ Unaudited |
| StablecoinProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154753 | `0x8292bb45bf1ee4d140127049757c2e0ff06317ed` | ⚠️ Unaudited |
| StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154700 | `0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec` | ⚠️ Unaudited |
| StakedUSDeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154699 | `0xce2326260c168525a3e905391e8bfee00ebd0cea` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154668 | `0x980fe5ae0245e22a5f7e1bc23f23f7bee536623e` | ⚠️ Unaudited |
| StrategyGovDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154550 | `0x007f7869dff5381940510f85d19a46656a736027` | ⚠️ Unaudited |
| SwapRouterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154698 | `0xcd163857744148f2f4d0702f3ba467de64c3c406` | ⚠️ Unaudited |
| SyrupAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154686 | `0xad298d3ec4af69af52701a539d3bd14873ac8493` | ⚠️ Unaudited |
| SyrupUSDCAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154681 | `0xa869cbc273daae91d6109ee5bb958ac6b7198b67` | ⚠️ Unaudited |
| TACmBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154637 | `0x570f37365fffff0a3884892b7363c0a8615bbc08` | ⚠️ Unaudited |
| TACmBtcRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154646 | `0x6808e4d8add893d0227690f435e1ff734d9ccdf4` | ⚠️ Unaudited |
| TACmEDGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154657 | `0x7c5b87e3bde1c70ad11d546a513e305bc07aa26c` | ⚠️ Unaudited |
| TACmEdgeRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154603 | `0x375af40dd6772bb9ad216ad7cbe4d8f91eae36d8` | ⚠️ Unaudited |
| TACmMEV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154584 | `0x1d3147d11c88f5008db19cb5dd945ae682910202` | ⚠️ Unaudited |
| tBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154624 | `0x4eed111a10c25a739b0d72bd2383f958b9fde211` | ⚠️ Unaudited |
| Term4626CombinationBaseFrequencyPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154669 | `0x98aa477ef02499a79a21e8ae2a4c1f4c20b611f1` | ⚠️ Unaudited |
| Term4626TokenPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154549 | `0x00359e8ac909ae0ce8caed35bbe9582700e4ceb7` | ⚠️ Unaudited |
| TermAdapterPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154558 | `0x04e48a5274cbd953ea3846c4d4ab5dfe4cde89c6` | ⚠️ Unaudited |
| TermAggregatorFlashDefaultLiquidatorSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154689 | `0xba26f51b57f4cff3b525f0afe4f7d53f9cec5c8f` | ⚠️ Unaudited |
| TermAggregatorFlashShortfallLiquidatorSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154568 | `0x0d1cf09eac87814ae2784269930c6a7a24df11ae` | ⚠️ Unaudited |
| TermAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154797 | `0x005f404d670838258b62ed549fdf20bb20ed1099` | ⚠️ Unaudited |
| TermAuctionBidLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154802 | `0x00384f209e1a439be315db44fa8ce7dd49bbd032` | ⚠️ Unaudited |
| TermCbETHPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154602 | `0x372dfe7d05f510c31736c3cb540e6b8e7f756956` | ⚠️ Unaudited |
| TermCombinationBaseFrequencyPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154659 | `0x836b2a4ae936ad1ff592c4ec7e93c35a8e87a868` | ⚠️ Unaudited |
| TermController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154590 | `0x2879c9d15406e7ebd46770f4b0781fe665f9da1b` | ⚠️ Unaudited |
| TermControllerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154647 | `0x6913324432cd3ac255c4bdc5cf8929597eaac05c` | ⚠️ Unaudited |
| TermDiamondFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154554 | `0x0279e148e3131e33a79899cc3ab2c8411a84fbbf` | ⚠️ Unaudited |
| TermEthPlusPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154701 | `0xd38ed9b6a00ee9a0f91b448162bf65fb462507a2` | ⚠️ Unaudited |
| TermEventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154583 | `0x1c41cc8495cf570b825fcf17ec4c9159e728cc4a` | ⚠️ Unaudited |
| TermFlashDefaultSuperformEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154616 | `0x4748335d4414d5f7cd1dd0fa85b6879f837217b5` | ⚠️ Unaudited |
| TermFlashLoanCentralReceiverFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154591 | `0x2c5d7c65f7276190c47c45300e71e93d8401836a` | ⚠️ Unaudited |
| TermFlashLoanExecutorFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154608 | `0x3c19d13a388798b3b71b215bb04959cffaacef4b` | ⚠️ Unaudited |
| TermFlashShortfallLiquidatorSuperformEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154571 | `0x0e25ce9c56250b0d9baf0dfc86cfc7935fccdc45` | ⚠️ Unaudited |
| TermHEthPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154551 | `0x016572aacd1bcb1fca8c495488742a66d5fa4dab` | ⚠️ Unaudited |
| TermInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154695 | `0xc6d96f1752dbc73276c3e6b07c04d04c61fc2cd6` | ⚠️ Unaudited |
| TermLoanIntentFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154687 | `0xb435e249393e9aad3d774d5a0b2fc03c86b141f1` | ⚠️ Unaudited |
| TermLoanIntentHookFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154658 | `0x808eb7f99063dc2cf7dd816a98dcef46113e4325` | ⚠️ Unaudited |
| TermPriceConsumerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154719 | `0x13ca4ddb295d621761057d682a1c7b5f5d7bba4c` | ⚠️ Unaudited |
| TermPTcUSDDefaulter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154632 | `0x54b271101f6dda5c6f7a7ee99eb4766445519f2f` | ⚠️ Unaudited |
| TermPTcUSDLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154660 | `0x8606b167e4c2386edbce32b4c45c55adc9044241` | ⚠️ Unaudited |
| TermPTSuperUSDCPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154694 | `0xc336b55254daaa9c77df953864bd107c027e48a0` | ⚠️ Unaudited |
| TermPTsUSDePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154697 | `0xca4f7f7e9eceed73dc52ce894153098815ddcd94` | ⚠️ Unaudited |
| TermPythAdapterPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154620 | `0x492926c8aaaea044e74ed0e22130b3aa8ea4766f` | ⚠️ Unaudited |
| TermRepoCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154728 | `0x00e63e7d7546c828e7a40f64372ab6e07f8fe68f` | ⚠️ Unaudited |
| TermRepoDeployerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154614 | `0x44058c32b154a516f3b9de2413e6cb938f93c3b4` | ⚠️ Unaudited |
| TermRepoLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154761 | `0x0128c434777eeeea977ebedc01eb1a973c4f9a0c` | ⚠️ Unaudited |
| TermRepoRolloverManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154798 | `0x0087a9b976cd58942c2458403f196e2cdb1bbcef` | ⚠️ Unaudited |
| TermRepoServicer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154710 | `0x002e61fdbc4dd796b3075ade67d972c154bae6f5` | ⚠️ Unaudited |
| TermRepoTokenIntentFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154683 | `0xa9a293bf7f742a7aa732cd67c88c49edbe9a64d2` | ⚠️ Unaudited |
| TermREthPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154644 | `0x67c88a85cfddabb8229cb8853cf40a2c5d9b9f8c` | ⚠️ Unaudited |
| TermRouterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154671 | `0x9d2b6a3d172e5e098dd5bf6ba89062149bdbd181` | ⚠️ Unaudited |
| TermSettlementWithHooksFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154708 | `0xfdd50c0c1a378b7af530fe912d4b154dc8980929` | ⚠️ Unaudited |
| TermStrategyAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154674 | `0xa108d143d1f76a1c6a6997c3466aee00ad49504d` | ⚠️ Unaudited |
| TermStrategyFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154670 | `0x9c8f6c949c2c21bdfa3f7529812cfd44659ca853` | ⚠️ Unaudited |
| TermTEthPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154612 | `0x4358e2d3c9658b50b0c3c353c9cbc6898de5bd72` | ⚠️ Unaudited |
| TermVaultEventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154747 | `0x05d16fc7fdaba09ab5750302b0e41c5b161b1561` | ⚠️ Unaudited |
| TermVaultsKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154572 | `0x0e58bd3c701a2bf48c4e184318e0b5f9591be5cf` | ⚠️ Unaudited |
| TermWeETHPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154662 | `0x8cedd5c01bdadcfb50fc3989337ba02b496e97f6` | ⚠️ Unaudited |
| TermWstEthPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154677 | `0xa64a0a25de00c7ced3ccaa1f7ec51c3c8e3e899d` | ⚠️ Unaudited |
| TermWstEthPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154604 | `0x386e4f87c4bb60803b323210a65952c4093c1f6b` | ⚠️ Unaudited |
| TermYSWEthPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154573 | `0x0ef80293c8120b61ea49b0f9fb0ca435a05bbb0e` | ⚠️ Unaudited |
| tETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154652 | `0x72cca9794018c10ce47af3fc8d47e167d0761e96` | ⚠️ Unaudited |
| TEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154611 | `0x42e82b2ee52cdc922cfed82bfcef90ada31215b5` | ⚠️ Unaudited |
| TEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154615 | `0x46eab5259e1a2f18cbbfeeaa093130a456d09e78` | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154693 | `0xc32652ab236f32482f5018b027c8b54c13750ebf` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154767 | `0x1b1177276cd9b630ec53c912eb6a8cf5a29ae6eb` | ⚠️ Unaudited |
| TransferFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154650 | `0x7045f0945691de1e4f22e9841b77c06020ba3d13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154801 | `0x007115416ab6c266329a03b09a8aa39ac2ef7d9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154721 | `0x030b69280892c888670edcdcd8b69fd8026a0bf3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154785 | `0x0312a9d1ff2372ddedcbb21e4b6389afc919ac4b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154762 | `0x03fda274c303b128eba9e00bf555a3f4f4f26ec3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154795 | `0x056339c044055819e8db84e71f5f2e1f536b2e5b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154755 | `0x0a2a51f2f206447de3e3a80fcf92240244722395` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154711 | `0x0aecdf39d9d02833a055bf1eca518a83f66f4802` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154766 | `0x0d89c1c4799353f3805a3e6c4e1cbbb83217d123` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154742 | `0x0f50b401509798f1919a4e8d38192f78734e49c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154734 | `0x10cc8dbca90db7606013d8cd2e77eb024df693bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154730 | `0x12570b84b633629b1db532fd3420f34a30acfc68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154735 | `0x141f0e9ed8ba2295254c9df9476cce7bc29172b1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154739 | `0x15a4c3e5a3e955a81a570e617d83680f57ee3862` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154722 | `0x15f724b35a75f0c28f352b952ea9d1b24e348c57` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154713 | `0x1615cbc603192ae8a9ff20e98dd0e40a405d76e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154717 | `0x164645fbc7220a3b4f8f5c6b473bcf1b6db146dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154738 | `0x16d4f955b0aa1b1570fe3e9bb2f8c19c407cdb67` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154771 | `0x18f7f9f20c495a7f4868ba807c64a5d0a9ee8648` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154720 | `0x19ab19e61a930bc5c7b75bf06cdd954218ca9f0b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154783 | `0x1a57aba59d50b192f8440e205e3b8b885be128cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154773 | `0x1ce3e159f37c36fd1ff9c3b5af8725ef890955dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154804 | `0x1fe17936c1cdc73c857263997716e3a60b9291c7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154812 | `0x20226607b4fa64228abf3072ce561d6257683464` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154725 | `0x20c5486ddc82272856730cc6ae2c9485ee1c5bee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154782 | `0x21f3bcfa912f674c2af3bed5bf8e47a3f40ea749` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154715 | `0x238a700ed6165261cf8b2e544ba797bc11e466ba` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154814 | `0x27c0d44b02e1b732f37ba31c466a35053a7780b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154780 | `0x27e6f273941c5536154c1a6c20c97db7dc1b0ea7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154808 | `0x2a8c22e3b10036f3aef5875d04f8441d4188b656` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154757 | `0x2ce15146958bf305dadebbbf31f2d5a4f2574b43` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154714 | `0x2db1ec186acdeaf7d0fc78bffe335560b0fe0085` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154733 | `0x2ddc913e4c7674a7e42c55db48a92c47158e91c6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154752 | `0x2f98a13635f6cec0cc45bc1e43969c71d68091d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154732 | `0x307267989a7bec3a57fd7fd96017c49803589fd0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154784 | `0x30acceedff97a3fe11ab52ee7425af4589338c06` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154716 | `0x30d9d1e76869516aea980390494aaed45c3efc1a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154749 | `0x319a05e260acc2490768a726ccfd341d4b3d5106` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154776 | `0x34031e751da2ab19009d8f7eb268face2bdfd0dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154723 | `0x37769af173ea65dfc2880179940d5566817af6ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154726 | `0x39592bdbf6f3b96dd4547063945ab9ece769ae4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154731 | `0x39f0507060c12bb88cb68a496544011d2f341455` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154736 | `0x3de2e700d220928ff5180691004824d8ad42f5d4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154796 | `0x41438435c20b1c2f1fca702d387889f346a0c3de` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154799 | `0x41c60765fa36109b19b21719f4593f19ddefa663` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154760 | `0x43881b05c3be68b2d33eb70addf9f666c5005f68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154724 | `0x48e284d0729eb1925066307072758d95dbbb49c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154741 | `0x4bcfda0a844b49da8bb19562ee52cc385395001a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154817 | `0x513bd45be7643fe6c30c41cd4b327e8e341aaf9a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154740 | `0x5356b8e06589de894d86b24f4079c629e8565234` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154729 | `0x5455222ccdd32f85c1998f57dc6cf613b4498c2a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154744 | `0x548857309befb6fb6f20a9c5a56c9023d892785b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154765 | `0x5572eb7f4fb679ff6a99203f12b0484dc1062d78` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154811 | `0x56814399caaedcee4f58d2e55da058a81dde744f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154772 | `0x5696b69be96e936e8e489070eb3d4f0e1fe966af` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154763 | `0x57b3be350c777892611cedc93bcf8c099a9ecdab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154813 | `0x5a096ac89eaef68930352a15da49e4eb8590bf1d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154807 | `0x5a42864b14c0c8241ef5ab62dae975b163a2e0c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154769 | `0x5ad2e3d65f8ecdc36eeba38bae3cc6ff258d2dfa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154748 | `0x5aea6d35ed7b3b7ae78694b7da2ee880756af5c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154800 | `0x5e154946561aea4e750aac6dead23d37e00e47f6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154718 | `0x5f09aff8b9b1f488b7d1bbad4d89648579e55d61` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154737 | `0x605a84861ee603e385b01b9048bea6a86118db0a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154818 | `0x649f8698068ad143a7e18ba9cb0be112d5986aeb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154746 | `0x65c4e04cc26aadd1ec95c54cd6dba61a270f15ca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154789 | `0x65df7299a9010e399a38d6b7159d25239cdf039b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154759 | `0x6d62d3c3c8f9912890788b50299bf4d2c64823b6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154745 | `0x6f51d8af5be2cf3517b8d6cd07361be382e83be6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154754 | `0x711077ddc66b18e6dcb0a5cb3743f3938a03ce75` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154751 | `0x76cc16608aa7cd32631bb151801bb095313f7bbd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154786 | `0x7833397da276d6b588e76466c14c82b2d733cfb6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154750 | `0x7a4c56b1baaad0ff5d248892e137d415da41b3b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154781 | `0x7cf9dec92ca9fd46f8d86e7798b72624bc116c05` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154778 | `0x7d5b8ab9c948fb11433e0eddadd718dc5cb040bb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154775 | `0x7e8c632ab231479886af1bc02b9d646e4634da93` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154756 | `0x81c097e86842051b1ed4299a9e4d213cb07f6f42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154805 | `0x841eeb3e2489b2282b0e14202dc8bd8f7624e29a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154770 | `0x8493f1f2b834c2837c87075b0edac17f5273789a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154788 | `0x87c9053c819bb28e0d73d33059e1b3da80afb0cf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154764 | `0x88956c00a5fa046c823eaed747f21a95d2264403` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154743 | `0x8d51dbc85ceef637c97d02bdaabb5e274850e68c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154758 | `0x8f382ae7bbdbecda835d26ce3ba64010eaee1386` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154790 | `0x92004dcc5359ed67f287f32d12715a37916decde` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154774 | `0x9a5cf6c0a1cee5226e31e3d0a81f2ca2462d8387` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154806 | `0x9aebf5d6f9411bac355021ddfbe9b2c756bdd358` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154815 | `0x9c3743582e8b2d7ccb5e08caf3c9c33780ac446f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154768 | `0x9f49b0980b141b539e2a94ec0864faf699ff9524` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154777 | `0x9f7dd5462c183b6577858e16a13a4d864ce2f972` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154792 | `0x9fb442d6b612a6dcd2acc67bb53771ef1d9f661a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154793 | `0xa01227a26a7710bc75071286539e47adb6dea417` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154794 | `0xa19f6e0df08a7917f2f8a33db66d0af31ff5eca6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154809 | `0xa48cfd53263ade6abdb0ac75287cc0d5a2eee17f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154779 | `0xafcc1c556ee0436c10a3054b3d615abb93a352b5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154816 | `0xb5d6483c556bc6810b55b983315016fcb374186d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154810 | `0xbdc0304210972be75fd2247838bff2b64474f15c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154803 | `0xbf2a93b420225558a76fc9888c687c14977e6e7c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154791 | `0xc344db27feba7f0a881a50f0f702a525a44f2368` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154787 | `0xc8495eaff71d3a563b906295fcf2f685b1783085` | ⚠️ Unaudited |
| TUsdeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154649 | `0x6f0c371f808996187729ed1bee13ace2e901d526` | ⚠️ Unaudited |
| TUsdeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154627 | `0x507f409ba7e5ef489d5c0e3c4568b24985a029d0` | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154582 | `0x1ac3e68ea5e9dbc592246e2d0d57913aff77a603` | ⚠️ Unaudited |
| VaultGovDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154702 | `0xd4ede46096399a4d6db4fecf5f9a6d303ee68099` | ⚠️ Unaudited |
| WETHWrappingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154606 | `0x3976169338e1d4c397ed4732c40c68c89e1ab32e` | ⚠️ Unaudited |
| WrappedEEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154565 | `0x0c3f5fafb87318c0deaebff096aba019501fcb69` | ⚠️ Unaudited |
| WstEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154679 | `0xa74f994672f232a30067da820f0e54881edbb9d7` | ⚠️ Unaudited |
| ZeroGBtcvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154574 | `0x0f211552e0d7acb267a9eb98b80ee00f47cb9e9a` | ⚠️ Unaudited |
| ZeroGEthvDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154685 | `0xac79fed395c2238c4fa13084ee440e19e4deb0fe` | ⚠️ Unaudited |
| ZeroGEthvDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154553 | `0x01feb0bba21552385de157174f32d97bc0e6afcc` | ⚠️ Unaudited |
| ZeroGEthvRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154601 | `0x364fb05060e7562b0c6379b5bd3371c412e049aa` | ⚠️ Unaudited |
| zeroGUSDV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154653 | `0x733acea2a9193a249fdb58ede4ea3c8ddc5fa347` | ⚠️ Unaudited |
| ZeroGUsdvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154663 | `0x8cf94465f8db8a273673dfe950bd1c9e34442aab` | ⚠️ Unaudited |
| ZeroGUsdvDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154562 | `0x091074f37e8c72ddb8720afae77c44a855080e8a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://3939430316-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpkuCQdIPo5l6ElM4z077%2Fuploads%2Fop7oRI0mOlG9Yf9yht2x%2FMoreMarkets%20Collaborative%20Audit%20Report%20May%2011_2025.pdf) | Collaborative | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Rendered PDF capture](https://3939430316-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpkuCQdIPo5l6ElM4z077%2Fuploads%2FP6VwD0pisQXhVgoCIFrL%2FSigma_Prime_MoreMarkets_Security_Assessment_Report_v2_0_final.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Nuffle_Labs_Nuffle_Contracts_Smart_Contract_Security_Assessment.pdf](https://3939430316-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpkuCQdIPo5l6ElM4z077%2Fuploads%2FbeoAHR4BdxCOPNViqMZe%2FNuffle_Labs_Nuffle_Contracts_Smart_Contract_Security_Assessment.pdf) | Nuffle Labs | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17648] Rendered PDF capture — no match: Extracted contract names from the scope section listing files under 'Files:'. The audit date is derived from 'Date Audited: March 31 - April 21, 2025' using the end date.
- [17649] Rendered PDF capture — no match: Extracted 13 contract/module names from the scope section. Audit date is July 2025, mapped to last day of month.
- [17650] Nuffle_Labs_Nuffle_Contracts_Smart_Contract_Security_Assessment.pdf — no match: Scope section lists 5 files. Audit date is end of engagement period (February 10, 2025).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rendered PDF capture | boring-vault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | bork | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | gateway | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | manager | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | near_xrp | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | primitives | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | solver | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | MpcForwarder | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | MpcRecipient | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | AtomicQueue | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | BoringQueue | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ChainSigTeller | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | CrossChainTellerWithGenericBridge | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PythRateProvider | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | withdrawal | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | txbundler | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | verifier | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | metatx | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | session | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | teller | unmatched — not counted | — | listed in scope | no |
| Nuffle_Labs_Nuffle_Contracts_Smart_Contract_Security_Assessment.pdf | OptimismTeller | unmatched — not counted | — | listed in scope | no |
| Nuffle_Labs_Nuffle_Contracts_Smart_Contract_Security_Assessment.pdf | ReceiptTeller | unmatched — not counted | — | listed in scope | no |
| Nuffle_Labs_Nuffle_Contracts_Smart_Contract_Security_Assessment.pdf | WormholeTeller | unmatched — not counted | — | listed in scope | no |
| Nuffle_Labs_Nuffle_Contracts_Smart_Contract_Security_Assessment.pdf | 1_Deploy | unmatched — not counted | — | listed in scope | no |
| Nuffle_Labs_Nuffle_Contracts_Smart_Contract_Security_Assessment.pdf | BorningVault | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 169 |
| upstream | 0 |
| standard_library | 101 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 25 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [17648] Rendered PDF capture
- [17649] Rendered PDF capture
- [17650] Nuffle_Labs_Nuffle_Contracts_Smart_Contract_Security_Assessment.pdf

Fork inheritance lineage and inherited audits are included when available.
