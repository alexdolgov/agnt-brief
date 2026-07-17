# Agentic Audit Brief: Swaap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Swaap (`swaap`)
- Website: [https://www.swaap.finance](https://www.swaap.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, mantle, mode, optimism, polygon, scroll
- Contract surface: 132 unique implementations (175 raw deployments)
- Coverage basis: 0/16 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,574,725.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Swaap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, linea, mantle, mode, optimism, polygon, scroll. Structural roles: 9 core, 6 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: core (9), supporting (6), unclassified (1)
- Contract kinds: contract (16)
- Detected standards: none
- Frameworks: openzeppelin (14), chainlink (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

8 of 22 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

**Vault** (`0xd315a9c38ec871068fec378e4ce78af528c76293`, chain 1)
Origin: bend (`0x4be03f781c497a489e3cb0287833452ca9b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0xd315a9c38ec871068fec378e4ce78af528c76293`, chain 10)
Origin: bend (`0x4be03f781c497a489e3cb0287833452ca9b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0x03c01acae3d0173a93d819efdc832c7c4f153b06`, chain 56)
Origin: bend (`0x4be03f781c497a489e3cb0287833452ca9b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0xd315a9c38ec871068fec378e4ce78af528c76293`, chain 137)
Origin: bend (`0x4be03f781c497a489e3cb0287833452ca9b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0x03c01acae3d0173a93d819efdc832c7c4f153b06`, chain 8453)
Origin: bend (`0x4be03f781c497a489e3cb0287833452ca9b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0xd315a9c38ec871068fec378e4ce78af528c76293`, chain 42161)
Origin: bend (`0x4be03f781c497a489e3cb0287833452ca9b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0xd315a9c38ec871068fec378e4ce78af528c76293`, chain 43114)
Origin: bend (`0x4be03f781c497a489e3cb0287833452ca9b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0xd315a9c38ec871068fec378e4ce78af528c76293`, chain 59144)
Origin: bend (`0x4be03f781c497a489e3cb0287833452ca9b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xcc74bd5d8d2d333d14475e022325555eba3369b8`, chain 10)
- UnnamedContract (`0xcc74bd5d8d2d333d14475e022325555eba3369b8`, chain 5000)
- UnnamedContract (`0xd315a9c38ec871068fec378e4ce78af528c76293`, chain 5000)
- UnnamedContract (`0x33ddf3fae17447f895ca59e1eb27d3711da86b16`, chain 34443)
- UnnamedContract (`0xcc74bd5d8d2d333d14475e022325555eba3369b8`, chain 43114)
- UnnamedContract (`0xcc74bd5d8d2d333d14475e022325555eba3369b8`, chain 534352)
- UnnamedContract (`0xd315a9c38ec871068fec378e4ce78af528c76293`, chain 534352)
- SafeguardFactory (`0x03c01acae3d0173a93d819efdc832c7c4f153b06`, chain 1)
- SafeguardFactory (`0xcc74bd5d8d2d333d14475e022325555eba3369b8`, chain 1)
- SafeguardFactory (`0xcc74bd5d8d2d333d14475e022325555eba3369b8`, chain 137)
- SafeguardFactory (`0xcc74bd5d8d2d333d14475e022325555eba3369b8`, chain 8453)
- SafeguardFactory (`0xcc74bd5d8d2d333d14475e022325555eba3369b8`, chain 42161)
- SafeguardFactory (`0xcc74bd5d8d2d333d14475e022325555eba3369b8`, chain 59144)
- Vault (`0xd315a9c38ec871068fec378e4ce78af528c76293`, chain 34443)

## Contract Surface Quality

- Logic-topography rows: 16; live-surface rows included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/16 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 109 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 23 of 132 unique; 109 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 108
- Unique implementations: 132
- Raw deployments: 175
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Authorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0xca19ed3182e6e591207e959de633a14825cc123c`; optimism `0xca19ed3182e6e591207e959de633a14825cc123c`; bsc `0xca19ed3182e6e591207e959de633a14825cc123c`; polygon `0xca19ed3182e6e591207e959de633a14825cc123c`; base `0xd315a9c38ec871068fec378e4ce78af528c76293`; mode `0xca19ed3182e6e591207e959de633a14825cc123c`; arbitrum `0xca19ed3182e6e591207e959de633a14825cc123c`; avalanche `0xca19ed3182e6e591207e959de633a14825cc123c`; linea `0xca19ed3182e6e591207e959de633a14825cc123c` | ⚠️ Unaudited |
| ConstantPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3abc21ff99e0e45975d7637c2773ecf52b2d80e2`; arbitrum `0x5dd64004dd320606aa77146c43e04f785fefdbd3`; linea `0x67b80941e7bf2278560de29587a7b45fa0b9f3b0`; linea `0xc065c0e2d1716d6134812532eb37c57f1153117a` | ⚠️ Unaudited |
| ProxyJoinViaAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0x9574c8a1653717d2da71269c17ac28e891e88067`; polygon `0x9574c8a1653717d2da71269c17ac28e891e88067`; mode `0xbc0cb9521b592d7993a2d8a6c7b471c18b599c1d`; arbitrum `0x53675f3072b97ef652651d863b1cef5203438ad3` | ⚠️ Unaudited |
| SafeguardFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-257590 | `0x03c01acae3d0173a93d819efdc832c7c4f153b06` | ⚠️ Unaudited |
| SafeguardFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-257591 | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | ⚠️ Unaudited |
| SafeguardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: optimism `0x03c01acae3d0173a93d819efdc832c7c4f153b06`; bsc `0x3f255ab675a18e199b417b7ca45012dd1d13e3e2`; bsc `0xcc74bd5d8d2d333d14475e022325555eba3369b8`; mode `0x03c01acae3d0173a93d819efdc832c7c4f153b06`; arbitrum `0x03c01acae3d0173a93d819efdc832c7c4f153b06`; linea `0x03c01acae3d0173a93d819efdc832c7c4f153b06` | ⚠️ Unaudited |
| SafeguardFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-257595 | `0x03c01acae3d0173a93d819efdc832c7c4f153b06` | ⚠️ Unaudited |
| SafeguardFactory | registry | project_anchor | own_supporting | 0 | polygon | unit-257596 | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | ⚠️ Unaudited |
| SafeguardFactory | registry | project_anchor | own_supporting | 0 | base | unit-257613 | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | ⚠️ Unaudited |
| SafeguardFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-257600 | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | ⚠️ Unaudited |
| SafeguardFactory | registry | project_anchor | own_supporting | 0 | linea | unit-257610 | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | ⚠️ Unaudited |
| SafeguardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: ethereum `0x4342b77fe3417bcb09d0a4383301b0dc733c755b`; ethereum `0xa71f7665465c89b6e4571d70c1ff1527d08e0b0b`; ethereum `0xfc57bc97fb15598d8dde9a68bdb3f4248bb5e1b2`; base `0x7877b97c887dd3a3a1cea35822da07e11a25e7da`; arbitrum `0x30985450cb225ec53fffb013171cadf6264b8b39`; arbitrum `0x46d0c6f1e64664d366b4378a87bccfc61ad32796`; arbitrum `0x55e5695994857fa12162a17887241d53e7d1ca56`; arbitrum `0x98134802ef46c049f1c69bf87ee088be1a60137a`; arbitrum `0xbc0cb9521b592d7993a2d8a6c7b471c18b599c1d`; arbitrum `0xc54ba936c9e40e5c5d31c241e8e3cba90e0084e6` | ⚠️ Unaudited |
| SwaapSafeguardOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x09dfbd341bb932ad5266cd3a345510046f53be32`; ethereum `0x2ea2c0858bb6987afba62febb253c8e2eb718a43`; ethereum `0x916f006ae522769badf95cf6afdb90e162cb96e6`; ethereum `0xb62286380e2d0f9b2d2fc9975765fd272275cd39` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-257592 | `0xd315a9c38ec871068fec378e4ce78af528c76293` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-257594 | `0xd315a9c38ec871068fec378e4ce78af528c76293` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-257609 | `0x03c01acae3d0173a93d819efdc832c7c4f153b06` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd315a9c38ec871068fec378e4ce78af528c76293` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-257597 | `0xd315a9c38ec871068fec378e4ce78af528c76293` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | base | unit-257612 | `0x03c01acae3d0173a93d819efdc832c7c4f153b06` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | mode | unit-257599 | `0xd315a9c38ec871068fec378e4ce78af528c76293` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-257601 | `0xd315a9c38ec871068fec378e4ce78af528c76293` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-257604 | `0xd315a9c38ec871068fec378e4ce78af528c76293` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | linea | unit-257611 | `0xd315a9c38ec871068fec378e4ce78af528c76293` | ⚠️ Unaudited |
| WstETHToETHPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18135648a68918f97cf8bdda1f16dff72e66114b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (108)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x2ff3ab5703c229691c609318a4cf8cca06ddba67) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0444d9aa9f0951cf513d2704e8b8454fa5e02aee`; ethereum `0x2ff3ab5703c229691c609318a4cf8cca06ddba67` | ❓ Unverified |
| Proxy (impl: 0x46d0c6f1e64664d366b4378a87bccfc61ad32796) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3d1a98b4e45c6f32f5c5b396abf5fd95bf30a4b9`; base `0x46d0c6f1e64664d366b4378a87bccfc61ad32796` | ❓ Unverified |
| Proxy (impl: 0x6e9359dd27980fb7027c179ae5e701e4bcb2f6b9) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x22863c875e6b7519141cb8394f2220fac7e6ade6`; ethereum `0x6e9359dd27980fb7027c179ae5e701e4bcb2f6b9` | ❓ Unverified |
| Proxy (impl: 0xcb2e1a46f1d0b7d97a11d5bf62d15120426ea5c2) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0e2e77eaa606306bbc4933806faf811fcb9c8d90`; base `0xcb2e1a46f1d0b7d97a11d5bf62d15120426ea5c2` | ❓ Unverified |
| Proxy (impl: 0xd52309f6e491e44c532dde306f0869ab71f590cd) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x1d063e30c800d0165b3b2385c09fca8e96142deb`; optimism `0xd52309f6e491e44c532dde306f0869ab71f590cd` | ❓ Unverified |
| Proxy (impl: 0xd52309f6e491e44c532dde306f0869ab71f590cd) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1d063e30c800d0165b3b2385c09fca8e96142deb`; polygon `0xd52309f6e491e44c532dde306f0869ab71f590cd` | ❓ Unverified |
| Proxy (impl: 0xd6ee0f90575c0fabdd0c17ea9b582edf77ff5506) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x825c9bac60efb01eaa1da44bc2fb356638840f2c`; optimism `0xd6ee0f90575c0fabdd0c17ea9b582edf77ff5506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d063e30c800d0165b3b2385c09fca8e96142deb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x207063773125702100c27ad6b32a8704e0073ebc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ca210041263a3b2f356c476c03c30476e86c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2768babb15b30d2ee02be29519d264cf77252752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33ddf3fae17447f895ca59e1eb27d3711da86b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x360b094d484c2777258853f9e3d4c814c4b2f147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ac745fb7aa39007de4de6eb4c93d6dead475973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ebe623698b1544c6ae8e0eae789eaed08674a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6330fd760bd922fcdf03b10bd32f48aa7e3d1ad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c759a7a3fe43bae743a763f8b00d91a8fca7a44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7646eb8d8a117d35e33d46198dd5159033498100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8338ec2f638da6abb08867a8144393574e1b4be3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x890dd87cbcf04259687b13e773d52f5db7068210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fca81afb82027b69c53c91b4a96b4c7385c9943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d1ec08c3dec8ea95cf710cd80324df614b838c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb02016102e7ab27bce2c3087392098a09c2f0f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4a42e785d0214a1feb09441b12657e54dd50003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb55c7453e9f4dd0f34fb525392a6331930b27834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8c67b538458d04268e5a58c409e9cecb43fa5bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f91ff58bc2cbad34e736396264c294b32cf5e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8fd1bec4bc31e0c2ef1d125c5e3bc8b810e01a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb7eb338cada39b8516a03bac6513e2a561a5244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8623647bfc4b52944bf5c3fac9ff13185127a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce4ad460de316e20ff0fc5f46882671eac2b83b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7683a98c8bde402cbddbb3120275f15089e01b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x08113667299592f5cf28b041abe587e4873cfbde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x16e13ffdc69ab55dc085b829c403549b210dc2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x46f86d5f534627aa084dd0328fe03ffe5be38beb`; optimism `0xb53d0737ec9cd8e9e4f09ef3e154c1e4f05633b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x55e5695994857fa12162a17887241d53e7d1ca56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7a039a11ce644779c438b197a832562c61077e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9d1ec08c3dec8ea95cf710cd80324df614b838c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257593 | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08920ad4ff9a7dbd76e1ef2b47c7db6d412c7104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c8b5f8c46f2b695a018bccb57e932d6669a4442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11683b8d9123dbb319333fac25167da43c27b703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54985c88cf6acecd8b115e5b4798519d4d9c0afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dd64004dd320606aa77146c43e04f785fefdbd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x825c9bac60efb01eaa1da44bc2fb356638840f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x916f006ae522769badf95cf6afdb90e162cb96e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x943c89e1fe0f8a507557d72d380e31ff01d19d88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x962ed2aa967d96d04112663fea62c7cfd8d69257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4a42e785d0214a1feb09441b12657e54dd50003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8519b2261db09fb7cbd2411a1b474151f5e1053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8a5ffb4ae45c03f4b34d95dd8e87ddb1a0e8378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6ee0f90575c0fabdd0c17ea9b582edf77ff5506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16e13ffdc69ab55dc085b829c403549b210dc2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37ae224dba13480a823b942ede8219c8d75149d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x441dee1fa4d0f62a0958bd4d06d4d19b41ddc9bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8338ec2f638da6abb08867a8144393574e1b4be3`; polygon `0xfb5e781ebc1c9cae8b3a66593d4e7d3a5f55167f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb024150b7bb15440224312a742530de68a02dbbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe18072ca1b6cf3f492ead8c7d0cf577017a4b1ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf383caf0d7379705e112af6ed6489c122a809564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf496faf0c32998e6e3363e4a96a571d38db7491a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-257605 | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-257606 | `0xd315a9c38ec871068fec378e4ce78af528c76293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x022aa4ec5752ae0c4a1e1b5f4785165685551132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x11683b8d9123dbb319333fac25167da43c27b703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x142e5f1ce8ffe96694c25e4db4dc5c3487e4dedb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e6354185660346d01cb92cc5b331f1ce530d2e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25257169676a487bb59bfb76e88b9fda7995f32a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29fbaf61eb52172c3b46c56912f1d01c4bf8108b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x307d2a33a8054a7d7dadcf32eb204b0e208b0080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34ab4d551b9530c06120cc4d929ce17f87344607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x372861d82a64dffc2b39e3049366e7a2761c1e87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x48b8aeb1068be489d37a691479730087fbeb6180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5258de40e061578c7c3ab4384225670d756a04ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60abcc08083bd3f9c3f4f748d314a26ed5d353ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x943c89e1fe0f8a507557d72d380e31ff01d19d88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x971c6a453bda2997831af3705b59f247e6777918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x973105bd539b2dbca5bd71ef9f74f761a150186c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3c6367c8157845b3832fc13b63844794856e548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb200268fad2c31a9e6a202c07bed81911c5acffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb45f9ef4fbad91b8859bd6130fac84ea988674d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec580da12a3dd56de999049655fbec2fd27ab4cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-257598 | `0x33ddf3fae17447f895ca59e1eb27d3711da86b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xbc40a15ad216b3d969b305c7cf579d25d883263a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11683b8d9123dbb319333fac25167da43c27b703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19cd923b9b3bd691ab9e2e83e7a29f8b13f661d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25257169676a487bb59bfb76e88b9fda7995f32a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x307d2a33a8054a7d7dadcf32eb204b0e208b0080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3729955da4ea0a1ec11202b4feda28940f4d3205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42fff9b9f76b3de5d0328420cee8cfde344df59b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x441dee1fa4d0f62a0958bd4d06d4d19b41ddc9bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7162ae0456ec4d6feab8be849f471c1916cd068f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78993f354c592deeee05d62fed1a5c97ed6c4679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x916f006ae522769badf95cf6afdb90e162cb96e6`; arbitrum `0xae091d7e1fed989522125be65172cc1ac2969e6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad1051349b309b690c9b99ce1b027a026bae4fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xb024150b7bb15440224312a742530de68a02dbbf`; arbitrum `0xcdc43c82544bfadea3d48a7122c34aae672ec85e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb62286380e2d0f9b2d2fc9975765fd272275cd39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbd56103fd16422aa9905d88818c7eb67d8df14b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd180b45ddbc4557d6d4b4e8220074af8f3cb9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe331b9d0472ec7c39268ad4483a22f8db5d702dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03c01acae3d0173a93d819efdc832c7c4f153b06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d791e1869270bbc15ed89e9fb15b748bada51e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x37d6c8d22b886949df865e8af5c29daee4bfaf11`; avalanche `0x76611019b5226d35eda561c8b8eff001b835eb26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a039a11ce644779c438b197a832562c61077e5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-257603 | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2d791e1869270bbc15ed89e9fb15b748bada51e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x69dbe8f5f44013806b1b4a73f03322b142543c4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-257607 | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-257608 | `0xd315a9c38ec871068fec378e4ce78af528c76293` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.chainsecurity.com/security-audit/swaap-finance-safeguardpool](https://www.chainsecurity.com/security-audit/swaap-finance-safeguardpool) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [ChainSecurity_Swaap_SafeguardPool_Audit.pdf](https://reports.chainsecurity.com/Swaap/ChainSecurity_Swaap_SafeguardPool_Audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts](https://runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts) | unknown | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [swaap-audit-report.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/swaap-audit-report.pdf) | Runtime Verification | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [quantstamp_SafeguardPool_audit.pdf](https://github.com/swaap-labs/swaap-v2-monorepo/blob/main/audits/quantstamp/quantstamp_SafeguardPool_audit.pdf) | Quantstamp | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [audit.pdf](https://github.com/swaap-labs/swaap-core-v1/blob/main/audits/chainsecurity/audit.pdf) | ChainSecurity | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [audit.pdf](https://github.com/swaap-labs/swaap-core-v1/blob/main/audits/runtime-verification/audit.pdf) | Runtime Verification | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2589] www.chainsecurity.com/security-audit/swaap-finance-safeguardpool — no match: The report does not contain a clear scope section or file listing. Only the contract name 'SafeGuardPool' is inferred from the title and description.
- [2590] ChainSecurity_Swaap_SafeguardPool_Audit.pdf — no match: Scope explicitly lists five Solidity contracts in ./pkg/safeguard-pool/contracts folder. Audit date is June 27, 2023 from cover page.
- [2591] runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts — no match: The report text does not list specific contract names; it only describes the scope as 'Core smart contracts V1' without naming individual files or contracts.
- [2592] swaap-audit-report.pdf — no match: Scope section explicitly lists 11 contracts/interfaces/structs. Audit date is clearly stated as 'Delivered: May 27, 2022' on the cover.
- [2593] quantstamp_SafeguardPool_audit.pdf — no match: Scope section explicitly lists files in pkg/safeguard-pool/contracts/*. The five contracts are identified from file names and findings. Audit date is the final report date (2023-07-04) from changelog.
- [14916] audit.pdf — no match: Scope section lists 12 source files. Audit date from cover page: May 10, 2022.
- [14917] audit.pdf — no match: Scope section explicitly lists 11 contracts/interfaces/structs. Audit date is 'Delivered: May 27, 2022' on cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.chainsecurity.com/security-audit/swaap-finance-safeguardpool | SafeGuardPool | unmatched — not counted | — | The report title and summary mention 'Swaap - SafeguardPool' and 'SafeGuardPool' as the audited contract. | no |
| ChainSecurity_Swaap_SafeguardPool_Audit.pdf | ChainlinkUtils | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Swaap_SafeguardPool_Audit.pdf | SafeguardFactory | ambiguous — not counted | SafeguardFactory (alternative) `0xcc74bd5d8d2d333d14475e022325555eba3369b8` — deployed 2023-12-01 16:07:56+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd5d8d2d333d14475e022325555eba3369b8` — deployed 2024-06-27 21:56:50+03 — liveness: live (current_address_book_code)<br>0xcc74bd… (alternative) `0xcc74bd5d8d2d333d14475e022325555eba3369b8` — deployed 2024-09-27 17:01:11+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd5d8d2d333d14475e022325555eba3369b8` — deployed 2024-02-05 14:27:29+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd5d8d2d333d14475e022325555eba3369b8` — deployed 2024-05-14 16:54:01+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd5d8d2d333d14475e022325555eba3369b8` — deployed 2024-04-30 12:52:35+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0x03c01acae3d0173a93d819efdc832c7c4f153b06` — deployed 2023-06-30 18:45:59+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0x03c01acae3d0173a93d819efdc832c7c4f153b06` — deployed 2023-07-01 13:25:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Swaap_SafeguardPool_Audit.pdf | SafeguardMath | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Swaap_SafeguardPool_Audit.pdf | SafeguardPool | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Swaap_SafeguardPool_Audit.pdf | SignatureSafeguard | unmatched — not counted | — | listed in scope table | no |
| swaap-audit-report.pdf | ChainlinkUtils | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | Const | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | Factory | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | GeometricBrownianMotionOracle | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | Math | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | Num | unmatched — not counted | — | listed in scope section (only abs() and max() functions) | no |
| swaap-audit-report.pdf | Pool | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | PoolToken | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | IAggregatorV3 | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | IPausedFactory | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | Struct | unmatched — not counted | — | listed in scope section | no |
| quantstamp_SafeguardPool_audit.pdf | SafeguardPool | unmatched — not counted | — | listed in scope and findings | no |
| quantstamp_SafeguardPool_audit.pdf | SafeguardFactory | ambiguous — not counted | SafeguardFactory (alternative) `0xcc74bd5d8d2d333d14475e022325555eba3369b8` — deployed 2023-12-01 16:07:56+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd5d8d2d333d14475e022325555eba3369b8` — deployed 2024-06-27 21:56:50+03 — liveness: live (current_address_book_code)<br>0xcc74bd… (alternative) `0xcc74bd5d8d2d333d14475e022325555eba3369b8` — deployed 2024-09-27 17:01:11+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd5d8d2d333d14475e022325555eba3369b8` — deployed 2024-02-05 14:27:29+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd5d8d2d333d14475e022325555eba3369b8` — deployed 2024-05-14 16:54:01+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd5d8d2d333d14475e022325555eba3369b8` — deployed 2024-04-30 12:52:35+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0x03c01acae3d0173a93d819efdc832c7c4f153b06` — deployed 2023-06-30 18:45:59+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0x03c01acae3d0173a93d819efdc832c7c4f153b06` — deployed 2023-07-01 13:25:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| quantstamp_SafeguardPool_audit.pdf | SafeguardMath | unmatched — not counted | — | listed in scope and findings | no |
| quantstamp_SafeguardPool_audit.pdf | SignatureSafeguard | unmatched — not counted | — | listed in scope and findings | no |
| quantstamp_SafeguardPool_audit.pdf | ChainlinkUtils | unmatched — not counted | — | listed in scope and findings | no |
| audit.pdf | IAggregatorV3 | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Struct | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Const | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| audit.pdf | GeometricBrownianMotionOracle | unmatched — not counted | — | listed in scope | no |
| audit.pdf | LogExpMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Math | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Migrations | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Num | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| audit.pdf | PoolToken | unmatched — not counted | — | listed in scope | no |
| audit.pdf | ChainlinkUtils | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Const | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| audit.pdf | GeometricBrownianMotionOracle | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Math | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Num | unmatched — not counted | — | listed in scope (only abs() and max() functions) | no |
| audit.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| audit.pdf | PoolToken | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IAggregatorV3 | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IPausedFactory | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Struct | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x03c01acae3d0173a93d819efdc832c7c4f153b06` | SafeguardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | SafeguardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x03c01acae3d0173a93d819efdc832c7c4f153b06` | SafeguardFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | SafeguardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | SafeguardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | SafeguardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xcc74bd5d8d2d333d14475e022325555eba3369b8` | SafeguardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd315a9c38ec871068fec378e4ce78af528c76293` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd315a9c38ec871068fec378e4ce78af528c76293` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x03c01acae3d0173a93d819efdc832c7c4f153b06` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd315a9c38ec871068fec378e4ce78af528c76293` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x03c01acae3d0173a93d819efdc832c7c4f153b06` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd315a9c38ec871068fec378e4ce78af528c76293` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd315a9c38ec871068fec378e4ce78af528c76293` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xd315a9c38ec871068fec378e4ce78af528c76293` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xd315a9c38ec871068fec378e4ce78af528c76293` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 108 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 43 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=2
- Match method counts: n/a

Zero-match audit list:

- [2589] www.chainsecurity.com/security-audit/swaap-finance-safeguardpool
- [2590] ChainSecurity_Swaap_SafeguardPool_Audit.pdf
- [2591] runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts
- [2592] swaap-audit-report.pdf
- [2593] quantstamp_SafeguardPool_audit.pdf
- [14916] audit.pdf
- [14917] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
