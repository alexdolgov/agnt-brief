# Agentic Audit Brief: Benqi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 8 (1 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Benqi (`benqi`)
- Website: [https://benqi.fi](https://benqi.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 96 unique implementations (97 raw deployments)
- Coverage basis: 1/6 confirmed own live verified implementations (16.7%); conservative 16.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $237,080,773.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Benqi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across avalanche. Structural roles: 6 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (6)
- Contract kinds: contract (6)
- Detected standards: erc20 (4), chainlinkaggregator (1), erc20permit (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 64 contracts are derived from known codebases. 64 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x093526...8e9679`, chain 43114)
- UnnamedContract (`0x0a7723...366156`, chain 43114)
- UnnamedContract (`0x0ebfeb...ee344d`, chain 43114)
- UnnamedContract (`0x177e07...5e90c8`, chain 43114)
- UnnamedContract (`0x178b8e...be85ae`, chain 43114)
- UnnamedContract (`0x2779d3...c65743`, chain 43114)
- UnnamedContract (`0x2854ca...34ff0a`, chain 43114)
- UnnamedContract (`0x2b2c81...0ea4be`, chain 43114)
- UnnamedContract (`0x2eeca8...082491`, chain 43114)
- UnnamedContract (`0x354106...07dbad`, chain 43114)
- UnnamedContract (`0x35bd6a...0cd9ce`, chain 43114)
- UnnamedContract (`0x36e039...59be5d`, chain 43114)
- UnnamedContract (`0x4036cb...55b0d9`, chain 43114)
- UnnamedContract (`0x46ec14...dff403`, chain 43114)
- UnnamedContract (`0x486af3...8ad9b4`, chain 43114)
- UnnamedContract (`0x49ccd9...5ede9a`, chain 43114)
- UnnamedContract (`0x4e9f68...3696e6`, chain 43114)
- UnnamedContract (`0x51d718...2b8300`, chain 43114)
- UnnamedContract (`0x545356...99bf96`, chain 43114)
- UnnamedContract (`0x5b4712...b828e0`, chain 43114)
- UnnamedContract (`0x5c2d58...3f0122`, chain 43114)
- UnnamedContract (`0x66a8cb...8e3cfb`, chain 43114)
- UnnamedContract (`0x6a5b3a...812924`, chain 43114)
- UnnamedContract (`0x6b35eb...0c1e4e`, chain 43114)
- UnnamedContract (`0x76145e...00b710`, chain 43114)
- UnnamedContract (`0x77533a...95c16d`, chain 43114)
- UnnamedContract (`0x784da1...2affd1`, chain 43114)
- UnnamedContract (`0x7ee65f...602abd`, chain 43114)
- UnnamedContract (`0x7f92ca...b07466`, chain 43114)
- UnnamedContract (`0x835866...32ff5d`, chain 43114)
- UnnamedContract (`0x86442e...4fa26f`, chain 43114)
- UnnamedContract (`0x872670...b8043a`, chain 43114)
- UnnamedContract (`0x89a415...129821`, chain 43114)
- UnnamedContract (`0x8de6fd...9e4208`, chain 43114)
- UnnamedContract (`0x976b3d...9003b0`, chain 43114)
- UnnamedContract (`0x9f21eb...afb973`, chain 43114)
- UnnamedContract (`0xb6dd1c...9f2f23`, chain 43114)
- UnnamedContract (`0xb71580...56ae9c`, chain 43114)
- UnnamedContract (`0xb71a82...050633`, chain 43114)
- UnnamedContract (`0xb7cfb8...67c734`, chain 43114)
- UnnamedContract (`0xbeb5d4...88bc7f`, chain 43114)
- UnnamedContract (`0xc33fd9...3a138c`, chain 43114)
- UnnamedContract (`0xc9a487...2e3c69`, chain 43114)
- UnnamedContract (`0xc9e599...8ca65c`, chain 43114)
- UnnamedContract (`0xcf1e5c...7e59bc`, chain 43114)
- UnnamedContract (`0xcffa8b...38972c`, chain 43114)
- UnnamedContract (`0xd78ded...aa4ef8`, chain 43114)
- UnnamedContract (`0xd7c400...ca763f`, chain 43114)
- UnnamedContract (`0xd8fcda...7d56ef`, chain 43114)
- UnnamedContract (`0xd955ad...c9bd80`, chain 43114)
- UnnamedContract (`0xde12e9...7a8935`, chain 43114)
- UnnamedContract (`0xe194c4...6d1568`, chain 43114)
- UnnamedContract (`0xebe676...b67e8a`, chain 43114)
- UnnamedContract (`0xf09687...7a23b9`, chain 43114)
- UnnamedContract (`0xf28043...731e76`, chain 43114)
- UnnamedContract (`0xf362fe...21b4cb`, chain 43114)
- UnnamedContract (`0xfa5210...052205`, chain 43114)
- UnnamedContract (`0xfc8c72...692ce1`, chain 43114)
- EACAggregatorProxy (`0x02d35d...5e8e3a`, chain 43114)
- JoePair (`0x277451...8412b9`, chain 43114)
- PangolinPair (`0xe530dc...28065c`, chain 43114)
- QiAvax (`0x5c0401...47ef1c`, chain 43114)
- QiErc20Delegator (`0x0ffac5...458a3a`, chain 43114)
- QiErc20Delegator (`0x334ad8...9a7909`, chain 43114)

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 63/63 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/6 (16.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 63 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 33 discovered implementations excluded (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 63 of 96 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 57
- Unique implementations: 96
- Raw deployments: 97
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 16.7% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| QiAvax | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229391 | `0x5c0401...47ef1c` | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c0445...69e7d7` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a5822...b9ce59` | ⚠️ Unaudited |
| BenqiDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0594dc...a601bd` | ⚠️ Unaudited |
| BenqiPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1dad33...680895` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x179c3c...69d7ae` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd1675...1fa228` | ⚠️ Unaudited |
| ConnectV2BenqiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff5a7a...c35ca8` | ⚠️ Unaudited |
| ConnectV2QiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac33e9...a58527` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229368 | `0x02d35d...5e8e3a` | ⚠️ Unaudited |
| EdgePushOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07a4f5...6305af` | ⚠️ Unaudited |
| GaugeController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x14593c...ddc16c` | ⚠️ Unaudited |
| Ignite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e257a...f63497` | ⚠️ Unaudited |
| InstaBenqiMappingAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe19fba...c58ba6` | ⚠️ Unaudited |
| JoePair | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229375 | `0x277451...8412b9` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x363637...721f3b` | ⚠️ Unaudited |
| Lens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87457b...76eb8e` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10338e...b05348` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0462fd...a379fe` | ⚠️ Unaudited |
| PangolinPair | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229423 | `0xe530dc...28065c` | ⚠️ Unaudited |
| PauseGuardian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x80bdda...ce458c` | ⚠️ Unaudited |
| PglStakingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58a292...add0bb` | ⚠️ Unaudited |
| PglStakingContractProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4074da...eb9e4a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2295e1...2b5a66` | ⚠️ Unaudited |
| Qi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x872943...76c0f5` | ⚠️ Unaudited |
| QiAvaxHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc2de4...c804d5` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229372 | `0x0ffac5...458a3a` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | project_anchor | own_supporting | 1 | avalanche | unit-229430 | 2 deployments: avalanche `0x334ad8...9a7909`; avalanche `0x76145e...00b710` | ⚠️ Unaudited |
| QiTokenSaleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23de20...9d6bea` | ⚠️ Unaudited |
| QiTokenSaleDistributorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9037d6...a4ba1c` | ⚠️ Unaudited |
| RewardLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6eb2c3...0344f2` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1273f2...94ff32` | ⚠️ Unaudited |
| sAVAXExchangeRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54b6b4...406de2` | ⚠️ Unaudited |
| StablecoinExchangeRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26aa43...102bd7` | ⚠️ Unaudited |
| StakedAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ce7f6...cbdd29` | ⚠️ Unaudited |
| StakedAvaxPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x270fa5...a5d075` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x09c1e9...7d3784` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x3784df...025563` | ⚠️ Unaudited |
| VerifierProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaaf548...ed400a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (57)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229369 | `0x093526...8e9679` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229370 | `0x0a7723...366156` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229371 | `0x0ebfeb...ee344d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229373 | `0x177e07...5e90c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229374 | `0x178b8e...be85ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229376 | `0x2779d3...c65743` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229377 | `0x2854ca...34ff0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229378 | `0x2b2c81...0ea4be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229379 | `0x2eeca8...082491` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229380 | `0x354106...07dbad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229381 | `0x35bd6a...0cd9ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229382 | `0x36e039...59be5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229383 | `0x4036cb...55b0d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229384 | `0x46ec14...dff403` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229385 | `0x486af3...8ad9b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229386 | `0x49ccd9...5ede9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229387 | `0x4e9f68...3696e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229388 | `0x51d718...2b8300` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229389 | `0x545356...99bf96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229390 | `0x5b4712...b828e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229392 | `0x5c2d58...3f0122` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229393 | `0x66a8cb...8e3cfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229394 | `0x6a5b3a...812924` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229395 | `0x6b35eb...0c1e4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229396 | `0x77533a...95c16d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229397 | `0x784da1...2affd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229398 | `0x7ee65f...602abd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229399 | `0x7f92ca...b07466` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229400 | `0x835866...32ff5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229401 | `0x86442e...4fa26f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229402 | `0x872670...b8043a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229403 | `0x89a415...129821` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229404 | `0x8de6fd...9e4208` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229405 | `0x976b3d...9003b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229406 | `0x9f21eb...afb973` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229407 | `0xb6dd1c...9f2f23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229408 | `0xb71580...56ae9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229409 | `0xb71a82...050633` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229410 | `0xb7cfb8...67c734` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229411 | `0xbeb5d4...88bc7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229412 | `0xc33fd9...3a138c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229413 | `0xc9a487...2e3c69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229414 | `0xc9e599...8ca65c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229415 | `0xcf1e5c...7e59bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229416 | `0xcffa8b...38972c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229417 | `0xd78ded...aa4ef8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229418 | `0xd7c400...ca763f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229419 | `0xd8fcda...7d56ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229420 | `0xd955ad...c9bd80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229421 | `0xde12e9...7a8935` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229422 | `0xe194c4...6d1568` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229424 | `0xebe676...b67e8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229425 | `0xf09687...7a23b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229426 | `0xf28043...731e76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229427 | `0xf362fe...21b4cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229428 | `0xfa5210...052205` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229429 | `0xfc8c72...692ce1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2Fa7kg3ihdbiiAMsXjIn8z%2FBenqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf) | Halborn | Audit | 2021-05 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 33 | high |
| [Benqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2Fsjpc2u859ZnLjsedBuel%2FBenqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [benqiApril2022.md-Grip.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2FIdRz4pA36eJD1IlGlD4D%2FbenqiApril2022.md-Grip.pdf) | Grip | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [steward-savax.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2FUUUYpwdCHOnfcEj8xBQW%2Fsteward-savax.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2024-12-11-cyfrin-benqi-ignite-v2.0.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2FXFK94HB0hmyTTSVyeTpg%2F2024-12-11-cyfrin-benqi-ignite-v2.0.pdf) | Cyfrin | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [BENQI Ignite - Mar '23.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2Ftlv40KMOxjgE1ua46HAr%2FBENQI%20Ignite%20-%20Mar%20'23.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [BENQI Isolated Markets Audit.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2FFX0XuZ24gLs8LUbWzUvS%2FBENQI%20Isolated%20Markets%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Benqi Oracle - Zellic Audit Report.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2F3r3AzX96YnXqaZ2SYZV2%2FBenqi%20Oracle%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19539] Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf — matched: All contracts listed in the 'SCOPE' section of the report were extracted. The audit date is the end date of the engagement (May 23rd, 2021).
- [19540] Benqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: Scope section states all contracts in the Benqi-fi/liquid-staking repository are in scope. Only two contracts are explicitly named in findings: StakedAvax and NodeCoordinator.
- [19541] benqiApril2022.md-Grip.pdf — no match: Scope explicitly states 'the Liquid Staking system, defined in the StakedAvax contract'. Harness contracts are also in scope as they are written for verification.
- [19542] steward-savax.pdf — no match: Scope explicitly lists StakedAvax.sol (formally verified), sAVAXOracleAdapter.sol, and AaveV3SAVAXListingSteward.sol (manually audited). Audit finished on 15th June, reviewing commit 1d00da87.
- [19543] 2024-12-11-cyfrin-benqi-ignite-v2.0.pdf — no match: Scope section lists four contracts: Ignite.sol, IgniteStorage.sol, staking.sol, ValidatorRewarder.sol. Audit date from cover page: December 11, 2024.
- [19544] BENQI Ignite - Mar '23.pdf — no match: Extracted 9 contracts from the scope file listing plus VeQi which was reviewed for specific functions.
- [19545] BENQI Isolated Markets Audit.pdf — no match: The scope section only provides a GitHub repository URL and commit hash, but does not list specific contract names or file paths. No contract names are explicitly mentioned as being in scope.
- [19546] Benqi Oracle - Zellic Audit Report.pdf — no match: Scope section lists two contracts: BenqiDualOracle and BenqiPriceOracle. Audit date is May 13, 2025 from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | BaseJumpRateModelV2 | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | CarefulMath | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | ComptrollerInterface | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | Comptroller | own contract | 0x486af3… (selected) `0x486af3...8ad9b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | ComptrollerStorage | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | DAIInterestRateModelV3 | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | EIP20Interface | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | EIP20NonStandardInterface | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | ErrorReporter | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | ExponentialNoError | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | Exponential | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | InterestRateModel | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | JumpRateModel | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | JumpRateModelV2 | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | LegacyInterestRateModel | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | LegacyJumpRateModelV2 | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | Maximillion | own contract | 0x784da1… (selected) `0x784da1...2affd1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | PriceOracle | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiAvax | own contract | QiAvax (selected) `0x5c0401...47ef1c` — deployed 2021-08-18 16:15:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiErc20Delegate | ambiguous — not counted | JoePair (alternative) `0x277451...8412b9` — deployed 2021-08-19 14:20:51+03 — liveness: live (current_address_book_code)<br>0xd78ded… (alternative) `0xd78ded...aa4ef8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiErc20Delegator | ambiguous — not counted | QiErc20Delegator (alternative) `0x0ffac5...458a3a` — deployed 2024-12-12 10:32:41+03 — liveness: live (current_address_book_code)<br>QiErc20Delegator (proxy) (alternative) `0x334ad8...9a7909` — deployed 2021-08-18 16:19:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiErc20Immutable | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiErc20 | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiQiLikeDelegate | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiTokenInterfaces | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiToken | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | Reservoir | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | Timelock | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | Unitroller | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | WhitePaperInterestRateModel | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | AggregatorV2V3Interface | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | BenqiChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | Benqi | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | GovernorAlpha | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | BenqiLens | unmatched — not counted | — | listed in scope | no |
| Benqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | StakedAvax | unmatched — not counted | — | mentioned in findings HAL-01, HAL-03, HAL-06 | no |
| Benqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | NodeCoordinator | unmatched — not counted | — | mentioned in findings HAL-02, HAL-04, HAL-05, and manual testing section | no |
| benqiApril2022.md-Grip.pdf | StakedAvax | unmatched — not counted | — | scope defined as Liquid Staking system, defined in the StakedAvax contract | no |
| benqiApril2022.md-Grip.pdf | IAvaxReceiver | unmatched — not counted | — | harness contracts listed in Harness Overview | no |
| benqiApril2022.md-Grip.pdf | AvaxReceiverA | unmatched — not counted | — | harness contracts listed in Harness Overview | no |
| benqiApril2022.md-Grip.pdf | AvaxReceiverB | unmatched — not counted | — | harness contracts listed in Harness Overview | no |
| benqiApril2022.md-Grip.pdf | AvaxReceiverC | unmatched — not counted | — | harness contracts listed in Harness Overview | no |
| benqiApril2022.md-Grip.pdf | StakedAvaxHarness | unmatched — not counted | — | harness contracts listed in Harness Overview | no |
| steward-savax.pdf | StakedAvax | unmatched — not counted | — | listed in scope | no |
| steward-savax.pdf | sAVAXOracleAdapter | unmatched — not counted | — | listed in scope | no |
| steward-savax.pdf | AaveV3SAVAXListingSteward | unmatched — not counted | — | listed in scope | no |
| 2024-12-11-cyfrin-benqi-ignite-v2.0.pdf | Ignite | unmatched — not counted | — | listed in scope | no |
| 2024-12-11-cyfrin-benqi-ignite-v2.0.pdf | IgniteStorage | unmatched — not counted | — | listed in scope | no |
| 2024-12-11-cyfrin-benqi-ignite-v2.0.pdf | StakingContract | unmatched — not counted | — | listed in scope | no |
| 2024-12-11-cyfrin-benqi-ignite-v2.0.pdf | ValidatorRewarder | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IIgniteVeQiDepositProxy | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IPriceFeed | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IVeQi | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | Ignite | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IgniteStorage | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IgniteVeQiDepositProxy | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IgniteVeQiDepositProxyImplementation | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IgniteVeQiDepositProxyImplementationRegister | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IgniteVeQiDepositProxyStorage | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | VeQi | unmatched — not counted | — | mentioned as reviewed for deposit/withdraw functions | no |
| Benqi Oracle - Zellic Audit Report.pdf | BenqiDualOracle | unmatched — not counted | — | Listed in scope table as 'Programs' and referenced throughout report. | no |
| Benqi Oracle - Zellic Audit Report.pdf | BenqiPriceOracle | unmatched — not counted | — | Listed in scope table as 'Programs' and referenced throughout report. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0x02d35d...5e8e3a` | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x277451...8412b9` | JoePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe530dc...28065c` | PangolinPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0ffac5...458a3a` | QiErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x334ad8...9a7909` | QiErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 58 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [19540] Benqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [19541] benqiApril2022.md-Grip.pdf
- [19542] steward-savax.pdf
- [19543] 2024-12-11-cyfrin-benqi-ignite-v2.0.pdf
- [19544] BENQI Ignite - Mar '23.pdf
- [19545] BENQI Isolated Markets Audit.pdf
- [19546] Benqi Oracle - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
