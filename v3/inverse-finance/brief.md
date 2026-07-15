# Agentic Audit Brief: Inverse Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 3 audit(s)
- Eligible audit results: 7 (3 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Inverse Finance (`inverse-finance`)
- Website: [https://www.inverse.finance](https://www.inverse.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, ethereum, optimism
- Contract surface: 179 unique implementations (399 raw deployments)
- Coverage basis: 7/43 confirmed own live verified implementations (16.3%); conservative 16.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $33,224,895.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Inverse Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 42 contract row(s) across arbitrum, base, berachain, ethereum, optimism. Structural roles: 33 core, 9 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 42
- Structural roles: core (33), supporting (9)
- Contract kinds: contract (42)
- Detected standards: erc20permit (9), erc165 (7), ownable (3), erc20 (2)
- Frameworks: chainlink (7), openzeppelin (2), solmate (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

17 of 39 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

**Market** (`0x27b6c3...c3f9c4`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x286844...573537`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x2a2563...ac77ff`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x3474ad...b9397a`, chain 1)
Origin: volta-club (`0x63df5e...d37035`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x3fd3da...7550bc`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x48ba57...264e7c`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x4a33ba...57808b`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x4e2646...c2db1a`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x63d27f...2737e8`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x63df5e...d37035`, chain 1)
Origin: volta-club (`0x63df5e...d37035`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x63fad9...aa1ee8`, chain 1)
Origin: volta-club (`0x63df5e...d37035`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x79ef6d...52aec4`, chain 1)
Origin: volta-club (`0x63df5e...d37035`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xb427fc...c14a99`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xb8bc1e...4dd565`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xd68d3a...7c4b29`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xdc2265...7ddf6b`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xe4d47e...cb12e4`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- DolaBorrowingRights (`0xad038e...c5d710`, chain 1)
- ERC20 (`0x865377...dc9ce4`, chain 1)
- ERC20Mintable (`0xfc63c9...0cbd4e`, chain 10)
- ERC20Mintable (`0x8bbd03...ce2773`, chain 8453)
- ERC20Mintable (`0xca78ee...2bf005`, chain 8453)
- ERC20Mintable (`0x4c7b26...2236cf`, chain 42161)
- ERC20Mintable (`0x7a1e12...480898`, chain 42161)
- ERC20Mintable (`0x02eaa6...cf3b03`, chain 80094)
- GovernanceProxy (`0xaf9568...ad5289`, chain 10)
- GovernanceProxy (`0xcbb162...d60b2e`, chain 10)
- GovernanceProxy (`0x1c0642...7f82d1`, chain 8453)
- GovernanceProxy (`0x5d5392...b3e364`, chain 8453)
- GovernanceProxy (`0x1230bd...ccd6b3`, chain 42161)
- GovernanceProxy (`0x607bcd...a24d94`, chain 42161)
- GovernanceProxy (`0x1992af...1a7702`, chain 80094)
- GovernorMills (`0xbeccb6...359bf6`, chain 1)
- Guardian (`0x941c26...39259d`, chain 1)
- INV (`0x41d5d7...9dfb68`, chain 1)
- Market (`0xb51624...22330b`, chain 1)
- sDola (`0xb45ad1...157305`, chain 1)
- sINV (`0x08d234...e2e994`, chain 1)
- Timelock (`0x926df1...659d5b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 42; live-surface rows included: 42 (42 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 43/43 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/43 (16.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 43 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 136 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 43 of 179 unique; 136 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/170
- Verified + Unaudited implementations: 163
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 179
- Raw deployments: 399
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 11.6% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 5 | 2.9% | 2022-10 |
| Nomoi | Tier 2 | 5 | 2.9% | 2023-05 |
| yAudit | Tier 2 | 1 | 0.6% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BorrowController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387619 | `0x01eca3...ae4ce8` | ✅ Audited |
| DbrDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387647 | `0xdcd2d9...184244` | ✅ Audited |
| DolaBorrowingRights | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-387639 | `0xad038e...c5d710` | ✅ Audited |
| Fed | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387624 | `0x2b3454...5b90fd` | ✅ Audited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387632 | `0x63df5e...d37035` | ✅ Audited |
| Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387638 | `0xabe146...10cce8` | ✅ Audited |
| sDola | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387641 | `0xb45ad1...157305` | ✅ Audited |

### ⚠️ Verified + Unaudited (163)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AeroFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xe96e99...89f5f3`; base `0xfd0bf4...397905` | ⚠️ Unaudited |
| AeroFarmerMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09af9e...c700ea` | ⚠️ Unaudited |
| AeroFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x245793...9cbf2f`; base `0xde1697...79daf0` | ⚠️ Unaudited |
| AeroFedMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf090f2...24056f` | ⚠️ Unaudited |
| ALE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x958979...bbae3e` | ⚠️ Unaudited |
| ALEV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x39d167...9f9058`; ethereum `0x4df2ea...16e240`; ethereum `0x63c017...235a40` | ⚠️ Unaudited |
| ArbiAuraFarmerMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x7275fd...848228`; ethereum `0x74457c...57b062`; ethereum `0xa00178...754d15`; ethereum `0xa8df99...bcd960`; ethereum `0xacbd07...349384`; ethereum `0xee484b...729f7a`; ethereum `0xfe5d39...54cf90` | ⚠️ Unaudited |
| ArbiFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0b5ec9...9843cb`; ethereum `0x4e1637...271b9d`; ethereum `0x5e280f...45732d`; ethereum `0x7163d6...293a8b`; ethereum `0xac6bd9...08c6fa`; ethereum `0xd84e1b...ca45ab` | ⚠️ Unaudited |
| ArbiGovMessengerL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x13e1a0...0eadeb`; ethereum `0x18fd72...07070a`; ethereum `0x26c2e4...683a64`; ethereum `0x512855...dd89ea`; ethereum `0x840402...84a018`; ethereum `0xaed75b...543056`; ethereum `0xb51c74...828cb8`; ethereum `0xcb908c...dc0aca`; ethereum `0xd7d1eb...b27595` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7cac7f...89d613`; ethereum `0x933cbe...a073e3` | ⚠️ Unaudited |
| AuraComposableStablepoolFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab4ae4...c81c22` | ⚠️ Unaudited |
| AuraFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x02eaa6...cf3b03`; arbitrum `0x1992af...1a7702`; arbitrum `0x245793...9cbf2f`; arbitrum `0x80819e...bf91f0`; arbitrum `0x8bbd03...ce2773`; arbitrum `0x9060a6...d344cb`; arbitrum `0xde1697...79daf0`; arbitrum `0xe96e99...89f5f3`; arbitrum `0xfd0bf4...397905` | ⚠️ Unaudited |
| AuraFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x474e3e...10fa42`; ethereum `0x5d5392...b3e364`; ethereum `0xc6279a...df2740`; ethereum `0xfa58ba...a5f85d` | ⚠️ Unaudited |
| AuraStablepoolFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1cd24e...e3bc03`; ethereum `0x5c16ae...11db54` | ⚠️ Unaudited |
| BaseFedCCTP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x783719...35f54d` | ⚠️ Unaudited |
| BaseNetworkFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24a3c4...263c8b` | ⚠️ Unaudited |
| BorrowController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x0d9ce7...60a641`; ethereum `0x20c734...80bc0d`; ethereum `0x2dbad5...e9dd6f`; ethereum `0x44b789...84b0d6`; ethereum `0x7be976...e41a4e`; ethereum `0x81ff13...7b7862`; ethereum `0xac6b83...e0cf6c`; ethereum `0xeebea1...5a5245`; ethereum `0xfd50ec...01682a` | ⚠️ Unaudited |
| BorrowControllerMigrationHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x829a0a...64456d` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x840402...84a018`; base `0xd84e1b...ca45ab`; arbitrum `0xbbc28d...78460e`; berachain `0x8bbd03...ce2773` | ⚠️ Unaudited |
| BurnTokenPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x63fad9...aa1ee8`; base `0x912fa8...366f69`; arbitrum `0x912fa8...366f69` | ⚠️ Unaudited |
| CErc20Immutable | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0bc08f...a0f60b`; ethereum `0x17786f...14f28b`; ethereum `0x4b228d...9a16bb`; ethereum `0x5ea580...9c2ea8`; ethereum `0x7d6bd2...5e9d2a`; ethereum `0x7e18ab...cb3eca`; ethereum `0x7fcb7d...a8a670`; ethereum `0xa978d8...617880`; ethereum `0xc528b0...dd7760`; ethereum `0xd60b06...288326`; ethereum `0xd79bcf...7c42f7` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697b4a...fa1fb8` | ⚠️ Unaudited |
| ClampFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8cf870...6d132f`; ethereum `0x91b79a...9971b8`; ethereum `0xbac0c2...5d11a1` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2c0edf...1d76a2`; ethereum `0x731b65...3cda4c` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4dcf74...667339` | ⚠️ Unaudited |
| Controller | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe34757...db5ff2` | ⚠️ Unaudited |
| ConvertibleFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6525fc...bd0769`; ethereum `0x671f13...ab1424` | ⚠️ Unaudited |
| CTokenStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x42b5d4...8bdbe5`; ethereum `0x42be0f...de9d6c`; ethereum `0xdc91f1...2ca796` | ⚠️ Unaudited |
| CYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde2af8...34b4a4` | ⚠️ Unaudited |
| DAIEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccabad...e91ebb` | ⚠️ Unaudited |
| DbrHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3363ad...9cb335`; ethereum `0x5caede...06d717`; ethereum `0xec51e6...38364b` | ⚠️ Unaudited |
| DolaFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf45c5e...055a18` | ⚠️ Unaudited |
| DolaPayroll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32eddd...15358f` | ⚠️ Unaudited |
| DolaPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x957a6f...2e67bc` | ⚠️ Unaudited |
| DolaSavings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc91b5f...7f2b20`; ethereum `0xe5f247...d9b8b4` | ⚠️ Unaudited |
| ERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-387635 | `0x865377...dc9ce4` | ⚠️ Unaudited |
| ERC20Mintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x1992af...1a7702`; optimism `0x4c7b26...2236cf`; optimism `0x5d5392...b3e364`; optimism `0x912fa8...366f69`; base `0x80819e...bf91f0`; base `0x9060a6...d344cb`; base `0xede7aa...e8dcdb`; arbitrum `0x788c3e...5f8c7a`; arbitrum `0xcbb162...d60b2e` | ⚠️ Unaudited |
| ERC20Mintable | token | project_anchor | own_supporting | 0 | optimism | unit-387651 | `0xfc63c9...0cbd4e` | ⚠️ Unaudited |
| ERC20Mintable | unknown | project_anchor | own_supporting | 0 | base | unit-387660 | `0x8bbd03...ce2773` | ⚠️ Unaudited |
| ERC20Mintable | token | project_anchor | own_supporting | 0 | base | unit-387661 | `0xca78ee...2bf005` | ⚠️ Unaudited |
| ERC20Mintable | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387653 | `0x4c7b26...2236cf` | ⚠️ Unaudited |
| ERC20Mintable | token | project_anchor | own_supporting | 0 | arbitrum | unit-387655 | `0x7a1e12...480898` | ⚠️ Unaudited |
| ERC20Mintable | token | project_anchor | own_supporting | 0 | berachain | unit-387656 | `0x02eaa6...cf3b03` | ⚠️ Unaudited |
| ERC4626Feed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x42bc55...27dc6c`; ethereum `0x522157...9f58af`; ethereum `0x94eba5...c8715f`; ethereum `0xd398e8...7048c4` | ⚠️ Unaudited |
| ERC4626Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x99e386...406780`; ethereum `0xfbd906...494abd` | ⚠️ Unaudited |
| EthRepayAllHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe0c96...adfeae` | ⚠️ Unaudited |
| EthVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2dcdca...d8b277`; ethereum `0x89ec5d...047357` | ⚠️ Unaudited |
| ExchangeRateUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0xd5a341...d57a61`; ethereum `0xd6376e...704089`; optimism `0xca78ee...2bf005`; optimism `0xede7aa...e8dcdb`; base `0x788c3e...5f8c7a`; base `0x7a1e12...480898`; arbitrum `0x402f38...d4f8bb`; arbitrum `0x936851...bfb31b`; berachain `0xde1697...79daf0` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2c13d0...618d83`; ethereum `0x6262fa...2dd87e`; ethereum `0x683280...1c39e2`; ethereum `0x6ab52d...f16d66`; ethereum `0x9d556a...5419b1` | ⚠️ Unaudited |
| Factory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6d961c...39b849` | ⚠️ Unaudited |
| Fed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5e075e...357ef7`; ethereum `0xe3277f...db0664` | ⚠️ Unaudited |
| FeedSwitch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e20de...322561` | ⚠️ Unaudited |
| FeedSwitchV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3326a1...72624d` | ⚠️ Unaudited |
| FiRMSlashingModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x316a01...538aa2`; ethereum `0x6d27dd...5a346c`; ethereum `0x984001...658603`; ethereum `0x9c0e16...295423`; ethereum `0xa56ed0...efaa4e`; ethereum `0xc61059...16b8c1`; ethereum `0xc7aec4...b74fad`; ethereum `0xefb3c6...4a3914`; ethereum `0xefb4c3...037f31` | ⚠️ Unaudited |
| FixedPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x803a71...66e7f4` | ⚠️ Unaudited |
| FixedRateIRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3d6dd...e6f1a7` | ⚠️ Unaudited |
| FoundationFunder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd84d...480993` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x4b6c63...11f1b7`; ethereum `0x8f97cc...ccdfc8`; ethereum `0x943dbd...5b16fb`; ethereum `0xe3ed95...0784cd` | ⚠️ Unaudited |
| GOhmTokenEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4c4cd...bceb7a` | ⚠️ Unaudited |
| GovernanceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x43d394...ae1e86`; base `0xc415ff...4ec27c`; arbitrum `0xc761eb...7f2a16` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-387649 | `0xaf9568...ad5289` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-387650 | `0xcbb162...d60b2e` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | base | unit-387658 | `0x1c0642...7f82d1` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | base | unit-387659 | `0x5d5392...b3e364` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387652 | `0x1230bd...ccd6b3` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387654 | `0x607bcd...a24d94` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | berachain | unit-387657 | `0x1992af...1a7702` | ⚠️ Unaudited |
| GovernanceSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4e521f...d5f1f3`; ethereum `0x8a0cec...00338d`; ethereum `0xaea8ae...b524fa` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x260ac7...4534b1`; ethereum `0x35d9f4...eedfff` | ⚠️ Unaudited |
| GovernorMills | governance | project_anchor | own_supporting | 0 | ethereum | unit-387644 | `0xbeccb6...359bf6` | ⚠️ Unaudited |
| GovernorMills | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef3bd8...52e2fd` | ⚠️ Unaudited |
| GovTokenEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36c239...233fcf`; ethereum `0x882d00...fc94e0` | ⚠️ Unaudited |
| Guardian | governance | project_anchor | own_supporting | 0 | ethereum | unit-387637 | `0x941c26...39259d` | ⚠️ Unaudited |
| Helper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x053963...a1e3bf`; ethereum `0x088d35...776536`; ethereum `0x23de4f...a588c5`; ethereum `0x658890...a1c266`; ethereum `0x922933...2e6bf6`; ethereum `0x93c061...f5459b`; ethereum `0xc7d5e6...232adb`; ethereum `0xcb1cf1...b8560c`; ethereum `0xd9ef7b...9fc677`; ethereum `0xe0db3f...e3d3cf` | ⚠️ Unaudited |
| INV | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387627 | `0x41d5d7...9dfb68` | ⚠️ Unaudited |
| INV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8805c8...82a9cb` | ⚠️ Unaudited |
| INVEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x502a77...eaac98`; ethereum `0x57f2a3...9000cd` | ⚠️ Unaudited |
| InvFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x210ac5...90258f`; ethereum `0x7d6e99...6623ad` | ⚠️ Unaudited |
| InvPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cd140...970589` | ⚠️ Unaudited |
| JDola | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x1ce3f5...90fbb8`; ethereum `0x5bacaf...224f54`; ethereum `0x5cebb0...fd91b8`; ethereum `0x633821...09a452`; ethereum `0x6607ef...ddb933`; ethereum `0x6f80a2...defbc7`; ethereum `0xd178f7...c72f81`; ethereum `0xf4307a...d1ccfd` | ⚠️ Unaudited |
| JrDolaDOLAFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x315291...9779c8`; ethereum `0x41939f...d6250b`; ethereum `0x6b6e96...11afd6` | ⚠️ Unaudited |
| JrDolaUSDFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x531899...113795`; ethereum `0x830a0b...4ce621`; ethereum `0x9a4c95...b593aa` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x161fd1...43bb9a`; ethereum `0x8f0439...02d93f` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd14439...e4f809` | ⚠️ Unaudited |
| Lens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x533618...bf21a9`; ethereum `0x8aab59...01e60d`; ethereum `0x941a22...5e7fb7`; ethereum `0x9fb6d6...478238`; ethereum `0xedb597...d7f6c8` | ⚠️ Unaudited |
| LinearInterpolationDelayModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3b1e44...2a4fbf`; ethereum `0x6aa105...04ea5a`; ethereum `0x75fda1...119b07`; ethereum `0xb1b62e...c67fca` | ⚠️ Unaudited |
| LockedTokenPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa251e6...481519`; ethereum `0xd9f926...7a3974`; arbitrum `0xede7aa...e8dcdb` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05eee7...2c877c` | ⚠️ Unaudited |
| LpFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x56775f...aa41ff`; ethereum `0xbb6afa...a21cd3` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x0971b1...c39b26`; ethereum `0x0c0bb8...2bd168`; ethereum `0x29fe42...8a93b8`; ethereum `0x2fed50...eb2fc9`; ethereum `0x3ac5ce...3dfd5e`; ethereum `0x4f5ea7...43c08e`; ethereum `0x5bb8f6...541cf2`; ethereum `0x607370...71dcc5`; ethereum `0x6a522f...6c631e`; ethereum `0x743a50...951dcf`; ethereum `0x7cd3ab...e66b37`; ethereum `0x85fdd7...98dfc8`; ethereum `0x936851...bfb31b`; ethereum `0xb686f1...09c867`; ethereum `0xb907dc...2d8f9a`; ethereum `0xc0086f...0c8ccf`; ethereum `0xf85ed6...222db2`; ethereum `0xfea3a8...6c54f1` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387621 | `0x27b6c3...c3f9c4` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387622 | `0x286844...573537` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387623 | `0x2a2563...ac77ff` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387625 | `0x3474ad...b9397a` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387626 | `0x3fd3da...7550bc` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387628 | `0x48ba57...264e7c` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387629 | `0x4a33ba...57808b` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387630 | `0x4e2646...c2db1a` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387631 | `0x63d27f...2737e8` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387633 | `0x63fad9...aa1ee8` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387634 | `0x79ef6d...52aec4` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387640 | `0xb427fc...c14a99` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387642 | `0xb51624...22330b` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387643 | `0xb8bc1e...4dd565` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387645 | `0xd68d3a...7c4b29` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387646 | `0xdc2265...7ddf6b` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387648 | `0xe4d47e...cb12e4` | ⚠️ Unaudited |
| MarketFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0c8fd2...bd6829`; ethereum `0x85cc59...821575` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe81028...bc6b00` | ⚠️ Unaudited |
| MerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1992af...1a7702`; ethereum `0x4c7b26...2236cf` | ⚠️ Unaudited |
| Metadata | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2afb12...8f581a`; ethereum `0x62e71e...ec8e3c` | ⚠️ Unaudited |
| Migration | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x043646...269855` | ⚠️ Unaudited |
| MultiDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ba87b...207f76`; ethereum `0xdb09ca...a72e27` | ⚠️ Unaudited |
| NavBeforeMaturityFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ce70f...d7c1d9` | ⚠️ Unaudited |
| NormalizedPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a618c...46e40f` | ⚠️ Unaudited |
| OptiFedCCTP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52ffd3...4ea88f` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8929a...0c4cb4` | ⚠️ Unaudited |
| OTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x35fdfa...334c0e`; ethereum `0x554473...2f0bbb`; ethereum `0x66048f...fba9ce` | ⚠️ Unaudited |
| Payroll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e802c...4e560e`; ethereum `0xabfbf3...372f2f` | ⚠️ Unaudited |
| PriceFeedNoStale | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe928f7...de2f61`; ethereum `0xea1dc9...2cd61f` | ⚠️ Unaudited |
| ProgrammableDataTokenTransfers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: ethereum `0x70f379...07c066`; ethereum `0x7a43c1...6d29a2`; optimism `0x474e3e...10fa42`; optimism `0xb5a998...82dfdd`; optimism `0xc53ea7...f28387`; base `0x017380...d10f7c`; base `0xaff87c...d80ce6`; base `0xc6279a...df2740`; arbitrum `0x017380...d10f7c`; arbitrum `0xaff87c...d80ce6`; arbitrum `0xc6279a...df2740` | ⚠️ Unaudited |
| PSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d02f2...f30dfa`; ethereum `0x4dfd66...a19398` | ⚠️ Unaudited |
| PSMFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x400510...e60d28` | ⚠️ Unaudited |
| PTUSDeFeedSwitchFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1a266...ea16e7` | ⚠️ Unaudited |
| Purchaser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x58dcb4...af4647`; ethereum `0x931636...d1fab8`; ethereum `0xf6c2b9...33be04` | ⚠️ Unaudited |
| ReceiptTokenHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5554ea...c087b2` | ⚠️ Unaudited |
| RepayRewardEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f904...ac6766` | ⚠️ Unaudited |
| SaleHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f4a31...25932e`; ethereum `0xb4497a...66b27f` | ⚠️ Unaudited |
| sDola | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2142c7...de8f71`; ethereum `0xbbbfc1...2b12a1` | ⚠️ Unaudited |
| SDolaFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x250717...665c76`; ethereum `0x8198a3...36cead` | ⚠️ Unaudited |
| sDolaHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2ef7b0...6b3336`; ethereum `0x3b3e45...5fca61`; ethereum `0x5c1f6a...bb3c97`; ethereum `0xc87f4e...d2d520` | ⚠️ Unaudited |
| SimpleERC20Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06053...0c010f` | ⚠️ Unaudited |
| sINV | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387620 | `0x08d234...e2e994` | ⚠️ Unaudited |
| sINV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x857b87...d1a625` | ⚠️ Unaudited |
| sInvHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7817e0...e7bd05` | ⚠️ Unaudited |
| Stabilizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec0d9...795cdd` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x458195...f5a9f4`; ethereum `0x5c1245...11fe89`; ethereum `0xa88948...eed197` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ad30...a80356` | ⚠️ Unaudited |
| StethFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1b0867...156deb`; ethereum `0x591a75...976f5b`; ethereum `0xd21cba...65428c` | ⚠️ Unaudited |
| StyCRVPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc63c9...0cbd4e` | ⚠️ Unaudited |
| StYEthPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbe5fa...99e166` | ⚠️ Unaudited |
| SwitchFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeca2f3...911ed0` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387636 | `0x926df1...659d5b` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb6ef0...2e500f` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x41d079...371f9b`; ethereum `0xc8f2e9...beac34` | ⚠️ Unaudited |
| VaultEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1dfe66...abd774`; ethereum `0x76c207...901a82`; ethereum `0x885db7...4d3e41` | ⚠️ Unaudited |
| VaultExchangeRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x06d42c...8964e9`; ethereum `0x0ce2b4...025831`; ethereum `0x0e0bee...7c71ce`; ethereum `0x87aab0...c479b0`; ethereum `0x906300...1c707f`; ethereum `0xd9f6a0...2d33dc`; ethereum `0xf840a1...fec1e7` | ⚠️ Unaudited |
| VaultFed | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe082eb...2734fc` | ⚠️ Unaudited |
| VaultHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0bd59...6a0957` | ⚠️ Unaudited |
| VeloFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x02eaa6...cf3b03`; optimism `0x245793...9cbf2f`; optimism `0xde1697...79daf0` | ⚠️ Unaudited |
| VeloFarmerMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x10ad95...d09a1f`; ethereum `0x257d28...c44b5a`; ethereum `0x788c3e...5f8c7a`; ethereum `0x853f20...d22b6b`; ethereum `0x912fa8...366f69`; ethereum `0xc761eb...7f2a16`; ethereum `0xede7aa...e8dcdb` | ⚠️ Unaudited |
| VeloFarmerMessengerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19d9fd...a44aa7` | ⚠️ Unaudited |
| VeloFarmerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x80819e...bf91f0`; optimism `0x8bbd03...ce2773` | ⚠️ Unaudited |
| VeloFarmerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9060a6...d344cb` | ⚠️ Unaudited |
| WbtcPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x857e5a...ce10a0` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0f0c30...8d1fa9`; ethereum `0x15d321...cf7638` | ⚠️ Unaudited |
| WithdrawalEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1f3068...f25f2c`; ethereum `0x391236...6ab5f0`; ethereum `0x3924a6...51e9b0`; ethereum `0x8554d8...4c7e45` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x894b89...aa7b61` | ⚠️ Unaudited |
| XINV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1637e4...dcd61b`; ethereum `0x65b35d...3476fe` | ⚠️ Unaudited |
| XinvManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07eb8f...74909d` | ⚠️ Unaudited |
| XinvVesterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1c670...053a19` | ⚠️ Unaudited |
| YTokenStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x57faa0...b32052`; ethereum `0x698c1d...3910af`; ethereum `0x973f50...a34b29`; ethereum `0xb0b02c...24f40b`; ethereum `0xbe2165...ee901a`; ethereum `0xf8df8b...5b1c1f` | ⚠️ Unaudited |
| YVYCRVHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe61d1c...68e401` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x041c3a...89f38a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ff92...f80a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bec2f...3efcfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b0906...0918f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x780568...48c9f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a01fe...0aabcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac37e6...4de5fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6479a...e2a259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xded891...875875` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [junior-sherlock-contest.pdf](https://www.inverse.finance/audits/junior-sherlock-contest.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [junior-sherlock-audit.pdf](https://www.inverse.finance/audits/junior-sherlock-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [sDOLA-yAudit.pdf](https://www.inverse.finance/audits/sDOLA-yAudit.pdf) | yAudit | Audit | 2024-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [firm-nomoi.pdf](https://www.inverse.finance/audits/firm-nomoi.pdf) | Nomoi | Audit | 2023-05 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 6 | medium |
| [code4rena.com/reports/2022-10-inverse](https://code4rena.com/reports/2022-10-inverse) | Code4rena | Contest | 2022-10 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 3 | high |
| [audits.sherlock.xyz/bug-bounties/233](https://audits.sherlock.xyz/bug-bounties/233) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view](https://drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1758] junior-sherlock-contest.pdf — no match: No reason recorded
- [1759] junior-sherlock-audit.pdf — no match: No reason recorded
- [1760] sDOLA-yAudit.pdf — matched: No reason recorded
- [1761] firm-nomoi.pdf — matched: No explicit scope section; contracts extracted from findings and descriptions. Audit date from report update date.
- [1762] code4rena.com/reports/2022-10-inverse — matched: Scope section explicitly lists 8 smart contracts. Audit date from report title.
- [1763] audits.sherlock.xyz/bug-bounties/233 — no match: The provided text is a bug bounty page header with no contract names, file paths, or audit date. No scope section or contract listings are present.
- [1765] drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view — no match: The audit report explicitly names DebtRepayer and DebtConverter as the two repayment strategies within the DebtRepayment protocol. No other contracts are listed in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| junior-sherlock-contest.pdf | FiRMSlashingModule | unmatched — not counted | — | — | no |
| junior-sherlock-contest.pdf | LinearInterpolationDelayModel | unmatched — not counted | — | — | no |
| junior-sherlock-contest.pdf | WithdrawalEscrow | unmatched — not counted | — | — | no |
| junior-sherlock-contest.pdf | jDola | unmatched — not counted | — | — | no |
| junior-sherlock-audit.pdf | FiRMSlashingModule | unmatched — not counted | — | — | no |
| junior-sherlock-audit.pdf | LinearInterpolationDelayModel | unmatched — not counted | — | — | no |
| junior-sherlock-audit.pdf | WithdrawalEscrow | unmatched — not counted | — | — | no |
| junior-sherlock-audit.pdf | jDola | unmatched — not counted | — | — | no |
| sDOLA-yAudit.pdf | DolaSavings | unmatched — not counted | — | — | no |
| sDOLA-yAudit.pdf | sDola | own contract | sDola (selected) `0xb45ad1...157305` — deployed 2024-01-31 21:33:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sDOLA-yAudit.pdf | sDolaHelper | unmatched — not counted | — | — | no |
| firm-nomoi.pdf | ConvexCurveEscrow | unmatched — not counted | — | mentioned in findings as audited contract | no |
| firm-nomoi.pdf | Market | ambiguous — not counted | Market (alternative) `0x48ba57...264e7c` — deployed 2024-02-25 23:27:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xd68d3a...7c4b29` — deployed 2024-11-28 10:08:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb427fc...c14a99` — deployed 2024-11-22 18:32:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63fad9...aa1ee8` — deployed 2023-03-09 17:11:23+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb51624...22330b` — deployed 2023-05-16 17:19:35+03 — liveness: live (code_present_context)<br>Market (alternative) `0x4a33ba...57808b` — deployed 2024-11-28 10:08:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x27b6c3...c3f9c4` — deployed 2023-07-10 17:20:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x286844...573537` — deployed 2025-09-26 15:34:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x4e2646...c2db1a` — deployed 2024-11-22 18:32:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x3474ad...b9397a` — deployed 2023-05-04 12:56:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x79ef6d...52aec4` — deployed 2024-08-02 19:15:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63d27f...2737e8` — deployed 2024-12-18 10:04:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63df5e...d37035` — deployed 2022-12-11 07:15:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xe4d47e...cb12e4` — deployed 2025-09-26 15:34:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb8bc1e...4dd565` — deployed 2024-12-18 10:05:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x2a2563...ac77ff` — deployed 2024-09-18 10:33:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xdc2265...7ddf6b` — deployed 2023-09-18 13:51:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x3fd3da...7550bc` — deployed 2023-12-06 17:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| firm-nomoi.pdf | INVEscrow | unmatched — not counted | — | mentioned in findings as audited contract | no |
| firm-nomoi.pdf | Oracle | own contract | Oracle (selected) `0xabe146...10cce8` — deployed 2022-12-11 06:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | DbrDistributor | own contract | DbrDistributor (selected) `0xdcd2d9...184244` — deployed 2023-05-16 16:50:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | DBR | own contract | DolaBorrowingRights (selected) `0xad038e...c5d710` — deployed 2022-12-10 20:20:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | BorrowController | own contract | BorrowController (selected) `0x01eca3...ae4ce8` — deployed 2025-05-20 17:38:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | Fed | own contract | Fed (selected) `0x2b3454...5b90fd` — deployed 2022-12-11 07:01:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | ConvexCurvePriceFeed | unmatched — not counted | — | mentioned in findings as audited contract | no |
| firm-nomoi.pdf | GOhmTokenEscrow | unmatched — not counted | — | mentioned in findings as audited contract | no |
| firm-nomoi.pdf | GovTokenEscrow | unmatched — not counted | — | mentioned in findings as audited contract | no |
| code4rena.com/reports/2022-10-inverse | Market | own contract | Market (alternative) `0x48ba57...264e7c` — deployed 2024-02-25 23:27:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xd68d3a...7c4b29` — deployed 2024-11-28 10:08:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb427fc...c14a99` — deployed 2024-11-22 18:32:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63fad9...aa1ee8` — deployed 2023-03-09 17:11:23+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb51624...22330b` — deployed 2023-05-16 17:19:35+03 — liveness: live (code_present_context)<br>Market (alternative) `0x4a33ba...57808b` — deployed 2024-11-28 10:08:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x27b6c3...c3f9c4` — deployed 2023-07-10 17:20:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x286844...573537` — deployed 2025-09-26 15:34:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x4e2646...c2db1a` — deployed 2024-11-22 18:32:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x3474ad...b9397a` — deployed 2023-05-04 12:56:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x79ef6d...52aec4` — deployed 2024-08-02 19:15:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63d27f...2737e8` — deployed 2024-12-18 10:04:11+03 — liveness: live (current_address_book_code)<br>Market (selected) `0x63df5e...d37035` — deployed 2022-12-11 07:15:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xe4d47e...cb12e4` — deployed 2025-09-26 15:34:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb8bc1e...4dd565` — deployed 2024-12-18 10:05:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x2a2563...ac77ff` — deployed 2024-09-18 10:33:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xdc2265...7ddf6b` — deployed 2023-09-18 13:51:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x3fd3da...7550bc` — deployed 2023-12-06 17:19:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-12-11 was 9d from audit; next candidate 79d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | DBR | own contract | DolaBorrowingRights (selected) `0xad038e...c5d710` — deployed 2022-12-10 20:20:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | Oracle | own contract | Oracle (selected) `0xabe146...10cce8` — deployed 2022-12-11 06:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | Fed | own contract | Fed (selected) `0x2b3454...5b90fd` — deployed 2022-12-11 07:01:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | BorrowController | own contract | BorrowController (selected) `0x01eca3...ae4ce8` — deployed 2025-05-20 17:38:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | SimpleERC20Escrow | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-10-inverse | GovTokenEscrow | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-10-inverse | INVEscrow | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view | DebtRepayer | unmatched — not counted | — | Listed as a repayment strategy in Section 1.1 and targeted in findings PVE-001, PVE-002, PVE-003. | no |
| drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view | DebtConverter | unmatched — not counted | — | Listed as a repayment strategy in Section 1.1 and targeted in findings PVE-002, PVE-003. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x865377...dc9ce4` | ERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfc63c9...0cbd4e` | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8bbd03...ce2773` | ERC20Mintable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xca78ee...2bf005` | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4c7b26...2236cf` | ERC20Mintable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7a1e12...480898` | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x02eaa6...cf3b03` | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xaf9568...ad5289` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xcbb162...d60b2e` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1c0642...7f82d1` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5d5392...b3e364` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1230bd...ccd6b3` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x607bcd...a24d94` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x1992af...1a7702` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbeccb6...359bf6` | GovernorMills | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x941c26...39259d` | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x41d5d7...9dfb68` | INV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x27b6c3...c3f9c4` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x286844...573537` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a2563...ac77ff` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3474ad...b9397a` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3fd3da...7550bc` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x48ba57...264e7c` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4a33ba...57808b` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4e2646...c2db1a` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63d27f...2737e8` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63fad9...aa1ee8` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x79ef6d...52aec4` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb427fc...c14a99` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb51624...22330b` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb8bc1e...4dd565` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd68d3a...7c4b29` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdc2265...7ddf6b` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe4d47e...cb12e4` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x08d234...e2e994` | sINV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 168 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 11 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 20 unmatched
- Matched-own operational status: 11 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1, medium=1
- Match method counts: temporal_name=1, unique_name=10

Zero-match audit list:

- [1758] junior-sherlock-contest.pdf
- [1759] junior-sherlock-audit.pdf
- [1763] audits.sherlock.xyz/bug-bounties/233
- [1765] drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view

Fork inheritance lineage and inherited audits are included when available.
