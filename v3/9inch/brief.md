# Agentic Audit Brief: 9inch

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: 9inch (`9inch`)
- Website: [https://www.9inch.io/](https://www.9inch.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 56 unique implementations (56 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $758,684.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for 9inch in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- UnnamedContract (`0x46f6e9bbcce8638b20ebbc83d33a2b5bfa9b7894`, chain 1)
- UnnamedContract (`0x4ac429a7cdf2b533e2c0cff1b017f2c344e864e2`, chain 1)
- UnnamedContract (`0x6b175474e89094c44da98b954eedeac495271d0f`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xa882606494d86804b5514e07e6bd2d6a6ee6d68a`, chain 1)
- UnnamedContract (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- UnnamedContract (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 48 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 8 of 56 unique; 48 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 56
- Raw deployments: 56
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BBC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x015628ce9150db1bce2fbb717a09e846f8a32436` | ⚠️ Unaudited |
| BulkTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea2a600269f18e2de6d4ba1cc81080729091b55c` | ⚠️ Unaudited |
| CakeFlexiblePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf598bfe7b8eb5abd217871317e31a48d9e4432f` | ⚠️ Unaudited |
| CakePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91c58cf141abbeb6ab8d83976103bca70b69c24e` | ⚠️ Unaudited |
| MasterChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fefd06828689252a69207718985b9a78350561f` | ⚠️ Unaudited |
| NineInch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd8b9ba4845fb38c779317ec134b298c064937a2` | ⚠️ Unaudited |
| NineInchBuyAndBurnUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd444341198e5381d72eb212600ffce299ca7ced` | ⚠️ Unaudited |
| NineInchBuyAndBurnUpgradeableV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88eed3bbca38b020aaed5dcc563f26d708647197` | ⚠️ Unaudited |
| NineInchFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbae5c3f8259181eb7e2309bc4c72fdf02dd56d8` | ⚠️ Unaudited |
| NineInchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa79882a5bcd455c6e582dad43f3f3f2c9c8264eb` | ⚠️ Unaudited |
| NineInchSpotLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54579290a535d8731598f74eabe9c8020902ab21` | ⚠️ Unaudited |
| NineInchSpotLimitV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5b17ddacf4dc0bdbebe3043b95bf8fd8e6aaa8e` | ⚠️ Unaudited |
| PoorPleb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9565c2036963697786705120fc59310f747bcfd0` | ⚠️ Unaudited |
| Pulsedoge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52ada28f70bc8ebe5dd4381120d3cd76863919a8` | ⚠️ Unaudited |
| TokenFlexiblePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0022e0c25bba451b08942367b98e4b4a617538f2` | ⚠️ Unaudited |
| TokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x664e78c17d64234440a26ca72a6946a270251059` | ⚠️ Unaudited |
| VotePower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28bda90b016b66df1991cd99bc18d11807410099` | ⚠️ Unaudited |
| WhereDidTheETHGo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde0220b69ce3e855a0124433a8e8d093f53a6be4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e173b11523feb064fd483209d0ed534831a2a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1715a3e4a142d8b698131108995174f37aeba10d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x211f7596db264469c4114db5c41b86e173b0a29a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225335 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fa878ab3f87cc1c9737fc071108f904c0b0c95d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3efc853438e9c06130d104088d73647517617887` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225336 | `0x46f6e9bbcce8638b20ebbc83d33a2b5bfa9b7894` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225337 | `0x4ac429a7cdf2b533e2c0cff1b017f2c344e864e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5419f8508d9ff142260eb8af16cf6876f4a1f814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698c4b5c3ff6b659c8e36ffb2f61e06f4cf3da56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225338 | `0x6b175474e89094c44da98b954eedeac495271d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd836151b0c7ca7d3b91bb323a415a2f5785d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ac4ae65b3656e26dc4e0e69108b392283350f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95b303987a60c71504d99aa1b13b4da07b0790ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98bf93ebf5c380c0e6ae8e192a7e2ae08edacc02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b2b253d75dc61fc9ae512e04850e258bebef8c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225339 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1077a294dde1b09bb078844df40758a5d0f9a27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1eaee97ee29e2c80ee9f1321e0132f19b45a26a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225340 | `0xa882606494d86804b5514e07e6bd2d6a6ee6d68a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb77c20fd87386b1d871398f824bb103a803241d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7df1e00ae030e966e635ede273625240546b873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb825fd1e322061aac2ac8b3cde4ce18b93fae276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9bb00965ac5c8e8b261243c3c442e3f00b82c1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225341 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0764fae29e0a6a96ff685f71cfc685456d5636c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6fb30ec247ca3b2ad2afd96af05efa0561684a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd77ae4371f49aeb378ef3729004d2fb08af1d18e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225342 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbd90fc90101bdd5ee0e8b2c26a32c9e59047415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20e337db2a00b1c37139c873b92a0aad3f468bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe98699957d3504acd57fff861e4b77b57eb02467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea01a51a675170d4939c1439d558eb3b896c29ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee591146a6e6ea55db3f7ed236887a25fa406826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf868da5a5d5f799cee2205d8fd1f5ad2c4a28499` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 30
- Live contracts: 0
- Unknown liveness contracts: 30
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=30

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x1715a3e4a142d8b698131108995174f37aeba10d` | non_address_book | unknown | unknown | unverified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2fa878ab3f87cc1c9737fc071108f904c0b0c95d` | non_address_book | unknown | unknown | unverified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8ac4ae65b3656e26dc4e0e69108b392283350f55` | non_address_book | unknown | unknown | unverified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95b303987a60c71504d99aa1b13b4da07b0790ab` | non_address_book | unknown | unknown | unverified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98bf93ebf5c380c0e6ae8e192a7e2ae08edacc02` | non_address_book | unknown | unknown | unverified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1077a294dde1b09bb078844df40758a5d0f9a27` | non_address_book | unknown | unknown | unverified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb7df1e00ae030e966e635ede273625240546b873` | non_address_book | unknown | unknown | unverified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb825fd1e322061aac2ac8b3cde4ce18b93fae276` | non_address_book | unknown | unknown | unverified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0764fae29e0a6a96ff685f71cfc685456d5636c` | non_address_book | unknown | unknown | unverified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe20e337db2a00b1c37139c873b92a0aad3f468bf` | non_address_book | unknown | unknown | unverified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe98699957d3504acd57fff861e4b77b57eb02467` | non_address_book | unknown | unknown | unverified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf868da5a5d5f799cee2205d8fd1f5ad2c4a28499` | non_address_book | unknown | unknown | unverified | n/a | `0x30e22ab6e6b576e6a9c5dd73191237a9a5c72539` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e173b11523feb064fd483209d0ed534831a2a86` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x211f7596db264469c4114db5c41b86e173b0a29a` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3efc853438e9c06130d104088d73647517617887` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5419f8508d9ff142260eb8af16cf6876f4a1f814` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x698c4b5c3ff6b659c8e36ffb2f61e06f4cf3da56` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6dd836151b0c7ca7d3b91bb323a415a2f5785d8f` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b2b253d75dc61fc9ae512e04850e258bebef8c6` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1eaee97ee29e2c80ee9f1321e0132f19b45a26a` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb77c20fd87386b1d871398f824bb103a803241d5` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9bb00965ac5c8e8b261243c3c442e3f00b82c1f` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6fb30ec247ca3b2ad2afd96af05efa0561684a6` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd77ae4371f49aeb378ef3729004d2fb08af1d18e` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdbd90fc90101bdd5ee0e8b2c26a32c9e59047415` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xea01a51a675170d4939c1439d558eb3b896c29ec` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xee591146a6e6ea55db3f7ed236887a25fa406826` | non_address_book | unknown | unknown | unverified | n/a | `0x6d5fc6ac6e753f68d4f64cc7b605d925cf642d5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e8640574aa764763291ed733672d3a105107ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://747412000-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fi561wEeRIxQAdQvqesSN%2Fuploads%2FGFbpzbdkGxdzisBY66rU%2FDedaub%209inch%20-%20Sep%20'23.pdf) | Dedaub | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [- [Security Audits]()](https://9inch.gitbook.io/9inch-gitbook/security-audits.md) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19373] Rendered PDF capture — no match: Scope explicitly lists four contracts under contracts/pool/ directory.
- [19374] - [Security Audits]() — no match: The provided text is a fragment of a documentation index page with a link to a file, but no actual audit report content or contract names are present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rendered PDF capture | CakeFlexiblePool | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | CakePool | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | TokenFlexiblePool | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | TokenPool | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [19373] Rendered PDF capture
- [19374] - [Security Audits]()

Fork inheritance lineage and inherited audits are included when available.
