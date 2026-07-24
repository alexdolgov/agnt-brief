# Agentic Audit Brief: Ethervista

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

- Project: Ethervista (`ethervista`)
- Website: [https://ethervista.app](https://ethervista.app)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 60 unique implementations (60 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $457,744.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ethervista. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9099ef7f34dc1af0d27e49dc5b604bccc03dcb21`, chain 1)
- UnnamedContract (`0x9a27cb5ae0b2cee0bb71f9a85c0d60f3920757b4`, chain 1)
- UnnamedContract (`0xc9bca88b04581699fab5aa276ccaff7df957cbbf`, chain 1)
- UnnamedContract (`0xcedd366065a146a039b92db35756ecd7688fcc77`, chain 1)
- UnnamedContract (`0xe17a0c382c8332a889ec9d026d6948e26c7f617d`, chain 1)
- UnnamedContract (`0xee5a6f8a55b02689138c195031d09bafdc7d278f`, chain 1)
- UnnamedContract (`0xfdd05552f1377aa488afed744c8024358af02041`, chain 1)
- HARDLOCK (`0xf6b510928ab880507246cd6946b7f061eb8a9c78`, chain 1)
- safeTokenFactory (`0x1a97a037a120db530ddce8370e24ead0fe9cf5d0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 51 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 9 of 60 unique; 51 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 60
- Raw deployments: 60
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

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EtherFunFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x149bd5c2fc1ea9241e4e90548eb5c8cc3d1549e6` | ⚠️ Unaudited |
| EtherfunSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75924504b696f3d29fefd01b2bde7ae21ed99515` | ⚠️ Unaudited |
| EtherfunSaleDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28be3d3ea9deb58f492c76d2cb4cb4ab3c573c7b` | ⚠️ Unaudited |
| Ethervista | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06577fa758057f343dafe18a45231db075389899` | ⚠️ Unaudited |
| EtherVistaFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76f0951a56bf3a9f1c7906f3dbc71e7888ac828a` | ⚠️ Unaudited |
| EtherVistaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07fff0025556dac7a1e96fc64abda54ee7f3e80b` | ⚠️ Unaudited |
| EulerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90134a35008c234f0fdb2ede6064ade4f356f59` | ⚠️ Unaudited |
| HARDLOCK | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385040 | `0xf6b510928ab880507246cd6946b7f061eb8a9c78` | ⚠️ Unaudited |
| HARDSTAKE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5979190de1962a6b1e25b104c49a26995ee89265` | ⚠️ Unaudited |
| OREBIT20Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c662347d94f1983ddd00c90120f05dc8fc76cce` | ⚠️ Unaudited |
| safeTokenFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385033 | `0x1a97a037a120db530ddce8370e24ead0fe9cf5d0` | ⚠️ Unaudited |
| SOGWReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeec2d148be96020d276dde0bb8a23e1838d68d5a` | ⚠️ Unaudited |
| standard20Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x054cef04c2a16468cbda2bf7f1affc0ca9f13e7f` | ⚠️ Unaudited |
| swog20Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7ce3421df9595079ab60e8e5dbb6727318938f` | ⚠️ Unaudited |
| vista20Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05dc314ea2029c7dceee9e3ee7b28058b4830dbf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x109e951394d0da33291531b0db21152e87c330cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13f2632393ad736c8aab9eeccbbd8bcfe5bb5371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19402d380c4c263959bcc66d8838e38446d08632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x234ea9afcdfc573cce73a477347ef25f2b312a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25b929e4dc4248858f4a874d076961070d88de04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28762b3085fd16e6f674a373dc410b63f81723ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a27e4e1d2b97c5b8a2460df5342e0e9293d4fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c86c9a6932b2b15f7fee6dd67986943d88daf7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1bd6cfe4e2a2cf44903d727d8e61c4b5cdfccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x526e5ed43566ab9a820f33697049421d4f3dc962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57ae62c073bdf9575a8a0a5d86f3434fff8206fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d3363aa98352f4dd5b9b62b1d26f16e5b951cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7435c92cf54680ed347d044995d3fdd58e6a0396` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89889ef8e9b9424ffd1c532593a9a26738fb6aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f5802f79c19503ecc3074a70c127583725a07a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385034 | `0x9099ef7f34dc1af0d27e49dc5b604bccc03dcb21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90a16073af16d5410159d7b391cf2019d916bed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95c47482d0ca15baf7f055f5d7bcfaa6e8901dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x994c686ba71c5af16e54f7d7c5b98c36c342893d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385035 | `0x9a27cb5ae0b2cee0bb71f9a85c0d60f3920757b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bd63c5d44ff28390df1eaafd4eb4bd73e94a72a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa03626f924f550f615ebbbb6f024c250f9f0f3d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa192b22b7faab961dbeb572d7386ccc9ddc561d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafe8e01f41f614571d9668822d08f4349a6f5eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0b5ca8a3a258302558c5206f10af59baac57518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7c6c50d6dfc478e7b40906f582e14575e7d895a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8ec606e0b33c946a59efd89278e3358f579c055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb91e0cb67181c34a76169ea3366ea7200bad7730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc3902178a02939ba53a18c8dd374a3fc17f9c5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd1bf9042b990a2ef0a7876058e42e540b0fd28c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385036 | `0xc9bca88b04581699fab5aa276ccaff7df957cbbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385037 | `0xcedd366065a146a039b92db35756ecd7688fcc77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8b1543e6754e9f26e7b314cf9bc5889a212a968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8db80cd26a125fb68d965e0249245d1eb7504d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd2c7af41df35154286ee217209ff4469efce347` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385038 | `0xe17a0c382c8332a889ec9d026d6948e26c7f617d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe988e02c768cbde9277c9a2a7698d0e06804c409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaaa41cb2a64b11fe761d41e747c032cdd60cace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xead811d798020c635cf8dd4ddf31bdc5595b09f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeca58b94b1a303d6c5fa7ff68c2c7c7c65679009` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385039 | `0xee5a6f8a55b02689138c195031d09bafdc7d278f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef19304feade63ef5bc9c9f98ae47d54a9f306ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3ce515920b73b926e6f2d0a20dab39ece603755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4d7adaf99da175b7a308e809fd4f344af765340` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385041 | `0xfdd05552f1377aa488afed744c8024358af02041` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 38
- Live contracts: 0
- Unknown liveness contracts: 38
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=38

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x109e951394d0da33291531b0db21152e87c330cc` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x13f2632393ad736c8aab9eeccbbd8bcfe5bb5371` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x19402d380c4c263959bcc66d8838e38446d08632` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x234ea9afcdfc573cce73a477347ef25f2b312a70` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x25b929e4dc4248858f4a874d076961070d88de04` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x28762b3085fd16e6f674a373dc410b63f81723ae` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x2a27e4e1d2b97c5b8a2460df5342e0e9293d4fdf` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x2c86c9a6932b2b15f7fee6dd67986943d88daf7d` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x3e1bd6cfe4e2a2cf44903d727d8e61c4b5cdfccc` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x526e5ed43566ab9a820f33697049421d4f3dc962` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x57ae62c073bdf9575a8a0a5d86f3434fff8206fb` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x5d3363aa98352f4dd5b9b62b1d26f16e5b951cbd` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x7435c92cf54680ed347d044995d3fdd58e6a0396` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x89889ef8e9b9424ffd1c532593a9a26738fb6aed` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x8f5802f79c19503ecc3074a70c127583725a07a1` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x90a16073af16d5410159d7b391cf2019d916bed4` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x95c47482d0ca15baf7f055f5d7bcfaa6e8901dcf` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x994c686ba71c5af16e54f7d7c5b98c36c342893d` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0x9bd63c5d44ff28390df1eaafd4eb4bd73e94a72a` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xa03626f924f550f615ebbbb6f024c250f9f0f3d4` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xa192b22b7faab961dbeb572d7386ccc9ddc561d5` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xafe8e01f41f614571d9668822d08f4349a6f5eaf` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xb0b5ca8a3a258302558c5206f10af59baac57518` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xb7c6c50d6dfc478e7b40906f582e14575e7d895a` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xb8ec606e0b33c946a59efd89278e3358f579c055` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xb91e0cb67181c34a76169ea3366ea7200bad7730` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xbc3902178a02939ba53a18c8dd374a3fc17f9c5c` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xbd1bf9042b990a2ef0a7876058e42e540b0fd28c` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xd8b1543e6754e9f26e7b314cf9bc5889a212a968` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xd8db80cd26a125fb68d965e0249245d1eb7504d3` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xdd2c7af41df35154286ee217209ff4469efce347` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xe988e02c768cbde9277c9a2a7698d0e06804c409` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xeaaa41cb2a64b11fe761d41e747c032cdd60cace` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xead811d798020c635cf8dd4ddf31bdc5595b09f3` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xeca58b94b1a303d6c5fa7ff68c2c7c7c65679009` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xef19304feade63ef5bc9c9f98ae47d54a9f306ba` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xf3ce515920b73b926e6f2d0a20dab39ece603755` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |
| unverified unclassified | UnnamedContract<br>`0xf4d7adaf99da175b7a308e809fd4f344af765340` | non_address_book | unknown | unknown | unverified | n/a | `0xca90d843288e35beeadfce14e5f906e3f1afc7cb` |

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
| ethereum | `0xf6b510928ab880507246cd6946b7f061eb8a9c78` | HARDLOCK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1a97a037a120db530ddce8370e24ead0fe9cf5d0` | safeTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 45 |

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
