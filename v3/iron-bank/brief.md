# Agentic Audit Brief: Iron Bank

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

- Project: Iron Bank (`iron-bank`)
- Website: [https://app.ib.xyz/](https://app.ib.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, avalanche-fuji, ethereum, fantom, optimism
- Contract surface: 177 unique implementations (177 raw deployments)
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
- Outside the address book: 115 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 48 of 177 unique; 129 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/48
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 129
- Unique implementations: 177
- Raw deployments: 177
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

### ❓ Unverified (129)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x033b849d5db77f98840d422a119887e120493f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x04f0fd3cd03b17a3e5921c0170ca6dd3952841ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06cd0fa9e4fc0cc3476e79bd94743c7a29a2ab4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b186669138879f50ead3ebf703f00f7f1a45b58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x15ab2cc164d7817ac2a5b2a6362abee088b7f2df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17c6768f438f1c67a70889dcffe49c665ccfe769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x19fe4a2ada33bd690c66a99df3de6c0899b6bd8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x47dae646612818d190e745faef8b72c278aab4f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4eda3e4f9e42a7dd5c853e8b857271fae88e7209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5402508a800db6b72792b80623193e38839a9e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x57baf809703769be301da8ff15f3713b941fffa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5848ca62295c20049c3d6a19c6eccb2ac2779d6a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-387753 | `0x6e6eb84716c032f2fe9ef9bf1965cb0e76989d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6fb612d5b817183845c6a5bb2d2afb6e7cba4ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x707648dfbf9df6b0898f78edf191b85e327e0e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8bd68d02251b8466e802436e96734082c664eeef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8c5d04d22ca563aa9fb783c263ae9bea20d3a332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8f3ae32ddd5e20c814d12acdc15eaf2e225b77d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb795d08676e70f09e3217eb25d742d4ee6e987e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc0afabc1cfb1a07df27176a388f3b78aaef07297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc358d3ea954e39caeabc9c2fd80dce21a920387b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc782dbc08daaca58f612085335f8f521e15a92a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc91ee78162424c5d1279dae6f04babea4794b34f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcac4e73f528fcf354645122d62fd2a70c23b6b90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcbc71843e4dec985469191dd8bea2c04eb83b300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd4f65611e6709b995930f3de8095d6514111cd52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe724ffa5d30782499086682c8362cb3673bf69ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf0c48ab947d650b5807322f3de61e14fc81771a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf9d60249c9590ef60b6a7d3f95fd0f98cb512588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0x00a35fd824c717879bf370e70ac6868b95870dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x06288754f31d100039b21e62a429e4b81e56b626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x06a63acc92e1906e10c47c6a2c5635ec8c2d630c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0980f2f0d2af35ef2c4521b2342d59db575303f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0a4accd9d150ad4ddc7ea2e6151243ce668bf2f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x183225623058286ddf092aac03f2721f020eea97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x18931772adb90e7f214b6cbc78ddd6e0f090d4b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x1a21ab52d1ca1312232a72f4cf4389361a479829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x1c181970061fb1980762b3431caa01c4572556ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x28192abdb1d6079767ab3730051c7f9ded06fe46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x2919ec3e7b35fb0c8597a5f806fb1f59c540eab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x328a7b4d538a2b3942653a9983fda3c12c571141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x379555965fcdba7a40e8b5b5ef4786f51adeef31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x3ab0e418be311a0bd00c9bac0d0e2029017e01d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4367751c896ea01ee7bc3683f1c2336de6238ad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4486835e0c567a320c0636d8f6e6e6679a46a271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x520b78e8dc48157b2f13edd519a2f8f2f101db80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5441090c0401ee256b09deb35679ad175d1a0c97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5a6a7b9cc61867ba692ed1e3a42e7ed3f68a2c91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5b4058a9000e86fe136ac896352c4dfd539e32a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5eb35daf9ef97e9e8cc33c486bad884a62cae9ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x607b34b17f32c96b006913ee93af8055983bc8e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387766 | `0x654b9cb203b9a220ddc14f38b1bddf55c8e8e97c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x66e9c76b76f73b7f04108e26d201bc4023386fa6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387767 | `0x6a1302ed64ea19bdc0a08882ce8aca669ddc26a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387768 | `0x6c395dfdac7114df5a6db8f5628d5f9a8f212053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x73cf8c5d14aa0ebc89f18272a568319f5bab6cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x73d06034ae98e2af4ea4e0fa0320cdef1561f493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x75ac374496f60bb84cdf8e2ced513199798d531b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x79ea17bee0a8dcb900737e8caa247c8358a5dfa1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387769 | `0x7b3c6c6fe3d8767049b514dc7f7c80d8721ab21c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387770 | `0x7d26577903f3986d3f3c554b2e229d36fa3f8ea9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387771 | `0x7ea7174dd0cb4ab84f42177f01e9a8a79475d381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x812c0b2a2a0a74f6f6ed620fbd2b67fec7db2190` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387772 | `0x9654737a8e38f6460ef8b8c51682f5bb7d3ffe28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387773 | `0x977507e3b4a63bce87a777e7602949480631be67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387774 | `0x98182bf525a4252c436ac349a4b79c7e6cd0eb7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x98d6afda3a488bb8b080c66009326466e986d583` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387775 | `0x9b21eb2e30d8320c3c1b8d8465284d78e58cb971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa70b9cce443550596b561e94dde95458615c7894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa9d61326709b5c2d5897e0753998dff7f1e974fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387776 | `0xaec7cf7f691e0d9e394668280a9a6d86e9f8cb30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb09b75916c5f4097c8b5812e63e216fef97661fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb1fd648d8ca4be22445963554b85abbfc210bc83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb3c68d69e95b095ab4b33b4cb67dbc0fbf3edf56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc29c28132a5b84d38d17660f0580aa6addb5a837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd2a77d9c18d9e867b42d5363825c5af7176f0470` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387777 | `0xd4409b8d17d5d49a7ed9ae734b0e8edba29b9ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd528697008ac67a21818751a5e3c58c8dae54696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd96877ce3771c0504f0643a98f7646ce2226543f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387778 | `0xe4e9f6cfe8ac8c75a3dbef809dbe4fc40e6fdc4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xee0c0a840cbfc2145580c517b10afabd0b788328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf13252c1044aa83b910c77322e67387e187f64ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf29ce7564aeb3996ae170fe8362a4aa92d408d6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf976c9bc0e16b250e0b1523cffaa9e4c07bc5c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xfbbfa5fd64246046e683c423aa2ab0470fbd328d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x050d18b23e1b2fcaea01a73b0eb82906323a30e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06a63acc92e1906e10c47c6a2c5635ec8c2d630c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09f69b8d22d116c38526629c47ddd0b352f6251f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13d5ff26bcba81d3c2189dcfc3aea0a9d1083cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d0bff4fa5be76c03be87a05fec7863fee8c3adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20a7f63125d24a7b7aaa1f214df452d8a1aca786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2429ba194a2ec3b55f30e143dcc206dbedb5845c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x291f4744ebf4533de5664adee8393747088c858d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33bba2a001f2ddbbac29c0963544e991f73ba145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3af7c11d112c1c730e5cee339ca5b48f9309acbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ca3787062f18907200887631899df336c6446ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fae5e5722c51cdb5b0afd8c7082e8a6af336ee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x468a7bf78f11da82c90b17a93adb7b14999af5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47f623ee723e5cbf10bd066f7e619e0c227a631e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5261918aba48774ea7061a7895766bb55b091751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52b8dde77ea10a1577bb2e246a8d935040ba9ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x543e7ddfa005966254dd49494c5403b86488506b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f05c16be0851c8c1abd9b6c5a58e9f244a290d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66e9c76b76f73b7f04108e26d201bc4023386fa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x748fa60dcb9cb89ced55c6c8b5aa4d722eebe47c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d0eb0ecfbd990ba1bdb3ecb40ae12ecfbc5c7cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x859d3575d10106c2f522acf95de9e973463981fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88a81e7da478e6e5cd9ef24daa40b93043eafd53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f3ae32ddd5e20c814d12acdc15eaf2e225b77d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96cc0f947b6c8f4675159ea03144f8c17d5a2fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a39da55d37c2b24e5c093cdc7ba09ad67dded2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9bc82883db2beabb25f91494cada4d196223e158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa124b7514217e06f88ffa833e37289e397c5cc6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab67f5edcb918a79254c30160f9f46867eb4bbc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb277194c947f44b6eac11513b52e4a4d1b6620fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb598849c025f90ea2d5de1bfe0fb2da03123d9ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8eeb091755426f163276ae28bb499b37bf71618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc91ee78162424c5d1279dae6f04babea4794b34f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcfabfd946fe462695faf8ce4b9fdf6e18633f2e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd528697008ac67a21818751a5e3c58c8dae54696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6dfd2fb54f6d7ca4d120e8cd4f9731dc03123b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd96877ce3771c0504f0643a98f7646ce2226543f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0b57feed45e7d908f2d0dacd26f113cf26715bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe4e9f6cfe8ac8c75a3dbef809dbe4fc40e6fdc4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe82225ba6bed28406912522f01c7102dd9f07e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8b24770b89b45e048c5ffcd94f0e33e0b3d4534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeac81f629b5b84d13d2e9d4944df3eb53029b117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef8bbc8acec7d63fe6fe878f5be9d233304a9136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf7ea2f80033ee7330a117449c25f92c98cb3afd9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 114
- Live contracts: 0
- Unknown liveness contracts: 114
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=114

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x033b849d5db77f98840d422a119887e120493f94` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x04f0fd3cd03b17a3e5921c0170ca6dd3952841ca` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x06cd0fa9e4fc0cc3476e79bd94743c7a29a2ab4e` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x0b186669138879f50ead3ebf703f00f7f1a45b58` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x15ab2cc164d7817ac2a5b2a6362abee088b7f2df` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x17c6768f438f1c67a70889dcffe49c665ccfe769` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x19fe4a2ada33bd690c66a99df3de6c0899b6bd8f` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x47dae646612818d190e745faef8b72c278aab4f6` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x4eda3e4f9e42a7dd5c853e8b857271fae88e7209` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x5402508a800db6b72792b80623193e38839a9e24` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x57baf809703769be301da8ff15f3713b941fffa9` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x5848ca62295c20049c3d6a19c6eccb2ac2779d6a` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x6fb612d5b817183845c6a5bb2d2afb6e7cba4ee9` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x707648dfbf9df6b0898f78edf191b85e327e0e05` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x8bd68d02251b8466e802436e96734082c664eeef` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x8c5d04d22ca563aa9fb783c263ae9bea20d3a332` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x8f3ae32ddd5e20c814d12acdc15eaf2e225b77d9` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xb795d08676e70f09e3217eb25d742d4ee6e987e0` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xc0afabc1cfb1a07df27176a388f3b78aaef07297` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xc358d3ea954e39caeabc9c2fd80dce21a920387b` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xc782dbc08daaca58f612085335f8f521e15a92a7` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xc91ee78162424c5d1279dae6f04babea4794b34f` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xcac4e73f528fcf354645122d62fd2a70c23b6b90` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xcbc71843e4dec985469191dd8bea2c04eb83b300` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xd4f65611e6709b995930f3de8095d6514111cd52` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xe724ffa5d30782499086682c8362cb3673bf69ae` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xf0c48ab947d650b5807322f3de61e14fc81771a2` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xf9d60249c9590ef60b6a7d3f95fd0f98cb512588` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x06288754f31d100039b21e62a429e4b81e56b626` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x06a63acc92e1906e10c47c6a2c5635ec8c2d630c` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x0980f2f0d2af35ef2c4521b2342d59db575303f7` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x0a4accd9d150ad4ddc7ea2e6151243ce668bf2f5` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x183225623058286ddf092aac03f2721f020eea97` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x18931772adb90e7f214b6cbc78ddd6e0f090d4b1` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x1a21ab52d1ca1312232a72f4cf4389361a479829` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x1c181970061fb1980762b3431caa01c4572556ac` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x28192abdb1d6079767ab3730051c7f9ded06fe46` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x2919ec3e7b35fb0c8597a5f806fb1f59c540eab4` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x328a7b4d538a2b3942653a9983fda3c12c571141` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x379555965fcdba7a40e8b5b5ef4786f51adeef31` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x3ab0e418be311a0bd00c9bac0d0e2029017e01d2` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x4367751c896ea01ee7bc3683f1c2336de6238ad4` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x4486835e0c567a320c0636d8f6e6e6679a46a271` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x520b78e8dc48157b2f13edd519a2f8f2f101db80` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x5441090c0401ee256b09deb35679ad175d1a0c97` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x5a6a7b9cc61867ba692ed1e3a42e7ed3f68a2c91` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x5b4058a9000e86fe136ac896352c4dfd539e32a1` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x5eb35daf9ef97e9e8cc33c486bad884a62cae9ce` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x607b34b17f32c96b006913ee93af8055983bc8e8` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x66e9c76b76f73b7f04108e26d201bc4023386fa6` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x73cf8c5d14aa0ebc89f18272a568319f5bab6cbd` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x73d06034ae98e2af4ea4e0fa0320cdef1561f493` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x75ac374496f60bb84cdf8e2ced513199798d531b` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x79ea17bee0a8dcb900737e8caa247c8358a5dfa1` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x812c0b2a2a0a74f6f6ed620fbd2b67fec7db2190` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x98d6afda3a488bb8b080c66009326466e986d583` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xa70b9cce443550596b561e94dde95458615c7894` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xa9d61326709b5c2d5897e0753998dff7f1e974fe` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xb09b75916c5f4097c8b5812e63e216fef97661fc` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xb1fd648d8ca4be22445963554b85abbfc210bc83` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xb3c68d69e95b095ab4b33b4cb67dbc0fbf3edf56` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xc29c28132a5b84d38d17660f0580aa6addb5a837` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xd2a77d9c18d9e867b42d5363825c5af7176f0470` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xd528697008ac67a21818751a5e3c58c8dae54696` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xd96877ce3771c0504f0643a98f7646ce2226543f` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xee0c0a840cbfc2145580c517b10afabd0b788328` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xf13252c1044aa83b910c77322e67387e187f64ca` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xf29ce7564aeb3996ae170fe8362a4aa92d408d6d` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xf976c9bc0e16b250e0b1523cffaa9e4c07bc5c8a` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xfbbfa5fd64246046e683c423aa2ab0470fbd328d` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x050d18b23e1b2fcaea01a73b0eb82906323a30e9` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x06a63acc92e1906e10c47c6a2c5635ec8c2d630c` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x09f69b8d22d116c38526629c47ddd0b352f6251f` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x13d5ff26bcba81d3c2189dcfc3aea0a9d1083cb6` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x1d0bff4fa5be76c03be87a05fec7863fee8c3adb` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x20a7f63125d24a7b7aaa1f214df452d8a1aca786` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x2429ba194a2ec3b55f30e143dcc206dbedb5845c` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x291f4744ebf4533de5664adee8393747088c858d` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x33bba2a001f2ddbbac29c0963544e991f73ba145` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x3af7c11d112c1c730e5cee339ca5b48f9309acbc` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x3ca3787062f18907200887631899df336c6446ae` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x3fae5e5722c51cdb5b0afd8c7082e8a6af336ee8` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x468a7bf78f11da82c90b17a93adb7b14999af5ab` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x47f623ee723e5cbf10bd066f7e619e0c227a631e` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x5261918aba48774ea7061a7895766bb55b091751` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x52b8dde77ea10a1577bb2e246a8d935040ba9ee6` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x543e7ddfa005966254dd49494c5403b86488506b` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x5f05c16be0851c8c1abd9b6c5a58e9f244a290d6` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x66e9c76b76f73b7f04108e26d201bc4023386fa6` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x748fa60dcb9cb89ced55c6c8b5aa4d722eebe47c` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x7d0eb0ecfbd990ba1bdb3ecb40ae12ecfbc5c7cb` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x859d3575d10106c2f522acf95de9e973463981fa` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x88a81e7da478e6e5cd9ef24daa40b93043eafd53` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x8f3ae32ddd5e20c814d12acdc15eaf2e225b77d9` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0x96cc0f947b6c8f4675159ea03144f8c17d5a2fc8` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x9a39da55d37c2b24e5c093cdc7ba09ad67dded2f` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0x9bc82883db2beabb25f91494cada4d196223e158` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xa124b7514217e06f88ffa833e37289e397c5cc6b` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xab67f5edcb918a79254c30160f9f46867eb4bbc5` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xb277194c947f44b6eac11513b52e4a4d1b6620fe` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xb598849c025f90ea2d5de1bfe0fb2da03123d9ae` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xc8eeb091755426f163276ae28bb499b37bf71618` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xc91ee78162424c5d1279dae6f04babea4794b34f` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xcfabfd946fe462695faf8ce4b9fdf6e18633f2e0` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xd528697008ac67a21818751a5e3c58c8dae54696` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xd6dfd2fb54f6d7ca4d120e8cd4f9731dc03123b7` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xd96877ce3771c0504f0643a98f7646ce2226543f` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xe0b57feed45e7d908f2d0dacd26f113cf26715bf` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xe4e9f6cfe8ac8c75a3dbef809dbe4fc40e6fdc4b` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xe82225ba6bed28406912522f01c7102dd9f07e78` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xe8b24770b89b45e048c5ffcd94f0e33e0b3d4534` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xeac81f629b5b84d13d2e9d4944df3eb53029b117` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |
| unverified unclassified | UnnamedContract<br>`0xef8bbc8acec7d63fe6fe878f5be9d233304a9136` | non_address_book | unknown | unknown | unverified | n/a | `0x1ba608d6a354fbeb41fd7cc799e7f09b2612ab26` |
| unverified unclassified | UnnamedContract<br>`0xf7ea2f80033ee7330a117449c25f92c98cb3afd9` | non_address_book | unknown | unknown | unverified | n/a | `0x11df15f0c90524d3644843e1a137095373138f5a` |

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
| needs_review | 177 |

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
