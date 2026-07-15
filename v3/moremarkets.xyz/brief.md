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
| AcreAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154648 | `0x6a6092...587ae0` | ⚠️ Unaudited |
| acreBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154656 | `0x7c0391...69d9d5` | ⚠️ Unaudited |
| AcreBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154661 | `0x8b0fdf...fe701e` | ⚠️ Unaudited |
| AcreBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154622 | `0x4c727b...4bb837` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154613 | `0x438630...95dc99` | ⚠️ Unaudited |
| DataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154552 | `0x01b16e...18f003` | ⚠️ Unaudited |
| DepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154570 | `0x0e0eb6...d80847` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154704 | `0xd7f2f4...f70e92` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154712 | `0x002533...227550` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154727 | `0x038729...a93b5f` | ⚠️ Unaudited |
| ERC4626InterfaceFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154692 | `0xc0081e...1e477b` | ⚠️ Unaudited |
| eUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154610 | `0x4089dc...0cbe27` | ⚠️ Unaudited |
| hypeBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154618 | `0x48599a...c83459` | ⚠️ Unaudited |
| HypeBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154666 | `0x910cde...4a6f4c` | ⚠️ Unaudited |
| HypeBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154605 | `0x389035...bbcac4` | ⚠️ Unaudited |
| hypeETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154579 | `0x140e71...1ff8ab` | ⚠️ Unaudited |
| HypeEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154673 | `0x9ed03d...fcd463` | ⚠️ Unaudited |
| HypeEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154576 | `0x109e2a...f6867c` | ⚠️ Unaudited |
| HypeUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154664 | `0x8d874a...7f3a9e` | ⚠️ Unaudited |
| HypeUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154599 | `0x33ed48...3c6fa9` | ⚠️ Unaudited |
| InstaFlashAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154556 | `0x02d726...eefa1a` | ⚠️ Unaudited |
| InstaFlashAggregatorProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154709 | `0xff24bf...cbfb14` | ⚠️ Unaudited |
| InstaFlashResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154675 | `0xa41771...701924` | ⚠️ Unaudited |
| JIV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154598 | `0x334b32...3e3d42` | ⚠️ Unaudited |
| JivCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154631 | `0x540f33...5d57ff` | ⚠️ Unaudited |
| MApolloCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154635 | `0x562bb5...420c55` | ⚠️ Unaudited |
| MApolloDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154623 | `0x4d371c...e4999c` | ⚠️ Unaudited |
| MBasisCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154633 | `0x54d478...d439d0` | ⚠️ Unaudited |
| MBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154655 | `0x7b904f...fd49c7` | ⚠️ Unaudited |
| MBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154640 | `0x5f5b02...e887c9` | ⚠️ Unaudited |
| mEDGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154607 | `0x39c189...74fb87` | ⚠️ Unaudited |
| MEdgeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154557 | `0x039150...c0ea2f` | ⚠️ Unaudited |
| MEdgeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154559 | `0x057a3a...56a7d1` | ⚠️ Unaudited |
| MEdgeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154696 | `0xc904de...a73cc6` | ⚠️ Unaudited |
| MEdgeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154641 | `0x6142ad...cc3ad5` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154580 | `0x15b478...917567` | ⚠️ Unaudited |
| mevBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154654 | `0x781367...e629a4` | ⚠️ Unaudited |
| MevBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154667 | `0x931403...0a5b43` | ⚠️ Unaudited |
| MevBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154600 | `0x3549f6...f44b3c` | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154588 | `0x265041...d6ab3c` | ⚠️ Unaudited |
| MEvUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154560 | `0x06e727...75cf26` | ⚠️ Unaudited |
| MFarmDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154597 | `0x313c76...b78164` | ⚠️ Unaudited |
| MFarmRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154688 | `0xb73d1e...411e89` | ⚠️ Unaudited |
| MFOneDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154564 | `0x0c3291...59fbfd` | ⚠️ Unaudited |
| MFOneRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154569 | `0x0d98b6...ff6c47` | ⚠️ Unaudited |
| mHYPER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154577 | `0x10e235...1080fb` | ⚠️ Unaudited |
| MHyperBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154566 | `0x0c7a74...d085de` | ⚠️ Unaudited |
| MHyperBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154625 | `0x4f6e58...959393` | ⚠️ Unaudited |
| MHyperBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154690 | `0xbccac5...895a52` | ⚠️ Unaudited |
| MHyperDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154676 | `0xa62249...130e5e` | ⚠️ Unaudited |
| MHyperEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154592 | `0x2c6808...2e9850` | ⚠️ Unaudited |
| MHyperEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154595 | `0x2f4e7d...c74834` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154636 | `0x570c15...505e47` | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154634 | `0x55b40c...2349c6` | ⚠️ Unaudited |
| MidasTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154706 | `0xe3eee3...241852` | ⚠️ Unaudited |
| MLiquidityCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154621 | `0x4b805d...f5a522` | ⚠️ Unaudited |
| MLiquidityDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154645 | `0x67e14d...aaefac` | ⚠️ Unaudited |
| MLiquidityRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154639 | `0x5e5aab...634c9e` | ⚠️ Unaudited |
| MMevDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154626 | `0x4ff00e...080d81` | ⚠️ Unaudited |
| MMevDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154684 | `0xac5c4d...50e5e5` | ⚠️ Unaudited |
| MMevRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154617 | `0x482d1e...0d00cb` | ⚠️ Unaudited |
| mPortofino | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154642 | `0x636cdf...d060b9` | ⚠️ Unaudited |
| MPortofinoRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154682 | `0xa9111d...0b0c31` | ⚠️ Unaudited |
| MRe7BtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154563 | `0x091f97...af383b` | ⚠️ Unaudited |
| MRe7BtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154585 | `0x1d9953...875615` | ⚠️ Unaudited |
| MRe7DepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154630 | `0x53c764...ed62d8` | ⚠️ Unaudited |
| MSlDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154629 | `0x521f61...6ccb2f` | ⚠️ Unaudited |
| MSlRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154567 | `0x0d1c52...1762fc` | ⚠️ Unaudited |
| MSyrupUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154596 | `0x307be9...057a8b` | ⚠️ Unaudited |
| msyrupUSDp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154587 | `0x2530e3...567ea5` | ⚠️ Unaudited |
| MSyrupUsdpCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154586 | `0x1e2165...7a3fc4` | ⚠️ Unaudited |
| MSyrupUsdpRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154628 | `0x5113bf...e1cc91` | ⚠️ Unaudited |
| MSyrupUsdtCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154672 | `0x9e9dbc...e4d70c` | ⚠️ Unaudited |
| MSyrupUsdtDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154638 | `0x5ca035...cd94bc` | ⚠️ Unaudited |
| MSyrupUsdtRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154578 | `0x1314fb...1d2084` | ⚠️ Unaudited |
| mTBILL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154680 | `0xa7ab67...25897c` | ⚠️ Unaudited |
| MTBillDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154593 | `0x2e0357...490ada` | ⚠️ Unaudited |
| Multicall3 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-154651 | `0x7165c2...cd83d7` | ⚠️ Unaudited |
| MulticallFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154609 | `0x3d2e2d...519390` | ⚠️ Unaudited |
| MultiSign | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154575 | `0x1073d5...6ede78` | ⚠️ Unaudited |
| MWildUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154581 | `0x19623f...77851e` | ⚠️ Unaudited |
| MWildUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154665 | `0x8d8f82...b2ccd0` | ⚠️ Unaudited |
| MWildUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154678 | `0xa70009...e07b41` | ⚠️ Unaudited |
| ObeatUsdLzElevatedMinterBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154561 | `0x07cf28...1ff579` | ⚠️ Unaudited |
| Permit2Facet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154555 | `0x02d05d...6a6347` | ⚠️ Unaudited |
| PermitFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154643 | `0x6626a6...4c7828` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-154691 | `0xbf25b5...600aac` | ⚠️ Unaudited |
| RedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154594 | `0x2f1372...14975f` | ⚠️ Unaudited |
| RedemptionVaultWIthBUIDL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154705 | `0xe123eb...ccc7e9` | ⚠️ Unaudited |
| RedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154589 | `0x283cbe...e32f39` | ⚠️ Unaudited |
| RedemptionVaultWithUSTB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154619 | `0x489a79...40d701` | ⚠️ Unaudited |
| Roles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154707 | `0xf3bd57...4db1f5` | ⚠️ Unaudited |
| RsEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154703 | `0xd52ba0...baab2a` | ⚠️ Unaudited |
| StablecoinProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154753 | `0x8292bb...6317ed` | ⚠️ Unaudited |
| StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154700 | `0xcfd748...f7f2ec` | ⚠️ Unaudited |
| StakedUSDeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154699 | `0xce2326...bd0cea` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154668 | `0x980fe5...36623e` | ⚠️ Unaudited |
| StrategyGovDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154550 | `0x007f78...736027` | ⚠️ Unaudited |
| SwapRouterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154698 | `0xcd1638...c3c406` | ⚠️ Unaudited |
| SyrupAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154686 | `0xad298d...ac8493` | ⚠️ Unaudited |
| SyrupUSDCAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154681 | `0xa869cb...198b67` | ⚠️ Unaudited |
| TACmBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154637 | `0x570f37...5bbc08` | ⚠️ Unaudited |
| TACmBtcRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154646 | `0x6808e4...9ccdf4` | ⚠️ Unaudited |
| TACmEDGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154657 | `0x7c5b87...7aa26c` | ⚠️ Unaudited |
| TACmEdgeRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154603 | `0x375af4...ae36d8` | ⚠️ Unaudited |
| TACmMEV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154584 | `0x1d3147...910202` | ⚠️ Unaudited |
| tBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154624 | `0x4eed11...fde211` | ⚠️ Unaudited |
| Term4626CombinationBaseFrequencyPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154669 | `0x98aa47...b611f1` | ⚠️ Unaudited |
| Term4626TokenPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154549 | `0x00359e...e4ceb7` | ⚠️ Unaudited |
| TermAdapterPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154558 | `0x04e48a...de89c6` | ⚠️ Unaudited |
| TermAggregatorFlashDefaultLiquidatorSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154689 | `0xba26f5...ec5c8f` | ⚠️ Unaudited |
| TermAggregatorFlashShortfallLiquidatorSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154568 | `0x0d1cf0...df11ae` | ⚠️ Unaudited |
| TermAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154797 | `0x005f40...ed1099` | ⚠️ Unaudited |
| TermAuctionBidLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154802 | `0x00384f...bbd032` | ⚠️ Unaudited |
| TermCbETHPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154602 | `0x372dfe...756956` | ⚠️ Unaudited |
| TermCombinationBaseFrequencyPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154659 | `0x836b2a...87a868` | ⚠️ Unaudited |
| TermController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154590 | `0x2879c9...f9da1b` | ⚠️ Unaudited |
| TermControllerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154647 | `0x691332...aac05c` | ⚠️ Unaudited |
| TermDiamondFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154554 | `0x0279e1...84fbbf` | ⚠️ Unaudited |
| TermEthPlusPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154701 | `0xd38ed9...2507a2` | ⚠️ Unaudited |
| TermEventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154583 | `0x1c41cc...28cc4a` | ⚠️ Unaudited |
| TermFlashDefaultSuperformEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154616 | `0x474833...7217b5` | ⚠️ Unaudited |
| TermFlashLoanCentralReceiverFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154591 | `0x2c5d7c...01836a` | ⚠️ Unaudited |
| TermFlashLoanExecutorFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154608 | `0x3c19d1...acef4b` | ⚠️ Unaudited |
| TermFlashShortfallLiquidatorSuperformEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154571 | `0x0e25ce...ccdc45` | ⚠️ Unaudited |
| TermHEthPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154551 | `0x016572...fa4dab` | ⚠️ Unaudited |
| TermInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154695 | `0xc6d96f...fc2cd6` | ⚠️ Unaudited |
| TermLoanIntentFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154687 | `0xb435e2...b141f1` | ⚠️ Unaudited |
| TermLoanIntentHookFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154658 | `0x808eb7...3e4325` | ⚠️ Unaudited |
| TermPriceConsumerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154719 | `0x13ca4d...7bba4c` | ⚠️ Unaudited |
| TermPTcUSDDefaulter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154632 | `0x54b271...519f2f` | ⚠️ Unaudited |
| TermPTcUSDLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154660 | `0x8606b1...044241` | ⚠️ Unaudited |
| TermPTSuperUSDCPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154694 | `0xc336b5...7e48a0` | ⚠️ Unaudited |
| TermPTsUSDePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154697 | `0xca4f7f...ddcd94` | ⚠️ Unaudited |
| TermPythAdapterPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154620 | `0x492926...a4766f` | ⚠️ Unaudited |
| TermRepoCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154728 | `0x00e63e...8fe68f` | ⚠️ Unaudited |
| TermRepoDeployerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154614 | `0x44058c...93c3b4` | ⚠️ Unaudited |
| TermRepoLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154761 | `0x0128c4...4f9a0c` | ⚠️ Unaudited |
| TermRepoRolloverManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154798 | `0x0087a9...1bbcef` | ⚠️ Unaudited |
| TermRepoServicer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154710 | `0x002e61...bae6f5` | ⚠️ Unaudited |
| TermRepoTokenIntentFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154683 | `0xa9a293...9a64d2` | ⚠️ Unaudited |
| TermREthPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154644 | `0x67c88a...9b9f8c` | ⚠️ Unaudited |
| TermRouterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154671 | `0x9d2b6a...dbd181` | ⚠️ Unaudited |
| TermSettlementWithHooksFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154708 | `0xfdd50c...980929` | ⚠️ Unaudited |
| TermStrategyAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154674 | `0xa108d1...49504d` | ⚠️ Unaudited |
| TermStrategyFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154670 | `0x9c8f6c...9ca853` | ⚠️ Unaudited |
| TermTEthPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154612 | `0x4358e2...e5bd72` | ⚠️ Unaudited |
| TermVaultEventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154747 | `0x05d16f...1b1561` | ⚠️ Unaudited |
| TermVaultsKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154572 | `0x0e58bd...1be5cf` | ⚠️ Unaudited |
| TermWeETHPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154662 | `0x8cedd5...6e97f6` | ⚠️ Unaudited |
| TermWstEthPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154677 | `0xa64a0a...3e899d` | ⚠️ Unaudited |
| TermWstEthPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154604 | `0x386e4f...3c1f6b` | ⚠️ Unaudited |
| TermYSWEthPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154573 | `0x0ef802...5bbb0e` | ⚠️ Unaudited |
| tETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154652 | `0x72cca9...761e96` | ⚠️ Unaudited |
| TEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154611 | `0x42e82b...1215b5` | ⚠️ Unaudited |
| TEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154615 | `0x46eab5...d09e78` | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154693 | `0xc32652...750ebf` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-154767 | `0x1b1177...9ae6eb` | ⚠️ Unaudited |
| TransferFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154650 | `0x7045f0...ba3d13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154801 | `0x007115...ef7d9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154721 | `0x030b69...6a0bf3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154785 | `0x0312a9...19ac4b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154762 | `0x03fda2...f26ec3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154795 | `0x056339...6b2e5b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154755 | `0x0a2a51...722395` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154711 | `0x0aecdf...6f4802` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154766 | `0x0d89c1...17d123` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154742 | `0x0f50b4...4e49c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154734 | `0x10cc8d...f693bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154730 | `0x12570b...acfc68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154735 | `0x141f0e...9172b1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154739 | `0x15a4c3...ee3862` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154722 | `0x15f724...348c57` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154713 | `0x1615cb...5d76e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154717 | `0x164645...b146dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154738 | `0x16d4f9...7cdb67` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154771 | `0x18f7f9...ee8648` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154720 | `0x19ab19...ca9f0b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154783 | `0x1a57ab...e128cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154773 | `0x1ce3e1...0955dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154804 | `0x1fe179...9291c7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154812 | `0x202266...683464` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154725 | `0x20c548...1c5bee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154782 | `0x21f3bc...0ea749` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154715 | `0x238a70...e466ba` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154814 | `0x27c0d4...7780b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154780 | `0x27e6f2...1b0ea7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154808 | `0x2a8c22...88b656` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154757 | `0x2ce151...574b43` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154714 | `0x2db1ec...fe0085` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154733 | `0x2ddc91...8e91c6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154752 | `0x2f98a1...8091d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154732 | `0x307267...589fd0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154784 | `0x30acce...338c06` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154716 | `0x30d9d1...3efc1a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154749 | `0x319a05...3d5106` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154776 | `0x34031e...dfd0dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154723 | `0x37769a...7af6ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154726 | `0x39592b...69ae4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154731 | `0x39f050...341455` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154736 | `0x3de2e7...42f5d4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154796 | `0x414384...a0c3de` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154799 | `0x41c607...efa663` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154760 | `0x43881b...005f68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154724 | `0x48e284...bb49c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154741 | `0x4bcfda...95001a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154817 | `0x513bd4...1aaf9a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154740 | `0x5356b8...565234` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154729 | `0x545522...498c2a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154744 | `0x548857...92785b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154765 | `0x5572eb...062d78` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154811 | `0x568143...de744f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154772 | `0x5696b6...e966af` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154763 | `0x57b3be...9ecdab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154813 | `0x5a096a...90bf1d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154807 | `0x5a4286...a2e0c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154769 | `0x5ad2e3...8d2dfa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154748 | `0x5aea6d...6af5c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154800 | `0x5e1549...0e47f6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154718 | `0x5f09af...e55d61` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154737 | `0x605a84...18db0a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154818 | `0x649f86...986aeb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154746 | `0x65c4e0...0f15ca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154789 | `0x65df72...df039b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154759 | `0x6d62d3...4823b6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154745 | `0x6f51d8...e83be6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154754 | `0x711077...03ce75` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154751 | `0x76cc16...3f7bbd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154786 | `0x783339...33cfb6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154750 | `0x7a4c56...41b3b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154781 | `0x7cf9de...116c05` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154778 | `0x7d5b8a...b040bb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154775 | `0x7e8c63...34da93` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154756 | `0x81c097...7f6f42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154805 | `0x841eeb...24e29a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154770 | `0x8493f1...73789a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154788 | `0x87c905...afb0cf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154764 | `0x88956c...264403` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154743 | `0x8d51db...50e68c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154758 | `0x8f382a...ee1386` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154790 | `0x92004d...6decde` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154774 | `0x9a5cf6...2d8387` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154806 | `0x9aebf5...bdd358` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154815 | `0x9c3743...ac446f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154768 | `0x9f49b0...ff9524` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154777 | `0x9f7dd5...e2f972` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154792 | `0x9fb442...9f661a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154793 | `0xa01227...dea417` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154794 | `0xa19f6e...f5eca6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154809 | `0xa48cfd...eee17f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154779 | `0xafcc1c...a352b5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154816 | `0xb5d648...74186d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154810 | `0xbdc030...74f15c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154803 | `0xbf2a93...7e6e7c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154791 | `0xc344db...4f2368` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154787 | `0xc8495e...783085` | ⚠️ Unaudited |
| TUsdeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154649 | `0x6f0c37...01d526` | ⚠️ Unaudited |
| TUsdeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154627 | `0x507f40...a029d0` | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154582 | `0x1ac3e6...77a603` | ⚠️ Unaudited |
| VaultGovDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154702 | `0xd4ede4...e68099` | ⚠️ Unaudited |
| WETHWrappingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154606 | `0x397616...1ab32e` | ⚠️ Unaudited |
| WrappedEEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154565 | `0x0c3f5f...1fcb69` | ⚠️ Unaudited |
| WstEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154679 | `0xa74f99...dbb9d7` | ⚠️ Unaudited |
| ZeroGBtcvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154574 | `0x0f2115...cb9e9a` | ⚠️ Unaudited |
| ZeroGEthvDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154685 | `0xac79fe...deb0fe` | ⚠️ Unaudited |
| ZeroGEthvDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154553 | `0x01feb0...e6afcc` | ⚠️ Unaudited |
| ZeroGEthvRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154601 | `0x364fb0...e049aa` | ⚠️ Unaudited |
| zeroGUSDV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154653 | `0x733ace...5fa347` | ⚠️ Unaudited |
| ZeroGUsdvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154663 | `0x8cf944...442aab` | ⚠️ Unaudited |
| ZeroGUsdvDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154562 | `0x091074...080e8a` | ⚠️ Unaudited |

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
