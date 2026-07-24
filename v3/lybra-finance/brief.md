# Agentic Audit Brief: Lybra Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Lybra Finance (`lybra-finance`)
- Website: [https://lybra.finance/](https://lybra.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 69 unique implementations (69 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $259,727.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Lybra Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (2), erc165 (1), ownable (1)
- Frameworks: openzeppelin (2), layerzero (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x97de57ec338ab5d51557da3434828c5dbfada371`, chain 1)
- PeUSDMainnet (`0xd585aaafa2b58b1cd75092b51ade9fa4ce52f247`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 67 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 69 unique; 67 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/33
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 69
- Raw deployments: 69
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 1 | 3.0% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | token | project_anchor | own_supporting | 0 | ethereum | unit-388613 | `0x97de57ec338ab5d51557da3434828c5dbfada371` | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f0a037fbe917f63e4504b0b07d92cc93c8cf484` | ⚠️ Unaudited |
| CollateralRatioGuardian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x126dc5e04b0e8c8ef6f4602fda90e39c0a142bde` | ⚠️ Unaudited |
| esLBR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73b1988a3336208e55275c52fac7f5d3a7dfb89f` | ⚠️ Unaudited |
| esLBRBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78c02d080091e17a33b4a5986a880235233cbcf3` | ⚠️ Unaudited |
| EUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf3ac4f479375802a821f7b7b46cd7eb5e4262cc` | ⚠️ Unaudited |
| EUSDMiningIncentives | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b2659734121feb636534213a159ac91691edbde` | ⚠️ Unaudited |
| GovernanceTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81905eae41af5235ec4d7e9b12e8d51251b26406` | ⚠️ Unaudited |
| GrantHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e2cee09d5a71a9bf041e13fe52096133e5cc6d3` | ⚠️ Unaudited |
| LBR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed1167b6dc64e8a366db86f2e952a482d0981ebd` | ⚠️ Unaudited |
| LBRMinerFromL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcaf98f5198b3a68ddcd6720d80483182997f0ef` | ⚠️ Unaudited |
| LBRPriceOFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1932d36f5dd86327ceacd470271709a931803338` | ⚠️ Unaudited |
| LybraBalanceSheet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bf9b8dfac5ae048cf43fef66cc5b5f62a349014` | ⚠️ Unaudited |
| LybraConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc0616c57b8cd59b530e1fcb5c5b8b4a5e6346e` | ⚠️ Unaudited |
| LybraETHxVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c5510e6a04311ab4d8f31b23ba0a6059c9e5d24` | ⚠️ Unaudited |
| LybraGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34afe1b92a63f647a3c2e56a4a8347c8fa7e1b69` | ⚠️ Unaudited |
| LybraHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdf8d5010278a54e9510c8a17b53c7bfc20a8568` | ⚠️ Unaudited |
| LybraOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f13d793010115e9b4db341e60f522aafad5f34a` | ⚠️ Unaudited |
| LybraProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa23e44aea714fbbc08ef28340d78067b9a8cad73` | ⚠️ Unaudited |
| LybraRETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090b2787d6798000710a8e821ec6111d254bb958` | ⚠️ Unaudited |
| LybraStETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa980d4c0c2e48d305b582aa439a3575e3de06f0e` | ⚠️ Unaudited |
| LybraWBETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72da4a9866b0993b9a7d842e5060716f74bf262` | ⚠️ Unaudited |
| LybraWstETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e28b5858da2c6fb4e449d69eeb5b82e271c45ce` | ⚠️ Unaudited |
| MigrateHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e9de27d66f1d8ade2bee73334b76734e797cd4` | ⚠️ Unaudited |
| NonBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf284087c7887df16bb1b686421dc34766ee20af` | ⚠️ Unaudited |
| PeUSDMainnet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388614 | `0xd585aaafa2b58b1cd75092b51ade9fa4ce52f247` | ⚠️ Unaudited |
| ProtocolRewardsPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2966a73bbc53f3c99268ed84d245dbe972ed89e` | ⚠️ Unaudited |
| Repayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28ac0a35faf6f2704cd8324c250a029c190e569e` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19d7cb89e1f92f21d71db34bef4944b9f3344d6e` | ⚠️ Unaudited |
| TokenHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb36135b700df1f740b82c914a10ba045eca38af1` | ⚠️ Unaudited |
| TokenUnlocking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000bcb9975d040f32ad59880317f4be8286cc970` | ⚠️ Unaudited |
| UniswapPairOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc626867660df1cc6274ce0338e7dfb92474647c5` | ⚠️ Unaudited |
| V1eUSDRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11079fc996237e9dd830899e29ecfdaa6ee9a881` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158d48e1617c6f984b4d767bc1bfed325edb30f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d034f852bd057be8b74a2e4f7ce664af62c963` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2543ce92f8cf84c7e5085a7a8a243c96e04f5b34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bddc186c085c3a543a014f36ffa58a4ecaf0498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ddceb46e866e2786330f4d0a46a6d1390c93da6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35346ff68d44a89dd62f02893d53159d252c33f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39c48613bbfd366383135952de7109a9fc8d51a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b88f81d375e053e2f1e54183e55bd9c43031e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40d0287950e7f7f6464b4055bd0c0cc61c6047c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51a11e98926bc047cbd0242a41c04fcbc15f849b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62173c25a96abfe84e45fd62cba2521772f4faeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x707697cd79cc115d43da9f2523daad89584c95ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x772f633bde71ee6eb3b0882966d62a81dc04ad25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85b047578881e3361b7ddb8db2af470a12bc8615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8612ef3ef02a585b0da7bc5a99a26e1bea1ce28b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x879cf9eaf7b1b1c63fc9e888c69b85a3b97e3114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92a9c9efabb7d36ca10743db0fb89cc18c329b87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2579e29bdc0af3c6c21c0c078c3cae244876bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab4fcae71ec6c583b9d46fa5f94aecc51c0e9c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb31e9e8d666f8a54613a8b2f3a11370a50a25c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdf8b31ab9678e4a2bdee04d516571fef951430e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc37d83d1a5d82984f795bf0f7b31005ff7dd796c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8152115298ff56e6f9fd0610d77e57946900d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8353594eeedc5ce5a4544d3d9907b694c4690ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9087c8e952b8c45635bc93585428f7e980421cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda50872a5d1a1f55c58394c59d0e2c68776ceade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce765f021410b3266aa0053c93cb4535f1e12e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcfe6f5659330b499fe0002d1baa9e9d6c52a646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd906b65da28eebb615c086bbb9508d04d9fec13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea34be7130a18a528724689a5f67a5a70717e4dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec7c6cd15d9bd98fc9805e0509e3bb2033c5956d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf012c9865a725cb0066da54ffe386e075579acb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf284b9da245d24a027bdf0565d6fd7e8312b8825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4aa0f1013c81dbc7f87c5509f62268142a2975f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7366caf1462f9652b6120bb98e900258f1e11a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff199c94507c5090c003179bfdf9bf81416647db` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 36
- Live contracts: 0
- Unknown liveness contracts: 36
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=36

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x158d48e1617c6f984b4d767bc1bfed325edb30f0` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17d034f852bd057be8b74a2e4f7ce664af62c963` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2543ce92f8cf84c7e5085a7a8a243c96e04f5b34` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2bddc186c085c3a543a014f36ffa58a4ecaf0498` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ddceb46e866e2786330f4d0a46a6d1390c93da6` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x35346ff68d44a89dd62f02893d53159d252c33f6` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x39c48613bbfd366383135952de7109a9fc8d51a5` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b88f81d375e053e2f1e54183e55bd9c43031e90` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40d0287950e7f7f6464b4055bd0c0cc61c6047c1` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51a11e98926bc047cbd0242a41c04fcbc15f849b` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62173c25a96abfe84e45fd62cba2521772f4faeb` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x707697cd79cc115d43da9f2523daad89584c95ea` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x772f633bde71ee6eb3b0882966d62a81dc04ad25` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85b047578881e3361b7ddb8db2af470a12bc8615` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8612ef3ef02a585b0da7bc5a99a26e1bea1ce28b` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x879cf9eaf7b1b1c63fc9e888c69b85a3b97e3114` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x92a9c9efabb7d36ca10743db0fb89cc18c329b87` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2579e29bdc0af3c6c21c0c078c3cae244876bdf` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab4fcae71ec6c583b9d46fa5f94aecc51c0e9c26` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb31e9e8d666f8a54613a8b2f3a11370a50a25c83` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbdf8b31ab9678e4a2bdee04d516571fef951430e` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc37d83d1a5d82984f795bf0f7b31005ff7dd796c` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8152115298ff56e6f9fd0610d77e57946900d4a` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8353594eeedc5ce5a4544d3d9907b694c4690ff` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd9087c8e952b8c45635bc93585428f7e980421cc` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda50872a5d1a1f55c58394c59d0e2c68776ceade` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdce765f021410b3266aa0053c93cb4535f1e12e0` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdcfe6f5659330b499fe0002d1baa9e9d6c52a646` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdd906b65da28eebb615c086bbb9508d04d9fec13` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xea34be7130a18a528724689a5f67a5a70717e4dc` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec7c6cd15d9bd98fc9805e0509e3bb2033c5956d` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf012c9865a725cb0066da54ffe386e075579acb9` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf284b9da245d24a027bdf0565d6fd7e8312b8825` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf4aa0f1013c81dbc7f87c5509f62268142a2975f` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7366caf1462f9652b6120bb98e900258f1e11a1` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff199c94507c5090c003179bfdf9bf81416647db` | non_address_book | unknown | unknown | unverified | n/a | `0x0bb3a32722b4cd85f06f8f57aaa4a579d5de88c6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://sourcehat.com/audits/Lybra) | SourceHat | Audit | 2023-05 | stale | Direct | address | matched | 1 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17489] DL audit link — matched: The audit report explicitly states the Lybra contract at a specific address on Ethereum Mainnet is in scope. EUSD and Governable are inherited contracts that are part of the audited codebase. The date is clearly stated as May 1st, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | Lybra | own contract | 0x97de57… (selected) `0x97de57ec338ab5d51557da3434828c5dbfada371` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DL audit link | EUSD | unmatched — not counted | — | Inheritance chart shows Lybra inherits from EUSD and Governable. | no |
| DL audit link | Governable | unmatched — not counted | — | Inheritance chart shows Lybra inherits from EUSD and Governable. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xd585aaafa2b58b1cd75092b51ade9fa4ce52f247` | PeUSDMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 37 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: address=1

Fork inheritance lineage and inherited audits are included when available.
