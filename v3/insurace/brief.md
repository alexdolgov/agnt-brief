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

- Cover (`0x88ef6f235a4790292068646e79ee563339c796a0`, chain 1)
- Cover (`0xfba24bdbb36001f1f88b3a552c77ec1c10f5e4c0`, chain 56)
- Cover (`0x3e00fe643337a0f4e345539096ca01e6b8d4374a`, chain 137)
- Cover (`0xfba24bdbb36001f1f88b3a552c77ec1c10f5e4c0`, chain 43114)
- CoverCancellation (`0xcd17dba771ae9c8ad63d069eb9c973c842a7618f`, chain 1)
- CoverCancellation (`0x2419a92d96eabf7b65f2d0a4ff7a2e002925488a`, chain 56)
- CoverCancellation (`0x4761dc9e122ef4e06ef4b028aebcb28967934a49`, chain 137)
- CoverCancellation (`0x346886f3756ce8a1cfb41aa8a7ed13a5896f58c7`, chain 43114)
- CoverPurchase (`0x1d22085990b7571034afd936d31786ed68a2aa5d`, chain 1)
- CoverPurchase (`0xeedc1cd692e0d8a73264126c8374262d77ebf1fe`, chain 56)
- CoverPurchase (`0x134b906405e877585b7785abe54b45100e52a79c`, chain 137)
- CoverPurchase (`0xf2944068f81578f8e5b2b913f3c7039187dbde91`, chain 43114)
- INSUR token (`0x544c42fbb96b39b21df61cf322b5edc285ee7429`, chain 1)
- INSUR token (`0x3192ccddf1cdce4ff055ebc80f3f0231b86a7e30`, chain 56)
- INSUR token (`0x8a0e8b4b0903929f47c3ea30973940d4a9702067`, chain 137)
- INSUR token (`0x544c42fbb96b39b21df61cf322b5edc285ee7429`, chain 43114)
- LPToken (`0x07d8d49c5751566962a5169a9c8efdf64d1ca00b`, chain 1)
- LPTokenAVAX (`0xdecafc91000d4d3802a0562a8fb896f29b6a7480`, chain 43114)
- LPTokenBNB (`0x563d10af7395db31f9b0030b39fc4e3ef2598fee`, chain 56)
- LPTokenBUSD (`0xdbbb520b40c7b7c6498dbd532aee5e28c62b3611`, chain 56)
- LPTokenBUSDT (`0x22182ee443e109472fa3ff95311e4532ff5880f9`, chain 56)
- LPTokenDAI (`0x5157e052ae30381e38874a9b3452aabc9f145182`, chain 1)
- LPTokenDAI (`0x09eaa5c29cb01b39b544db165f484a0d015e562b`, chain 137)
- LPTokenDAIE (`0xa29b59a149f62d390dee27b144c0092ca7dbba96`, chain 43114)
- LPTokenETH (`0xdf8bec949367b677b7c951219ed66035ddc73d3f`, chain 1)
- LPTokenETH (`0x5b9d6666398b86e2541b08b00468ae6434f79441`, chain 56)
- LPTokenINSUR (`0x7e68521a2814a84868da716b9f436b53e6764c1d`, chain 1)
- LPTokenINSUR (`0xa5eb163588e25f6de18b9e164ba39daa6086f52b`, chain 56)
- LPTokenINSUR (`0xdbbb520b40c7b7c6498dbd532aee5e28c62b3611`, chain 137)
- LPTokenINSUR (`0x563d10af7395db31f9b0030b39fc4e3ef2598fee`, chain 43114)
- LPTokenMATIC (`0x599b132328a07b51b833609314824570a99ab9b0`, chain 137)
- LPTokenMUSD (`0xd9aae8f651f323cbb39e328b8fda741d11a231e0`, chain 1)
- LPTokenUSDC (`0x3d9317a27f3d83f0821deeeb0befdb68d4c9cd47`, chain 1)
- LPTokenUSDC (`0xf2ce369b6e2b96952741af463dddd7061f565946`, chain 56)
- LPTokenUSDC (`0xdecafc91000d4d3802a0562a8fb896f29b6a7480`, chain 137)
- LPTokenUSDCE (`0x5b9d6666398b86e2541b08b00468ae6434f79441`, chain 43114)
- LPTokenUSDT (`0x8ce730bbaf5ed1b9e8cf2d857f474bdcdeb22275`, chain 1)
- LPTokenUSDT (`0xa29b59a149f62d390dee27b144c0092ca7dbba96`, chain 137)
- LPTokenUSDTE (`0xdbbb520b40c7b7c6498dbd532aee5e28c62b3611`, chain 43114)
- LPTokenWETH (`0xee516e05cecfee5fe72930f3b38b87594434fd00`, chain 1)
- LPTokenWETH (`0x563d10af7395db31f9b0030b39fc4e3ef2598fee`, chain 137)
- LPTokenWETHE (`0x22182ee443e109472fa3ff95311e4532ff5880f9`, chain 43114)
- RewardController (`0x9933b0419cfb71791da75ac2dcea952d0875c967`, chain 1)
- RewardController (`0x265ab8950821a4a4e8ced3c81905e4d4488dfc4c`, chain 56)
- RewardController (`0x7d8c3f38c8545a770d57c8043d54e5715b1c584e`, chain 137)
- RewardController (`0x265ab8950821a4a4e8ced3c81905e4d4488dfc4c`, chain 43114)
- StakersPoolV2 (`0x136d841d4bece3fc0e4debb94356d8b6b4b93209`, chain 1)
- StakersPoolV2 (`0xd50e8ce9d5c1f5228bcc77e318907bb4960578ef`, chain 56)
- StakersPoolV2 (`0xd2171abb60d2994cf9acb767f2116cf47bbf596f`, chain 137)
- StakersPoolV2 (`0xf851cbb9940f8baebd1d0eaf259335c108e9e893`, chain 43114)
- StakingV2Controller (`0x7d8c3f38c8545a770d57c8043d54e5715b1c584e`, chain 1)
- StakingV2Controller (`0xdecafc91000d4d3802a0562a8fb896f29b6a7480`, chain 56)
- StakingV2Controller (`0xd50e8ce9d5c1f5228bcc77e318907bb4960578ef`, chain 137)
- StakingV2Controller (`0x599b132328a07b51b833609314824570a99ab9b0`, chain 43114)

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
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x077eb6ccc4d42e4d9adec63fa103c7a528ab4ae4` | ⚠️ Unaudited |
| CapitalPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f56f984cdff3f1a3a5300ff4493e372290d944c` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd841b4a74867a4e92c1627c8f99a717d0795e039` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0119fd9592d7acea88c9b0d04b794a82bed06dd5` | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbda6415502b0ddab9eda1d09f4f16286273fdbb6` | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07280d3143311b012ad268a74f2aa791713952ea` | ⚠️ Unaudited |
| ClaimAssessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x230648b346f96986712e81646fb8033432edb988` | ⚠️ Unaudited |
| Cover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05dc45b1c03657d141696aae0211c84818f520b3` | ⚠️ Unaudited |
| Cover | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387504 | `0x88ef6f235a4790292068646e79ee563339c796a0` | ⚠️ Unaudited |
| Cover | unknown | project_anchor | own_supporting | 0 | bsc | unit-387564 | `0xfba24bdbb36001f1f88b3a552c77ec1c10f5e4c0` | ⚠️ Unaudited |
| Cover | unknown | project_anchor | own_supporting | 0 | polygon | unit-387513 | `0x3e00fe643337a0f4e345539096ca01e6b8d4374a` | ⚠️ Unaudited |
| Cover | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387536 | `0xfba24bdbb36001f1f88b3a552c77ec1c10f5e4c0` | ⚠️ Unaudited |
| CoverCancellation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387507 | `0xcd17dba771ae9c8ad63d069eb9c973c842a7618f` | ⚠️ Unaudited |
| CoverCancellation | unknown | project_anchor | own_supporting | 0 | bsc | unit-387553 | `0x2419a92d96eabf7b65f2d0a4ff7a2e002925488a` | ⚠️ Unaudited |
| CoverCancellation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07b13a8678a116c644f6359dcb9f2f17afa47c6f` | ⚠️ Unaudited |
| CoverCancellation | unknown | project_anchor | own_supporting | 0 | polygon | unit-387514 | `0x4761dc9e122ef4e06ef4b028aebcb28967934a49` | ⚠️ Unaudited |
| CoverCancellation | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387526 | `0x346886f3756ce8a1cfb41aa8a7ed13a5896f58c7` | ⚠️ Unaudited |
| CoverPurchase | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387498 | `0x1d22085990b7571034afd936d31786ed68a2aa5d` | ⚠️ Unaudited |
| CoverPurchase | unknown | project_anchor | own_supporting | 0 | bsc | unit-387562 | `0xeedc1cd692e0d8a73264126c8374262d77ebf1fe` | ⚠️ Unaudited |
| CoverPurchase | unknown | project_anchor | own_supporting | 0 | polygon | unit-387512 | `0x134b906405e877585b7785abe54b45100e52a79c` | ⚠️ Unaudited |
| CoverPurchase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04fa84ad4a37b159cc0a3a4a9385b5f0bcde930a` | ⚠️ Unaudited |
| CoverPurchase | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387534 | `0xf2944068f81578f8e5b2b913f3c7039187dbde91` | ⚠️ Unaudited |
| HelloWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98` | ⚠️ Unaudited |
| INSUR token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387501 | `0x544c42fbb96b39b21df61cf322b5edc285ee7429` | ⚠️ Unaudited |
| INSUR token | unknown | project_anchor | own_supporting | 0 | bsc | unit-387555 | `0x3192ccddf1cdce4ff055ebc80f3f0231b86a7e30` | ⚠️ Unaudited |
| INSUR token | unknown | project_anchor | own_supporting | 0 | polygon | unit-387518 | `0x8a0e8b4b0903929f47c3ea30973940d4a9702067` | ⚠️ Unaudited |
| INSUR token | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387527 | `0x544c42fbb96b39b21df61cf322b5edc285ee7429` | ⚠️ Unaudited |
| InsurAceRenounceINSUROwnership | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c702f586e3827f27f4cfd94c992bd61ad95a8e7` | ⚠️ Unaudited |
| InsurAceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1452b535ebeb212026f77511147dfdc821d91cbe` | ⚠️ Unaudited |
| LPToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387565 | `0x07d8d49c5751566962a5169a9c8efdf64d1ca00b` | ⚠️ Unaudited |
| LPTokenAVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387533 | `0xdecafc91000d4d3802a0562a8fb896f29b6a7480` | ⚠️ Unaudited |
| LPTokenBNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-387556 | `0x563d10af7395db31f9b0030b39fc4e3ef2598fee` | ⚠️ Unaudited |
| LPTokenBUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-387560 | `0xdbbb520b40c7b7c6498dbd532aee5e28c62b3611` | ⚠️ Unaudited |
| LPTokenBUSDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-387552 | `0x22182ee443e109472fa3ff95311e4532ff5880f9` | ⚠️ Unaudited |
| LPTokenDAI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387500 | `0x5157e052ae30381e38874a9b3452aabc9f145182` | ⚠️ Unaudited |
| LPTokenDAI | unknown | project_anchor | own_supporting | 0 | polygon | unit-387511 | `0x09eaa5c29cb01b39b544db165f484a0d015e562b` | ⚠️ Unaudited |
| LPTokenDAIE | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387531 | `0xa29b59a149f62d390dee27b144c0092ca7dbba96` | ⚠️ Unaudited |
| LPTokenETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387509 | `0xdf8bec949367b677b7c951219ed66035ddc73d3f` | ⚠️ Unaudited |
| LPTokenETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-387557 | `0x5b9d6666398b86e2541b08b00468ae6434f79441` | ⚠️ Unaudited |
| LPTokenINSUR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387503 | `0x7e68521a2814a84868da716b9f436b53e6764c1d` | ⚠️ Unaudited |
| LPTokenINSUR | unknown | project_anchor | own_supporting | 0 | bsc | unit-387558 | `0xa5eb163588e25f6de18b9e164ba39daa6086f52b` | ⚠️ Unaudited |
| LPTokenINSUR | unknown | project_anchor | own_supporting | 0 | polygon | unit-387522 | `0xdbbb520b40c7b7c6498dbd532aee5e28c62b3611` | ⚠️ Unaudited |
| LPTokenINSUR | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387528 | `0x563d10af7395db31f9b0030b39fc4e3ef2598fee` | ⚠️ Unaudited |
| LPTokenMATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-387516 | `0x599b132328a07b51b833609314824570a99ab9b0` | ⚠️ Unaudited |
| LPTokenMUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387508 | `0xd9aae8f651f323cbb39e328b8fda741d11a231e0` | ⚠️ Unaudited |
| LPTokenUSDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387499 | `0x3d9317a27f3d83f0821deeeb0befdb68d4c9cd47` | ⚠️ Unaudited |
| LPTokenUSDC | unknown | project_anchor | own_supporting | 0 | bsc | unit-387563 | `0xf2ce369b6e2b96952741af463dddd7061f565946` | ⚠️ Unaudited |
| LPTokenUSDC | unknown | project_anchor | own_supporting | 0 | polygon | unit-387523 | `0xdecafc91000d4d3802a0562a8fb896f29b6a7480` | ⚠️ Unaudited |
| LPTokenUSDCE | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387530 | `0x5b9d6666398b86e2541b08b00468ae6434f79441` | ⚠️ Unaudited |
| LPTokenUSDT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387505 | `0x8ce730bbaf5ed1b9e8cf2d857f474bdcdeb22275` | ⚠️ Unaudited |
| LPTokenUSDT | unknown | project_anchor | own_supporting | 0 | polygon | unit-387519 | `0xa29b59a149f62d390dee27b144c0092ca7dbba96` | ⚠️ Unaudited |
| LPTokenUSDTE | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387532 | `0xdbbb520b40c7b7c6498dbd532aee5e28c62b3611` | ⚠️ Unaudited |
| LPTokenWETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387510 | `0xee516e05cecfee5fe72930f3b38b87594434fd00` | ⚠️ Unaudited |
| LPTokenWETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-387515 | `0x563d10af7395db31f9b0030b39fc4e3ef2598fee` | ⚠️ Unaudited |
| LPTokenWETHE | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387524 | `0x22182ee443e109472fa3ff95311e4532ff5880f9` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x031c832caa8f91040374799528ec446017b0f1aa` | ⚠️ Unaudited |
| RewardController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387506 | `0x9933b0419cfb71791da75ac2dcea952d0875c967` | ⚠️ Unaudited |
| RewardController | unknown | project_anchor | own_supporting | 0 | bsc | unit-387554 | `0x265ab8950821a4a4e8ced3c81905e4d4488dfc4c` | ⚠️ Unaudited |
| RewardController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x345518162d4afd5bdcf73ee8175e2dbd6bce98a0` | ⚠️ Unaudited |
| RewardController | unknown | project_anchor | own_supporting | 0 | polygon | unit-387517 | `0x7d8c3f38c8545a770d57c8043d54e5715b1c584e` | ⚠️ Unaudited |
| RewardController | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387525 | `0x265ab8950821a4a4e8ced3c81905e4d4488dfc4c` | ⚠️ Unaudited |
| StakersPoolV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387566 | `0x136d841d4bece3fc0e4debb94356d8b6b4b93209` | ⚠️ Unaudited |
| StakersPoolV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-387559 | `0xd50e8ce9d5c1f5228bcc77e318907bb4960578ef` | ⚠️ Unaudited |
| StakersPoolV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-387520 | `0xd2171abb60d2994cf9acb767f2116cf47bbf596f` | ⚠️ Unaudited |
| StakersPoolV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387535 | `0xf851cbb9940f8baebd1d0eaf259335c108e9e893` | ⚠️ Unaudited |
| StakingV2Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05f787b1147b0a9eae5acdcdb2ae905ac0577119` | ⚠️ Unaudited |
| StakingV2Controller | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387502 | `0x7d8c3f38c8545a770d57c8043d54e5715b1c584e` | ⚠️ Unaudited |
| StakingV2Controller | unknown | project_anchor | own_supporting | 0 | bsc | unit-387561 | `0xdecafc91000d4d3802a0562a8fb896f29b6a7480` | ⚠️ Unaudited |
| StakingV2Controller | unknown | project_anchor | own_supporting | 0 | polygon | unit-387521 | `0xd50e8ce9d5c1f5228bcc77e318907bb4960578ef` | ⚠️ Unaudited |
| StakingV2Controller | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387529 | `0x599b132328a07b51b833609314824570a99ab9b0` | ⚠️ Unaudited |
| Transfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa38b8632153b2d083a94590e577298c0ae50698` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0570d8f9fa154b182a537798a2f5cd14c728c07d` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x002e97b041e42697def62afab53c99c1dd5d8dbb` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000de668684839f97d4845f32a43e913366ec08c` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x169bf778a5eadab0209c0524ea5ce8e7a616e33b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387537 | `0x0acc304ae94d25e5277fc5c92e0b40cd854229df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387538 | `0x1291e253adde40f71fada9e19f31516ccdf86eea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387539 | `0x1a8bc40f05040615dc8d6912132ab04fe8386312` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387540 | `0x351eb184d95281ee3e6204784e98e23f70bf500d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387541 | `0x42303647edd533d9ed19dfc9ac1b52652cbc8d84` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387542 | `0x436627863035ef1a63a5eb0da7116e395ed5feb1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387543 | `0x5d8872ec9ace68b6595a2095da6a0f9cd2bfd216` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387544 | `0x6a9a24a85c6f1ae8d04e012e817b3ed7876e8c43` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387545 | `0xb63b6e6216333c91c047403b43bd16dd57164104` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387546 | `0xc051bd151142ced175b1534dfad4bc9f428d2ffb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387547 | `0xca087cdb90bc027435e581533eafd556ab550708` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387548 | `0xd31892bda305898782437e5c187c5fe93db2f9d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387549 | `0xeda60502e727f556965e841d22fb3a0fd6cf7c3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387550 | `0xf2c2e01d9c926a7ac45a535fdab3d88ab0b43ae5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387551 | `0xf3198bfdbcad236f37b2d1a91b8636f6970d1558` | ❓ Unverified |

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
| ethereum | `0x07d8d49c5751566962a5169a9c8efdf64d1ca00b` | LPToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x136d841d4bece3fc0e4debb94356d8b6b4b93209` | StakersPoolV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
