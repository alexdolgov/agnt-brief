# Agentic Audit Brief: Segment Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Segment Finance (`segment-finance`)
- Website: [https://segment.finance](https://segment.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, opbnb
- Contract surface: 95 unique implementations (153 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $510,615.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Segment Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 48 contract row(s) across bsc, ethereum, opbnb. Structural roles: 23 core, 13 unclassified, 12 supporting. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 48
- Structural roles: core (23), unclassified (13), supporting (12)
- Contract kinds: contract (42), abstract (6)
- Detected standards: erc20 (16), ownable (6), erc1967proxy (5), erc165 (3), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (23), openzeppelin-upgradeable (5), foundry (1)
- Upgradeable-pattern rows: 8

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 48; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 35 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 60 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 37
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/87
- Verified + Unaudited implementations: 87
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 95
- Raw deployments: 153
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (87)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: bsc `0x593b64...91d1f6`; opbnb `0x2e81af...7cc80a` | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad6cae...6c6c18` | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ff795...444adf` | ⚠️ Unaudited |
| BEP20EOS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b6fb...dccbd6` | ⚠️ Unaudited |
| BEP20Ethereum | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254585 | `0x2170ed...f933f8` | ⚠️ Unaudited |
| BEP20LINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a0bf...1a51bd` | ⚠️ Unaudited |
| BEP20Ontology | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd7b3a...850335` | ⚠️ Unaudited |
| BEP20Polkadot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x708360...873402` | ⚠️ Unaudited |
| BEP20Token | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254611 | `0x7130d2...3ead9c` | ⚠️ Unaudited |
| BEP20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 11 | bsc | n/a | 11 deployments: bsc `0x1fa4a7...ee5d63`; bsc `0x3d6545...e3c25e`; bsc `0x795086...f210f7`; bsc `0x947950...9124c4`; bsc `0x9a2f55...a1d8a2`; bsc `0xa2b726...e4d495`; bsc `0xb7f8cd...e5e094`; bsc `0xbf7c81...1337fe`; bsc `0xd475c9...185b92`; bsc `0xdd3c81...50385a`; bsc `0xfb6115...58f802` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254667 | `0x8ac76a...cd580d` | ⚠️ Unaudited |
| BEP20TokenImplementationV2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x250632...0aa91b` | ⚠️ Unaudited |
| BEP20USDT | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254601 | `0x55d398...197955` | ⚠️ Unaudited |
| BEP20YFII | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f7064...53eda5` | ⚠️ Unaudited |
| BinanceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71b5cd...f79cf2` | ⚠️ Unaudited |
| BinanceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | opbnb | n/a | 2 deployments: opbnb `0x15cb42...5979bf`; opbnb `0x876927...b4fff7` | ⚠️ Unaudited |
| BoundValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52cbc8...3f7d74` | ⚠️ Unaudited |
| BoundValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | opbnb | n/a | 2 deployments: opbnb `0x76e6ee...86ecb2`; opbnb `0x7b6c69...4121be` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xdaaf3c...30aeb0` | ⚠️ Unaudited |
| ComptrollerLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: bsc `0x69c577...33af77`; opbnb `0x3c6f2c...5ee1d5` | ⚠️ Unaudited |
| Diamond | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254671 | 2 deployments: bsc `0x57e09c...060173`; bsc `0xdeb818...c92fa5` | ⚠️ Unaudited |
| Diamond | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | opbnb | unit-254655 | 2 deployments: opbnb `0x71ac0e...a8cbb5`; opbnb `0xae2a97...140817` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254660 | `0xd76d8c...b1df3c` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x1f41cf...4b97d1` | ⚠️ Unaudited |
| HypFiatToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254659 | 2 deployments: bsc `0x1b993d...ca68c6`; bsc `0xf0a54a...ee3862` | ⚠️ Unaudited |
| HypFiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x69a6b3...25741c`; bsc `0x7d6549...debbc1` | ⚠️ Unaudited |
| JumpRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254607 | `0x62bb16...b86d0a` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 12 deployments: bsc `0x373d3d...e18850`; bsc `0x46bdb8...b3a6a5`; bsc `0x4da4a8...252b0f`; bsc `0x6a4e7e...d35ecd`; bsc `0x8c248e...295f75`; bsc `0xac4aba...337aef`; bsc `0xe500c5...e9b47e`; bsc `0xec430a...0ca8dc`; opbnb `0x0db993...ec2087`; opbnb `0x29797f...ba8d3f`; opbnb `0x8b5abb...aec17c`; opbnb `0xb161fc...0511d8` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254571 | `0x882cc1...e181f8` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x04ee3f...1c678a`; bsc `0x099f50...bfdb20` | ⚠️ Unaudited |
| LiquidityGenerator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254649 | `0xf1c743...05fc12` | ⚠️ Unaudited |
| MarketFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: bsc `0xeebe1a...1b3d3d`; opbnb `0xc708fa...8731cc` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: bsc `0xcefe1d...02bc7d`; opbnb `0xa3852e...5276bd` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x50c572...7db0cb` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254569 | `0x7c6b91...7227f2` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254572 | `0x9e5aac...ca96f3` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254576 | `0xe7798f...5a77ea` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254595 | `0x48758b...a97155` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254640 | `0xd5f767...af0626` | ⚠️ Unaudited |
| PolicyFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x07b9b9...47f45e`; opbnb `0x5fa783...4d92b7` | ⚠️ Unaudited |
| PoolLens | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254615 | `0x759dd1...1c4cbe` | ⚠️ Unaudited |
| PoolLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254568 | `0x7a72b3...7435fb` | ⚠️ Unaudited |
| PoolRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254658 | 2 deployments: bsc `0x0c6690...3b27d5`; bsc `0xb5983a...f54cf4` | ⚠️ Unaudited |
| PoolRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | opbnb | unit-254654 | 2 deployments: opbnb `0x5c9bf9...e933be`; opbnb `0xe890d8...9ecb83` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x36c12b...f8480e`; bsc `0x4cafd8...88b72c`; bsc `0xcf00bd...e11881` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc99f2...4bea92` | ⚠️ Unaudited |
| ResilientOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254669 | 2 deployments: bsc `0x763217...7b9a05`; bsc `0xba86bc...e578eb` | ⚠️ Unaudited |
| ResilientOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | opbnb | unit-254657 | 2 deployments: opbnb `0xaacf63...b4d491`; opbnb `0xe9ad4b...0ad469` | ⚠️ Unaudited |
| RewardFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x674b1c...d8cd61`; opbnb `0x6e5530...e1ed2f` | ⚠️ Unaudited |
| S1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d7317...4e4ef5` | ⚠️ Unaudited |
| SeBep20Delegate | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 4 | bsc | unit-254664 (4 proxies) | 5 deployments: bsc `0x12cd46...d0f61d`; bsc `0x382117...5d7eed`; bsc `0x44b1e0...300119`; bsc `0x8969b8...93e226`; bsc `0x9c1f9b...03677f` | ⚠️ Unaudited |
| SeBep20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x24a811...999ef3` | ⚠️ Unaudited |
| SeBep20Delegate | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | opbnb | unit-254656 | 2 deployments: opbnb `0x7add37...b95102`; opbnb `0xbe7c6b...3c4798` | ⚠️ Unaudited |
| SeBep20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | opbnb | n/a | `0xfe62ba...54a565` | ⚠️ Unaudited |
| SeBep20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x07b4fb...946d75`; bsc `0xf8adf7...386004` | ⚠️ Unaudited |
| SeBep20Delegator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254566 | `0x567558...534c3c` | ⚠️ Unaudited |
| SeBep20Delegator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254570 | `0x81b98b...2a08d2` | ⚠️ Unaudited |
| SeBNB | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254605 | `0x5fcea9...3328c3` | ⚠️ Unaudited |
| SeBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x7e8444...84eb82` | ⚠️ Unaudited |
| SEF | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254603 | `0x5de40c...bbc4fd` | ⚠️ Unaudited |
| SEFStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d7e06...ab446d` | ⚠️ Unaudited |
| SEFTeamVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ee114...aae48a` | ⚠️ Unaudited |
| SEFVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254662 | 2 deployments: bsc `0x409db4...13b160`; bsc `0xc6bcbe...16fe57` | ⚠️ Unaudited |
| SEFVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4372c3...fd8e18`; bsc `0xf58def...5d59d2` | ⚠️ Unaudited |
| SEFVaultDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x11844e...d43521`; bsc `0xd14499...53e5a0` | ⚠️ Unaudited |
| SEFVaultDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x81c2be...5b5b14`; bsc `0xeddaa1...3d2000` | ⚠️ Unaudited |
| SEFVaultDistributorBacker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0b9c8c...72fc7e`; bsc `0x5d7c4f...2c9b86` | ⚠️ Unaudited |
| SEFVaultDistributorBacker | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x8404f1...af6090`; bsc `0xa609d4...431c1b`; bsc `0xe02089...619e50` | ⚠️ Unaudited |
| SEFVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x855826...2c4ac6` | ⚠️ Unaudited |
| SEFVestingProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05357a...4d94bd` | ⚠️ Unaudited |
| SegmentLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254590 | `0x31e98e...46856b` | ⚠️ Unaudited |
| SegmentLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254578 | `0xf9fd96...a817e6` | ⚠️ Unaudited |
| SequenceUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: bsc `0xb40d2b...a8e1e1`; opbnb `0x9182c7...ca7646` | ⚠️ Unaudited |
| SetterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadbfba...67c0bf` | ⚠️ Unaudited |
| SetterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254561 | `0x1d6c46...bba289` | ⚠️ Unaudited |
| STreasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254593 | `0x3a833e...f134b9` | ⚠️ Unaudited |
| STreasury | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254562 | `0x2f6778...0ad696` | ⚠️ Unaudited |
| STreasuryThena | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbab56f...88a983` | ⚠️ Unaudited |
| TeamBacker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3c8885...7384fd`; bsc `0x849a60...251d90` | ⚠️ Unaudited |
| THENADistributionFix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5edbe0...f2e4d5` | ⚠️ Unaudited |
| ThenaTwapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x012756...db7c9f`; bsc `0xdbdbc2...5da93b` | ⚠️ Unaudited |
| Timelock | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254637 | `0xc835e1...69a4ec` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x26322e...e5d3a1` | ⚠️ Unaudited |
| V1PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: bsc `0xf88af4...f3b590`; opbnb `0x3de14c...88e944` | ⚠️ Unaudited |
| VestedAirdrops | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x590dde...f2d3dd` | ⚠️ Unaudited |
| VesterSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x5713e7...45d0aa`; bsc `0xc83b96...8ac564` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x301f88...603e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4852c2...b89591` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5272e4...80114b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x687fba...879a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc415e...4e25c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x3f1512...8c041e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xba3835...b7b729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xec53a9...f87d26` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf](https://1437394138-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcYvodOcCalriGDOIk0m4%2Fuploads%2F2aV2FDinQ3TxtFSRRnqN%2FSegment_Finance_-_Public_Report.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Segment%20Finance%20Pool%20Register%20-%20v1.0.pdf) | Verichains | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13823] spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf — no match: Audit scope explicitly lists two files: PoolRegistry.sol and PoolRegistryInterface.sol. Audit date is Nov 21, 2023 from cover page and executive summary.
- [13824] Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf — no match: Scope explicitly lists PoolRegistry.sol and PoolRegistryInterface.sol. Audit date from cover page and version history.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf | PoolRegistry | unmatched — not counted | — | listed in scope section: 'Our audit scope encompasses only two files: PoolRegistry.sol and PoolRegistryInterface.sol' | no |
| spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf | PoolRegistryInterface | unmatched — not counted | — | listed in scope section: 'Our audit scope encompasses only two files: PoolRegistry.sol and PoolRegistryInterface.sol' | no |
| Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf | PoolRegistry | unmatched — not counted | — | listed in scope section | no |
| Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf | PoolRegistryInterface | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [13823] spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf
- [13824] Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
