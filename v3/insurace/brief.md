# Agentic Audit Brief: InsurAce

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

- Project: InsurAce (`insurace`)
- Website: [https://www.insurace.io/](https://www.insurace.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum, goerli, polygon
- Contract surface: 90 unique implementations (90 raw deployments)
- Coverage basis: 0/54 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $129,198.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for InsurAce. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 54 contract row(s) across avalanche, bsc, ethereum, goerli, polygon. Structural roles: 36 supporting, 13 core, 5 infra. 53 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 54
- Structural roles: supporting (36), core (13), infra (5)
- Contract kinds: contract (49), abstract (5)
- Detected standards: erc1967proxy (53)
- Frameworks: openzeppelin (53), openzeppelin-upgradeable (36)
- Upgradeable-pattern rows: 53

## Fork Analysis

0 of 54 contracts are derived from known codebases. 54 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Cover (`0x88ef6f...c796a0`, chain 1)
- Cover (`0xfba24b...f5e4c0`, chain 56)
- Cover (`0x3e00fe...d4374a`, chain 137)
- Cover (`0xfba24b...f5e4c0`, chain 43114)
- CoverCancellation (`0xcd17db...a7618f`, chain 1)
- CoverCancellation (`0x2419a9...25488a`, chain 56)
- CoverCancellation (`0x4761dc...934a49`, chain 137)
- CoverCancellation (`0x346886...6f58c7`, chain 43114)
- CoverPurchase (`0x1d2208...a2aa5d`, chain 1)
- CoverPurchase (`0xeedc1c...ebf1fe`, chain 56)
- CoverPurchase (`0x134b90...52a79c`, chain 137)
- CoverPurchase (`0xf29440...dbde91`, chain 43114)
- INSUR token (`0x544c42...ee7429`, chain 1)
- INSUR token (`0x3192cc...6a7e30`, chain 56)
- INSUR token (`0x8a0e8b...702067`, chain 137)
- INSUR token (`0x544c42...ee7429`, chain 43114)
- LPToken (`0x07d8d4...1ca00b`, chain 1)
- LPTokenAVAX (`0xdecafc...6a7480`, chain 43114)
- LPTokenBNB (`0x563d10...598fee`, chain 56)
- LPTokenBUSD (`0xdbbb52...2b3611`, chain 56)
- LPTokenBUSDT (`0x22182e...5880f9`, chain 56)
- LPTokenDAI (`0x5157e0...145182`, chain 1)
- LPTokenDAI (`0x09eaa5...5e562b`, chain 137)
- LPTokenDAIE (`0xa29b59...dbba96`, chain 43114)
- LPTokenETH (`0xdf8bec...c73d3f`, chain 1)
- LPTokenETH (`0x5b9d66...f79441`, chain 56)
- LPTokenINSUR (`0x7e6852...764c1d`, chain 1)
- LPTokenINSUR (`0xa5eb16...86f52b`, chain 56)
- LPTokenINSUR (`0xdbbb52...2b3611`, chain 137)
- LPTokenINSUR (`0x563d10...598fee`, chain 43114)
- LPTokenMATIC (`0x599b13...9ab9b0`, chain 137)
- LPTokenMUSD (`0xd9aae8...a231e0`, chain 1)
- LPTokenUSDC (`0x3d9317...c9cd47`, chain 1)
- LPTokenUSDC (`0xf2ce36...565946`, chain 56)
- LPTokenUSDC (`0xdecafc...6a7480`, chain 137)
- LPTokenUSDCE (`0x5b9d66...f79441`, chain 43114)
- LPTokenUSDT (`0x8ce730...b22275`, chain 1)
- LPTokenUSDT (`0xa29b59...dbba96`, chain 137)
- LPTokenUSDTE (`0xdbbb52...2b3611`, chain 43114)
- LPTokenWETH (`0xee516e...34fd00`, chain 1)
- LPTokenWETH (`0x563d10...598fee`, chain 137)
- LPTokenWETHE (`0x22182e...5880f9`, chain 43114)
- RewardController (`0x9933b0...75c967`, chain 1)
- RewardController (`0x265ab8...8dfc4c`, chain 56)
- RewardController (`0x7d8c3f...1c584e`, chain 137)
- RewardController (`0x265ab8...8dfc4c`, chain 43114)
- StakersPoolV2 (`0x136d84...b93209`, chain 1)
- StakersPoolV2 (`0xd50e8c...0578ef`, chain 56)
- StakersPoolV2 (`0xd2171a...bf596f`, chain 137)
- StakersPoolV2 (`0xf851cb...e9e893`, chain 43114)
- StakingV2Controller (`0x7d8c3f...1c584e`, chain 1)
- StakingV2Controller (`0xdecafc...6a7480`, chain 56)
- StakingV2Controller (`0xd50e8c...0578ef`, chain 137)
- StakingV2Controller (`0x599b13...9ab9b0`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 54; live-surface rows included: 54 (54 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 54/69 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/54 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 54 own, 15 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 54 of 90 unique; 36 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/75
- Verified + Unaudited implementations: 75
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 90
- Raw deployments: 90
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

### ⚠️ Verified + Unaudited (75)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x077eb6...ab4ae4` | ⚠️ Unaudited |
| CapitalPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f56f9...0d944c` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd841b4...95e039` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0119fd...d06dd5` | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbda641...3fdbb6` | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07280d...3952ea` | ⚠️ Unaudited |
| ClaimAssessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x230648...edb988` | ⚠️ Unaudited |
| Cover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05dc45...f520b3` | ⚠️ Unaudited |
| Cover | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387504 | `0x88ef6f...c796a0` | ⚠️ Unaudited |
| Cover | unknown | project_anchor | own_supporting | 0 | bsc | unit-387564 | `0xfba24b...f5e4c0` | ⚠️ Unaudited |
| Cover | unknown | project_anchor | own_supporting | 0 | polygon | unit-387513 | `0x3e00fe...d4374a` | ⚠️ Unaudited |
| Cover | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387536 | `0xfba24b...f5e4c0` | ⚠️ Unaudited |
| CoverCancellation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387507 | `0xcd17db...a7618f` | ⚠️ Unaudited |
| CoverCancellation | unknown | project_anchor | own_supporting | 0 | bsc | unit-387553 | `0x2419a9...25488a` | ⚠️ Unaudited |
| CoverCancellation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07b13a...a47c6f` | ⚠️ Unaudited |
| CoverCancellation | unknown | project_anchor | own_supporting | 0 | polygon | unit-387514 | `0x4761dc...934a49` | ⚠️ Unaudited |
| CoverCancellation | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387526 | `0x346886...6f58c7` | ⚠️ Unaudited |
| CoverPurchase | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387498 | `0x1d2208...a2aa5d` | ⚠️ Unaudited |
| CoverPurchase | unknown | project_anchor | own_supporting | 0 | bsc | unit-387562 | `0xeedc1c...ebf1fe` | ⚠️ Unaudited |
| CoverPurchase | unknown | project_anchor | own_supporting | 0 | polygon | unit-387512 | `0x134b90...52a79c` | ⚠️ Unaudited |
| CoverPurchase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04fa84...de930a` | ⚠️ Unaudited |
| CoverPurchase | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387534 | `0xf29440...dbde91` | ⚠️ Unaudited |
| HelloWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04de5e...7d1f98` | ⚠️ Unaudited |
| INSUR token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387501 | `0x544c42...ee7429` | ⚠️ Unaudited |
| INSUR token | unknown | project_anchor | own_supporting | 0 | bsc | unit-387555 | `0x3192cc...6a7e30` | ⚠️ Unaudited |
| INSUR token | unknown | project_anchor | own_supporting | 0 | polygon | unit-387518 | `0x8a0e8b...702067` | ⚠️ Unaudited |
| INSUR token | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387527 | `0x544c42...ee7429` | ⚠️ Unaudited |
| InsurAceRenounceINSUROwnership | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c702f...95a8e7` | ⚠️ Unaudited |
| InsurAceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1452b5...d91cbe` | ⚠️ Unaudited |
| LPToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387565 | `0x07d8d4...1ca00b` | ⚠️ Unaudited |
| LPTokenAVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387533 | `0xdecafc...6a7480` | ⚠️ Unaudited |
| LPTokenBNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-387556 | `0x563d10...598fee` | ⚠️ Unaudited |
| LPTokenBUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-387560 | `0xdbbb52...2b3611` | ⚠️ Unaudited |
| LPTokenBUSDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-387552 | `0x22182e...5880f9` | ⚠️ Unaudited |
| LPTokenDAI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387500 | `0x5157e0...145182` | ⚠️ Unaudited |
| LPTokenDAI | unknown | project_anchor | own_supporting | 0 | polygon | unit-387511 | `0x09eaa5...5e562b` | ⚠️ Unaudited |
| LPTokenDAIE | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387531 | `0xa29b59...dbba96` | ⚠️ Unaudited |
| LPTokenETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387509 | `0xdf8bec...c73d3f` | ⚠️ Unaudited |
| LPTokenETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-387557 | `0x5b9d66...f79441` | ⚠️ Unaudited |
| LPTokenINSUR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387503 | `0x7e6852...764c1d` | ⚠️ Unaudited |
| LPTokenINSUR | unknown | project_anchor | own_supporting | 0 | bsc | unit-387558 | `0xa5eb16...86f52b` | ⚠️ Unaudited |
| LPTokenINSUR | unknown | project_anchor | own_supporting | 0 | polygon | unit-387522 | `0xdbbb52...2b3611` | ⚠️ Unaudited |
| LPTokenINSUR | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387528 | `0x563d10...598fee` | ⚠️ Unaudited |
| LPTokenMATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-387516 | `0x599b13...9ab9b0` | ⚠️ Unaudited |
| LPTokenMUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387508 | `0xd9aae8...a231e0` | ⚠️ Unaudited |
| LPTokenUSDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387499 | `0x3d9317...c9cd47` | ⚠️ Unaudited |
| LPTokenUSDC | unknown | project_anchor | own_supporting | 0 | bsc | unit-387563 | `0xf2ce36...565946` | ⚠️ Unaudited |
| LPTokenUSDC | unknown | project_anchor | own_supporting | 0 | polygon | unit-387523 | `0xdecafc...6a7480` | ⚠️ Unaudited |
| LPTokenUSDCE | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387530 | `0x5b9d66...f79441` | ⚠️ Unaudited |
| LPTokenUSDT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387505 | `0x8ce730...b22275` | ⚠️ Unaudited |
| LPTokenUSDT | unknown | project_anchor | own_supporting | 0 | polygon | unit-387519 | `0xa29b59...dbba96` | ⚠️ Unaudited |
| LPTokenUSDTE | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387532 | `0xdbbb52...2b3611` | ⚠️ Unaudited |
| LPTokenWETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387510 | `0xee516e...34fd00` | ⚠️ Unaudited |
| LPTokenWETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-387515 | `0x563d10...598fee` | ⚠️ Unaudited |
| LPTokenWETHE | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387524 | `0x22182e...5880f9` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x031c83...b0f1aa` | ⚠️ Unaudited |
| RewardController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387506 | `0x9933b0...75c967` | ⚠️ Unaudited |
| RewardController | unknown | project_anchor | own_supporting | 0 | bsc | unit-387554 | `0x265ab8...8dfc4c` | ⚠️ Unaudited |
| RewardController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x345518...ce98a0` | ⚠️ Unaudited |
| RewardController | unknown | project_anchor | own_supporting | 0 | polygon | unit-387517 | `0x7d8c3f...1c584e` | ⚠️ Unaudited |
| RewardController | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387525 | `0x265ab8...8dfc4c` | ⚠️ Unaudited |
| StakersPoolV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387566 | `0x136d84...b93209` | ⚠️ Unaudited |
| StakersPoolV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-387559 | `0xd50e8c...0578ef` | ⚠️ Unaudited |
| StakersPoolV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-387520 | `0xd2171a...bf596f` | ⚠️ Unaudited |
| StakersPoolV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387535 | `0xf851cb...e9e893` | ⚠️ Unaudited |
| StakingV2Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05f787...577119` | ⚠️ Unaudited |
| StakingV2Controller | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387502 | `0x7d8c3f...1c584e` | ⚠️ Unaudited |
| StakingV2Controller | unknown | project_anchor | own_supporting | 0 | bsc | unit-387561 | `0xdecafc...6a7480` | ⚠️ Unaudited |
| StakingV2Controller | unknown | project_anchor | own_supporting | 0 | polygon | unit-387521 | `0xd50e8c...0578ef` | ⚠️ Unaudited |
| StakingV2Controller | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387529 | `0x599b13...9ab9b0` | ⚠️ Unaudited |
| Transfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa38b8...e50698` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0570d8...28c07d` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x002e97...5d8dbb` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000de6...6ec08c` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x169bf7...16e33b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387537 | `0x0acc30...4229df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387538 | `0x1291e2...f86eea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387539 | `0x1a8bc4...386312` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387540 | `0x351eb1...bf500d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387541 | `0x423036...bc8d84` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387542 | `0x436627...d5feb1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387543 | `0x5d8872...bfd216` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387544 | `0x6a9a24...6e8c43` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387545 | `0xb63b6e...164104` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387546 | `0xc051bd...8d2ffb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387547 | `0xca087c...550708` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387548 | `0xd31892...b2f9d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387549 | `0xeda605...cf7c3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387550 | `0xf2c2e0...b43ae5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387551 | `0xf3198b...0d1558` | ❓ Unverified |

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
| ethereum | `0x07d8d4...1ca00b` | LPToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x136d84...b93209` | StakersPoolV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 67 |

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
