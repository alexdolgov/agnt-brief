# Agentic Audit Brief: Securitize

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Securitize (`securitize`)
- Website: [https://securitize.io/](https://securitize.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, bsc, ethereum, ink, mantle, optimism, polygon, sei, sepolia, zksync-era
- Contract surface: 115 unique implementations (115 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $4,412,440,980.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Securitize in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 114 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 59
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/114
- Verified + Unaudited implementations: 114
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 115
- Raw deployments: 115
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (114)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AllowanceAssetProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164693 | `0xb743c5...1e6b39` | ⚠️ Unaudited |
| AllowanceLiquidityProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164656 | `0x0aa5dc...6f0ec3` | ⚠️ Unaudited |
| AllowanceLiquiditySource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164690 | `0x9a6282...69c493` | ⚠️ Unaudited |
| BulkBalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-164697 | `0x062f24...215f0e` | ⚠️ Unaudited |
| ComplianceServiceLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164667 | `0x2a49ee...ed528c` | ⚠️ Unaudited |
| ComplianceServiceRegulated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | unit-164753 | `0x02a612...c18edd` | ⚠️ Unaudited |
| Disperse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164681 | `0x63866e...0bd31b` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-164756 | `0x01c739...9d8230` | ⚠️ Unaudited |
| DSTokenClassSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164712 | `0x1e5d83...e37021` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164739 | `0x021840...b0c6aa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164715 | `0x04fb23...ff8e66` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164729 | `0x065674...8511a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164704 | `0x06ac06...a780a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164709 | `0x1ea550...68ad4f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-164761 | `0x043f7f...f794f7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | unit-164755 | `0x4759b2...d8227a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | unit-164754 | `0x005c4c...542548` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | unit-164759 | `0x002194...5af159` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-164758 | `0x00024a...84700f` | ⚠️ Unaudited |
| EthereumMergedAdapterWithRoundsEurspkccNavV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164724 | `0x4b2c40...7a942b` | ⚠️ Unaudited |
| EthereumMergedAdapterWithRoundsSpkccNavV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164662 | `0x14449c...cb97f9` | ⚠️ Unaudited |
| EthereumMultiFeedAdapterWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164675 | `0x46a2b8...286021` | ⚠️ Unaudited |
| EthereumPriceFeedAcredFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164744 | `0xd6bcbb...65d51c` | ⚠️ Unaudited |
| EthereumPriceFeedAmcashplusFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164728 | `0x767b89...241db9` | ⚠️ Unaudited |
| EthereumPriceFeedAvltFundamentalusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164659 | `0x105eac...022021` | ⚠️ Unaudited |
| EthereumPriceFeedAzndFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164672 | `0x3f2c69...8818de` | ⚠️ Unaudited |
| EthereumPriceFeedBeraethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164683 | `0x6a1c87...14170d` | ⚠️ Unaudited |
| EthereumPriceFeedBeraStoneFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164706 | `0x4f67fd...410add` | ⚠️ Unaudited |
| EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164694 | `0xc9e11c...98a86e` | ⚠️ Unaudited |
| EthereumPriceFeedBtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164664 | `0x24edd6...7a9187` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164721 | `0x2d4f31...92654e` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumDailyAccrualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164719 | `0x4f4e63...baf52e` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164751 | `0xf2db7b...c17bf3` | ⚠️ Unaudited |
| EthereumPriceFeedCbbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164745 | `0xe13e2b...0ae049` | ⚠️ Unaudited |
| EthereumPriceFeedCusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164668 | `0x2d7a68...b92bcb` | ⚠️ Unaudited |
| EthereumPriceFeedDeusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164736 | `0x4c8996...8282fd` | ⚠️ Unaudited |
| EthereumPriceFeedDlfPublicationTsWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164678 | `0x51a855...039ba5` | ⚠️ Unaudited |
| EthereumPriceFeedEgethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164666 | `0x29d295...791346` | ⚠️ Unaudited |
| EthereumPriceFeedEigenWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164732 | `0x2ee5ce...8cb86d` | ⚠️ Unaudited |
| EthereumPriceFeedEthfiWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164655 | `0x09f9a1...eb577e` | ⚠️ Unaudited |
| EthereumPriceFeedEthWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164682 | `0x65ed6a...23e4db` | ⚠️ Unaudited |
| EthereumPriceFeedEthxWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164695 | `0xe7f71d...bd74f4` | ⚠️ Unaudited |
| EthereumPriceFeedFxusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164723 | `0x4bad96...ea7a57` | ⚠️ Unaudited |
| EthereumPriceFeedHlscopeFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164716 | `0x1f14a5...4398d7` | ⚠️ Unaudited |
| EthereumPriceFeedHwhlpFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164705 | `0x031380...22a05f` | ⚠️ Unaudited |
| EthereumPriceFeedMsusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164680 | `0x573bb5...6e96f8` | ⚠️ Unaudited |
| EthereumPriceFeedMsyFundamentalusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164688 | `0x89621c...9a3e9a` | ⚠️ Unaudited |
| EthereumPriceFeedMubondFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164727 | `0x636eca...e32a7b` | ⚠️ Unaudited |
| EthereumPriceFeedNgiplusFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164654 | `0x09ba94...cd5b06` | ⚠️ Unaudited |
| EthereumPriceFeedNusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164733 | `0x5e7281...c19d95` | ⚠️ Unaudited |
| EthereumPriceFeedPrimeEchelonWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164748 | `0xc328cd...7146b6` | ⚠️ Unaudited |
| EthereumPriceFeedPromptWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164735 | `0x25a23c...f5da40` | ⚠️ Unaudited |
| EthereumPriceFeedPufferWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164747 | `0x197225...04c57c` | ⚠️ Unaudited |
| EthereumPriceFeedPumpbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164691 | `0xae02d5...237979` | ⚠️ Unaudited |
| EthereumPriceFeedPumpbtcFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164734 | `0x85c4f8...bfe97d` | ⚠️ Unaudited |
| EthereumPriceFeedPyusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164740 | `0xb7699e...f1d6be` | ⚠️ Unaudited |
| EthereumPriceFeedRswethFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164692 | `0xb60224...0d2c94` | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164738 | `0x3587a7...0bc2cc` | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164713 | `0x24c896...ea42cc` | ⚠️ Unaudited |
| EthereumPriceFeedSpkWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164671 | `0x3f145f...f5a721` | ⚠️ Unaudited |
| EthereumPriceFeedStacFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164689 | `0x97e3c4...c0147a` | ⚠️ Unaudited |
| EthereumPriceFeedSthusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164749 | `0x6dd1e6...78cd52` | ⚠️ Unaudited |
| EthereumPriceFeedStrcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164650 | `0x041a85...5f33d7` | ⚠️ Unaudited |
| EthereumPriceFeedSusdxEthFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164669 | `0x3401da...c3df29` | ⚠️ Unaudited |
| EthereumPriceFeedSwellethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164685 | `0x84ad47...92f96b` | ⚠️ Unaudited |
| EthereumPriceFeedTacbtcFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164722 | `0x0a6fd5...dc77b3` | ⚠️ Unaudited |
| EthereumPriceFeedTacethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164725 | `0x9d0ab8...c18519` | ⚠️ Unaudited |
| EthereumPriceFeedTacusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164676 | `0x4cec96...a66da0` | ⚠️ Unaudited |
| EthereumPriceFeedThbillFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164743 | `0x80b073...5a2c93` | ⚠️ Unaudited |
| EthereumPriceFeedUsdcV2WithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164737 | `0x3ebfaa...76607b` | ⚠️ Unaudited |
| EthereumPriceFeedUsdtbFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164663 | `0x243507...e32ece` | ⚠️ Unaudited |
| EthereumPriceFeedUsdtV2WithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164703 | `0x02e1f8...b54ed2` | ⚠️ Unaudited |
| EthereumPriceFeedUsdxWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164653 | `0x096396...d80dc8` | ⚠️ Unaudited |
| EthereumPriceFeedUsrWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164708 | `0x107dd3...0779ee` | ⚠️ Unaudited |
| EthereumPriceFeedUsstFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164665 | `0x261997...6b7f3f` | ⚠️ Unaudited |
| EthereumPriceFeedUsualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164726 | `0x2240ae...a54840` | ⚠️ Unaudited |
| EthereumPriceFeedVbillEthereumDailyAccrualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164673 | `0x40ea33...4a63cc` | ⚠️ Unaudited |
| EthereumPriceFeedVbillEthereumFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164677 | `0x4e202a...0eaaa8` | ⚠️ Unaudited |
| EthereumPriceFeedWbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164649 | `0x019697...958de9` | ⚠️ Unaudited |
| EthereumPriceFeedWlfiWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164731 | `0x131141...bf4a7e` | ⚠️ Unaudited |
| EthereumPriceFeedWstethstethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164750 | `0xa7b024...d5da98` | ⚠️ Unaudited |
| EthereumPriceFeedWstethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164686 | `0x84c698...978f64` | ⚠️ Unaudited |
| EthereumPriceFeedXrpWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164670 | `0x3d0124...1daeb9` | ⚠️ Unaudited |
| EthereumPriceFeedXvsWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164679 | `0x56b13a...191d71` | ⚠️ Unaudited |
| GlobalRegistryService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164710 | `0x1d95f6...3e8c75` | ⚠️ Unaudited |
| InvestorLockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-164700 | `0x017699...a64237` | ⚠️ Unaudited |
| IssuerMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-164696 | `0x00b173...9d5bd9` | ⚠️ Unaudited |
| MbpsFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164707 | `0x184cb1...ec649d` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164652 | `0x063803...c63070` | ⚠️ Unaudited |
| PublicStockOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164742 | `0x226b44...c7c66f` | ⚠️ Unaudited |
| PublicStockOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164657 | `0x0d0051...373c0c` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164674 | `0x4580d3...1ee0a0` | ⚠️ Unaudited |
| RedStoneNavProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164661 | `0x12263b...169db8` | ⚠️ Unaudited |
| RegistryService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-164702 | `0x00eef8...a7e3c3` | ⚠️ Unaudited |
| SecuritizeAmmNavProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164730 | `0x1b9aaf...5d06a5` | ⚠️ Unaudited |
| SecuritizeOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164658 | `0x0db0dd...84b9a3` | ⚠️ Unaudited |
| SecuritizeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164718 | `0x4535b3...723dea` | ⚠️ Unaudited |
| Settlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164684 | `0x6c97c9...ac5fbb` | ⚠️ Unaudited |
| TerminatedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164687 | `0x87729b...51ba89` | ⚠️ Unaudited |
| TokenIssuer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-164757 | `0x000a0c...364581` | ⚠️ Unaudited |
| TokenLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-164698 | `0x1094a1...f62970` | ⚠️ Unaudited |
| TokenReallocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164648 | `0x0002fc...507cf8` | ⚠️ Unaudited |
| TransactionRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-164699 | `0x00c15a...bfd815` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164720 | `0x18c9b9...011a9f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164711 | `0x2e65b1...7aa4f6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164717 | `0x354d1e...2aae3e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164741 | `0x613769...3d6bb6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164714 | `0x6682c5...c7bf47` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | unit-164760 | `0xb81131...96c2db` | ⚠️ Unaudited |
| TrustService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | unit-164752 | `0x03f3eb...33b97c` | ⚠️ Unaudited |
| USDCBridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164746 | `0x466513...cd66ab` | ⚠️ Unaudited |
| VaultRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164660 | `0x121d63...79711d` | ⚠️ Unaudited |
| WalletManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-164701 | `0x076e0a...923543` | ⚠️ Unaudited |
| WalletRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164651 | `0x04c360...194a6f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8d7aee...4c1d43` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.halborn.com/audits/securitize/dstoken-e07b34](https://www.halborn.com/audits/securitize/dstoken-e07b34) | Halborn | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20998] www.halborn.com/audits/securitize/dstoken-e07b34 — no match: All contracts listed in the Scope section of the report were extracted. The audit date is the end date of the engagement (September 25, 2025).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.halborn.com/audits/securitize/dstoken-e07b34 | RebasingLibrary | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | SecuritizeRebasingProvider | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | RegistryService | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | WalletRegistrar | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | BaseSecuritizeSwap | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | SecuritizeSwap | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | DSToken | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | StandardToken | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | TokenLibrary | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | TrustService | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | BaseDSContract | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | BulkBalanceChecker | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | CommonUtils | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | MultiSigWallet | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | TransactionRelayer | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | ComplianceConfigurationService | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | ComplianceService | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | ComplianceServiceNotRegulated | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | ComplianceServiceRegulated | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | ComplianceServiceWhitelisted | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | InvestorLockManager | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | InvestorLockManagerBase | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | LockManager | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | WalletManager | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | BaseLockManagerDataStore | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | ComplianceConfigurationDataStore | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | ComplianceServiceDataStore | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | InvestorLockManagerDataStore | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | LockManagerDataStore | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | RegistryServiceDataStore | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | ServiceConsumerDataStore | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | TokenDataStore | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | TrustServiceDataStore | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/securitize/dstoken-e07b34 | WalletManagerDataStore | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 95 |
| upstream | 2 |
| standard_library | 17 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 34 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20998] www.halborn.com/audits/securitize/dstoken-e07b34

Fork inheritance lineage and inherited audits are included when available.
