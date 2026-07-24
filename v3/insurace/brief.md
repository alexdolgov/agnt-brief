# Agentic Audit Brief: InsurAce

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: InsurAce (`insurace`)
- Website: [https://www.insurace.io/](https://www.insurace.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, bsc, ethereum, goerli, polygon
- Contract surface: 579 unique implementations (581 raw deployments)
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
- Outside the address book: 510 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 54 of 579 unique; 525 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/75
- Verified + Unaudited implementations: 75
- Verified by bytecode match: 0
- Unverified implementations: 504
- Unique implementations: 579
- Raw deployments: 581
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
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x077eb6ccc4d42e4d9adec63fa103c7a528ab4ae4`; ethereum `0xab74f01078b232713a76cff934ead8efb94b28fd` | ⚠️ Unaudited |
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
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0570d8f9fa154b182a537798a2f5cd14c728c07d`; ethereum `0xcad3b800df57db14f615fc7d8fb0a6002dc9d1b8` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x002e97b041e42697def62afab53c99c1dd5d8dbb` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000de668684839f97d4845f32a43e913366ec08c` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x169bf778a5eadab0209c0524ea5ce8e7a616e33b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (504)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00d0bc3144583b0c41ae023b4bbc70dc189ac86f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01473526fed9a435c50dc851fa2bdb0e78712a55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08103e3d2eae7fca6d145662ca4806bd15833c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09eaa5c29cb01b39b544db165f484a0d015e562b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab5f0456074795e37fec8934e3e79578179fb96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b14930ca8d6cc1576c06e145fda0dc2673e501d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b832d84c4a89337a9f9950ed797c9ccf07ac40b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d5ab74e397fc36e5a4604be5d7bd22276f4e203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0daccf43fd1e0c93878892e4790e64d2ba357a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e110c4ae35c4952017c55cf514500dc5283adfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e91c61692af6e948139a9780380f8e75daada8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1161e866e4bc69e3109c0721f13569b235e219b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a3e6d2df7aa5d95f3cdedc29eba9ec4d67f1e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11fd00bb7719897cd7608e45248cea0a574b77b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a3a7b6b44f87ceea085aec08f07e5205e8b073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x198cc0b0fa0ec489a0b53ff1d437578a5d795857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b5ea0a3199156cda77759c72f955c80ba3b5426` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c50c36c6bcba0c44af9dcf47d9e728b486270aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20e9b84dd6895ba3b3b330556ce60fa4613c8020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ce6fdbb2ff55b83ddfa92a7ded1a07198ccdac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faf2cebacfa43607d6835fb72016f6be15840a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265ab8950821a4a4e8ced3c81905e4d4488dfc4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28cc6c5a3c3f2981cb36d547efd580a82fd52285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a716d2655fa892dd41aa3ccbbd96a284fbb35d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a9f5b2abd159e53d7f9937f6159014f9504dbb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aa269cac59ddeaa136c4af99d3919d86e8c3aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ac063d975e292c1c67f4d68080253e1cfbb185b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b04c914536631188bde64bdedbb841c154cdccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c298e37bb283097b5f414e1e8f58f4c969558be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cfc10be8123d77f2b7791de72cdfef9ee986e40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fbb2f1009ac781184eeb0c8cdd6735d8af69d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fd5e856c9f330aca68256f92b5293d44273c813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fdba65488b40541f02126ddc700994506a2903d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3103745223f38818d35fdae8ae90c023076e8647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31abc4197950bea7c6dad992491f83281b40de11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c115f03626eef2530b8f4f3292b0c743c43172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x324fd89cd60a957e0cf1ec8fc4332b05d1fd0ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32c0d0657db074e83898c8bcbb38e88e0e0e3e3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38ea67ccd25ec6e87cee66111cbb092505af46c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a812936f2edcf77c29614afca3d3a7b8ddc5217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3adbe9cbf8c39172b259745cecee3838c35e42a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d279268dfa3ccf2233ef3c89b0e2ce40008af06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e602e174ff173b5d3a78bec3f0bf90ffe8bf1a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41122cc956585fd8da79488a592cdba37275e38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42c09edd43c82057f9eb337827edda2d64a8f639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43700ef48a0fdab111a71ad586220a6e1a1262e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44c483822d6ddabb66d9bd6ea63224e0cdd38747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48e5045325f7da94f5794d033b67346943b5f6a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49f8796be06fff4db4987b050ec389198c16abb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1cf4a3eb81d2956e071c288c0e47d882b17883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b45b1bb4959fc34675ecff39e8fe6dc9c46fb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ce5b88ef8a24b994e98ee8ef81296b3ca812160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ee6f1266b55c9f3857fb2cbe322b2ba1f5856bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f2593dbeb0a1d24162880af17c0aa682e5d6ce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f58eac23739ce3649fbedf21b09849c768a1878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c6ce4ed24cfb4141354e94f4871f76df947453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x556bade0b4c0d1d27ee80f5afba71cc5cfedace3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55f3678395f1c3508df7f01af57e672a4c3c6acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5726a5ff781c4ec742837f6a8a7cbffb87e936e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa94f9ef11ebb217b524d8ab24c2ece30fd48f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bdeb3ccd5c5f06da2f5216186374f089fe5318e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f167230f5bc8df3adf6050f84fd39568029d8fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61ed1411c3f8f0bd0d7058544cc7035e9d4fabbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x622d504fb93170c4c42cc77cb7cb37e3e467b509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x624cd27576cde1176003403b9972f56ff102f959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68d349b65126977705c6e98126751a3b7a4f279c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af4fb696c31c3bffb1d9d5fc92c641846144e4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b077a1c24a2bc92e0b731fb6bcc85db3649a170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b481e297482eb0f315c2a2267a71b5bad8eb2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b94feebf8864de0bf434182bc9936601eff3fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6db75a7095a1c8914c356e1b0cdb836fc3a917bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x700c0de94affcf71d692d78ff986df2d40cafd55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71291031a2af1426619245b07704123be5d1edd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x744f3af0a8b0b79b1d5d480f828f8912e8a26b7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c2ca158079af258f686727afac80bfdb7c09a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7728ce4fa9ba9f67a837f88ee9ad8294cf1d3a15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d143076b451164bd91206a92eb374882caf0817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e73ec0ae787926cafade95c78eebb1da9217a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fce38a965342241188c40e8892563d5268004a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8061834d6fe1da862d2caed6ccfa430faf52d1f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81a5c230f9680ec0018d05c6bade35dd8a0901e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82c11c0a38aa1f960cbbd98f8153812e0bf40fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x830b795ce53543e4c29c823f109a024a614dbcdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x830c91ff4a8f913cabcc5cd6d06d97e5cc312c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x845e8a027ec3e132ac5292f28283d17ef6d8184f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84f24b1e730d04962f44a14ffd2accd3f7c5f885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86143f6d4aed2f5c983d1232e3432ac8f1b03332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x864460cd928c0027e25838cfef617191991bf89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87c07b48c8f656e43542e93009495c4daab24e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b841a105c9c742390c2dea724233164e6404052` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92eb344570df0f95f736a0baa769e5f598078f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93087a9bdb420f446e3c798ccb926ad3a2a11085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9353ad2b96140ee2dde3ee1b82e9dd04796c765d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939ebc2d1c6ff3aba58b5f0f0037d3be3c916ad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95f2a2f84bf8951f26b871475ace08cadea502ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96b91e0db7e558029ad77ab7f90480a665f389fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9723ab4fd0126bbabc03a19146e5798eb1320bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e4921bdbaa0839f6eba67927ab629b0a41c8c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f09d1bad678a52e8ab808a08a0177355a73cd86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa03d480cd2e10ad36ed098898357dbe4c349fb02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa237a4e37c90e87c41b534a03ccd8daaf85bd14e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2d0a59bc1df3ab3c96377246ae47a6eb559c0aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa58c7bf832a385c55a7e512b032a9dfa4659df5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa60c8834966e0cc5a0fd8db7da1a60b970a8334f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8e34c91510d61e3a309b6a2f662d3f35137a11a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa54d33d50b1e20c4cbd709bd8f730b64442b8ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac89b9ace2b8e4368a3a6d2f7acab9c897073412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad327db06625c0dc69f4a628852cce5cbec198b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafc3a52bf951c3540883e7156eaba030e444328b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb22cee85a602bde27f0f980bb59d9836b17578e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3004150dbe0f45d3a2df4948002df02e6c3d1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3e20bbd2aae0535098e0626690f0362749fec50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5bcae6425a5ce0992181a6bb19992ae82bddafb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc677a8b00bd7423bc85263f8a72019b0fb77d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc21378d256696c9e325e04bff0ded73d2e5e50a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc27bf654a9d4de60d9c8e8cef68813fd804b116d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc84e5d964f753d4763647f60ac135b1e1677f4b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc93ddbba833fdd3f1305168aa84f428711c7fe96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9a16aa494e94ec04179255ff90be383f33b4649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca84e10ec57299cd2cb057b41e25c4bbaf8de4ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc23c65c2a53f1a8601cae6d63abdc08eddb1b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc29034ce3f4b14c4125cc370bb098a76322ce33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0415c384f5cbb2685c7d4fb219d44938ced598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdd7dcf66916a19c64d519765b67947d3d8e944c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0cadb6d1aa74bff6d58e71b18238ae6ae943aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2079336ecbbc7a9c15270f1cf0d21a85107e194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd589c81bd6db66fa1a0853d4bdd452fa91aee0ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6355d9eb853df16cf6a66e6621e30948a3807f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd665fb1f784f254d5c46a2da50c811c13b22ed3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9c21ef3607b065edf8e0038f902fc24bdf79c5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdde427270035b916845f18fb453d6e5f3cc88427` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdecafc91000d4d3802a0562a8fb896f29b6a7480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16685dc2b5589aeab5779de77b0e5b3ac15e9c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe223eb9f1c131212f2fcbc6222fb817e254ce3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe70ff248cc0820c17ee6602719ff53f58f3bdb97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe76c5d71275b6ae87aea256496bde10d2fdd9863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecfec90e3a6e38f91d9ac2fba3fc78bef4131823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0b3d052075f49cb216f1ed46b4ddff5d06d4b90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1131de7333aba9276ad3ed50466fdba50e03a24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2ade7d4fc57e8d03cfae81e20ffb91db448e600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf63768472f5fb188f32118cb6bad733a69d9d1a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf906bba711ef0eb7940f41a649a6a7baaca22d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb75c4bc0f1d6d410cb2eed848d7125aaf5ab7ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc340cc66e2838752bb538e1491756e03f7cf4bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdacfb08dcc0ab0057089eb046069b44aa8db087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff9706a1dbd6dda8aea41a9e7433b195468d1e46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffcf07ef5275384fe55d7f2011ca2d9abab6da7b` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x065013247cc86a746c824eff7430a200d45bc44f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06dfd5baf4606278c7a0a18ce4892da2a406a85b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08103e3d2eae7fca6d145662ca4806bd15833c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09c93bbc09a86718cf4ae78173433114380370f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09eaa5c29cb01b39b544db165f484a0d015e562b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d33c809eef0ac84fb92bab81214147e15ad27b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d775a7562fd8a5e51747ba4983cb4d893944352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1161e866e4bc69e3109c0721f13569b235e219b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11a3e6d2df7aa5d95f3cdedc29eba9ec4d67f1e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x136d841d4bece3fc0e4debb94356d8b6b4b93209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1452b535ebeb212026f77511147dfdc821d91cbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1930336ce150fbef81fb5e1e0f88b502f7864023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x198cc0b0fa0ec489a0b53ff1d437578a5d795857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1996576feacee03ac7afc1524aca9bd03fbf3466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d6b0b2ff17abfdd173a04109242a4d8f7f67a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f99c1a36f52da8222889569f6b20ff195608ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21e24418913d3975ebec6fa0e66587bd89284efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2211ee5f127d6e7f36cc5bc3d41539b4f073af37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24612e2d1ba9db0438870121b5bedc5f7e52a677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2592632dd37139c5b688f61170329e444cdbaeae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25a186a4cde18299731e6583aa94b5ed82b9c003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a9f5b2abd159e53d7f9937f6159014f9504dbb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c298e37bb283097b5f414e1e8f58f4c969558be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fbb2f1009ac781184eeb0c8cdd6735d8af69d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x324fd89cd60a957e0cf1ec8fc4332b05d1fd0ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a812936f2edcf77c29614afca3d3a7b8ddc5217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d9317a27f3d83f0821deeeb0befdb68d4c9cd47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3de466a5ed09fe3492232d341e46ce22eff1abe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3df12cc9273cccf018b94ce7c974e3b4c08f0475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e00fe643337a0f4e345539096ca01e6b8d4374a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e7695771932280f3c48673f88d790dc66e4101c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42af33baf430b3a93feabfa6d95833c6cf62a6c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4772aa84b998974c5653ffd0be76f35fd883c4ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47dc58d32166a4f132b9427bc3db0dbebbfdc741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4875b1f3bd6a900ee25a6ea41a03bc1d25922620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x493f3529c73b9a88f968ca078c29c805131cef85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4cbfdb59f1b178614a3b5641a4487578dc8632a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e0a1553834780a9c3ce384ec30f828af89272c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5157e052ae30381e38874a9b3452aabc9f145182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5164de26d04ac40f4d0232c648bc03ab1050be74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x544c42fbb96b39b21df61cf322b5edc285ee7429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x556bade0b4c0d1d27ee80f5afba71cc5cfedace3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x561098cd90c34058e1bfcd4e75d9d70f417d16c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x577534f23380021f8c1ac6544ba4e6698af11d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57cb45da82ba81b49a78d1b90fb267bb71f94c3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x599b132328a07b51b833609314824570a99ab9b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5aa7985ed3c8259fa5bfe66dfd3917095f18cc37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b83f795db7e924c6d927d925ea423295d97115b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bdeb3ccd5c5f06da2f5216186374f089fe5318e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5cc2d22acdfe68d5376606650eea1c5cb791f419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fd63539376114298b830ed28e1704835f520ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61ed1411c3f8f0bd0d7058544cc7035e9d4fabbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66730275dfb1ab0c1bb95ee3a99db9234a5185c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66c051a703f7640d4aeb55215c199cea9a7c144e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69c1fbb99f5843e1c03a9253e20ff95a4e0db89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b481e297482eb0f315c2a2267a71b5bad8eb2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b511f75f72e8fff48466b3c4639df6dda36538f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d46ac2de9125b0651ebc1fbb4e8a4051250a2ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fe90e818eac2eb7c324ec4b1ccdbcf1cf58ad91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70652244fe1c874be8c0454b89ae4bfe0eaf625a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76214c2406004ba720cc14d63b965f514f293cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76c2ca158079af258f686727afac80bfdb7c09a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77e7392faa3e667aac5ff1044bfec1bfc09223ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d8c3f38c8545a770d57c8043d54e5715b1c584e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e68521a2814a84868da716b9f436b53e6764c1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x801ec148ad8a2ae64c0b72d2d5e9c99f73bf10bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x845e8a027ec3e132ac5292f28283d17ef6d8184f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x856d07738e1b882c4a94f9f607f6406ef354c4a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x864460cd928c0027e25838cfef617191991bf89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8664fcaa440c484d522f97ea5b0f372de68b4b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8937f826526076c74401eddcd19a41de3d09d76d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b5d28e30d251e7edee64ba766b4044f8dea01ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c317bd7cfd7964c1b16c04a733e9ba32d50bf6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d750942db9b32b833ad69bc252e74bba10b86e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ff9d3bae8238f13a80440241f870c68ac12fefb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93e0e54097c4ddd0ff27be738852ebb9db2c8251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9499a2ac0f923361a82f43a33d43c9211ead2deb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x959f73f89b070b0a9c6de4a49e29905e124f9b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96e2df7bc3187dbecb7a5ed06ed1552bf9c86599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98503048a8f042a4395b782663e45ae9637cfbda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f09d1bad678a52e8ab808a08a0177355a73cd86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fb4dac2d9fa3879ae5798264cda56b37d260665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa29b59a149f62d390dee27b144c0092ca7dbba96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3c642fe2297246a20871fa31e7b7e046cfa8353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa56871ecacd4b76caa42e1022f47ae998f9875c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9609ca0d6e1df45650771060e3abd7b9b72b733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa54d33d50b1e20c4cbd709bd8f730b64442b8ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab44fb37f3c4d448f0ac767166c580adfd83dd34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac67c52f4c16eec759f5bac379aae5814e1eebde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xacf18c7df7cef690886b73645ec62c6d884c5d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad0dd7e133567d58b6bd40c9203e9c462f6f1f98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadd0864900c9f780d11c292898e05940e155e467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb11e4e9b8bdd0bd6efe98174a4a227a1d1bf5950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb304e5481ee7de2fd150c0ecde8c1c677eb5e06a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3a772027fc92844c480f3ef19b0cad2fc7d00bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4d7eb0a1d5deb2c09ec40d79e9c1266ada73ea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc2c717b79124da92eca691bd79c937100d4fe80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc677a8b00bd7423bc85263f8a72019b0fb77d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe9b0716740cbd907a4818ac43b0e0087bac98c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0e09ad591ba4ccc0a8ec5cca635dbdf15786c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc21e8479044b98af14ed51f8733ed3bf8e6e2c12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc27bf654a9d4de60d9c8e8cef68813fd804b116d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2dab3685e35cb72b36336347f26ab6a346e5346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5797270f4100ed84925376b247254f16f2aa6ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc23c65c2a53f1a8601cae6d63abdc08eddb1b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc39e4161e48569c6e0f303ef3161e6945a5e49a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2171abb60d2994cf9acb767f2116cf47bbf596f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4fa6ad838bac6a3180fd4da7820944dfca3163e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd50123944a11f3cb9b73b813ab5331de82927442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda953625b2813b525fe30a0ca569fc1797ada3cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdda9e31386478c296ae88b06c189bbc755954b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddd2a10a181accb5c75ea3f215c87adc748a0bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf8bec949367b677b7c951219ed66035ddc73d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe223eb9f1c131212f2fcbc6222fb817e254ce3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea75ba15584ea457d4e6d65cdaf58d10828fbc0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeac2e37a6abcdf94889559755d8d87e92d0174fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebf545c68f1b46c16863aac035cb0f99d8ac1c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed1555d82cd4d55d5cc10eb77ab68642c86fb49e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeee35ae8c6165fd100e849f3cf5c8f5b105818df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf163d4c62b58d308523e59e1f20a50b55dc0daa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1980b8106af906ab38395ba4807cb4c0da4566f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2787f95f59c6735fdcaa62088bf95db7e75dea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf394426f2abb4bd968624e17d054b144d8692af5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6369c1a90b2cc6ddec5b7310129ac9a99db1fb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf851cbb9940f8baebd1d0eaf259335c108e9e893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8b6000b115daf37ffd6fbea4c17962e8ba6f15d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf97769e3708e6d33e52bd8edc2357698d922a940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa4c4893900fd3990cce8bada332e56bdcc91cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe6db48fe525bdff9478e5e87a11c8d65cb69885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfea2074e59964947f74bbb2fbfbd69388b40fca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0200d3fa018576bab8c1af47588d745e79769a76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05dc45b1c03657d141696aae0211c84818f520b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08103e3d2eae7fca6d145662ca4806bd15833c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d33c809eef0ac84fb92bab81214147e15ad27b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ff38290ffd67a1271960c7339e0d1b52a021058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1161e866e4bc69e3109c0721f13569b235e219b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11a3e6d2df7aa5d95f3cdedc29eba9ec4d67f1e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x136d841d4bece3fc0e4debb94356d8b6b4b93209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1452b535ebeb212026f77511147dfdc821d91cbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16b5eff324163d74d91e972d4243d27e3deac63a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x198cc0b0fa0ec489a0b53ff1d437578a5d795857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21e24418913d3975ebec6fa0e66587bd89284efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x22182ee443e109472fa3ff95311e4532ff5880f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x222354e09836d13ab6ebb2366fcd141af5ac932d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x24612e2d1ba9db0438870121b5bedc5f7e52a677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x25a186a4cde18299731e6583aa94b5ed82b9c003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x265ab8950821a4a4e8ced3c81905e4d4488dfc4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a9f5b2abd159e53d7f9937f6159014f9504dbb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c0290283fce263bda34977fe709187c6487427f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c63341eea9baa6ad839121e4c7819cd8edb33f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2de569b97cb798f9abb42356a864a786b0178384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2fbb2f1009ac781184eeb0c8cdd6735d8af69d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2fe7f39969dfad5549b14bb6fd1ff575c470dba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3133b3b901a870521976c12d7d1be08533837b5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x31849b36dc8b31943f89bb989abcb431f66ce7d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3192ccddf1cdce4ff055ebc80f3f0231b86a7e30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x324fd89cd60a957e0cf1ec8fc4332b05d1fd0ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38baf2fc4753919b7149384904349a3062e2a962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a812936f2edcf77c29614afca3d3a7b8ddc5217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c627e5897734768ebfdfc6bd0b6e84ddc6fbf07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d3a8fdeaa121c06b374895b22ac947fa62a0ac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3df12cc9273cccf018b94ce7c974e3b4c08f0475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4286aaf775737679553082a6b74b2c982bc8aae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43b235dcb3c96865654e7d14c1c4854ccaedbefd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x48e5f43ff5f8d6ac90c9623ea47ba092e4738fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x493f3529c73b9a88f968ca078c29c805131cef85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49f8796be06fff4db4987b050ec389198c16abb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4adc70f11dcd4c0ee4c3366d3b6d5234dcf47e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5157e052ae30381e38874a9b3452aabc9f145182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x544c42fbb96b39b21df61cf322b5edc285ee7429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x556bade0b4c0d1d27ee80f5afba71cc5cfedace3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x55b1f8c75e15c2b6d5e4b15112e996242394a5dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57cb45da82ba81b49a78d1b90fb267bb71f94c3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x599b78b9e7667acd3859ba05b2151153c0142d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b9d6666398b86e2541b08b00468ae6434f79441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5bdeb3ccd5c5f06da2f5216186374f089fe5318e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d0e3429352d53edbc213c84c0df1e33805644d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5fd63539376114298b830ed28e1704835f520ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x61187ebc5649e5d9e72d180cc03870ff628067fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x61ed1411c3f8f0bd0d7058544cc7035e9d4fabbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x661fc9dceba9cd6a62aec193b8b6e664808a359b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67b5cf5c5cabc89d0a607b85f7531d6d099bc4db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x687deb60ff0873d700c7896b1641554f38acc610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x69c1fbb99f5843e1c03a9253e20ff95a4e0db89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6b481e297482eb0f315c2a2267a71b5bad8eb2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6fe90e818eac2eb7c324ec4b1ccdbcf1cf58ad91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73fdbbe8f47ac5305a1cfdcc718fc325295e711e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76c2ca158079af258f686727afac80bfdb7c09a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a3eed435d7c0f74aa733eed7275c58e385197f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c1cd9566f8b4a0de1f0ffec3ee2fd6377656037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8033fa1da9eb8aac9a78eb080b6cd2c9ac2de4de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x845e8a027ec3e132ac5292f28283d17ef6d8184f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x856d07738e1b882c4a94f9f607f6406ef354c4a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x863122756ef55e63211d9643d9cd5b51099e9ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x864460cd928c0027e25838cfef617191991bf89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a779b6650453351aa3b33b1673b9933c86c8ea7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b4ea4b9e75893318c25dff126648c5afa374f64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d3eb7a51a326f975bf13db1b52180874a0d16ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d750942db9b32b833ad69bc252e74bba10b86e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ff9d3bae8238f13a80440241f870c68ac12fefb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x937b12fd55c856d2c071de1344eb0d2ad1f23134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93b41c949f9bd4b0c1c788ac78b388309911a8bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93e0e54097c4ddd0ff27be738852ebb9db2c8251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x95917447ddbada7f3ca04a5bf4dab9c867fcacd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x959f73f89b070b0a9c6de4a49e29905e124f9b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e8e7d1db4b3b30e8f390d2036dc6c747c1e9804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f09d1bad678a52e8ab808a08a0177355a73cd86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9fb4dac2d9fa3879ae5798264cda56b37d260665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa36008f06f6464c9af8eb3d98013da03b1c37f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5eb163588e25f6de18b9e164ba39daa6086f52b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaa54d33d50b1e20c4cbd709bd8f730b64442b8ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaaf730728a277acac0da81919accc2129e4faa09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf2a590372fa76fcebc9d620618444976cacad06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb06919130ed8504267c856ae2f5525764190021b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1e04d204894517b99e0e8092148d3e2bd9cc54f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb87e272c664023e9c98975f75ff3ce47ebaad0ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbc677a8b00bd7423bc85263f8a72019b0fb77d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbee24efc56b996f955ac24f38c7c8d1ed6ce995f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc27bf654a9d4de60d9c8e8cef68813fd804b116d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5797270f4100ed84925376b247254f16f2aa6ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc92fb1595de218dc1a379da3ca6c04859039b60c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc23c65c2a53f1a8601cae6d63abdc08eddb1b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xda69c718d26a5c826ddc04573fb6c0921f358349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xda953625b2813b525fe30a0ca569fc1797ada3cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xda979f2786bfb185ec0bea96f2e5ade631899c82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb1e6e5b31471eddfa6d6dd4e88cc66ca671223f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf8bec949367b677b7c951219ed66035ddc73d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe223eb9f1c131212f2fcbc6222fb817e254ce3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8dbb5f68de0ac5d4015737a27977db809cac27d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe9c8e2057e34f09572540fee5f35bc77a0183b12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea75ba15584ea457d4e6d65cdaf58d10828fbc0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xead9682f5a72ab740f2097e734dd254eccd3bcdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeeccdfdf4f728f1a8bdd0ec029ed4ab9a5906f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeee35ae8c6165fd100e849f3cf5c8f5b105818df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf163d4c62b58d308523e59e1f20a50b55dc0daa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf2ce369b6e2b96952741af463dddd7061f565946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7e25b19ea874d28be8840d825e19cadc5c39b2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf851cbb9940f8baebd1d0eaf259335c108e9e893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf99c294bb1840cd14f3d9c530eac77cbfbf25e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfba24bdbb36001f1f88b3a552c77ec1c10f5e4c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc40195a34c72bf055a458dcc4ac094c902fd591` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe71d2073c08b49343a9cd0d941273765499067c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfefe7b3ca1414715ae9366316e38d5a251eebc45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07b13a8678a116c644f6359dcb9f2f17afa47c6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08103e3d2eae7fca6d145662ca4806bd15833c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09eaa5c29cb01b39b544db165f484a0d015e562b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b643bdbe9d1f36520996a668450ad0eef6a2c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d33c809eef0ac84fb92bab81214147e15ad27b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1161e866e4bc69e3109c0721f13569b235e219b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11a3e6d2df7aa5d95f3cdedc29eba9ec4d67f1e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x136d841d4bece3fc0e4debb94356d8b6b4b93209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1452b535ebeb212026f77511147dfdc821d91cbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x198cc0b0fa0ec489a0b53ff1d437578a5d795857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c7028517ba2e7b2347acf996cad7f66d7ecb902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21e24418913d3975ebec6fa0e66587bd89284efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24612e2d1ba9db0438870121b5bedc5f7e52a677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28c91971a4b33d31dfe57a36a0b931b265c4c4b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28dd423131ae089d5e889fc2f4efd338dbc423df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a9f5b2abd159e53d7f9937f6159014f9504dbb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2fbb2f1009ac781184eeb0c8cdd6735d8af69d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3192ccddf1cdce4ff055ebc80f3f0231b86a7e30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x324fd89cd60a957e0cf1ec8fc4332b05d1fd0ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x338a32056d8b0f505b1e9b8523a555b502da7e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x342a4d79a078c254b6b056f5938da27e85d83cf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a812936f2edcf77c29614afca3d3a7b8ddc5217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d67ae521f90e3d351d9f58b07f9c9ceeeb2a41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d9317a27f3d83f0821deeeb0befdb68d4c9cd47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3df12cc9273cccf018b94ce7c974e3b4c08f0475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e00fe643337a0f4e345539096ca01e6b8d4374a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x424eb295a46e1bdce601933bafd94da106c958b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44c6b09559ba461dc745738c6a6844d04079a14b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x48dce007543f8eb6a6289616576deb97bb6c430a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x493f3529c73b9a88f968ca078c29c805131cef85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5157e052ae30381e38874a9b3452aabc9f145182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53d17079310af1061bfb8f07e6e6bc43fdb3c1bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x556bade0b4c0d1d27ee80f5afba71cc5cfedace3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x577a0b319b2e1d3db33a0d31dc409bfbafd9ccbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57cb45da82ba81b49a78d1b90fb267bb71f94c3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58713919872b0de1aabc1ca0f30567fac84afee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a8e5f4fe05e99747f65e925e6918449896148b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5bdeb3ccd5c5f06da2f5216186374f089fe5318e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fd63539376114298b830ed28e1704835f520ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60c28640bede51de55c4707d1ee47010a387a610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61ed1411c3f8f0bd0d7058544cc7035e9d4fabbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x645844f595309deb4637e184b366360807a2d986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6491ce009eb93dbb4048acfa38d5942968dc4a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6722dd77544de343b2bcbdbc296e84533feb48d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a7c313469cc115669adbe84d706e73193e6b42b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b481e297482eb0f315c2a2267a71b5bad8eb2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b511f75f72e8fff48466b3c4639df6dda36538f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6bf9338dd1a218d9eb1424ea859fae148da5c260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6fa098bfc959107965703efa6cbfae362331af24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6fe90e818eac2eb7c324ec4b1ccdbcf1cf58ad91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x718ae404277adbcc3b415b71eebecf7b4ae5946d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76c2ca158079af258f686727afac80bfdb7c09a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77e7392faa3e667aac5ff1044bfec1bfc09223ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7982db8eec66ab349cf28a95ec33df0b3d197ee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d8c3f38c8545a770d57c8043d54e5715b1c584e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e68521a2814a84868da716b9f436b53e6764c1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8268a3d9b9623a54ce6ba06e8f32fa709a35ca85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x845e8a027ec3e132ac5292f28283d17ef6d8184f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x856d07738e1b882c4a94f9f607f6406ef354c4a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x864460cd928c0027e25838cfef617191991bf89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ce730bbaf5ed1b9e8cf2d857f474bdcdeb22275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d750942db9b32b833ad69bc252e74bba10b86e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f87d9065fe34e87b7d539ec46850e98cb76335c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ff9d3bae8238f13a80440241f870c68ac12fefb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93e0e54097c4ddd0ff27be738852ebb9db2c8251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x959f73f89b070b0a9c6de4a49e29905e124f9b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9daa619972ee0eb1701c6c8fc0a6b849d8b2bfb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e03dd7a67044b28842d8ddd1b5dc0ce502c5716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f09d1bad678a52e8ab808a08a0177355a73cd86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f40ce8b63a36d2d01a1d741db8573d992d38d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2d0a59bc1df3ab3c96377246ae47a6eb559c0aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa5eb163588e25f6de18b9e164ba39daa6086f52b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa54d33d50b1e20c4cbd709bd8f730b64442b8ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba8e0675bae7a4ff4e9ee0c1ef528918c22d91e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc677a8b00bd7423bc85263f8a72019b0fb77d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc089853aaa75f2ef1a94ba3f9f9d63117ec225ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc27bf654a9d4de60d9c8e8cef68813fd804b116d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4ce55233678e5ad5a75d9f08e904c2cc4451423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5797270f4100ed84925376b247254f16f2aa6ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5b870f0ab3ac85cc50d7248d9b1c6fc1800adc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc23c65c2a53f1a8601cae6d63abdc08eddb1b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc29034ce3f4b14c4125cc370bb098a76322ce33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2171abb60d2994cf9acb767f2116cf47bbf596f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd50e8ce9d5c1f5228bcc77e318907bb4960578ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd79bec409416fcd5de873afd9b0f84ccff5167d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda953625b2813b525fe30a0ca569fc1797ada3cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdbb759772186ccc2b8638e6bd66b5ce58b754c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf8bec949367b677b7c951219ed66035ddc73d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe152d9705a24bb3f51d0bf4ba3c3f5afe831dd6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe223eb9f1c131212f2fcbc6222fb817e254ce3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe380e062f19484d80f707dc21410f0abe46766b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe3ea2c1804da65ad884b6bd4a36af110dd195753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea4cfae17203451b23e2866fe203738b9589cc49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee516e05cecfee5fe72930f3b38b87594434fd00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeee35ae8c6165fd100e849f3cf5c8f5b105818df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf163d4c62b58d308523e59e1f20a50b55dc0daa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2ce369b6e2b96952741af463dddd7061f565946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6a9e161ebbae5e915a3ac34abe6793dbc72feab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xffcf07ef5275384fe55d7f2011ca2d9abab6da7b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 491
- Live contracts: 0
- Unknown liveness contracts: 491
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=491

Showing first 200 of 491 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | unverified unclassified | UnnamedContract<br>`0x07b13a8678a116c644f6359dcb9f2f17afa47c6f` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x08103e3d2eae7fca6d145662ca4806bd15833c07` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x09eaa5c29cb01b39b544db165f484a0d015e562b` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0b643bdbe9d1f36520996a668450ad0eef6a2c19` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0d33c809eef0ac84fb92bab81214147e15ad27b7` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1161e866e4bc69e3109c0721f13569b235e219b7` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x11a3e6d2df7aa5d95f3cdedc29eba9ec4d67f1e9` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x136d841d4bece3fc0e4debb94356d8b6b4b93209` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1452b535ebeb212026f77511147dfdc821d91cbe` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x198cc0b0fa0ec489a0b53ff1d437578a5d795857` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1c7028517ba2e7b2347acf996cad7f66d7ecb902` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x21e24418913d3975ebec6fa0e66587bd89284efe` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x24612e2d1ba9db0438870121b5bedc5f7e52a677` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x28c91971a4b33d31dfe57a36a0b931b265c4c4b9` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x28dd423131ae089d5e889fc2f4efd338dbc423df` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2a9f5b2abd159e53d7f9937f6159014f9504dbb2` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2fbb2f1009ac781184eeb0c8cdd6735d8af69d75` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3192ccddf1cdce4ff055ebc80f3f0231b86a7e30` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x324fd89cd60a957e0cf1ec8fc4332b05d1fd0ac0` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x338a32056d8b0f505b1e9b8523a555b502da7e06` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x342a4d79a078c254b6b056f5938da27e85d83cf0` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3a812936f2edcf77c29614afca3d3a7b8ddc5217` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3d67ae521f90e3d351d9f58b07f9c9ceeeb2a41f` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3d9317a27f3d83f0821deeeb0befdb68d4c9cd47` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3df12cc9273cccf018b94ce7c974e3b4c08f0475` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3e00fe643337a0f4e345539096ca01e6b8d4374a` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x424eb295a46e1bdce601933bafd94da106c958b2` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x44c6b09559ba461dc745738c6a6844d04079a14b` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x48dce007543f8eb6a6289616576deb97bb6c430a` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x493f3529c73b9a88f968ca078c29c805131cef85` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5157e052ae30381e38874a9b3452aabc9f145182` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x53d17079310af1061bfb8f07e6e6bc43fdb3c1bc` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x556bade0b4c0d1d27ee80f5afba71cc5cfedace3` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x577a0b319b2e1d3db33a0d31dc409bfbafd9ccbf` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x57cb45da82ba81b49a78d1b90fb267bb71f94c3d` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x58713919872b0de1aabc1ca0f30567fac84afee9` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5a8e5f4fe05e99747f65e925e6918449896148b5` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5bdeb3ccd5c5f06da2f5216186374f089fe5318e` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5fd63539376114298b830ed28e1704835f520ad0` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x60c28640bede51de55c4707d1ee47010a387a610` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x61ed1411c3f8f0bd0d7058544cc7035e9d4fabbc` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x645844f595309deb4637e184b366360807a2d986` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6491ce009eb93dbb4048acfa38d5942968dc4a98` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6722dd77544de343b2bcbdbc296e84533feb48d5` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6a7c313469cc115669adbe84d706e73193e6b42b` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6b481e297482eb0f315c2a2267a71b5bad8eb2b6` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6b511f75f72e8fff48466b3c4639df6dda36538f` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6bf9338dd1a218d9eb1424ea859fae148da5c260` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6fa098bfc959107965703efa6cbfae362331af24` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6fe90e818eac2eb7c324ec4b1ccdbcf1cf58ad91` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x718ae404277adbcc3b415b71eebecf7b4ae5946d` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x76c2ca158079af258f686727afac80bfdb7c09a6` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x77e7392faa3e667aac5ff1044bfec1bfc09223ac` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7982db8eec66ab349cf28a95ec33df0b3d197ee1` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7d8c3f38c8545a770d57c8043d54e5715b1c584e` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7e68521a2814a84868da716b9f436b53e6764c1d` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8268a3d9b9623a54ce6ba06e8f32fa709a35ca85` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x845e8a027ec3e132ac5292f28283d17ef6d8184f` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x856d07738e1b882c4a94f9f607f6406ef354c4a7` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x864460cd928c0027e25838cfef617191991bf89a` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8ce730bbaf5ed1b9e8cf2d857f474bdcdeb22275` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8d750942db9b32b833ad69bc252e74bba10b86e4` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8f87d9065fe34e87b7d539ec46850e98cb76335c` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8ff9d3bae8238f13a80440241f870c68ac12fefb` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x93e0e54097c4ddd0ff27be738852ebb9db2c8251` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x959f73f89b070b0a9c6de4a49e29905e124f9b4d` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9daa619972ee0eb1701c6c8fc0a6b849d8b2bfb9` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9e03dd7a67044b28842d8ddd1b5dc0ce502c5716` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9f09d1bad678a52e8ab808a08a0177355a73cd86` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9f40ce8b63a36d2d01a1d741db8573d992d38d2a` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa2d0a59bc1df3ab3c96377246ae47a6eb559c0aa` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa5eb163588e25f6de18b9e164ba39daa6086f52b` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xaa54d33d50b1e20c4cbd709bd8f730b64442b8ea` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xba8e0675bae7a4ff4e9ee0c1ef528918c22d91e4` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbc677a8b00bd7423bc85263f8a72019b0fb77d70` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc089853aaa75f2ef1a94ba3f9f9d63117ec225ff` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc27bf654a9d4de60d9c8e8cef68813fd804b116d` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc4ce55233678e5ad5a75d9f08e904c2cc4451423` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc5797270f4100ed84925376b247254f16f2aa6ae` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc5b870f0ab3ac85cc50d7248d9b1c6fc1800adc6` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcc23c65c2a53f1a8601cae6d63abdc08eddb1b4a` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcc29034ce3f4b14c4125cc370bb098a76322ce33` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd2171abb60d2994cf9acb767f2116cf47bbf596f` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd50e8ce9d5c1f5228bcc77e318907bb4960578ef` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd79bec409416fcd5de873afd9b0f84ccff5167d8` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xda953625b2813b525fe30a0ca569fc1797ada3cf` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdbb759772186ccc2b8638e6bd66b5ce58b754c7f` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdf8bec949367b677b7c951219ed66035ddc73d3f` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe152d9705a24bb3f51d0bf4ba3c3f5afe831dd6b` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe223eb9f1c131212f2fcbc6222fb817e254ce3b8` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe380e062f19484d80f707dc21410f0abe46766b0` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe3ea2c1804da65ad884b6bd4a36af110dd195753` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xea4cfae17203451b23e2866fe203738b9589cc49` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xee516e05cecfee5fe72930f3b38b87594434fd00` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xeee35ae8c6165fd100e849f3cf5c8f5b105818df` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf163d4c62b58d308523e59e1f20a50b55dc0daa7` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf2ce369b6e2b96952741af463dddd7061f565946` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf6a9e161ebbae5e915a3ac34abe6793dbc72feab` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xffcf07ef5275384fe55d7f2011ca2d9abab6da7b` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x065013247cc86a746c824eff7430a200d45bc44f` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x06dfd5baf4606278c7a0a18ce4892da2a406a85b` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x08103e3d2eae7fca6d145662ca4806bd15833c07` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x09c93bbc09a86718cf4ae78173433114380370f2` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x09eaa5c29cb01b39b544db165f484a0d015e562b` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0d33c809eef0ac84fb92bab81214147e15ad27b7` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0d775a7562fd8a5e51747ba4983cb4d893944352` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1161e866e4bc69e3109c0721f13569b235e219b7` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x11a3e6d2df7aa5d95f3cdedc29eba9ec4d67f1e9` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x136d841d4bece3fc0e4debb94356d8b6b4b93209` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1452b535ebeb212026f77511147dfdc821d91cbe` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1930336ce150fbef81fb5e1e0f88b502f7864023` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x198cc0b0fa0ec489a0b53ff1d437578a5d795857` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1996576feacee03ac7afc1524aca9bd03fbf3466` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1d6b0b2ff17abfdd173a04109242a4d8f7f67a9b` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1f99c1a36f52da8222889569f6b20ff195608ba3` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x21e24418913d3975ebec6fa0e66587bd89284efe` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2211ee5f127d6e7f36cc5bc3d41539b4f073af37` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x24612e2d1ba9db0438870121b5bedc5f7e52a677` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2592632dd37139c5b688f61170329e444cdbaeae` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x25a186a4cde18299731e6583aa94b5ed82b9c003` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2a9f5b2abd159e53d7f9937f6159014f9504dbb2` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2c298e37bb283097b5f414e1e8f58f4c969558be` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2fbb2f1009ac781184eeb0c8cdd6735d8af69d75` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x324fd89cd60a957e0cf1ec8fc4332b05d1fd0ac0` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3a812936f2edcf77c29614afca3d3a7b8ddc5217` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3d9317a27f3d83f0821deeeb0befdb68d4c9cd47` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3de466a5ed09fe3492232d341e46ce22eff1abe1` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3df12cc9273cccf018b94ce7c974e3b4c08f0475` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3e00fe643337a0f4e345539096ca01e6b8d4374a` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3e7695771932280f3c48673f88d790dc66e4101c` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x42af33baf430b3a93feabfa6d95833c6cf62a6c8` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4772aa84b998974c5653ffd0be76f35fd883c4ad` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47dc58d32166a4f132b9427bc3db0dbebbfdc741` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4875b1f3bd6a900ee25a6ea41a03bc1d25922620` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x493f3529c73b9a88f968ca078c29c805131cef85` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4cbfdb59f1b178614a3b5641a4487578dc8632a5` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4e0a1553834780a9c3ce384ec30f828af89272c4` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5157e052ae30381e38874a9b3452aabc9f145182` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5164de26d04ac40f4d0232c648bc03ab1050be74` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x544c42fbb96b39b21df61cf322b5edc285ee7429` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x556bade0b4c0d1d27ee80f5afba71cc5cfedace3` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x561098cd90c34058e1bfcd4e75d9d70f417d16c2` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x577534f23380021f8c1ac6544ba4e6698af11d0d` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x57cb45da82ba81b49a78d1b90fb267bb71f94c3d` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x599b132328a07b51b833609314824570a99ab9b0` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5aa7985ed3c8259fa5bfe66dfd3917095f18cc37` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5b83f795db7e924c6d927d925ea423295d97115b` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5bdeb3ccd5c5f06da2f5216186374f089fe5318e` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5cc2d22acdfe68d5376606650eea1c5cb791f419` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5fd63539376114298b830ed28e1704835f520ad0` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x61ed1411c3f8f0bd0d7058544cc7035e9d4fabbc` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x66730275dfb1ab0c1bb95ee3a99db9234a5185c4` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x66c051a703f7640d4aeb55215c199cea9a7c144e` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x69c1fbb99f5843e1c03a9253e20ff95a4e0db89a` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6b481e297482eb0f315c2a2267a71b5bad8eb2b6` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6b511f75f72e8fff48466b3c4639df6dda36538f` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6d46ac2de9125b0651ebc1fbb4e8a4051250a2ac` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6fe90e818eac2eb7c324ec4b1ccdbcf1cf58ad91` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x70652244fe1c874be8c0454b89ae4bfe0eaf625a` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x76214c2406004ba720cc14d63b965f514f293cef` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x76c2ca158079af258f686727afac80bfdb7c09a6` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x77e7392faa3e667aac5ff1044bfec1bfc09223ac` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7d8c3f38c8545a770d57c8043d54e5715b1c584e` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7e68521a2814a84868da716b9f436b53e6764c1d` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x801ec148ad8a2ae64c0b72d2d5e9c99f73bf10bf` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x845e8a027ec3e132ac5292f28283d17ef6d8184f` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x856d07738e1b882c4a94f9f607f6406ef354c4a7` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x864460cd928c0027e25838cfef617191991bf89a` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8664fcaa440c484d522f97ea5b0f372de68b4b81` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8937f826526076c74401eddcd19a41de3d09d76d` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8b5d28e30d251e7edee64ba766b4044f8dea01ef` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8c317bd7cfd7964c1b16c04a733e9ba32d50bf6c` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8d750942db9b32b833ad69bc252e74bba10b86e4` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8ff9d3bae8238f13a80440241f870c68ac12fefb` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x93e0e54097c4ddd0ff27be738852ebb9db2c8251` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9499a2ac0f923361a82f43a33d43c9211ead2deb` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x959f73f89b070b0a9c6de4a49e29905e124f9b4d` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x96e2df7bc3187dbecb7a5ed06ed1552bf9c86599` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x98503048a8f042a4395b782663e45ae9637cfbda` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9f09d1bad678a52e8ab808a08a0177355a73cd86` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9fb4dac2d9fa3879ae5798264cda56b37d260665` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa29b59a149f62d390dee27b144c0092ca7dbba96` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa3c642fe2297246a20871fa31e7b7e046cfa8353` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa56871ecacd4b76caa42e1022f47ae998f9875c1` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa9609ca0d6e1df45650771060e3abd7b9b72b733` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaa54d33d50b1e20c4cbd709bd8f730b64442b8ea` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xab44fb37f3c4d448f0ac767166c580adfd83dd34` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xac67c52f4c16eec759f5bac379aae5814e1eebde` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xacf18c7df7cef690886b73645ec62c6d884c5d0a` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xad0dd7e133567d58b6bd40c9203e9c462f6f1f98` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xadd0864900c9f780d11c292898e05940e155e467` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb11e4e9b8bdd0bd6efe98174a4a227a1d1bf5950` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb304e5481ee7de2fd150c0ecde8c1c677eb5e06a` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb3a772027fc92844c480f3ef19b0cad2fc7d00bc` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb4d7eb0a1d5deb2c09ec40d79e9c1266ada73ea6` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbc2c717b79124da92eca691bd79c937100d4fe80` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbc677a8b00bd7423bc85263f8a72019b0fb77d70` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbe9b0716740cbd907a4818ac43b0e0087bac98c4` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc0e09ad591ba4ccc0a8ec5cca635dbdf15786c71` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc21e8479044b98af14ed51f8733ed3bf8e6e2c12` | non_address_book | unknown | unknown | unverified | n/a | `0x345c9ae61ff6e68b319d61082a017ba854892488` |

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
| needs_review | 556 |

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
