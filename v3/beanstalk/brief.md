# Agentic Audit Brief: Beanstalk

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 4 audit(s)
- Eligible audit results: 9 (4 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Beanstalk (`beanstalk`)
- Website: [https://bean.money](https://bean.money)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 68 unique implementations (73 raw deployments)
- Coverage basis: 3/24 confirmed own live verified implementations (12.5%); conservative 12.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,912,866.79
- On-chain TVL (included contracts): $528,340,896.54
- TVL by chain: Arbitrum $528,340,896.54

## Project Description

This brief describes the observed EVM deployment and audit surface for Beanstalk. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 36 contract row(s) across arbitrum, ethereum. Structural roles: 19 core, 9 supporting, 8 unclassified. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 36
- Structural roles: core (19), supporting (9), unclassified (8)
- Contract kinds: contract (33), unclassified (3)
- Detected standards: erc20 (9), erc20permit (8), accesscontrol (6), erc165 (6), erc1967proxy (2), ownable (2), chainlinkaggregator (1), erc721 (1)
- Frameworks: openzeppelin (20), chainlink (2), openzeppelin-upgradeable (2), foundry (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 53 contracts are derived from known codebases. 53 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x191b7d...c3740f`, chain 1)
- UnnamedContract (`0x1dd0de...288804`, chain 1)
- UnnamedContract (`0x21de18...c08df7`, chain 1)
- UnnamedContract (`0x2d92a7...bdf278`, chain 1)
- UnnamedContract (`0x4bed6c...e1e1b4`, chain 1)
- UnnamedContract (`0x59c78c...3efe4d`, chain 1)
- UnnamedContract (`0x5f68b4...be5812`, chain 1)
- UnnamedContract (`0x66efac...3eb29c`, chain 1)
- UnnamedContract (`0x737cad...793d96`, chain 1)
- UnnamedContract (`0x842929...f223ac`, chain 1)
- UnnamedContract (`0x879c8b...acf697`, chain 1)
- UnnamedContract (`0xa560c3...f6d321`, chain 1)
- UnnamedContract (`0xa969bb...d5d1e8`, chain 1)
- UnnamedContract (`0xa9ba2c...81d043`, chain 1)
- UnnamedContract (`0xb24a70...774180`, chain 1)
- UnnamedContract (`0xb7ab3f...982235`, chain 1)
- UnnamedContract (`0xe1c3ae...80db02`, chain 1)
- UnnamedContract (`0xf96681...ae24e4`, chain 1)
- UnnamedContract (`0x5979d7...800529`, chain 42161)
- UnnamedContract (`0xa560c3...f6d321`, chain 42161)
- UnnamedContract (`0xa969bb...d5d1e8`, chain 42161)
- UnnamedContract (`0xbbad3c...a079fe`, chain 42161)
- UnnamedContract (`0xbea00a...8736ce`, chain 42161)
- UnnamedContract (`0xbea00b...48d74f`, chain 42161)
- UnnamedContract (`0xbea00c...c2e48c`, chain 42161)
- UnnamedContract (`0xbea00d...e1b09c`, chain 42161)
- UnnamedContract (`0xbea00e...a91bd7`, chain 42161)
- UnnamedContract (`0xbea00f...4bed33`, chain 42161)
- UnnamedContract (`0xc218f5...6ac9e7`, chain 42161)
- UnnamedContract (`0xfefefe...5f1490`, chain 42161)
- UnnamedContract (`0xfefefe...4845b5`, chain 42161)
- Bean (`0xdc59ac...52e5db`, chain 1)
- BeaNFT (`0xa755a6...722a79`, chain 1)
- BeaNFT (`0xd23ca4...6c1f27`, chain 1)
- BeanstalkERC20 (`0x1bea05...d27543`, chain 42161)
- BeanstalkERC20 (`0x1bea05...66d788`, chain 42161)
- BeanstalkERC20 (`0xbea000...7812e4`, chain 42161)
- ClonableBeaconProxy (`0x2f2a25...fc5b0f`, chain 42161)
- ClonableBeaconProxy (`0x357510...cf4dbe`, chain 42161)
- Diamond (`0xc1e088...5624c5`, chain 1)
- Diamond (`0xd1a006...15fb70`, chain 42161)
- FiatTokenProxy (`0xaf88d0...8e5831`, chain 42161)
- GnosisSafeProxy (`0xdd5b31...daaf69`, chain 42161)
- Junction (`0x5a5a5a...08e2cd`, chain 42161)
- SafeProxy (`0x390b02...a2fbc1`, chain 42161)
- SafeProxy (`0xd39a31...e04ca9`, chain 42161)
- ShipmentPlanner (`0x555555...feeef5`, chain 42161)
- TransparentUpgradeableProxy (`0x82af49...3fbab1`, chain 42161)
- TransparentUpgradeableProxy (`0xfd086b...9fcbb9`, chain 42161)
- UniswapV2Pair (`0x878982...91e371`, chain 1)
- UnwrapAndSendETH (`0xd6fc4a...9a4749`, chain 42161)
- Vyper_contract (`0x3a70df...3c9bdd`, chain 1)
- Vyper_contract (`0xd652c4...3d465d`, chain 1)

## Contract Surface Quality

- Indexed contracts: 36; live-surface contracts included: 36 (26 live, 10 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 55/107 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/24 (12.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 54 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (10 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Deployed-live implementations: 54 of 68 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/24
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 30
- Unique implementations: 68
- Raw deployments: 73
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/beanstalk/information))
- ASD (verified + unaudited TVL): $528,340,896.54
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 4.2% (Immunefi)
- Note: This protocol is classified as [dead]. ASD of $528,340,896.54 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 12.5% | 2022-07 |
| Omniscia | Tier 2 | 2 | 8.3% | n/a |
| Immunefi | Tier 1 | 1 | 4.2% | n/a |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Bean | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380362 | `0xdc59ac...52e5db` | ✅ Audited |
| L2MigrationFacet | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-380426 | `0xc1e088...5624c5` | ✅ Audited |
| SeasonFacet | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-380433 | `0xd1a006...15fb70` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StandardArbERC20 | token | project_anchor | own_supporting | 2 | arbitrum | unit-380431 (2 proxies) | 2 deployments: arbitrum `0x2f2a25...fc5b0f`; arbitrum `0x357510...cf4dbe` | ⚠️ Unaudited |
| BeanstalkERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-380406 | `0xbea000...7812e4` | ⚠️ Unaudited |
| aeWETH | token | project_anchor | own_supporting | 1 | arbitrum | unit-380435 | `0x82af49...3fbab1` | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-380429 | `0xfd086b...9fcbb9` | ⚠️ Unaudited |
| BeaNFT | token | project_anchor | own_supporting | 1 | ethereum | unit-380427 | 2 deployments: ethereum `0x459895...58d9e9`; ethereum `0xd23ca4...6c1f27` | ⚠️ Unaudited |
| BeaNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-380351 | `0xa755a6...722a79` | ⚠️ Unaudited |
| BeanstalkERC20 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-380336 | `0x1bea00...224449` | ⚠️ Unaudited |
| BeanstalkERC20 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-380337 | `0x1bea3c...13716d` | ⚠️ Unaudited |
| BeanstalkERC20 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-380356 | `0xbea000...d1efab` | ⚠️ Unaudited |
| BeanstalkERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-380369 | `0x1bea05...d27543` | ⚠️ Unaudited |
| BeanstalkERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-380370 | `0x1bea05...66d788` | ⚠️ Unaudited |
| Depot | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-380418 | `0xdeb0f0...4120c3` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-380389 | `0x639fe6...3ba612` | ⚠️ Unaudited |
| Fertilizer | unknown | project_anchor | own_supporting | 1 | ethereum | unit-380425 | 2 deployments: ethereum `0x402c84...d36cb6`; ethereum `0x5f68b4...be5812` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | arbitrum | unit-380434 | `0xaf88d0...8e5831` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | arbitrum | unit-380430 | `0xdd5b31...daaf69` | ⚠️ Unaudited |
| InitMint | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380334 | `0x077495...4925bb` | ⚠️ Unaudited |
| Junction | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-380386 | `0x5a5a5a...08e2cd` | ⚠️ Unaudited |
| LSDChainlinkOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-380411 | `0xcccccc...b35626` | ⚠️ Unaudited |
| Pipeline | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-380399 | `0xb1be00...4c91b0` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-380341 | 2 deployments: ethereum `0x309803...7db32b`; ethereum `0xfecb01...64aa6e` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-380428 | `0xd39a31...e04ca9` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-380376 | `0x390b02...a2fbc1` | ⚠️ Unaudited |
| ShipmentPlanner | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-380383 | `0x555555...feeef5` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380348 | `0x878982...91e371` | ⚠️ Unaudited |
| UnwrapAndSendETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-380415 | `0xd6fc4a...9a4749` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380342 | 2 deployments: ethereum `0x3a70df...3c9bdd`; ethereum `0xc9c32c...f2ee49` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380360 | `0xd652c4...3d465d` | ⚠️ Unaudited |
| Well | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-380358 | `0xbea0e1...872bad` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380335 | `0x191b7d...c3740f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380338 | `0x1dd0de...288804` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380339 | `0x21de18...c08df7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380340 | `0x2d92a7...bdf278` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380343 | `0x4bed6c...e1e1b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380344 | `0x59c78c...3efe4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380345 | `0x66efac...3eb29c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380346 | `0x737cad...793d96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380347 | `0x842929...f223ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380349 | `0x879c8b...acf697` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380350 | `0xa560c3...f6d321` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380352 | `0xa969bb...d5d1e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380353 | `0xa9ba2c...81d043` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | third_party_dependency | 0 | ethereum | unit-380354 | `0xb24a70...774180` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380355 | `0xb7ab3f...982235` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-380357 | `0xbea000...e4715d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380363 | `0xe1c3ae...80db02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380364 | `0xf96681...ae24e4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-380378 | `0x3f3f5d...25dde7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-380382 | `0x50834f...434ad3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-380384 | `0x5979d7...800529` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-380395 | `0xa560c3...f6d321` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-380397 | `0xa969bb...d5d1e8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-380401 | `0xb523ae...c2a95d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-380403 | `0xbbad3c...a079fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-380409 | `0xc218f5...6ac9e7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-380412 | `0xd0c710...d46d57` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-380419 | `0xe14142...7ea22b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-380423 | `0xfefefe...5f1490` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-380424 | `0xfefefe...4845b5` | ❓ Unverified |
| WellUpgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-380438 | `0xbea00a...8736ce` | ❓ Unverified |
| WellUpgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-380436 | `0xbea00b...48d74f` | ❓ Unverified |
| WellUpgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-380432 | `0xbea00c...c2e48c` | ❓ Unverified |
| WellUpgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-380437 | `0xbea00d...e1b09c` | ❓ Unverified |
| WellUpgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-380440 | `0xbea00e...a91bd7` | ❓ Unverified |
| WellUpgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-380439 | `0xbea00f...4bed33` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [immunefi.com/bug-bounty/beanstalk/information](https://immunefi.com/bug-bounty/beanstalk/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [halborn-basin-audit.pdf](https://basin.exchange/halborn-basin-audit.pdf) | Halborn | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [cyfrin-basin-audit.pdf](https://basin.exchange/cyfrin-basin-audit.pdf) | Cyfrin | Audit | 2023-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |
| [code4rena.com/reports/2023-07-basin](https://code4rena.com/reports/2023-07-basin) | Code4rena | Contest | 2023-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [omniscia.io/reports/beanstalk-core-protocol](https://omniscia.io/reports/beanstalk-core-protocol) | Omniscia | Audit | n/a | unknown | Direct | contract_name | matched | 2 | 1 | 0 | 52 | high |
| [4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8](https://4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8) | unknown | Audit | 2022-07 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 8 | high |
| [2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0](https://2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0) | unknown | Audit | 2022-07 | stale | Direct | n/a | matched | 3 | 2 | 0 | 35 | n/a |
| [publications (GitHub directory)](https://github.com/trailofbits/publications) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.halborn.com/blog/post/explained-the-beanstalk-hack-april-2022](https://www.halborn.com/blog/post/explained-the-beanstalk-hack-april-2022) | Halborn | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3385] immunefi.com/bug-bounty/beanstalk/information — matched: No reason recorded
- [3386] halborn-basin-audit.pdf — no match: No reason recorded
- [3387] cyfrin-basin-audit.pdf — no match: No reason recorded
- [3388] code4rena.com/reports/2023-07-basin — no match: No reason recorded
- [3389] omniscia.io/reports/beanstalk-core-protocol — matched: All contracts listed in the 'Contracts Assessed' table under 'Files in Scope' are extracted. No audit date found in the provided text.
- [3390] 4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8 — matched: Extracted contract names from 'Project Targets' and 'Detailed Findings' sections. Audit date from cover page and final delivery date.
- [3391] 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 — matched: No reason recorded
- [14981] publications (GitHub directory) — no match: The provided text is a repository README listing publications, not an audit report. No specific contracts in scope or audit date are identifiable.
- [14982] www.halborn.com/blog/post/explained-the-beanstalk-hack-april-2022 — no match: The provided text is a blog post about the Beanstalk hack, not an audit report. No audit scope or contract names are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| immunefi.com/bug-bounty/beanstalk/information | Basin | unmatched — not counted | — | — | no |
| immunefi.com/bug-bounty/beanstalk/information | Beanstalk | own proxy deployment | Diamond (proxy) (selected) `0xd1a006...15fb70` — deployed 2024-09-24 16:34:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| immunefi.com/bug-bounty/beanstalk/information | Pipeline | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | ABDKMathQuad | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | Aquifer | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | Auger | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | ConstantProduct2 | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | GeoEmaAndCumSmaPump | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | ImmutablePumps | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | ImmutableTokens | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | ImmutableWellFunction | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | LibBytes | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | LibBytes16 | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | LibContractInfo | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | LibLastReserveBytes | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | LibMath | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | LibWellConstructor | unmatched — not counted | — | — | no |
| halborn-basin-audit.pdf | Well | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | ABDKMathQuad | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | Aquifer | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | ConstantProduct2 | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | GeoEmaAndCumSmaPump | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | IAquifer | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | IPump | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | IWell | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | IWellFunction | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | LibBytes | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | LibBytes16 | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | LibLastReserveBytes | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | LibMath | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | MockCallbackRecipient | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | MockCallbackToken | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | MockQuadraticWell | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | MockReserveWell | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | MockToken | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | QuadraticWell | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | Well | unmatched — not counted | — | — | no |
| cyfrin-basin-audit.pdf | WellDeployer | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-07-basin | Aquifer | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-07-basin | ConstantProduct2 | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-07-basin | LibBytes | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-07-basin | LibBytes16 | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-07-basin | LibContractInfo | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-07-basin | LibLastReserveBytes | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-07-basin | LibWellConstructor | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-07-basin | MultiFlowPump | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-07-basin | ProportionalLPToken2 | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-07-basin | Well | unmatched — not counted | — | — | no |
| omniscia.io/reports/beanstalk-core-protocol | AppStorage | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | Bip | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | Bean | own contract | Bean (selected) `0xdc59ac...52e5db` — deployed 2021-08-07 01:27:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| omniscia.io/reports/beanstalk-core-protocol | BeanSilo | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | BeanDibbler | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | C | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | ClaimFacet | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | ConvertSilo | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | ConvertFacet | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | Decimal | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | Diamond | ambiguous — not counted | Diamond (proxy) (alternative) `0xc1e088...5624c5` — deployed 2021-08-07 01:27:12+03 — liveness: live (current_address_book_code)<br>Diamond (proxy) (alternative) `0xd1a006...15fb70` — deployed 2024-09-24 16:34:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| omniscia.io/reports/beanstalk-core-protocol | Dibbler | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | DiamondCutFacet | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | DiamondLoupeFacet | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | FieldFacet | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | FundraiserFacet | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | GovernanceFacet | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | InitBip0 | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | InitBip1 | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | InitBip2 | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | InitBip5 | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | InitBip7 | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | InitEmpty | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | InitDiamond | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | InitHotFix2 | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | InitHotFix3 | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | InitHotFix4 | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | InitHotFix5 | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | InitFundraiser | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | Life | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | LPSilo | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | LibMeta | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | LibCheck | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | LibClaim | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | LibEIP712 | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | LibMarket | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | LibConvert | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | LibDiamond | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | LibInternal | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | LibIncentive | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | LibAppStorage | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | OracleFacet | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | OwnershipFacet | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | PodTransfer | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | Sun | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | Silo | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | SiloExit | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | SiloFacet | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | SeasonFacet | own proxy deployment | Diamond (proxy) (selected) `0xd1a006...15fb70` — deployed 2024-09-24 16:34:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| omniscia.io/reports/beanstalk-core-protocol | SiloEntrance | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | UpdateSilo | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | UniswapV2OracleLibrary | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | VotingBooth | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/beanstalk-core-protocol | Weather | unmatched — not counted | — | listed in scope table | no |
| 4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8 | FertilizerFacet | unmatched — not counted | — | Target in finding TOB-BEANS-001 | no |
| 4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8 | OwnershipFacet | unmatched — not counted | — | Target in finding TOB-BEANS-002 | no |
| 4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8 | FertilizerPremint | unmatched — not counted | — | Target in finding TOB-BEANS-003 | no |
| 4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8 | Fertilizer | unmatched — not counted | — | Target in finding TOB-BEANS-004 | no |
| 4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8 | SeasonFacet | own proxy deployment | Diamond (proxy) (selected) `0xd1a006...15fb70` — deployed 2024-09-24 16:34:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8 | TokenFacet | unmatched — not counted | — | Target in finding TOB-BEANS-007 | no |
| 4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8 | MarketplaceFacet | unmatched — not counted | — | Target in finding TOB-BEANS-008 | no |
| 4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8 | FieldFacet | unmatched — not counted | — | Target in finding TOB-BEANS-009 | no |
| 4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8 | UnripeFacet | unmatched — not counted | — | Target in finding TOB-BEANS-013 | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | AppStorage | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | BDVFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | Bean | own contract | Bean (selected) `0xdc59ac...52e5db` — deployed 2021-08-07 01:27:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | ConvertFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | CurveFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | Decimal | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | Diamond | own proxy deployment | Diamond (proxy) (selected) `0xc1e088...5624c5` — deployed 2021-08-07 01:27:12+03 — liveness: live (current_address_book_code)<br>Diamond (proxy) (alternative) `0xd1a006...15fb70` — deployed 2024-09-24 16:34:37+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-08-07 was 328d from audit; next candidate 816d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | DiamondCutFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | DiamondLoupeFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | FarmFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | Fertilizer | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | Fertilizer1155 | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | FertilizerFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | FertilizerPreMint | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | FieldFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | FundraiserFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | GhostERC20 | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | Internalizer | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | LibBalance | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | LibCurve | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | LibDiamond | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | LibFertilizer | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | LibIncentive | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | LibPlainCurveConvert | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | LibTransfer | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | LibWeth | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | Listing | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | MarketplaceFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | OwnershipFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | PauseFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | PodTransfer | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | SeasonFacet | own proxy deployment | Diamond (proxy) (selected) `0xd1a006...15fb70` — deployed 2024-09-24 16:34:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | SiloFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | Sprout | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | TokenFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | TokenSilo | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | UnripeFacet | unmatched — not counted | — | — | no |
| 2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0 | WhitelistFacet | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xfd086b...9fcbb9` | ArbitrumExtensionV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa755a6...722a79` | BeaNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1bea05...d27543` | BeanstalkERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1bea05...66d788` | BeanstalkERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x077495...4925bb` | InitMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5a5a5a...08e2cd` | Junction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x555555...feeef5` | ShipmentPlanner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd6fc4a...9a4749` | UnwrapAndSendETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 3 |
| standard_library | 8 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 141 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=2
- Match method counts: temporal_name=1, unique_name=6

Zero-match audit list:

- [3386] halborn-basin-audit.pdf
- [3387] cyfrin-basin-audit.pdf
- [3388] code4rena.com/reports/2023-07-basin
- [14981] publications (GitHub directory)
- [14982] www.halborn.com/blog/post/explained-the-beanstalk-hack-april-2022

Fork inheritance lineage and inherited audits are included when available.
