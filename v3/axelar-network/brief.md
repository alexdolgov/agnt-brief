# Agentic Audit Brief: Axelar Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 5 audit(s)
- Eligible audit results: 63 (5 matched; 58 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Axelar Network (`axelar-network`)
- Website: [https://axelar.network](https://axelar.network)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, avalanche, base, blast, bsc, celo, ethereum, fantom, fraxtal, kava, linea, mantle, mode, moonbeam, optimism, polygon, scroll, sei
- Contract surface: 79 unique implementations (79 raw deployments)
- Coverage basis: 2/2 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $132,554,859.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Axelar Network. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, fraxtal, kava, linea, mantle, mode, moonbeam, optimism, polygon, scroll. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x83a93500d23fbc3e82b410ad07a6a9f7a0670d66`, chain 1)
- UnnamedContract (`0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c`, chain 1)
- ConstAddressDeployer (`0x98b2920d53612483f91f12ed7754e51b4a77919e`, chain 1)
- Create3Deployer (`0x6513aedb4d1593ba12e50644401d976aebdc90d8`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/69 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/2 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 62 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 13 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 4 of 79 unique; 75 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/15
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 64
- Unique implementations: 79
- Raw deployments: 79
- Audits discovered: 63 (63 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/axelarnetwork/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 22 aging, 37 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Ackee Blockchain | Tier 2 | 2 | 13.3% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ConstAddressDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228615 | `0x98b2920d53612483f91f12ed7754e51b4a77919e` | ✅ Audited |
| Create3Deployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228613 | `0x6513aedb4d1593ba12e50644401d976aebdc90d8` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActionQueueUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x10087e44d399345b2f959e7c3619d57a73399afe` | ⚠️ Unaudited |
| BondSaleV1Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b6ac8f9af81a01d9ff14191842418ebdc91b4c` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x467719ad09025fcc6cf6f8311755809d45a5e5f3` | ⚠️ Unaudited |
| KIP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x946fb08103b400d1c79e07acccdef5cfd26cd374` | ⚠️ Unaudited |
| KIPStakingSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0611dcc913a9e108fd91eb282e00dff45de91ce8` | ⚠️ Unaudited |
| Nexus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafce80b19a8ce13dec0739a1aab7a028d6845eb3` | ⚠️ Unaudited |
| ReceiverImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x66e9cba5529824a03b5bc9931d9c63637101d0f7` | ⚠️ Unaudited |
| StakedUSDX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e9bdddbad724b1cc3bfe521d8e2c5f52a887a9f` | ⚠️ Unaudited |
| USDX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3527ef8de265eaa3716fb312c12847bfba66cef` | ⚠️ Unaudited |
| USDXRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eaf6fe1aed8631114d1de78317982ce73d82f7b` | ⚠️ Unaudited |
| USDXSales | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8598348b2cb4f62ec529ad52ab5e57b52ae3065f` | ⚠️ Unaudited |
| VEKIP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c328a18675a94775ad28d1aa6f47b755bdca12c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (64)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-228611 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-228612 | `0x4f4495243837681061c4743b74b3eedf548d56a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228614 | `0x83a93500d23fbc3e82b410ad07a6a9f7a0670d66` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-228616 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228617 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-228620 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-228621 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-228622 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-228623 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-228663 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-228664 | `0x304acf330bbe08d1e512eefaa92f6a57871fd895` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-228665 | `0x4268b8f0b87b6eae5d897996e6b845ddbd99adf3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-228666 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-228628 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-228629 | `0x6f015f16de9fc8791b234ef68d486d2bf203fba8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-228630 | `0x750e4c4984a9e0f12978ea6742bc1c5d248f40ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-228631 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-228636 | `0x1b6382dbdea11d97f24495c9a90b7c88469134a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-228637 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-228638 | `0x304acf330bbe08d1e512eefaa92f6a57871fd895` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-228639 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fraxtal | unit-228640 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fraxtal | unit-228641 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fraxtal | unit-228642 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | unit-228624 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | unit-228625 | `0x4f4495243837681061c4743b74b3eedf548d56a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | unit-228626 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | unit-228627 | `0xca01a1d0993565291051daff390892518acfad3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | unit-228632 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | unit-228633 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | unit-228634 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | unit-228635 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-228655 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-228656 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-228657 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-228658 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-228675 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-228676 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-228677 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-228678 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-228643 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-228644 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-228645 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-228646 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-228647 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-228648 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-228649 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-228650 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-228651 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-228652 | `0x5029c0eff6c34351a0cec334542cdb22c7928f78` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-228653 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-228654 | `0xfab550568c688d5d8a52c7d794cb93edc26ec0ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-228667 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-228668 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-228669 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-228670 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-228671 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-228672 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-228673 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-228674 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-228659 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-228660 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-228661 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-228662 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2021-11 Adrian and Lucas.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2021-11%20Adrian%20and%20Lucas.pdf) | Adrian and Lucas | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2021-11 Commonprefix.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2021-11%20Commonprefix.pdf) | Commonprefix | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [2021-12 Cure53.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2021-12%20Cure53.pdf) | Cure53 | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2022-02 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-02%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [2022-03 Commonprefix.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-03%20Commonprefix.pdf) | Commonprefix | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [2022-04 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-04%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [2022-04 Certik.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-04%20Certik.pdf) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |
| [2022-04 Cure53.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-04%20Cure53.pdf) | Cure53 | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2022-05 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-05%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2022-06 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-06%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2022-07 Ackee blockchain-v2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-07%20Ackee%20blockchain-v2.pdf) | Ackee Blockchain | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2022-07 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-07%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2022-08 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-08%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2022-08 Chaintroopers.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-08%20Chaintroopers.pdf) | Chaintroopers | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2022-09 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-09%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2022-10 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-10%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2022-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [2022-12 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-12%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2023-01 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-01%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2023-02 Ackee Blockchain-2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-02%20Ackee%20Blockchain-2.pdf) | Ackee Blockchain | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2023-02 Ackee Blockchain-3.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-02%20Ackee%20Blockchain-3.pdf) | Ackee Blockchain | Audit | 2023-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [2023-02 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-02%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2023-04 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-04%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2023-04 Informal Systems.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-04%20Informal%20Systems.pdf) | Informal Systems | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2023-08 Yaar Hahn Governance.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-08%20Yaar%20Hahn%20Governance.pdf) | Yaar Hahn | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2023-08 Yaar Hahn ITS.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-08%20Yaar%20Hahn%20ITS.pdf) | Yaar Hahn | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2023-10 Least Authority.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-10%20Least%20Authority.pdf) | Least Authority | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2023-11 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-11%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 59 | high |
| [2023-12 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-12%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [2024-02 Ackee Blockchain CGP Refactor.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-02%20Ackee%20Blockchain%20CGP%20Refactor.pdf) | Ackee Blockchain | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [2024-02 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-02%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2024-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 61 | high |
| [2024-03 NCC.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-03%20NCC.pdf) | NCC | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-04 Ackee Blockchain ITS.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-04%20Ackee%20Blockchain%20ITS.pdf) | Ackee Blockchain | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 40 | high |
| [2024-04 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-04%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2024-05 Halborn.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-05%20Halborn.pdf) | Halborn | Audit | 2024-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-06 NCC.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-06%20NCC.pdf) | NCC | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2024-06 Ottersec.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-06%20Ottersec.pdf) | Ottersec | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2024-07 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-07%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2024-11 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [2024-11 NCC.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20NCC.pdf) | NCC | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2024-11 NCC_ITS.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20NCC_ITS.pdf) | NCC | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2024-11 Ottersec - Sui.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20Ottersec%20-%20Sui.pdf) | Ottersec | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2024-11 Ottersec_Sui_Gateway.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20Ottersec_Sui_Gateway.pdf) | Ottersec | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2025-01 Ackee_ITS.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01%20Ackee_ITS.pdf) | Ackee Blockchain | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [2025-01 FYEO_Soroban.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01%20FYEO_Soroban.pdf) | FYEO | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [2025-01 FYEO_XRPL.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01%20FYEO_XRPL.pdf) | FYEO | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-01 NCC_XRPL_v1.3.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01%20NCC_XRPL_v1.3.pdf) | NCC | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf) | NCC | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2025-03 NCC_XRPL_phase2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-03%20NCC_XRPL_phase2.pdf) | NCC | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04%20NCC%20_%20XRPL%20_%20Final%20v1.0_phase3.pdf) | NCC | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2025-04 axelar_cgp_soroban_stellar_audit_final.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04%20axelar_cgp_soroban_stellar_audit_final.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2025-04-Axelar-mvx-gas-service.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-gas-service.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-04-Axelar-mvx-gateway.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-gateway.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-04-Axelar-mvx-governance-1.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-governance-1.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-04-Axelar-mvx-governance-2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-governance-2.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-04-Axelar-mvx-interchain-token-factory.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-interchain-token-factory.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-04-Axelar-mvx-interchain-token-service-proxy.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-interchain-token-service-proxy.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-04-Axelar-mvx-interchain-token-service.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-interchain-token-service.pdf) | Unknown | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-04-Axelar-mvx-token-manager.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-token-manager.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-05 NCC_XRPL_phase3.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-05%20NCC_XRPL_phase3.pdf) | NCC | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf) | Ackee Blockchain | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/axelarnetwork/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [Flow](https://github.com/axelarnetwork/amplifier-advisory-committee/blob/main/src/chains/flow-evm/FLOW_EVM_REPORT.md) | Amplifier Advisory Committee | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [here](https://github.com/axelarnetwork/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16712] 2021-11 Adrian and Lucas.pdf — no match: Audit report covers three Rust libraries: tofn, tofnd, and paillier-rs. No Solidity contracts. Date from cover page.
- [16713] 2021-11 Commonprefix.pdf — no match: All contracts listed in scope section of the audit report.
- [16714] 2021-12 Cure53.pdf — no match: Extracted repository names from scope section; no individual contract files listed.
- [16715] 2022-02 Ackee blockchain.pdf — no match: All contracts described in System Overview section 4.1 are in scope. Audit date from document revision 1.1 and citation.
- [16716] 2022-03 Commonprefix.pdf — no match: All contracts listed in the scope section of the audit report.
- [16717] 2022-04 Ackee blockchain.pdf — no match: Contracts explicitly listed in System Overview section and targeted in findings.
- [16718] 2022-04 Certik.pdf — no match: Extracted 22 contract names from the audit scope table. The audit date is explicitly given as 'Apr 22, 2022' in the delivery date.
- [16719] 2022-04 Cure53.pdf — no match: Extracted contract names from Solidity source files mentioned in findings. The audit report covers WP1 (Axelar Core & Components) which includes Solidity contracts. The date is from the report cover page: 'Cure53, Berlin · 04/25/22'.
- [16720] 2022-05 Ackee blockchain.pdf — no match: Contracts extracted from findings targets and descriptions. No explicit scope table; contracts are identified from finding targets and code references.
- [16721] 2022-06 Ackee blockchain.pdf — no match: Three contracts explicitly described in scope: SquidSwapExecutable, DistributionENSExecutable, SquidToken. Audit date from cover page and document revisions.
- [16722] 2022-07 Ackee blockchain-v2.pdf — no match: Contracts explicitly described in System Overview section and targeted in findings.
- [16723] 2022-07 Ackee blockchain.pdf — no match: Extracted from Executive Summary and System Overview sections. Contracts explicitly listed: AxelarAuthMultisig and XC20Wrapper. Proxy.sol is also referenced in findings.
- [16724] 2022-08 Ackee blockchain.pdf — no match: All contracts explicitly listed in scope and described in System Overview section.
- [16725] 2022-08 Chaintroopers.pdf — no match: Extracted contracts from scope section and findings. Audit date from cover page.
- [16726] 2022-09 Ackee Blockchain.pdf — no match: Extracted contract names from scope section and findings targets. Audit date from cover page and appendix A.
- [16727] 2022-10 Ackee Blockchain.pdf — matched: Extracted 7 contracts from scope section on page 8. Audit date from cover page and appendix A.
- [16728] 2022-12 Ackee Blockchain.pdf — no match: Contracts explicitly described in System Overview section and targeted in findings.
- [16729] 2023-01 Ackee Blockchain.pdf — no match: Contracts explicitly described in System Overview section and targeted in findings.
- [16730] 2023-02 Ackee Blockchain-2.pdf — no match: Contracts explicitly listed in System Overview section. Date from document revision and appendix.
- [16731] 2023-02 Ackee Blockchain-3.pdf — matched: Scope explicitly listed 6 contracts in the executive summary. Also includes Create3 library (not a contract but in scope).
- [16732] 2023-02 Ackee Blockchain.pdf — no match: Extracted contracts from System Overview sections and findings targets. Audit date from cover page and document revisions.
- [16733] 2023-04 Ackee Blockchain.pdf — no match: Contracts explicitly listed in System Overview section of the audit report.
- [16734] 2023-04 Informal Systems.pdf — no match: The audit scope is the axelarnet module (Cosmos SDK module), not individual smart contracts. The date is from the cover page: 'Last revised 4 August, 2023'.
- [16735] 2023-08 Yaar Hahn Governance.pdf — no match: Extracted contracts from scope section and findings. Audit date is end of engagement (August 8, 2023).
- [16736] 2023-08 Yaar Hahn ITS.pdf — no match: All contracts mentioned in findings are considered in scope. No explicit scope section, but report title and date indicate audit of interchain-token-service repository.
- [16737] 2023-10 Least Authority.pdf — no match: Extracted contract names from file paths in findings and scope section. Audit date from cover page and headers.
- [16738] 2023-11 Ackee Blockchain.pdf — matched: Extracted contract names from system overview sections of multiple revisions, findings targets, and inheritance diagrams. The audit report covers multiple revisions with final date 13.11.2023.
- [16739] 2023-12 Ackee Blockchain.pdf — no match: The audit report covers multiple revisions (1.0 to 6.0) of the Axelar Interchain Token Service. The final audit date is December 12, 2023 (Revision 6.0). The scope includes all contracts described in the system overview sections of each revision, as well as contracts mentioned in findings. The report explicitly lists contracts in scope in sections like 'System Overview' and 'Contracts'.
- [16740] 2024-02 Ackee Blockchain CGP Refactor.pdf — no match: Extracted contracts from findings targets and system overview sections. Audit date from cover page and appendix.
- [16741] 2024-02 Ackee Blockchain.pdf — matched: The audit report covers multiple revisions (1.0 to 7.0) of the Axelar Interchain Token Service. The scope includes all contracts described in the system overview sections of each revision, as well as contracts mentioned in findings. The final audit date is 15.02.2024 from the cover page.
- [16742] 2024-03 NCC.pdf — no match: The scope section mentions 'contracts/' as a high-priority directory but does not list specific contract names. No individual contract names are explicitly named in scope.
- [16743] 2024-04 Ackee Blockchain ITS.pdf — matched: Extracted from the document revision history and system overview sections. The audit report covers multiple revisions from April 2023 to April 2024. The final revision date is 11.4.2024 (April 11, 2024).
- [16744] 2024-04 Ackee Blockchain.pdf — no match: Scope explicitly mentions AxelarAmplifierAuth, AxelarAmplifierGateway contracts and their dependencies. BaseWeightedMultisig is a dependency described in System Overview. Audit date from cover page and appendix.
- [16745] 2024-05 Halborn.pdf — no match: The report mentions 'Amplifier Contracts' and 'Axelar' but does not list specific contract names or file paths in the provided text. The scope section is referenced but not included in the excerpt.
- [16746] 2024-06 NCC.pdf — no match: Extracted contracts from scope and findings. The report covers the Amplifier Gateway and GMP SDK contracts. The audit date is from the cover page.
- [16747] 2024-06 Ottersec.pdf — no match: The scope section only mentions 'cgp-sui' as the program name. No individual contract or module names are listed. The report references source files like deepbook_v2.move, gateway.move, discovery.move, transfers.move, auth.move, validators.move, but these are not explicitly listed as in-scope contracts. The audit date is from the cover page.
- [16748] 2024-07 Ackee Blockchain.pdf — no match: Extracted from executive summary and revision sections. Date from cover page and appendix A.
- [16749] 2024-11 Ackee Blockchain.pdf — no match: Extracted 10 explicitly scoped contracts from the scope list, plus additional contracts mentioned in findings that are part of the audited codebase.
- [16750] 2024-11 NCC.pdf — no match: Scope includes Axelar core changes (files listed) and Amplifier contracts (interchain-token-service and axelarnet-gateway CosmWasm contracts). Contract names extracted from file paths and context.
- [16751] 2024-11 NCC_ITS.pdf — no match: Scope includes Axelar core changes and Amplifier contracts (ITS and Axelarnet Gateway). Keeper and Counter are extracted from findings as they are part of the audited codebase.
- [16752] 2024-11 Ottersec - Sui.pdf — no match: The scope section only lists the program name 'cgp-sui' as a whole, not individual contract files. The audit date is from the cover page: 'June 11th, 2024'.
- [16753] 2024-11 Ottersec_Sui_Gateway.pdf — no match: The scope section only mentions the program name 'cgp-sui' as a whole, not individual contract files. The audit date is from the cover page: 'June 11th, 2024'.
- [16754] 2025-01 Ackee_ITS.pdf — no match: Extracted 10 contracts from explicit scope listing, plus additional contracts referenced in findings that are part of the audited codebase.
- [16755] 2025-01 FYEO_Soroban.pdf — no match: Extracted contract names from the scope table listing files in the code review. Audit date from cover page and header.
- [16756] 2025-01 FYEO_XRPL.pdf — no match: Extracted contract names from the scope table and file paths. Audit date from cover page.
- [16757] 2025-01 NCC_XRPL_v1.3.pdf — no match: Scope explicitly lists four contract/module paths: xrpl-multisig-prover, xrpl-gateway, xrpl-voting-verifier, and xrpl-types. Off-chain components (ampd) are also in scope but are not smart contracts. Audit date is January 27, 2025 from the cover page.
- [16758] 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf — no match: Extracted 6 contract/module names from the scope section and file paths. Audit date from cover page.
- [16759] 2025-03 NCC_XRPL_phase2.pdf — no match: Scope section lists directories for XRPL Multisig Prover, XRPL Gateway, XRPL Voting Verifier, and XRPL types. Off-chain components (ampd signing/verification) are not smart contracts and are excluded.
- [16760] 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf — no match: Extracted contract names from scope section and target data. Audit date from cover page.
- [16761] 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf — no match: Extracted contract names from file paths and findings. The scope section describes the repo but does not list individual contracts; names were inferred from file paths in findings.
- [16762] 2025-04-Axelar-mvx-gas-service.pdf — no match: Only one contract (GasService) is in scope, located at ./gas-service/src/lib.rs. The audit date is explicitly stated on the cover page.
- [16763] 2025-04-Axelar-mvx-gateway.pdf — no match: The audit report scope section lists the repository and path ./gateway/ as the smart contract under audit. No specific .sol or .rs file names are given, but the contract is referred to as 'gateway' throughout.
- [16764] 2025-04-Axelar-mvx-governance-1.pdf — no match: Only one contract (Governance) is in scope, located at governance/src/lib.rs. The audit date is explicitly stated on the cover page.
- [16765] 2025-04-Axelar-mvx-governance-2.pdf — no match: Only one contract (Governance) is in scope, located at governance/src/lib.rs. Audit date is April 21, 2025 from the cover page.
- [16766] 2025-04-Axelar-mvx-interchain-token-factory.pdf — no match: The audit scope is a single smart contract path: ./interchain-token-factory/. No individual contract names are provided beyond the directory name. The audit date is explicitly stated on the cover page.
- [16767] 2025-04-Axelar-mvx-interchain-token-service-proxy.pdf — no match: The audit report covers a single smart contract named 'interchain-token-service-proxy' located in the repository. The date is explicitly stated on the cover page.
- [16768] 2025-04-Axelar-mvx-interchain-token-service.pdf — no match: The audit report does not list specific contract names in a scope table. It only references file paths like interchain-token-service/src/proxy_its.rs, but no explicit contract names are given. The report focuses on code issues within the interchain-token-service module.
- [16769] 2025-04-Axelar-mvx-token-manager.pdf — no match: The audit report scope section lists the repository and path for the MultiversX smart contract. The contract is referred to as 'token-manager' (the directory name). No individual .sol or .rs files are listed; the scope is the entire token-manager module.
- [16770] 2025-05 NCC_XRPL_phase3.pdf — no match: Extracted contract/module names from scope section and file paths. Audit date from cover page.
- [16771] 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf — no match: Scope explicitly lists six programs: Axelar Gas Service, Axelar Gateway, Axelar Interchain Token Service, Axelar Multicall, Axelar Governance, Axelar Memo. Audit date is 8.8.2025 from cover page and appendix.
- [16772] Active Bug Bounty Program — no match: The document is a bug bounty program page, not an audit report. No contracts in scope are listed; only general program information and reward details are provided.
- [16773] Flow — no match: The report is a high-level assessment of Flow EVM integration with Axelar Amplifier, not a smart contract audit. No specific contracts are listed as in scope. The only contracts mentioned are third-party dependencies (Axelar GMP SDK contracts) and Flow's own components (EVM Core, VM Bridge, EVM Gateway) but they are not explicitly scoped for audit in this report.
- [16774] here — no match: The provided text is a GitHub repository README listing audit reports, not an actual audit report. No specific contracts in scope are identified.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2021-11 Adrian and Lucas.pdf | tofn | unmatched — not counted | — | audited commit 8dabe9354c67ca3a9753c83719e95231908eb4e9 | no |
| 2021-11 Adrian and Lucas.pdf | tofnd | unmatched — not counted | — | audited commit c9846f20386364cd77dc87df748856aa56a3783a | no |
| 2021-11 Adrian and Lucas.pdf | paillier-rs | unmatched — not counted | — | audited commit 2d965b16d89de6f5d15b054fd5874d0c017c4747 | no |
| 2021-11 Commonprefix.pdf | AdminMultisigBase | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | AxelarGatewayMultisig | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | AxelarGatewayProxyMultisig | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | AxelarGatewayProxySinglesig | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | AxelarGatewayProxy | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | AxelarGatewaySinglesig | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | AxelarGateway | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | BurnableMintableCappedERC20 | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | Burner | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | Context | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | ECDSA | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | EternalStorage | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| 2021-12 Cure53.pdf | axelar-core | unmatched — not counted | — | listed in scope as WP1 repository | no |
| 2021-12 Cure53.pdf | tofnd | unmatched — not counted | — | listed in scope as WP1 repository | no |
| 2021-12 Cure53.pdf | solidity-cgp-gateway | unmatched — not counted | — | listed in scope as WP1 repository | no |
| 2021-12 Cure53.pdf | tofn | unmatched — not counted | — | listed in scope as WP1 repository | no |
| 2021-12 Cure53.pdf | axelar-web-app | unmatched — not counted | — | listed in scope as WP3 repository | no |
| 2021-12 Cure53.pdf | axelarjs-sdk | unmatched — not counted | — | listed in scope as WP3 repository | no |
| 2021-12 Cure53.pdf | axelar-bridge-rest-server | unmatched — not counted | — | listed in scope as WP3 repository | no |
| 2022-02 Ackee blockchain.pdf | EternalStorage | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | AdminMultisigBase | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | AxelarGateway | unmatched — not counted | — | target in finding H1, H2 | no |
| 2022-02 Ackee blockchain.pdf | AxelarGatewayMultisig | unmatched — not counted | — | target in finding M1, W3 | no |
| 2022-02 Ackee blockchain.pdf | AxelarGatewaySinglesig | unmatched — not counted | — | target in finding W3, I1 | no |
| 2022-02 Ackee blockchain.pdf | ECDSA | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | AxelarGatewayProxy | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | AxelarGatewayProxyMultisig | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | AxelarGatewayProxySinglesig | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | ERC20 | unmatched — not counted | — | target in finding L1 | no |
| 2022-02 Ackee blockchain.pdf | MintableCappedERC20 | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | BurnableMintableCappedERC20 | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | ERC20Permit | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | DepositHandler | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | Ownable | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-03 Commonprefix.pdf | AxelarGatewayProxyMultisig | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | AxelarGatewayProxy | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | ERC20Permit | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | AxelarGatewayProxySinglesig | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | AxelarGatewayMultisig | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | AxelarGatewaySinglesig | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | ECDSA | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | DepositHandler | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | AdminMultisigBase | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | MintableCappedERC20 | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | Context | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | AxelarGateway | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | EternalStorage | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | BurnableMintableCappedERC20 | unmatched — not counted | — | listed in scope | no |
| 2022-04 Ackee blockchain.pdf | EternalStorage | unmatched — not counted | — | described in System Overview | no |
| 2022-04 Ackee blockchain.pdf | AdminMultisigBase | unmatched — not counted | — | described in System Overview | no |
| 2022-04 Ackee blockchain.pdf | AxelarGateway | unmatched — not counted | — | described in System Overview | no |
| 2022-04 Ackee blockchain.pdf | AxelarGatewayMultisig | unmatched — not counted | — | described in System Overview and findings | no |
| 2022-04 Ackee blockchain.pdf | AxelarGatewaySinglesig | unmatched — not counted | — | described in System Overview and findings | no |
| 2022-04 Ackee blockchain.pdf | DepositHandler | unmatched — not counted | — | mentioned in findings M3 and I1 | no |
| 2022-04 Ackee blockchain.pdf | BurnableMintableCappedERC20 | unmatched — not counted | — | mentioned in findings I1 and C.1 | no |
| 2022-04 Ackee blockchain.pdf | ERC20Permit | unmatched — not counted | — | mentioned in finding C.1 | no |
| 2022-04 Ackee blockchain.pdf | AxelarGatewayProxy | unmatched — not counted | — | mentioned in finding M1 | no |
| 2022-04 Certik.pdf | AxelarGatewayMultisig | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | IERC20 | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | AxelarGatewaySinglesig | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | AxelarGateway | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | Context | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | AddressFormat | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | EternalStorage | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | IAxelarGatewaySinglesig | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | IAxelarGatewayMultisig | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | DepositHandler | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | IERC20BurnFrom | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | TokenDeployer | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | ERC20Permit | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | AdminMultisigBase | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | Ownable | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | MintableCappedERC20 | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | IAxelarExecutable | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | BurnableMintableCappedERC20 | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | ECDSA | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | IAxelarGateway | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | ERC20 | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | AxelarGatewayProxy | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Cure53.pdf | ERC20 | unmatched — not counted | — | Affected file in findings AXE-02-013 and AXE-02-014 | no |
| 2022-04 Cure53.pdf | AxelarGatewayMultisig | unmatched — not counted | — | Mentioned in finding AXE-02-006 and AXE-02-007 | no |
| 2022-04 Cure53.pdf | AxelarGatewaySinglesig | unmatched — not counted | — | Mentioned in finding AXE-02-006 and AXE-02-007 | no |
| 2022-04 Cure53.pdf | AdminMultisigBase | unmatched — not counted | — | Affected file in finding AXE-02-006 | no |
| 2022-04 Cure53.pdf | AxelarGateway | unmatched — not counted | — | Affected file in finding AXE-02-007 | no |
| 2022-05 Ackee blockchain.pdf | AxelarGasReceiverProxy | unmatched — not counted | — | M1: Upgradeability target | no |
| 2022-05 Ackee blockchain.pdf | Proxy | unmatched — not counted | — | M1: Upgradeability target | no |
| 2022-05 Ackee blockchain.pdf | AxelarGasReceiver | unmatched — not counted | — | M2 and W3 targets | no |
| 2022-05 Ackee blockchain.pdf | Upgradable | unmatched — not counted | — | M1: Upgradeability target | no |
| 2022-05 Ackee blockchain.pdf | AxelarDepositService | unmatched — not counted | — | M3, M4, W2 targets | no |
| 2022-05 Ackee blockchain.pdf | DepositHandler | unmatched — not counted | — | M3: handleTokenSend transfers funds from DepositHandler | no |
| 2022-05 Ackee blockchain.pdf | DepositReceiver | unmatched — not counted | — | W2: approvals executed through DepositReceiver | no |
| 2022-05 Ackee blockchain.pdf | AxelarGateway | unmatched — not counted | — | M3: sendToken called on AxelarGateway | no |
| 2022-06 Ackee blockchain.pdf | SquidSwapExecutable | unmatched — not counted | — | described in section 4.2 Contracts and targeted in findings | no |
| 2022-06 Ackee blockchain.pdf | DistributionENSExecutable | unmatched — not counted | — | described in section 4.2 Contracts and targeted in findings | no |
| 2022-06 Ackee blockchain.pdf | SquidToken | unmatched — not counted | — | described in section 4.2 Contracts and targeted in findings | no |
| 2022-07 Ackee blockchain-v2.pdf | AxelarAuthWeighted | unmatched — not counted | — | Section 4.1 Contracts: 'AxelarAuthWeighted is used as an authentication mechanism...' | no |
| 2022-07 Ackee blockchain-v2.pdf | AxelarDepositService | unmatched — not counted | — | Section 4.1 Contracts: 'AxelarDepositService is used to manage deposits...' | no |
| 2022-07 Ackee blockchain-v2.pdf | DepositReceiver | unmatched — not counted | — | Section 4.1 Contracts: 'DepositReceiver is used as a wallet to hold the deposits.' | no |
| 2022-07 Ackee blockchain-v2.pdf | ReceiverImplementation | unmatched — not counted | — | Section 4.1 Contracts: 'It inherits from ReceiverImplementation...' | no |
| 2022-07 Ackee blockchain-v2.pdf | AxelarDepositServiceProxy | unmatched — not counted | — | Finding W2 target: 'AxelarDepositServiceProxy.sol' | no |
| 2022-07 Ackee blockchain-v2.pdf | Upgradable | unmatched — not counted | — | Finding M1 target: 'Upgradable.sol' | no |
| 2022-07 Ackee blockchain-v2.pdf | Ownable | unmatched — not counted | — | Finding M1 target: 'Ownable.sol' | no |
| 2022-07 Ackee blockchain.pdf | AxelarAuthMultisig | unmatched — not counted | — | listed in scope: Solidity CGP Gateway - contracts/AxelarAuthMultisig.sol | no |
| 2022-07 Ackee blockchain.pdf | XC20Wrapper | unmatched — not counted | — | listed in scope: XC20 Wrapper - contracts/* | no |
| 2022-07 Ackee blockchain.pdf | Proxy | unmatched — not counted | — | mentioned in finding I1: XC20 Wrapper/contracts/Proxy.sol | no |
| 2022-08 Ackee blockchain.pdf | TokenLinker | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2022-08 Ackee blockchain.pdf | TokenLinkerLockUnlock | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2022-08 Ackee blockchain.pdf | TokenLinkerMintBurn | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2022-08 Ackee blockchain.pdf | TokenLinkerNative | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2022-08 Ackee blockchain.pdf | TokenLinkerProxy | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2022-08 Ackee blockchain.pdf | AxelarForecallable | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2022-08 Chaintroopers.pdf | AxelarAuthWeighted | unmatched — not counted | — | listed in scope and findings | no |
| 2022-08 Chaintroopers.pdf | AxelarGateway | unmatched — not counted | — | listed in scope and findings | no |
| 2022-08 Chaintroopers.pdf | AxelarGasService | unmatched — not counted | — | listed in scope and findings | no |
| 2022-08 Chaintroopers.pdf | ReceiverImplementation | unmatched — not counted | — | listed in findings | no |
| 2022-08 Chaintroopers.pdf | DepositReceiver | unmatched — not counted | — | listed in findings | no |
| 2022-08 Chaintroopers.pdf | AxelarDepositService | unmatched — not counted | — | listed in findings | no |
| 2022-08 Chaintroopers.pdf | BurnableMintableCappedERC20 | unmatched — not counted | — | listed in findings | no |
| 2022-08 Chaintroopers.pdf | Ownable | unmatched — not counted | — | listed in findings | no |
| 2022-08 Chaintroopers.pdf | AdminMultisigBase | unmatched — not counted | — | listed in findings | no |
| 2022-08 Chaintroopers.pdf | Upgradable | unmatched — not counted | — | listed in findings | no |
| 2022-08 Chaintroopers.pdf | DepositHandler | unmatched — not counted | — | mentioned in findings | no |
| 2022-08 Chaintroopers.pdf | MintableCappedERC20 | unmatched — not counted | — | mentioned in findings | no |
| 2022-08 Chaintroopers.pdf | ERC20 | unmatched — not counted | — | mentioned in findings | no |
| 2022-09 Ackee Blockchain.pdf | TokenLinkerFactory | unmatched — not counted | — | listed in scope section 4.1 | no |
| 2022-09 Ackee Blockchain.pdf | TokenLinker | unmatched — not counted | — | target in finding M1 | no |
| 2022-09 Ackee Blockchain.pdf | TokenLinkerRouter | unmatched — not counted | — | mentioned in finding I1 | no |
| 2022-09 Ackee Blockchain.pdf | TokenLinkerMintBurnExternal | unmatched — not counted | — | target in finding I2 | no |
| 2022-09 Ackee Blockchain.pdf | TokenLinkerNative | unmatched — not counted | — | target in finding I4 | no |
| 2022-10 Ackee Blockchain.pdf | ConstAddressDeployer | own contract | ConstAddressDeployer (selected) `0x98b2920d53612483f91f12ed7754e51b4a77919e` — deployed 2022-08-31 21:44:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-10 Ackee Blockchain.pdf | StringAddressUtils | unmatched — not counted | — | listed in scope | no |
| 2022-10 Ackee Blockchain.pdf | StringBytesUtils | unmatched — not counted | — | listed in scope | no |
| 2022-10 Ackee Blockchain.pdf | RoledPausable | unmatched — not counted | — | listed in scope | no |
| 2022-10 Ackee Blockchain.pdf | SquidMulticall | unmatched — not counted | — | listed in scope | no |
| 2022-10 Ackee Blockchain.pdf | SquidRouterProxy | unmatched — not counted | — | listed in scope | no |
| 2022-10 Ackee Blockchain.pdf | SquidRouter | unmatched — not counted | — | listed in scope | no |
| 2022-12 Ackee Blockchain.pdf | Upgradeable | unmatched — not counted | — | listed in scope | no |
| 2022-12 Ackee Blockchain.pdf | AxelarForecallable | unmatched — not counted | — | listed in scope | no |
| 2022-12 Ackee Blockchain.pdf | AxelarForecallService | unmatched — not counted | — | listed in scope | no |
| 2022-12 Ackee Blockchain.pdf | IAxelarForecallService | unmatched — not counted | — | listed in scope | no |
| 2023-01 Ackee Blockchain.pdf | GMPExpressService | unmatched — not counted | — | listed in scope and findings | no |
| 2023-01 Ackee Blockchain.pdf | ExpressExecutableProxy | unmatched — not counted | — | listed in scope and findings | no |
| 2023-01 Ackee Blockchain.pdf | ExpressRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-2.pdf | InterchainTokenLinker | unmatched — not counted | — | listed in scope and findings | no |
| 2023-02 Ackee Blockchain-2.pdf | LinkerRouter | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-2.pdf | LinkedTokenData | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-3.pdf | FinalProxy | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-3.pdf | Create3 | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-3.pdf | Create3Deployer | own contract | Create3Deployer (selected) `0x6513aedb4d1593ba12e50644401d976aebdc90d8` — deployed 2023-10-12 09:08:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-02 Ackee Blockchain-3.pdf | ExpressExecutable | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-3.pdf | ExpressProxy | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-3.pdf | ExpressProxyDeployer | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-3.pdf | ExpressRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain.pdf | GMPExpressService | unmatched — not counted | — | Listed in scope and described in System Overview sections. | no |
| 2023-02 Ackee Blockchain.pdf | ExpressExecutableProxy | unmatched — not counted | — | Listed in scope and described in System Overview sections. | no |
| 2023-02 Ackee Blockchain.pdf | ExpressRegistry | unmatched — not counted | — | Listed in scope and described in System Overview sections. | no |
| 2023-02 Ackee Blockchain.pdf | ExpressProxy | unmatched — not counted | — | Renamed from ExpressExecutableProxy in revision 1.1, described in System Overview. | no |
| 2023-02 Ackee Blockchain.pdf | ExpressProxyDeployer | unmatched — not counted | — | New contract introduced in revision 1.1, described in System Overview. | no |
| 2023-02 Ackee Blockchain.pdf | ExpressProxyFactory | unmatched — not counted | — | New contract introduced in revision 1.1, described in System Overview. | no |
| 2023-02 Ackee Blockchain.pdf | ExpressExecutable | unmatched — not counted | — | Mentioned in revision 1.1 System Overview as not upgradeable. | no |
| 2023-04 Ackee Blockchain.pdf | InterchainTokenService | unmatched — not counted | — | described in System Overview | no |
| 2023-04 Ackee Blockchain.pdf | InterchainToken | unmatched — not counted | — | described in System Overview | no |
| 2023-04 Ackee Blockchain.pdf | LinkedTokenData | unmatched — not counted | — | described in System Overview | no |
| 2023-04 Ackee Blockchain.pdf | LinkerRouter | unmatched — not counted | — | described in System Overview | no |
| 2023-04 Ackee Blockchain.pdf | TokenDeployer | unmatched — not counted | — | described in System Overview | no |
| 2023-04 Ackee Blockchain.pdf | BytecodeServer | unmatched — not counted | — | described in System Overview | no |
| 2023-04 Ackee Blockchain.pdf | ERC20BurnableMintable | unmatched — not counted | — | described in System Overview | no |
| 2023-04 Informal Systems.pdf | axelarnet | unmatched — not counted | — | Scope section: 'the x/axelarnet module' is the focus of the audit. | no |
| 2023-08 Yaar Hahn Governance.pdf | AxelarGateway | unmatched — not counted | — | listed in scope | no |
| 2023-08 Yaar Hahn Governance.pdf | MultisigBase | unmatched — not counted | — | mentioned in findings | no |
| 2023-08 Yaar Hahn Governance.pdf | Multisig | unmatched — not counted | — | mentioned in findings | no |
| 2023-08 Yaar Hahn Governance.pdf | AxelarServiceGovernance | unmatched — not counted | — | mentioned in findings | no |
| 2023-08 Yaar Hahn Governance.pdf | InterchainGovernance | unmatched — not counted | — | mentioned in findings | no |
| 2023-08 Yaar Hahn Governance.pdf | Caller | unmatched — not counted | — | mentioned in findings | no |
| 2023-08 Yaar Hahn Governance.pdf | Timelock | unmatched — not counted | — | listed in scope | no |
| 2023-08 Yaar Hahn ITS.pdf | RemoteAddressValidator | unmatched — not counted | — | listed in findings | no |
| 2023-08 Yaar Hahn ITS.pdf | Operatable | unmatched — not counted | — | listed in findings | no |
| 2023-08 Yaar Hahn ITS.pdf | Distributable | unmatched — not counted | — | mentioned in findings | no |
| 2023-08 Yaar Hahn ITS.pdf | InterchainToken | unmatched — not counted | — | listed in findings | no |
| 2023-08 Yaar Hahn ITS.pdf | TokenManagerProxy | unmatched — not counted | — | listed in findings | no |
| 2023-08 Yaar Hahn ITS.pdf | InterchainTokenService | unmatched — not counted | — | listed in findings | no |
| 2023-08 Yaar Hahn ITS.pdf | TokenManager | unmatched — not counted | — | listed in findings | no |
| 2023-08 Yaar Hahn ITS.pdf | FlowLimit | unmatched — not counted | — | listed in findings | no |
| 2023-10 Least Authority.pdf | InterchainTokenService | unmatched — not counted | — | listed in scope and findings | no |
| 2023-10 Least Authority.pdf | StandardizedTokenDeployer | unmatched — not counted | — | listed in findings | no |
| 2023-10 Least Authority.pdf | TokenManagerDeployer | unmatched — not counted | — | listed in findings | no |
| 2023-10 Least Authority.pdf | ERC20 | unmatched — not counted | — | listed in findings | no |
| 2023-10 Least Authority.pdf | LinkerRouter | unmatched — not counted | — | listed in findings | no |
| 2023-10 Least Authority.pdf | Adminable | unmatched — not counted | — | listed in findings | no |
| 2023-10 Least Authority.pdf | ExpressCallHandler | unmatched — not counted | — | listed in findings | no |
| 2023-11 Ackee Blockchain.pdf | InterchainTokenService | unmatched — not counted | — | Core contract, main entry point, described in system overviews of multiple revisions. | no |
| 2023-11 Ackee Blockchain.pdf | InterchainToken | unmatched — not counted | — | Abstract ERC-20 token contract, base of TokenManagerCanonical, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | LinkerRouter | unmatched — not counted | — | Contract for authorization of cross-chain messages, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | TokenDeployer | unmatched — not counted | — | Deploys tokens using Create3Deployer, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | BytecodeServer | unmatched — not counted | — | Holds token creation code, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | ERC20BurnableMintable | unmatched — not counted | — | ERC-20 implementation used for token deployments, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | TokenManager | unmatched — not counted | — | Abstract base class for all token manager types, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | TokenManagerCanonical | unmatched — not counted | — | Token manager type for canonical tokens, inherits InterchainToken, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | TokenManagerLiquidityPool | unmatched — not counted | — | Token manager type using external liquidity pool, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | TokenManagerLockUnlock | unmatched — not counted | — | Token manager type storing tokens directly, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | TokenManagerMintBurn | unmatched — not counted | — | Token manager type using mint/burn, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | AddressBytesUtils | unmatched — not counted | — | Library for address conversion, finding M2 targets it. | no |
| 2023-11 Ackee Blockchain.pdf | ExpressCallHandler | unmatched — not counted | — | Contract for express call handling, finding I9 mentions it. | no |
| 2023-11 Ackee Blockchain.pdf | FlowLimit | unmatched — not counted | — | Contract for flow limit logic, finding I6 targets it. | no |
| 2023-11 Ackee Blockchain.pdf | IInterchainTokenExecutable | unmatched — not counted | — | Interface for executable callback, finding W9 mentions typo. | no |
| 2023-11 Ackee Blockchain.pdf | IInterchainTokenService | unmatched — not counted | — | Interface for InterchainTokenService, finding I3 mentions event typo. | no |
| 2023-11 Ackee Blockchain.pdf | RemoteAddressValidator | unmatched — not counted | — | Renamed from LinkerRouter, described in revision 3.0 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | Operatable | unmatched — not counted | — | Utility contract for operator role, findings M3, M4 target it. | no |
| 2023-11 Ackee Blockchain.pdf | NoReEntrancy | unmatched — not counted | — | Utility contract for reentrancy protection, described in revision 3.0 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | StandardizedToken | unmatched — not counted | — | New interchain token type, described in revision 2.1 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | StandardizedTokenLockUnlock | unmatched — not counted | — | Standardized token variant, described in revision 2.1 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | StandardizedTokenMintBurn | unmatched — not counted | — | Standardized token variant, described in revision 2.1 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | StandardizedTokenProxy | unmatched — not counted | — | Proxy for standardized tokens, described in revision 2.1 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | Implementation | unmatched — not counted | — | Utility contract, described in revision 2.1 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | Multicall | unmatched — not counted | — | Utility contract, described in revision 2.1 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | StandardizedTokenDeployer | unmatched — not counted | — | Deployer for standardized tokens, described in revision 2.1 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | TokenManagerAddressStorage | unmatched — not counted | — | Inheritance diagram in revision 3.0 shows it as a base. | no |
| 2023-11 Ackee Blockchain.pdf | TokenManagerLockUnlockFee | unmatched — not counted | — | New TokenManager for fee-on-transfer tokens, described in revision 3.0 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | Distributable | unmatched — not counted | — | Utility contract for distributor role, finding M4 targets it. | no |
| 2023-11 Ackee Blockchain.pdf | InterchainTokenServiceProxy | unmatched — not counted | — | Proxy contract for InterchainTokenService, finding I10 targets it. | no |
| 2023-11 Ackee Blockchain.pdf | FinalProxy | unmatched — not counted | — | Base proxy contract, mentioned in InterchainTokenServiceProxy. | no |
| 2023-11 Ackee Blockchain.pdf | StringToAddress | unmatched — not counted | — | Library, finding I5 mentions it as unused. | no |
| 2023-11 Ackee Blockchain.pdf | ITokenManager | unmatched — not counted | — | Interface for TokenManager, finding W14 targets it. | no |
| 2023-11 Ackee Blockchain.pdf | ITokenManagerDeployer | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IExpressCallHandler | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IAxelarExecutable | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IPausable | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | Ownable | unmatched — not counted | — | Contract, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IUpgradable | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | ITokenManagerType | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IOwnable | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IOperatable | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IFlowLimit | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IImplementation | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IERC20BurnableMintable | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IInterchainToken | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IERC20 | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IERC20Permit | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IDistributable | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IMulticall | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | AxelarExecutable | unmatched — not counted | — | Base contract, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | EternalStorage | unmatched — not counted | — | Base contract, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | Upgradable | unmatched — not counted | — | Base contract, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | Pausable | unmatched — not counted | — | Contract, finding W6 mentions missing events. | no |
| 2023-11 Ackee Blockchain.pdf | Adminable | unmatched — not counted | — | Contract, finding W6 mentions missing events. | no |
| 2023-11 Ackee Blockchain.pdf | Create3Deployer | own contract | Create3Deployer (selected) `0x6513aedb4d1593ba12e50644401d976aebdc90d8` — deployed 2023-10-12 09:08:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11 Ackee Blockchain.pdf | ERC20 | unmatched — not counted | — | Standard ERC-20, inherited by InterchainToken. | no |
| 2023-11 Ackee Blockchain.pdf | ERC20Permit | unmatched — not counted | — | Permit extension, inherited by InterchainToken. | no |
| 2023-11 Ackee Blockchain.pdf | SafeTokenTransferFrom | unmatched — not counted | — | Library for safe token transfers, used in findings. | no |
| 2023-11 Ackee Blockchain.pdf | LinkedTokenData | unmatched — not counted | — | Library for token data, described in system overview. | no |
| 2023-12 Ackee Blockchain.pdf | InterchainTokenService | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | InterchainToken | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | LinkedTokenData | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | LinkerRouter | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenDeployer | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | BytecodeServer | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | ERC20BurnableMintable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenManager | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenManagerCanonical | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenManagerLiquidityPool | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenManagerLockUnlock | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenManagerMintBurn | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | AddressBytesUtils | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | ExpressCallHandler | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | FlowLimit | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | Pausable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | Adminable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | IInterchainTokenExecutable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | InterchainTokenServiceProxy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | StringToAddress | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | RemoteAddressValidator | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | Operatable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | NoReEntrancy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | StandardizedToken | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | StandardizedTokenLockUnlock | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | StandardizedTokenMintBurn | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | StandardizedTokenProxy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | Implementation | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | Multicall | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | StandardizedTokenDeployer | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenManagerLockUnlockFee | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenHandler | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | InterchainTokenFactory | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | BaseInterchainToken | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenManagerAddressStorage | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | Distributable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | IERC20BurnableMintable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | ERC20Permit | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | AxelarGateway | unmatched — not counted | — | Target in finding L1 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | AxelarAuthWeighted | unmatched — not counted | — | Target in finding L1 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | FinalProxy | unmatched — not counted | — | Target in finding W1 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | AxelarGasService | unmatched — not counted | — | Target in finding W2 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | BaseWeightedMultisig | unmatched — not counted | — | Target in findings W3, W4, W6, W7 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | InterchainMultisig | unmatched — not counted | — | Target in findings M1, W5, W8, W9, W10 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | AxelarServiceGovernance | unmatched — not counted | — | Mentioned in System Overview revision 2.0 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | AxelarGatewayWeightedAuth | unmatched — not counted | — | Mentioned in System Overview revision 2.0 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | BaseMultisig | unmatched — not counted | — | Target in finding L2 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | SafeNativeTransfer | unmatched — not counted | — | Target in finding W3 | no |
| 2024-02 Ackee Blockchain.pdf | InterchainTokenService | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | InterchainToken | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | LinkedTokenData | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | LinkerRouter | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenDeployer | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | BytecodeServer | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | ERC20BurnableMintable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | AddressBytesUtils | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | ExpressCallHandler | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | FlowLimit | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManager | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManagerCanonical | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManagerLiquidityPool | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManagerLockUnlock | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManagerMintBurn | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManagerLockUnlockFee | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | StandardizedToken | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | StandardizedTokenLockUnlock | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | StandardizedTokenMintBurn | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | StandardizedTokenProxy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Implementation | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Multicall | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | StandardizedTokenDeployer | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | RemoteAddressValidator | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Operatable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | NoReEntrancy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManagerAddressStorage | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | InterchainTokenServiceProxy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IInterchainTokenService | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IInterchainTokenExecutable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | ITokenManager | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | ITokenManagerDeployer | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IExpressCallHandler | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IAxelarExecutable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IPausable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IUpgradable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IOwnable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IOperatable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IFlowLimit | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IImplementation | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IDistributable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IERC20BurnableMintable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IInterchainToken | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IERC20 | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IERC20Permit | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IMulticall | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenHandler | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | InterchainTokenFactory | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | BaseInterchainToken | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManagerProxy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | FinalProxy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Create3Deployer | own contract | Create3Deployer (selected) `0x6513aedb4d1593ba12e50644401d976aebdc90d8` — deployed 2023-10-12 09:08:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-02 Ackee Blockchain.pdf | AxelarExecutable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | EternalStorage | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Upgradable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Pausable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Adminable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Ownable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | ERC20 | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | ERC20Permit | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Distributable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | StringToAddress | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-04 Ackee Blockchain ITS.pdf | InterchainTokenService | unmatched — not counted | — | listed in scope and described in system overview | no |
| 2024-04 Ackee Blockchain ITS.pdf | InterchainToken | unmatched — not counted | — | listed in scope and described in system overview | no |
| 2024-04 Ackee Blockchain ITS.pdf | LinkedTokenData | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | LinkerRouter | unmatched — not counted | — | listed in scope and described in system overview | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenDeployer | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | BytecodeServer | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | ERC20BurnableMintable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenManager | unmatched — not counted | — | listed in scope and described in system overview | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenManagerCanonical | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenManagerLiquidityPool | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenManagerLockUnlock | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenManagerMintBurn | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | AddressBytesUtils | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | ExpressCallHandler | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | FlowLimit | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | IInterchainTokenExecutable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | InterchainTokenServiceProxy | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenHandler | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | InterchainTokenFactory | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | BaseInterchainToken | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | NoReEntrancy | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | Operatable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | ITokenManager | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | ITokenManagerDeployer | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | IExpressCallHandler | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | IAxelarExecutable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | IPausable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | IUpgradable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | IOwnable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | FinalProxy | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | AxelarExecutable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | EternalStorage | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | Upgradable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | Create3Deployer | own contract | Create3Deployer (selected) `0x6513aedb4d1593ba12e50644401d976aebdc90d8` — deployed 2023-10-12 09:08:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04 Ackee Blockchain ITS.pdf | AxelarGasService | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | IAxelarGateway | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | StringToAddress | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | Adminable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenManagerProxy | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain.pdf | AxelarAmplifierAuth | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2024-04 Ackee Blockchain.pdf | AxelarAmplifierGateway | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2024-04 Ackee Blockchain.pdf | BaseWeightedMultisig | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2024-06 NCC.pdf | AxelarAmplifierGateway | unmatched — not counted | — | listed in scope and finding details | no |
| 2024-06 NCC.pdf | BaseWeightedMultisig | unmatched — not counted | — | finding details | no |
| 2024-06 NCC.pdf | InterchainMultisig | unmatched — not counted | — | engagement notes | no |
| 2024-06 NCC.pdf | WeightedMultisigTypes | unmatched — not counted | — | engagement notes | no |
| 2024-06 Ottersec.pdf | cgp-sui | unmatched — not counted | — | listed in scope section as the program name | no |
| 2024-07 Ackee Blockchain.pdf | AxelarAmplifierGateway | unmatched — not counted | — | listed in scope and system overview | no |
| 2024-07 Ackee Blockchain.pdf | BaseWeightedMultisig | unmatched — not counted | — | listed in scope and system overview | no |
| 2024-07 Ackee Blockchain.pdf | AxelarAmplifierAuth | unmatched — not counted | — | listed in scope and system overview | no |
| 2024-07 Ackee Blockchain.pdf | BaseAmplifierGateway | unmatched — not counted | — | listed in scope for revision 2.0 | no |
| 2024-07 Ackee Blockchain.pdf | AxelarAmplifierGatewayProxy | unmatched — not counted | — | listed in scope for revision 2.0 | no |
| 2024-07 Ackee Blockchain.pdf | IAxelarAmplifierGateway | unmatched — not counted | — | mentioned in finding I1 | no |
| 2024-11 Ackee Blockchain.pdf | InterchainTokenFactory | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | InterchainTokenService | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | TokenHandler | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | TokenManagerDeployer | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | InterchainTokenDeployer | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | Create3AddressFixed | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | GatewayCaller | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | Create3Fixed | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | TokenManager | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | InterchainTokenServiceTypes | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | TokenManagerProxy | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | InterchainToken | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | RolesBase | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | ITokenManagerDeployer | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | ITokenManager | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | IInterchainTokenService | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | IInterchainTokenFactory | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | ERC20Permit | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | Minter | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | IInterchainToken | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | InterchainTokenStandard | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | BaseProxy | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | ITokenManagerProxy | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | IBaseTokenManager | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | IProxy | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | ITokenHandler | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | ITokenManagerType | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | ReentrancyGuard | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 NCC.pdf | InterchainTokenService | unmatched — not counted | — | listed in scope as CosmWasm contract | no |
| 2024-11 NCC.pdf | AxelarnetGateway | unmatched — not counted | — | listed in scope as CosmWasm contract | no |
| 2024-11 NCC.pdf | Keeper | unmatched — not counted | — | finding references Keeper methods | no |
| 2024-11 NCC.pdf | Counter | unmatched — not counted | — | finding references Counter type | no |
| 2024-11 NCC_ITS.pdf | InterchainTokenService | unmatched — not counted | — | listed in scope as CosmWasm contract | no |
| 2024-11 NCC_ITS.pdf | AxelarnetGateway | unmatched — not counted | — | listed in scope as CosmWasm contract | no |
| 2024-11 NCC_ITS.pdf | Keeper | unmatched — not counted | — | mentioned in finding details | no |
| 2024-11 NCC_ITS.pdf | Counter | unmatched — not counted | — | mentioned in finding details | no |
| 2024-11 Ottersec - Sui.pdf | c gp-sui | unmatched — not counted | — | Scope section: 'Name: cgp-sui, Description: An implementation of the Axelar gateway for the Sui blockchain.' | no |
| 2024-11 Ottersec_Sui_Gateway.pdf | c gp-sui | unmatched — not counted | — | Scope section: 'Name: cgp-sui, Description: An implementation of the Axelar gateway for the Sui blockchain.' | no |
| 2025-01 Ackee_ITS.pdf | InterchainTokenFactory | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | InterchainTokenService | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | TokenHandler | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | TokenManagerDeployer | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | InterchainTokenDeployer | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | Create3AddressFixed | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | GatewayCaller | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | Create3Fixed | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | TokenManager | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | InterchainTokenServiceTypes | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | TokenManagerProxy | unmatched — not counted | — | mentioned in findings (W2, W4) | no |
| 2025-01 Ackee_ITS.pdf | InterchainToken | unmatched — not counted | — | mentioned in findings (I4) | no |
| 2025-01 Ackee_ITS.pdf | RolesBase | unmatched — not counted | — | mentioned in findings (I1) | no |
| 2025-01 Ackee_ITS.pdf | ITokenManagerDeployer | unmatched — not counted | — | mentioned in findings (I8) | no |
| 2025-01 Ackee_ITS.pdf | ITokenManager | unmatched — not counted | — | mentioned in findings (I8) | no |
| 2025-01 Ackee_ITS.pdf | IInterchainTokenService | unmatched — not counted | — | mentioned in findings (I8) | no |
| 2025-01 Ackee_ITS.pdf | IInterchainTokenFactory | unmatched — not counted | — | mentioned in findings (I8) | no |
| 2025-01 Ackee_ITS.pdf | ERC20Permit | unmatched — not counted | — | mentioned in findings (I5) | no |
| 2025-01 FYEO_Soroban.pdf | axelar-gas-service | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | axelar-gateway | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | axelar-operators | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | example | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | interchain-token | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | interchain-token-service | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | upgrader | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | axelar-soroban-std | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | axelar-soroban-std-derive | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_XRPL.pdf | xrpl-gateway | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_XRPL.pdf | xrpl-multisig-prover | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_XRPL.pdf | xrpl-voting-verifier | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_XRPL.pdf | xrpl-types | unmatched — not counted | — | listed in scope table | no |
| 2025-01 NCC_XRPL_v1.3.pdf | xrpl-multisig-prover | unmatched — not counted | — | listed in scope | no |
| 2025-01 NCC_XRPL_v1.3.pdf | xrpl-gateway | unmatched — not counted | — | listed in scope | no |
| 2025-01 NCC_XRPL_v1.3.pdf | xrpl-voting-verifier | unmatched — not counted | — | listed in scope | no |
| 2025-01 NCC_XRPL_v1.3.pdf | xrpl-types | unmatched — not counted | — | listed in scope | no |
| 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf | xrpl_multisig | unmatched — not counted | — | listed in scope | no |
| 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf | xrpl_verify_msg | unmatched — not counted | — | listed in scope | no |
| 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf | xrpl-multisig-prover | unmatched — not counted | — | listed in scope | no |
| 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf | xrpl-gateway | unmatched — not counted | — | listed in scope | no |
| 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf | xrpl-voting-verifier | unmatched — not counted | — | listed in scope | no |
| 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf | xrpl-types | unmatched — not counted | — | listed in scope | no |
| 2025-03 NCC_XRPL_phase2.pdf | xrpl-multisig-prover | unmatched — not counted | — | listed in scope | no |
| 2025-03 NCC_XRPL_phase2.pdf | xrpl-gateway | unmatched — not counted | — | listed in scope | no |
| 2025-03 NCC_XRPL_phase2.pdf | xrpl-voting-verifier | unmatched — not counted | — | listed in scope | no |
| 2025-03 NCC_XRPL_phase2.pdf | xrpl-types | unmatched — not counted | — | listed in scope | no |
| 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf | xrpl-multisig-prover | unmatched — not counted | — | listed in scope table and target data | no |
| 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf | xrpl-gateway | unmatched — not counted | — | listed in scope table and target data | no |
| 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf | xrpl-voting-verifier | unmatched — not counted | — | listed in scope table and target data | no |
| 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf | xrpl-types | unmatched — not counted | — | listed in scope table and target data | no |
| 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf | ampd | unmatched — not counted | — | listed in scope table and target data | no |
| 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf | deploy-multisig.js | unmatched — not counted | — | mentioned in scope paragraph | no |
| 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf | stellar_upgrader | unmatched — not counted | — | mentioned in scope and findings | no |
| 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf | stellar_interchain_token_service | unmatched — not counted | — | mentioned in scope and findings | no |
| 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf | stellar_interchain_token | unmatched — not counted | — | mentioned in findings | no |
| 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf | flow_limit | unmatched — not counted | — | mentioned in findings | no |
| 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf | stellar_example | unmatched — not counted | — | mentioned in findings | no |
| 2025-04-Axelar-mvx-gas-service.pdf | GasService | unmatched — not counted | — | Audit scope: MultiversX smart contract path: ./gas-service/ | no |
| 2025-04-Axelar-mvx-gateway.pdf | gateway | unmatched — not counted | — | Initial scope: MultiversX smart contract path: ./gateway/; Final scope: MultiversX smart contract path: ./gateway/ | no |
| 2025-04-Axelar-mvx-governance-1.pdf | Governance | unmatched — not counted | — | listed in scope as MultiversX smart contract path: ./governance/ | no |
| 2025-04-Axelar-mvx-governance-2.pdf | Governance | unmatched — not counted | — | listed in scope as MultiversX smart contract path: ./governance/ | no |
| 2025-04-Axelar-mvx-interchain-token-factory.pdf | interchain-token-factory | unmatched — not counted | — | Listed in scope as MultiversX smart contract path | no |
| 2025-04-Axelar-mvx-interchain-token-service-proxy.pdf | interchain-token-service-proxy | unmatched — not counted | — | Listed in scope section: 'MultiversX smart contract path: ./interchain-token-service-proxy/' | no |
| 2025-04-Axelar-mvx-token-manager.pdf | token-manager | unmatched — not counted | — | Initial scope: MultiversX smart contract path: ./token-manager/; Final scope: MultiversX smart contract path: ./token-manager/ | no |
| 2025-05 NCC_XRPL_phase3.pdf | xrpl-multisig-prover | unmatched — not counted | — | listed in scope | no |
| 2025-05 NCC_XRPL_phase3.pdf | xrpl-gateway | unmatched — not counted | — | listed in scope | no |
| 2025-05 NCC_XRPL_phase3.pdf | xrpl-voting-verifier | unmatched — not counted | — | listed in scope | no |
| 2025-05 NCC_XRPL_phase3.pdf | xrpl-types | unmatched — not counted | — | listed in scope | no |
| 2025-05 NCC_XRPL_phase3.pdf | ampd | unmatched — not counted | — | listed in scope | no |
| 2025-05 NCC_XRPL_phase3.pdf | deploy-multisig.js | unmatched — not counted | — | listed in scope | no |
| 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf | Axelar Gas Service | unmatched — not counted | — | listed in scope | no |
| 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf | Axelar Gateway | unmatched — not counted | — | listed in scope | no |
| 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf | Axelar Interchain Token Service | unmatched — not counted | — | listed in scope | no |
| 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf | Axelar Multicall | unmatched — not counted | — | listed in scope | no |
| 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf | Axelar Governance | unmatched — not counted | — | listed in scope | no |
| 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf | Axelar Memo | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 64 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 57
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 530 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=54, low=6, medium=3
- Match method counts: unique_name=5

Zero-match audit list:

- [16712] 2021-11 Adrian and Lucas.pdf
- [16713] 2021-11 Commonprefix.pdf
- [16714] 2021-12 Cure53.pdf
- [16715] 2022-02 Ackee blockchain.pdf
- [16716] 2022-03 Commonprefix.pdf
- [16717] 2022-04 Ackee blockchain.pdf
- [16718] 2022-04 Certik.pdf
- [16719] 2022-04 Cure53.pdf
- [16720] 2022-05 Ackee blockchain.pdf
- [16721] 2022-06 Ackee blockchain.pdf
- [16722] 2022-07 Ackee blockchain-v2.pdf
- [16723] 2022-07 Ackee blockchain.pdf
- [16724] 2022-08 Ackee blockchain.pdf
- [16725] 2022-08 Chaintroopers.pdf
- [16726] 2022-09 Ackee Blockchain.pdf
- [16728] 2022-12 Ackee Blockchain.pdf
- [16729] 2023-01 Ackee Blockchain.pdf
- [16730] 2023-02 Ackee Blockchain-2.pdf
- [16732] 2023-02 Ackee Blockchain.pdf
- [16733] 2023-04 Ackee Blockchain.pdf
- [16734] 2023-04 Informal Systems.pdf
- [16735] 2023-08 Yaar Hahn Governance.pdf
- [16736] 2023-08 Yaar Hahn ITS.pdf
- [16737] 2023-10 Least Authority.pdf
- [16739] 2023-12 Ackee Blockchain.pdf
- [16740] 2024-02 Ackee Blockchain CGP Refactor.pdf
- [16742] 2024-03 NCC.pdf
- [16744] 2024-04 Ackee Blockchain.pdf
- [16745] 2024-05 Halborn.pdf
- [16746] 2024-06 NCC.pdf
- [16747] 2024-06 Ottersec.pdf
- [16748] 2024-07 Ackee Blockchain.pdf
- [16749] 2024-11 Ackee Blockchain.pdf
- [16750] 2024-11 NCC.pdf
- [16751] 2024-11 NCC_ITS.pdf
- [16752] 2024-11 Ottersec - Sui.pdf
- [16753] 2024-11 Ottersec_Sui_Gateway.pdf
- [16754] 2025-01 Ackee_ITS.pdf
- [16755] 2025-01 FYEO_Soroban.pdf
- [16756] 2025-01 FYEO_XRPL.pdf
- [16757] 2025-01 NCC_XRPL_v1.3.pdf
- [16758] 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf
- [16759] 2025-03 NCC_XRPL_phase2.pdf
- [16760] 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf
- [16761] 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf
- [16762] 2025-04-Axelar-mvx-gas-service.pdf
- [16763] 2025-04-Axelar-mvx-gateway.pdf
- [16764] 2025-04-Axelar-mvx-governance-1.pdf
- [16765] 2025-04-Axelar-mvx-governance-2.pdf
- [16766] 2025-04-Axelar-mvx-interchain-token-factory.pdf
- [16767] 2025-04-Axelar-mvx-interchain-token-service-proxy.pdf
- [16768] 2025-04-Axelar-mvx-interchain-token-service.pdf
- [16769] 2025-04-Axelar-mvx-token-manager.pdf
- [16770] 2025-05 NCC_XRPL_phase3.pdf
- [16771] 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf
- [16773] Flow
- [16774] here

Fork inheritance lineage and inherited audits are included when available.
