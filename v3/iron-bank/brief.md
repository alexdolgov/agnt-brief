# Agentic Audit Brief: Iron Bank

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

- Project: Iron Bank (`iron-bank`)
- Website: [https://app.ib.xyz/](https://app.ib.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, avalanche-fuji, ethereum, fantom, optimism
- Contract surface: 63 unique implementations (63 raw deployments)
- Coverage basis: 0/48 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $700,221.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Iron Bank. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 48 contract row(s) across avalanche, avalanche-fuji, fantom, optimism. Structural roles: 45 core, 2 supporting, 1 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 48
- Structural roles: core (45), supporting (2), infra (1)
- Contract kinds: contract (48)
- Detected standards: erc20 (23), ownable (3), erc1967proxy (1)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 48 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CCollateralCapErc20Delegate (`0x23be15c4972279fe56dac4460be0b60cc8301bf7`, chain 10)
- CCollateralCapErc20Delegate (`0xcdb9b4db65c913ab000b40204248c8a53185d14d`, chain 43114)
- CompoundLens (`0xc640a79205706062bf0277a466821a6130a8f78e`, chain 10)
- CompoundLens (`0x5b4058a9000e86fe136ac896352c4dfd539e32a1`, chain 43114)
- Comptroller / Unitroller (`0xe0b57feed45e7d908f2d0dacd26f113cf26715bf`, chain 10)
- Comptroller / Unitroller (`0x2ee80614ccbc5e28654324a66a396458fa5cd7cc`, chain 43114)
- Comptroller_Implementation (`0xd0b628cb062bcb34331482391c2110cd7a731e5a`, chain 10)
- Comptroller_Implementation (`0x294cb010ef33f8e7b47b7e19fdb0a88d1dc88811`, chain 43114)
- crDAI.E (`0x085682716f61a72bf8c573fbaf88cca68c60e99b`, chain 43114)
- CRenameDelegate (`0x0a008ccae9a2e48852177a6b55bf0e6fa91c83f0`, chain 43114)
- crLINK.E (`0x18931772adb90e7f214b6cbc78ddd6e0f090d4b1`, chain 43114)
- crMIM (`0xbf1430d9ec170b7e97223c7f321782471c587b29`, chain 43114)
- crUSDC (`0xec5aa19566aa442c8c50f3c6734b6bb23ff21cd7`, chain 43114)
- crUSDC.E (`0xe28965073c49a02923882b8329d3e8c1d805e832`, chain 43114)
- crUSDT.E (`0xceb1ce674f38398432d20bc8f90345e91ef46fd3`, chain 43114)
- crWAVAX (`0xb3c68d69e95b095ab4b33b4cb67dbc0fbf3edf56`, chain 43114)
- crWBTC.E (`0xb09b75916c5f4097c8b5812e63e216fef97661fc`, chain 43114)
- crWETH.E (`0x338eee1f7b89ce6272f302bdc4b952c13b221f1d`, chain 43114)
- CTokenAdmin (`0xf7564e21a2439cca399779580db97e85a766d2a8`, chain 10)
- CTokenAdmin (`0xf976c9bc0e16b250e0b1523cffaa9e4c07bc5c8a`, chain 43114)
- CWrappedNativeDelegate (`0xc0e1a46cfea33e598cf0102ef4e06421ed16fbbe`, chain 10)
- CWrappedNativeDelegate (`0x049e04bee77cffb055f733a138a2f204d3750283`, chain 43114)
- FlashloanLender (`0xea4b8ddb3ae257224dfd8c6afc035204eea75539`, chain 43114)
- GovIRM (`0xedaaba6db46bb1a7967e7490a024f07abe0e8941`, chain 10)
- GovIRM (`0x20d5d319c2964ecb52e1b006a4c059b7f6d6ad0a`, chain 43114)
- iALPHA.E (`0x02c9133627a14214879175a7a222d0a7f7404efb`, chain 43114)
- iDAI (`0x049e04bee77cffb055f733a138a2f204d3750283`, chain 10)
- iOP (`0x4645e0952678e9566fb529d9313f5730e4e1c412`, chain 10)
- iUSDC (`0x1d073cf59ae0c169cbc58b6fdd518822ae89173a`, chain 10)
- iUSDT (`0x874c01c2d1767efa01fa54b2ac16be96fad5a742`, chain 10)
- iUST (`0x9be7b5b7e219461f164863dad045a35d1101aa64`, chain 43114)
- iUST(Wormhole) (`0xb1f656b82507cd07dabd71f966294e2262b465ad`, chain 43114)
- iWBTC (`0xcdb9b4db65c913ab000b40204248c8a53185d14d`, chain 10)
- iWETH (`0x17533a1bde957979e3977ebbfbc31e6deeb25c7d`, chain 10)
- LiquidityMining (`0x8cfbe29030260b8931ae499edf5ce3f3cb02226f`, chain 10)
- LiquidityMiningProxy (`0x9c8264cb356377bb1d263f6e0ee03e977b3cadab`, chain 10)
- MajorIRM (`0xf917832969f60c4019fee163d7fd7688eb677ee5`, chain 10)
- MajorIRM (`0x7ef18d0a9c3fb1a716ff6c3ed0edf52a2427f716`, chain 43114)
- Maximillion (`0x2ac63723a576f89b628d514ff671300801dc1702`, chain 10)
- PriceOracleProxyUSD (`0x2424c30e589caea191c06f41d1f5b90348dbed7d`, chain 10)
- PriceOracleProxyUSD (`0x0980f2f0d2af35ef2c4521b2342d59db575303f7`, chain 43114)
- PriceOracleV1 (`0x61e38fa2a349b5d4ead78458afbcc1e4adeefab5`, chain 10)
- PriceOracleV1 (`0xe7db46742c51a7bd64b8d83b8201239d759786be`, chain 43114)
- StableIRM (`0x20a7f63125d24a7b7aaa1f214df452d8a1aca786`, chain 10)
- StableIRM (`0x5dc3a30d8c5937f1529c3c93507c16d86a17072a`, chain 43114)
- StableIRM2 (`0x3596b7e6b0c31d02b7cdd687d303a9c4dfc00b8c`, chain 10)
- StakingRewardsFactory (`0x35f70ce60f049a8c21721c53a1dfccb5bf4a1ea8`, chain 10)
- StakingRewardsHelper (`0x970d6b8c1479ec2bfe5a82dc69cafe4003099bc0`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 48; live-surface rows included: 48 (48 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 48/62 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/48 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 48 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 48 of 63 unique; 15 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/48
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 63
- Raw deployments: 63
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 0 | optimism | unit-387746 | `0x23be15c4972279fe56dac4460be0b60cc8301bf7` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387797 | `0xcdb9b4db65c913ab000b40204248c8a53185d14d` | ⚠️ Unaudited |
| CompoundLens | unknown | project_anchor | own_supporting | 0 | optimism | unit-387759 | `0xc640a79205706062bf0277a466821a6130a8f78e` | ⚠️ Unaudited |
| CompoundLens | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387789 | `0x5b4058a9000e86fe136ac896352c4dfd539e32a1` | ⚠️ Unaudited |
| Comptroller / Unitroller | unknown | project_anchor | own_supporting | 0 | optimism | unit-387762 | `0xe0b57feed45e7d908f2d0dacd26f113cf26715bf` | ⚠️ Unaudited |
| Comptroller / Unitroller | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387787 | `0x2ee80614ccbc5e28654324a66a396458fa5cd7cc` | ⚠️ Unaudited |
| Comptroller_Implementation | unknown | project_anchor | own_supporting | 0 | optimism | unit-387761 | `0xd0b628cb062bcb34331482391c2110cd7a731e5a` | ⚠️ Unaudited |
| Comptroller_Implementation | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387786 | `0x294cb010ef33f8e7b47b7e19fdb0a88d1dc88811` | ⚠️ Unaudited |
| crDAI.E | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387781 | `0x085682716f61a72bf8c573fbaf88cca68c60e99b` | ⚠️ Unaudited |
| CRenameDelegate | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387783 | `0x0a008ccae9a2e48852177a6b55bf0e6fa91c83f0` | ⚠️ Unaudited |
| crLINK.E | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387784 | `0x18931772adb90e7f214b6cbc78ddd6e0f090d4b1` | ⚠️ Unaudited |
| crMIM | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387796 | `0xbf1430d9ec170b7e97223c7f321782471c587b29` | ⚠️ Unaudited |
| crUSDC | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387802 | `0xec5aa19566aa442c8c50f3c6734b6bb23ff21cd7` | ⚠️ Unaudited |
| crUSDC.E | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387799 | `0xe28965073c49a02923882b8329d3e8c1d805e832` | ⚠️ Unaudited |
| crUSDT.E | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387798 | `0xceb1ce674f38398432d20bc8f90345e91ef46fd3` | ⚠️ Unaudited |
| crWAVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387795 | `0xb3c68d69e95b095ab4b33b4cb67dbc0fbf3edf56` | ⚠️ Unaudited |
| crWBTC.E | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387793 | `0xb09b75916c5f4097c8b5812e63e216fef97661fc` | ⚠️ Unaudited |
| crWETH.E | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387788 | `0x338eee1f7b89ce6272f302bdc4b952c13b221f1d` | ⚠️ Unaudited |
| CTokenAdmin | unknown | project_anchor | own_supporting | 0 | optimism | unit-387764 | `0xf7564e21a2439cca399779580db97e85a766d2a8` | ⚠️ Unaudited |
| CTokenAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387803 | `0xf976c9bc0e16b250e0b1523cffaa9e4c07bc5c8a` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | project_anchor | own_supporting | 0 | optimism | unit-387758 | `0xc0e1a46cfea33e598cf0102ef4e06421ed16fbbe` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387780 | `0x049e04bee77cffb055f733a138a2f204d3750283` | ⚠️ Unaudited |
| FlashloanLender | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387801 | `0xea4b8ddb3ae257224dfd8c6afc035204eea75539` | ⚠️ Unaudited |
| GovIRM | unknown | project_anchor | own_supporting | 0 | optimism | unit-387763 | `0xedaaba6db46bb1a7967e7490a024f07abe0e8941` | ⚠️ Unaudited |
| GovIRM | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387785 | `0x20d5d319c2964ecb52e1b006a4c059b7f6d6ad0a` | ⚠️ Unaudited |
| iALPHA.E | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387779 | `0x02c9133627a14214879175a7a222d0a7f7404efb` | ⚠️ Unaudited |
| iDAI | unknown | project_anchor | own_supporting | 0 | optimism | unit-387742 | `0x049e04bee77cffb055f733a138a2f204d3750283` | ⚠️ Unaudited |
| iOP | unknown | project_anchor | own_supporting | 0 | optimism | unit-387751 | `0x4645e0952678e9566fb529d9313f5730e4e1c412` | ⚠️ Unaudited |
| iUSDC | unknown | project_anchor | own_supporting | 0 | optimism | unit-387744 | `0x1d073cf59ae0c169cbc58b6fdd518822ae89173a` | ⚠️ Unaudited |
| iUSDT | unknown | project_anchor | own_supporting | 0 | optimism | unit-387754 | `0x874c01c2d1767efa01fa54b2ac16be96fad5a742` | ⚠️ Unaudited |
| iUST | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387792 | `0x9be7b5b7e219461f164863dad045a35d1101aa64` | ⚠️ Unaudited |
| iUST(Wormhole) | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387794 | `0xb1f656b82507cd07dabd71f966294e2262b465ad` | ⚠️ Unaudited |
| iWBTC | unknown | project_anchor | own_supporting | 0 | optimism | unit-387760 | `0xcdb9b4db65c913ab000b40204248c8a53185d14d` | ⚠️ Unaudited |
| iWETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-387743 | `0x17533a1bde957979e3977ebbfbc31e6deeb25c7d` | ⚠️ Unaudited |
| LiquidityMining | unknown | project_anchor | own_supporting | 0 | optimism | unit-387755 | `0x8cfbe29030260b8931ae499edf5ce3f3cb02226f` | ⚠️ Unaudited |
| LiquidityMiningProxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-387757 | `0x9c8264cb356377bb1d263f6e0ee03e977b3cadab` | ⚠️ Unaudited |
| MajorIRM | unknown | project_anchor | own_supporting | 0 | optimism | unit-387765 | `0xf917832969f60c4019fee163d7fd7688eb677ee5` | ⚠️ Unaudited |
| MajorIRM | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387791 | `0x7ef18d0a9c3fb1a716ff6c3ed0edf52a2427f716` | ⚠️ Unaudited |
| Maximillion | unknown | project_anchor | own_supporting | 0 | optimism | unit-387748 | `0x2ac63723a576f89b628d514ff671300801dc1702` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | project_anchor | own_supporting | 0 | optimism | unit-387747 | `0x2424c30e589caea191c06f41d1f5b90348dbed7d` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387782 | `0x0980f2f0d2af35ef2c4521b2342d59db575303f7` | ⚠️ Unaudited |
| PriceOracleV1 | unknown | project_anchor | own_supporting | 0 | optimism | unit-387752 | `0x61e38fa2a349b5d4ead78458afbcc1e4adeefab5` | ⚠️ Unaudited |
| PriceOracleV1 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387800 | `0xe7db46742c51a7bd64b8d83b8201239d759786be` | ⚠️ Unaudited |
| StableIRM | unknown | project_anchor | own_supporting | 0 | optimism | unit-387745 | `0x20a7f63125d24a7b7aaa1f214df452d8a1aca786` | ⚠️ Unaudited |
| StableIRM | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387790 | `0x5dc3a30d8c5937f1529c3c93507c16d86a17072a` | ⚠️ Unaudited |
| StableIRM2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-387749 | `0x3596b7e6b0c31d02b7cdd687d303a9c4dfc00b8c` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-387750 | `0x35f70ce60f049a8c21721c53a1dfccb5bf4a1ea8` | ⚠️ Unaudited |
| StakingRewardsHelper | unknown | project_anchor | own_supporting | 0 | optimism | unit-387756 | `0x970d6b8c1479ec2bfe5a82dc69cafe4003099bc0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-387753 | `0x6e6eb84716c032f2fe9ef9bf1965cb0e76989d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0x00a35fd824c717879bf370e70ac6868b95870dfb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387766 | `0x654b9cb203b9a220ddc14f38b1bddf55c8e8e97c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387767 | `0x6a1302ed64ea19bdc0a08882ce8aca669ddc26a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387768 | `0x6c395dfdac7114df5a6db8f5628d5f9a8f212053` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387769 | `0x7b3c6c6fe3d8767049b514dc7f7c80d8721ab21c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387770 | `0x7d26577903f3986d3f3c554b2e229d36fa3f8ea9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387771 | `0x7ea7174dd0cb4ab84f42177f01e9a8a79475d381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387772 | `0x9654737a8e38f6460ef8b8c51682f5bb7d3ffe28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387773 | `0x977507e3b4a63bce87a777e7602949480631be67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387774 | `0x98182bf525a4252c436ac349a4b79c7e6cd0eb7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387775 | `0x9b21eb2e30d8320c3c1b8d8465284d78e58cb971` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387776 | `0xaec7cf7f691e0d9e394668280a9a6d86e9f8cb30` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387777 | `0xd4409b8d17d5d49a7ed9ae734b0e8edba29b9ffa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387778 | `0xe4e9f6cfe8ac8c75a3dbef809dbe4fc40e6fdc4b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CREAMSummary.pdf](https://github.com/trailofbits/publications/blob/master/reviews/CREAMSummary.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13299] CREAMSummary.pdf — no match: The report does not list specific contract names in scope; it only mentions the repository and commits. No contract names are explicitly identified.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 63 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [13299] CREAMSummary.pdf

Fork inheritance lineage and inherited audits are included when available.
