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
| AllowanceAssetProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164693 | `0xb743c527546f6e009d1e4c87bbf2095f061e6b39` | ⚠️ Unaudited |
| AllowanceLiquidityProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164656 | `0x0aa5dc1650cebf5e8db4a6070fa10702666f0ec3` | ⚠️ Unaudited |
| AllowanceLiquiditySource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164690 | `0x9a6282998ebc1ee5a41c0ccc8fd9fdab7769c493` | ⚠️ Unaudited |
| BulkBalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-164697 | `0x062f249b055cc6ab15f051fe162624c479215f0e` | ⚠️ Unaudited |
| ComplianceServiceLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164667 | `0x2a49ee732c76837b7e7e181e9c3c43946eed528c` | ⚠️ Unaudited |
| ComplianceServiceRegulated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | unit-164753 | `0x02a61246f04273f716ba9c96f1e3283d88c18edd` | ⚠️ Unaudited |
| Disperse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164681 | `0x63866ebe37dd39565d6f9b752e0a2177f70bd31b` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-164756 | `0x01c73910eb957ff5e922affbf9a43f2a3e9d8230` | ⚠️ Unaudited |
| DSTokenClassSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164712 | `0x1e5d83ff1a6d32c53f25937664c53e9b57e37021` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164739 | `0x021840988add1cb60be98d8ba1c577e314b0c6aa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164715 | `0x04fb23ef3cb3eb559d0ba096fbfda90241ff8e66` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164729 | `0x0656748e529baac7338a2dc99297bb9f568511a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164704 | `0x06ac066b0f918ca8a1d13a420035530085a780a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164709 | `0x1ea550a49c0f6def620f734c6329c4c12a68ad4f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-164761 | `0x043f7fb0c2c665475e02d4fc1de278a57df794f7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | unit-164755 | `0x4759b22cbdcd87f6305a4976c29a48165cd8227a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | unit-164754 | `0x005c4c5d330357845a5d56cacd3d1e3546542548` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | unit-164759 | `0x002194d1001a337346cb1f7d5499879dcc5af159` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-164758 | `0x00024ad5177504c494f11cc3caecaef95084700f` | ⚠️ Unaudited |
| EthereumMergedAdapterWithRoundsEurspkccNavV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164724 | `0x4b2c406f0dbf7624a32971277da7b4c43a7a942b` | ⚠️ Unaudited |
| EthereumMergedAdapterWithRoundsSpkccNavV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164662 | `0x14449cc3185dec0421c3cb37074215f1aacb97f9` | ⚠️ Unaudited |
| EthereumMultiFeedAdapterWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164675 | `0x46a2b84901410a81c6421104a12d6555ca286021` | ⚠️ Unaudited |
| EthereumPriceFeedAcredFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164744 | `0xd6bcbbc87bfb6c8964ddc73dc3eae6d08865d51c` | ⚠️ Unaudited |
| EthereumPriceFeedAmcashplusFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164728 | `0x767b8971ca1dc117f624d3ee3053d2881d241db9` | ⚠️ Unaudited |
| EthereumPriceFeedAvltFundamentalusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164659 | `0x105eac28b82b872a8b10218bd237a4c097022021` | ⚠️ Unaudited |
| EthereumPriceFeedAzndFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164672 | `0x3f2c697fcce450a65092eb50ad6f24bd478818de` | ⚠️ Unaudited |
| EthereumPriceFeedBeraethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164683 | `0x6a1c87d11dde3d1d52c24f8ec59b91019f14170d` | ⚠️ Unaudited |
| EthereumPriceFeedBeraStoneFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164706 | `0x4f67fd74cff274ef2942223c0f3166b856410add` | ⚠️ Unaudited |
| EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164694 | `0xc9e11c60e24bef478cc999fa9fa2d89cc098a86e` | ⚠️ Unaudited |
| EthereumPriceFeedBtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164664 | `0x24edd61cda334bff871a80deb135073a7d7a9187` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164721 | `0x2d4f3199a80b848f3d094745f3bbd4224892654e` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumDailyAccrualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164719 | `0x4f4e639745cfb234b6176e96c6afd83269baf52e` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164751 | `0xf2db7b3455077fb177215d45d62d441df3c17bf3` | ⚠️ Unaudited |
| EthereumPriceFeedCbbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164745 | `0xe13e2bbab029bfb324f49048ced0e95ea30ae049` | ⚠️ Unaudited |
| EthereumPriceFeedCusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164668 | `0x2d7a6851cc237bc2c7a5a87f78b7ffdb5db92bcb` | ⚠️ Unaudited |
| EthereumPriceFeedDeusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164736 | `0x4c89968338b75551243c99b452c84a01888282fd` | ⚠️ Unaudited |
| EthereumPriceFeedDlfPublicationTsWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164678 | `0x51a855867ae59d6292d5675b654c776147039ba5` | ⚠️ Unaudited |
| EthereumPriceFeedEgethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164666 | `0x29d295409d5a20b2c851df18054d32a442791346` | ⚠️ Unaudited |
| EthereumPriceFeedEigenWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164732 | `0x2ee5ce6556599e16c226579ba14f94926d8cb86d` | ⚠️ Unaudited |
| EthereumPriceFeedEthfiWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164655 | `0x09f9a127fba172c41d8c29e49b3c1326d2eb577e` | ⚠️ Unaudited |
| EthereumPriceFeedEthWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164682 | `0x65ed6a4ac085620ee943c0b15525c4428d23e4db` | ⚠️ Unaudited |
| EthereumPriceFeedEthxWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164695 | `0xe7f71d6a24ebc391f5ee57b867ed429eb7bd74f4` | ⚠️ Unaudited |
| EthereumPriceFeedFxusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164723 | `0x4bad96dd1c7d541270a0c92e1d4e5f12eeea7a57` | ⚠️ Unaudited |
| EthereumPriceFeedHlscopeFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164716 | `0x1f14a50ba904a28cf6088e71b6a15561074398d7` | ⚠️ Unaudited |
| EthereumPriceFeedHwhlpFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164705 | `0x03138081aed44e2e0eb10361ee41d84edd22a05f` | ⚠️ Unaudited |
| EthereumPriceFeedMsusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164680 | `0x573bb572049ff50156e94823bb99920d406e96f8` | ⚠️ Unaudited |
| EthereumPriceFeedMsyFundamentalusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164688 | `0x89621c11aad52c1535e36eb9dbf43e638e9a3e9a` | ⚠️ Unaudited |
| EthereumPriceFeedMubondFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164727 | `0x636eca78f6b46a69ab233ef513c1fb4703e32a7b` | ⚠️ Unaudited |
| EthereumPriceFeedNgiplusFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164654 | `0x09ba943f3b38e0f28e8909a00f3b58135dcd5b06` | ⚠️ Unaudited |
| EthereumPriceFeedNusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164733 | `0x5e7281f74e74d76347f0b8f4a36fd3cb29c19d95` | ⚠️ Unaudited |
| EthereumPriceFeedPrimeEchelonWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164748 | `0xc328cdf06cbc77134b84e1f6ed452774947146b6` | ⚠️ Unaudited |
| EthereumPriceFeedPromptWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164735 | `0x25a23c034fbc1eea341f6c92c6d8e6bafcf5da40` | ⚠️ Unaudited |
| EthereumPriceFeedPufferWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164747 | `0x197225b3b017eb9b72ac356d6b3c267d0c04c57c` | ⚠️ Unaudited |
| EthereumPriceFeedPumpbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164691 | `0xae02d5be17a23c8fdd0676c6a5f9143d91237979` | ⚠️ Unaudited |
| EthereumPriceFeedPumpbtcFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164734 | `0x85c4f855bc0609d2584405819edaea3adabfe97d` | ⚠️ Unaudited |
| EthereumPriceFeedPyusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164740 | `0xb7699e81acf22456fa83696573738dfa25f1d6be` | ⚠️ Unaudited |
| EthereumPriceFeedRswethFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164692 | `0xb60224122830fd6cf5119f548477a190310d2c94` | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164738 | `0x3587a73aa02519335a8a6053a97657bece0bc2cc` | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164713 | `0x24c8964338deb5204b096039147b8e8c3aea42cc` | ⚠️ Unaudited |
| EthereumPriceFeedSpkWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164671 | `0x3f145fd2cc3ed0806cae3eba73472e5991f5a721` | ⚠️ Unaudited |
| EthereumPriceFeedStacFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164689 | `0x97e3c432d1c7b765d3daeecf45f7b85dc8c0147a` | ⚠️ Unaudited |
| EthereumPriceFeedSthusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164749 | `0x6dd1e6799b67434601fd0c65cf13d4df9278cd52` | ⚠️ Unaudited |
| EthereumPriceFeedStrcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164650 | `0x041a85430c75cb8cfc9cbaa59166ff9e575f33d7` | ⚠️ Unaudited |
| EthereumPriceFeedSusdxEthFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164669 | `0x3401daf2b1f150ef0c709cc0283b5f2e55c3df29` | ⚠️ Unaudited |
| EthereumPriceFeedSwellethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164685 | `0x84ad474c33c9ccefb1a2d8b77bdd88bdc592f96b` | ⚠️ Unaudited |
| EthereumPriceFeedTacbtcFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164722 | `0x0a6fd5820f797e517297feff90aaecd8e2dc77b3` | ⚠️ Unaudited |
| EthereumPriceFeedTacethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164725 | `0x9d0ab80d6b68144a6bbb5c7447eb84edaac18519` | ⚠️ Unaudited |
| EthereumPriceFeedTacusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164676 | `0x4cec96a68cb9a979621b104f3c94884be1a66da0` | ⚠️ Unaudited |
| EthereumPriceFeedThbillFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164743 | `0x80b0735616b27b647233d3ab67078c95ba5a2c93` | ⚠️ Unaudited |
| EthereumPriceFeedUsdcV2WithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164737 | `0x3ebfaae0ef43f63dbb176ff11cab16dcd976607b` | ⚠️ Unaudited |
| EthereumPriceFeedUsdtbFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164663 | `0x243507c8c114618d7c8ad94b51118db7b4e32ece` | ⚠️ Unaudited |
| EthereumPriceFeedUsdtV2WithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164703 | `0x02e1f8d15762047b7a87ba0e5d94b9a0c5b54ed2` | ⚠️ Unaudited |
| EthereumPriceFeedUsdxWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164653 | `0x09639692ce6ff12a06ca3ae9a24b3aae4cd80dc8` | ⚠️ Unaudited |
| EthereumPriceFeedUsrWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164708 | `0x107dd3391a6357248f2093698014e7c6130779ee` | ⚠️ Unaudited |
| EthereumPriceFeedUsstFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164665 | `0x2619976127c90de2eea94b368ac5156ef16b7f3f` | ⚠️ Unaudited |
| EthereumPriceFeedUsualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164726 | `0x2240ae461b34cc56d654ba5fa5830a243ca54840` | ⚠️ Unaudited |
| EthereumPriceFeedVbillEthereumDailyAccrualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164673 | `0x40ea33ea76fbe35e9fb422edd175b8c8d84a63cc` | ⚠️ Unaudited |
| EthereumPriceFeedVbillEthereumFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164677 | `0x4e202a7e713d00804f9ce397260362bf5e0eaaa8` | ⚠️ Unaudited |
| EthereumPriceFeedWbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164649 | `0x019697e7832dba533c320c0e2a36faa2da958de9` | ⚠️ Unaudited |
| EthereumPriceFeedWlfiWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164731 | `0x131141e6c88a3389a4ab2368d3bbc65df1bf4a7e` | ⚠️ Unaudited |
| EthereumPriceFeedWstethstethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164750 | `0xa7b0247d2da6b11ff2740491cb433a1520d5da98` | ⚠️ Unaudited |
| EthereumPriceFeedWstethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164686 | `0x84c698e69d420aea702e10acc01850ef57978f64` | ⚠️ Unaudited |
| EthereumPriceFeedXrpWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164670 | `0x3d01242aadc0425209544520093e74fd151daeb9` | ⚠️ Unaudited |
| EthereumPriceFeedXvsWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164679 | `0x56b13aa2f3b9fd2a136ab46fc570e3c549191d71` | ⚠️ Unaudited |
| GlobalRegistryService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164710 | `0x1d95f6064f2aa53d6b1c0eab826aeecc303e8c75` | ⚠️ Unaudited |
| InvestorLockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-164700 | `0x0176998eb231f7ee53395b1722eb47d2eda64237` | ⚠️ Unaudited |
| IssuerMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-164696 | `0x00b1734ec95dc2ba1873415dedb450bb199d5bd9` | ⚠️ Unaudited |
| MbpsFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164707 | `0x184cb128c1d4778da88bbde95c35d199aaec649d` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164652 | `0x0638033f826c88d8b540a26c0a31130694c63070` | ⚠️ Unaudited |
| PublicStockOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164742 | `0x226b44eaab75be8000b1700c413e42513bc7c66f` | ⚠️ Unaudited |
| PublicStockOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164657 | `0x0d0051527b57ec296dcb6f28ff8e7c0820373c0c` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164674 | `0x4580d3c5fff079bde60af9e98b62d4fb031ee0a0` | ⚠️ Unaudited |
| RedStoneNavProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164661 | `0x12263bef18d07c48940eaa56f7b2efc665169db8` | ⚠️ Unaudited |
| RegistryService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | unit-164702 | `0x00eef87c3994dc44fa2733ac0a7506e774a7e3c3` | ⚠️ Unaudited |
| SecuritizeAmmNavProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164730 | `0x1b9aaf91dd71ea63487026908d06ab97c05d06a5` | ⚠️ Unaudited |
| SecuritizeOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164658 | `0x0db0dd371646b62c0de87b72101009f50484b9a3` | ⚠️ Unaudited |
| SecuritizeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164718 | `0x4535b360b4907b44b27cd499e07ed7772b723dea` | ⚠️ Unaudited |
| Settlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164684 | `0x6c97c9754880e569c8f098b3cc654089f7ac5fbb` | ⚠️ Unaudited |
| TerminatedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164687 | `0x87729bc3824f4d4b36abfc034680e77d8c51ba89` | ⚠️ Unaudited |
| TokenIssuer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-164757 | `0x000a0cb527775ce60ad212a25648813a60364581` | ⚠️ Unaudited |
| TokenLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-164698 | `0x1094a1987fab9e8995b1583e305d616886f62970` | ⚠️ Unaudited |
| TokenReallocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164648 | `0x0002fcfc817cdc092526cd22fd90fa2c4f507cf8` | ⚠️ Unaudited |
| TransactionRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-164699 | `0x00c15af9c8091db3f424c3db3d01cd3c4bbfd815` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164720 | `0x18c9b9500d8006574329ff95deb47f9576011a9f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164711 | `0x2e65b1a44fdc30976d7e2397d16c425a8a7aa4f6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164717 | `0x354d1e7d9cf90841dfa252547881db96af2aae3e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164741 | `0x61376924babe5a0fa982fff2c8be8013be3d6bb6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164714 | `0x6682c5b9b47ec0d18beb2088779f14535fc7bf47` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | unit-164760 | `0xb81131b6368b3f0a83af09db4e39ac23da96c2db` | ⚠️ Unaudited |
| TrustService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | unit-164752 | `0x03f3eb7bdae46acb38e12d04854222906233b97c` | ⚠️ Unaudited |
| USDCBridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-164746 | `0x4665137f0138a639bc5b4dd3d88947b2b0cd66ab` | ⚠️ Unaudited |
| VaultRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164660 | `0x121d63424e6f8632602f8f67848a28209179711d` | ⚠️ Unaudited |
| WalletManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-164701 | `0x076e0aaf7978c9d866dd2e14187af5bd63923543` | ⚠️ Unaudited |
| WalletRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164651 | `0x04c360034c30803eaffcb5e2a4bf708a49194a6f` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8d7aee4813432c19209c2cbbb3095c71384c1d43` | ❓ Unverified |

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
