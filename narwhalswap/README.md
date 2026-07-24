# Agentic Audit Brief: Narwhalswap

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Narwhalswap (`narwhalswap`)
- Website: [https://narwhalswap.org/](https://narwhalswap.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 74 unique implementations (74 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $319,140.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Narwhalswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- NarToken (`0xa1303e6199b319a891b79685f0537d289af1fc83`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 69 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 74 unique; 73 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 47
- Unique implementations: 74
- Raw deployments: 74
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

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CaptainGem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26c2585b198e381663b2c8207ad04f3571ea3177` | ⚠️ Unaudited |
| DistributeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35500a5edacfdd9b48a173a79d2e3ce998beeb72` | ⚠️ Unaudited |
| ExchangeNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bd996f94b9dd04c8e44e535b4f0a6ed22fd0d19` | ⚠️ Unaudited |
| GoldFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77c10a04b7d3adebe4f235d69b5c1f20cbfd2e57` | ⚠️ Unaudited |
| Grand | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52d4f6e83b60e2c8ca39d0eef418d8cc380533e2` | ⚠️ Unaudited |
| NarCardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x828b5adbe8e0a06aaf5d5a5fd16e6b15a393d86e` | ⚠️ Unaudited |
| NardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bbb275012ebe258556b8debe5c07be98e8d3859` | ⚠️ Unaudited |
| NarNft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce7a099a7c5c062a4f66a6bbdec191a222baa3f2` | ⚠️ Unaudited |
| NarOpenSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b79a1e357bd7f924415d4e3ac277f3b24aaa6af` | ⚠️ Unaudited |
| NarTicketFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdde9e8314afd828c73539692895dd96d55cda7c8` | ⚠️ Unaudited |
| NarTicketToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f4087cb09e0f378f4278a314c94a636665de24b` | ⚠️ Unaudited |
| NarToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-389658 | `0xa1303e6199b319a891b79685f0537d289af1fc83` | ⚠️ Unaudited |
| NarwhalCollecter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f8a46ec48442d9ebf28fbc1144a83f8bc53f7e9` | ⚠️ Unaudited |
| NarwhalPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b19c644c623485e5a77e5d7657e991432dfd33c` | ⚠️ Unaudited |
| NarwhalReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x186be2a9f0e9c92b880bbd3ec1f35f422f0d8835` | ⚠️ Unaudited |
| NarwhalRewardDividendV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb85a8c269cfc6ec4bd44e7dbd312b233a38eea0d` | ⚠️ Unaudited |
| NarwhalRewardDividendV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8e70639ad7d91d4d4bcf5d5ab8e2264abb7b25e` | ⚠️ Unaudited |
| NarwhalRewardHugeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x657ba421cc8b1be5891aa9ac7aa2b936e5d08b65` | ⚠️ Unaudited |
| NarwhalRewardMediumV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f0414886ebf34cce32148ba0cf64dd8ec88a274` | ⚠️ Unaudited |
| NarwhalRewardSmallV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3dfb186e8ce513f321232098dd551e22886c1051` | ⚠️ Unaudited |
| NarwhalRewardV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d227f7e283d653a60f94d2350cab7a49bb85c6f` | ⚠️ Unaudited |
| NarwhalRewardV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x268a2c1acbeee3b74616b9fe3f07c1bf80841e5d` | ⚠️ Unaudited |
| NLPLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07f1b50d5ae24ec41aa7269d65a5e23e8401542a` | ⚠️ Unaudited |
| Rnlp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c582cf84cc2bcd0a50610db172c11662c9ef1fc` | ⚠️ Unaudited |
| RuneReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcba8596b62cdb79450377085871a5467ed35c121` | ⚠️ Unaudited |
| SatoshiFragments | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x912508def77242179f1a7b17d8f6ef8b9fdea744` | ⚠️ Unaudited |
| SetUser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42fbcc198af7244d8fe9b372719eb26f892045ae` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (47)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x162ece88ac02f23d72729efd9e5467c24d88e61d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d791eaa684a21de92618dedea7bf373e2486956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f0e9c28a5c5272a5d2b8ac808a4ccccd8beb77b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f7d08d96d2520bd9196cb857e40d2a99e31de1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x205d52f845d0e79b5928eaa431eb09f9e234593e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x219a1b489e9660d40fd87be9c76f9e93e5b588c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x274b9af92a35e08251b09180031a9fdf2ce40ef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3321adb09550bd03ef6f15bb6d23015b844be1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x387d9937506ea188b109478523c0873b8f84e4cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40572a82a7713bc9b1cbc023aa2a0a20b1fbde1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46d603e2b9c709454316ebd244b99a8abe3bd243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fb5c4a9428fb58de1b8bf3ac4209829d95ccf81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5777ae2ac8a042dc99dc41888c5b70f198a1e159` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389656 | `0x5ec32c21c9a6215d239f2bd0df22d7632b4717c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6400442ad9b93ac56d18c272c977efe1e50273c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6451571cb5bee9fd575ad98506e96f3d09c66f91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6702ea92f83bd5d64cdb83d38a9cc43953b7dc25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6da9ee0c0571b63e38950d1e12e835d5343f601b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7825d4c6413b2c611f62cdb265232bebf406fd0a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389657 | `0x8e68f1ad3ce2e7b01ecdfd0870d645cbe446e4b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ded081981adb5957159ac791ebf89df8afd6c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1992a9777c3c11c466f44a4b9c7530719a22ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaaa6ddb2022541c44e488ea2b3f32c8c8726c107` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389659 | `0xb35513a130ce5bcff1154d055b21368c8822c00d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389660 | `0xb6b0ba4e208ab93602be7a81f1400a7c7daad1f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6c9b20253a4bdc65d1fdc6f4ae04f57f6523915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9c9e7cc58da9b727916d7dfd6bf7001c5f26210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb38f7551025a433f36590be85271110212655de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe85812237741d75f81aebf1d9af52d544542168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0b5306224298f39e6ce9cb9fd2acb6d03a2cc04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3a471421bb1364d74b8f384cd73fe34d2ce1773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc75f626121fca17719d16fe8ea5fb601062301d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcba4ee77534a0efb8f7666d0223eb2369570c0e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd0678f92dd0d2cca7aa3818bf7805101635e215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xceba13a84ca3ee92a60e5aa847070905245fe407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf889a0902859662c17dc895abb7af49ee28a013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7c7ee6547b890669c81aca711c37fb1f1e54f60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbefeac5299af5e1b9b8350a785feed360701fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe126bcaa8360d3a91c72cbf7bc50d51b7a6cbf01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe207ea201a1ac5907e333c68e2ecd96fdb9389e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe412c95f03ebcf79dfa9c8cb5ed9b3754be65916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6e0646bd4fcd37ec7258d21295dd4cdc347f57a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec9ece08e1d7ec572f81df9ec6880cd2c24d02c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee2b4ff90132ca8c25e98fe88cfdfb14b2f3dfdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6ad8eb021b894f1ebf82a4013214ef31a62c06f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf79101db3fc6d2e9dcc8da3d7c349cd49637a2a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7a36c87c3a8909949638120f23cd721bf572032` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 43
- Live contracts: 0
- Unknown liveness contracts: 43
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=43

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x162ece88ac02f23d72729efd9e5467c24d88e61d` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x1d791eaa684a21de92618dedea7bf373e2486956` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x1f0e9c28a5c5272a5d2b8ac808a4ccccd8beb77b` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x1f7d08d96d2520bd9196cb857e40d2a99e31de1a` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x205d52f845d0e79b5928eaa431eb09f9e234593e` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x219a1b489e9660d40fd87be9c76f9e93e5b588c9` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x274b9af92a35e08251b09180031a9fdf2ce40ef1` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x3321adb09550bd03ef6f15bb6d23015b844be1fa` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x387d9937506ea188b109478523c0873b8f84e4cc` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x40572a82a7713bc9b1cbc023aa2a0a20b1fbde1c` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x46d603e2b9c709454316ebd244b99a8abe3bd243` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x4fb5c4a9428fb58de1b8bf3ac4209829d95ccf81` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x5777ae2ac8a042dc99dc41888c5b70f198a1e159` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x6400442ad9b93ac56d18c272c977efe1e50273c1` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x6451571cb5bee9fd575ad98506e96f3d09c66f91` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x6702ea92f83bd5d64cdb83d38a9cc43953b7dc25` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x6da9ee0c0571b63e38950d1e12e835d5343f601b` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x7825d4c6413b2c611f62cdb265232bebf406fd0a` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0x9ded081981adb5957159ac791ebf89df8afd6c57` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xa1992a9777c3c11c466f44a4b9c7530719a22ea2` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xaaa6ddb2022541c44e488ea2b3f32c8c8726c107` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xb6c9b20253a4bdc65d1fdc6f4ae04f57f6523915` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xb9c9e7cc58da9b727916d7dfd6bf7001c5f26210` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xbb38f7551025a433f36590be85271110212655de` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xbe85812237741d75f81aebf1d9af52d544542168` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xc0b5306224298f39e6ce9cb9fd2acb6d03a2cc04` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xc3a471421bb1364d74b8f384cd73fe34d2ce1773` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xc75f626121fca17719d16fe8ea5fb601062301d1` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xcba4ee77534a0efb8f7666d0223eb2369570c0e1` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xcd0678f92dd0d2cca7aa3818bf7805101635e215` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xceba13a84ca3ee92a60e5aa847070905245fe407` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xcf889a0902859662c17dc895abb7af49ee28a013` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xd7c7ee6547b890669c81aca711c37fb1f1e54f60` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xdbefeac5299af5e1b9b8350a785feed360701fb8` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xe126bcaa8360d3a91c72cbf7bc50d51b7a6cbf01` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xe207ea201a1ac5907e333c68e2ecd96fdb9389e1` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xe412c95f03ebcf79dfa9c8cb5ed9b3754be65916` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xe6e0646bd4fcd37ec7258d21295dd4cdc347f57a` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xec9ece08e1d7ec572f81df9ec6880cd2c24d02c1` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xee2b4ff90132ca8c25e98fe88cfdfb14b2f3dfdc` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xf6ad8eb021b894f1ebf82a4013214ef31a62c06f` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xf79101db3fc6d2e9dcc8da3d7c349cd49637a2a6` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |
| unverified unclassified | UnnamedContract<br>`0xf7a36c87c3a8909949638120f23cd721bf572032` | non_address_book | unknown | unknown | unverified | n/a | `0xb104ae8b7da105ca79cba208b9a41c1d63fff2c5` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xa1303e6199b319a891b79685f0537d289af1fc83` | NarToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 47 |

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
