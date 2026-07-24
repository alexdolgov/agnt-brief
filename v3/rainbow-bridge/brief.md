# Agentic Audit Brief: Rainbow Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 11 (0 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Rainbow Bridge (`rainbow-bridge`)
- Website: [https://rainbowbridge.app/transfer](https://rainbowbridge.app/transfer)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum, polygon, polygon-amoy, sepolia
- Contract surface: 68 unique implementations (68 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $1,581,305.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Rainbow Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe00c629afaccb0510995a2b95560e446a24c85b9`, chain 1)
- UnnamedContract (`0x073c8a225c8cf9d3f9157f5c1a1dbe02407f5720`, chain 56)
- UnnamedContract (`0xd025b38762b4a4e36f0cde483b86cb13ea00d989`, chain 137)
- UnnamedContract (`0xd025b38762b4a4e36f0cde483b86cb13ea00d989`, chain 8453)
- UnnamedContract (`0xd025b38762b4a4e36f0cde483b86cb13ea00d989`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 5 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 59 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 5 of 68 unique; 63 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 64
- Unique implementations: 68
- Raw deployments: 68
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 9 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| eNear | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85f17cf997934a597031b2e18a9ab6ebd4b9f6a4` | ⚠️ Unaudited |
| ERC20Locker | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23ddd3e3692d1861ed57ede224608875809e127f` | ⚠️ Unaudited |
| EthCustodian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bfad42cfc4efc96f529d786d643ff4a8b89fa52` | ⚠️ Unaudited |
| NearBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0151568af92125fb289f1dd81d9d8f7484efc362` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ddae29ff6bed2db780d1d1073f79eb125910aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0faf5e4bb504dc07732a6e42cf25816ed84702a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x139ac8e6eb5d3f00d919b7820145f8f39bb42069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x150c79c8a70b1d528e95e200c6ca5ed0421c44f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x252e87862a3a720287e7fd527ce6e8d0738427a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x261e5f140bba8c54c45196418646dd9a16abebe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3be7df8db39996a837041bb8ee0dadf60f767038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ce68e9c51a106ea855f5685459cccb0e1e5ff41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fefc5a4b1c02f21cbc8d3613643ba0635b9a873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53785920165fbdf33b3f56885dbc8d12854ac414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6566dc833f28adb7ed97dbbc573f9c33f2a06a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x801f5ff0266c065bf855dd2b344ef2d5ad2c323d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fbe4c80a2b6a88725d419afd6e64aca4342e871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0fc4eb96857570f7c79eb4d364b93634ffd04f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2274923263547349930af00f7e8d32f80e48b82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5a0165ba4e83769aef74e0855497258ace4c88f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391277 | `0xe00c629afaccb0510995a2b95560e446a24c85b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2c20f46554fef9f5b94966029120149a61675a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf20440f42264bd0e3be0c3d0a257fb38335eb6ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391285 | `0x073c8a225c8cf9d3f9157f5c1a1dbe02407f5720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafda1b2ad1cfe85fdfd34cd87930ff56f07cdbe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9de9f72e81d1609e940fb2217f7286602064881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd9c538206f5eb433c8f1df763a7596d9a69d122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd025b38762b4a4e36f0cde483b86cb13ea00d989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd565f7cce0fa1bb8dbe73fcda281390d545f6200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf353b40fc144d1c6c5bcdda712fa6de833016af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafda1b2ad1cfe85fdfd34cd87930ff56f07cdbe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391283 | `0xd025b38762b4a4e36f0cde483b86cb13ea00d989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafda1b2ad1cfe85fdfd34cd87930ff56f07cdbe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391287 | `0xd025b38762b4a4e36f0cde483b86cb13ea00d989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xafda1b2ad1cfe85fdfd34cd87930ff56f07cdbe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391284 | `0xd025b38762b4a4e36f0cde483b86cb13ea00d989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x16a26c3c21561e01e5c2d4ff03102a5c7d632ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xafda1b2ad1cfe85fdfd34cd87930ff56f07cdbe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xc80d9eb120d6e40e31d5ae9040d5fc0753c52da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xd025b38762b4a4e36f0cde483b86cb13ea00d989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xd565f7cce0fa1bb8dbe73fcda281390d545f6200` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-391286 | `0xec81afc3485a425347ac03316675e58a680b283a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xf353b40fc144d1c6c5bcdda712fa6de833016af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x047a5c612d1af591065ef1e8f48dc9fbce1773d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x058458d2b03c012d6630b0f5438f78014b7c1e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x073c8a225c8cf9d3f9157f5c1a1dbe02407f5720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0908d61f9254ae8df89577ea1fd343ac3c9cc23f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-391278 | `0x0c981337ffe39a555d3a40dbb32f21ad0ef33ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x16a26c3c21561e01e5c2d4ff03102a5c7d632ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x245f63456dad6fa3663c61d42770f0a0ec76a7a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x25b90ddeb87b58acdea3f948d631f40227f98c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2b1f70bbaa4f8055097414e347815c8d588aa99e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x33f7948e004ff0b54b7023bb157610bccbd64017` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-391279 | `0x3701b9859dbb9a4333a3dd933ab18e9011ddf2c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x551843e11a3b953326acfa9980ad3ff6c963700b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x62aa6de1126aa39496fafbfafaee463f2ae9881e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6566dc833f28adb7ed97dbbc573f9c33f2a06a69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-391280 | `0x68a86e0ea5b1d39f385c1326e4d493526dfe4401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68f0517837402ee5092a4fcf3a75fd86577b1803` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x828329be39c85e6fa267ff061af1cfc918150e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8b0f5d9cd593a19f868b612da4b85dd9e321a74e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x90b42c40bfc1c9c695a1ed9f3716bde03112ae9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xafda1b2ad1cfe85fdfd34cd87930ff56f07cdbe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb9de9f72e81d1609e940fb2217f7286602064881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc80d9eb120d6e40e31d5ae9040d5fc0753c52da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd565f7cce0fa1bb8dbe73fcda281390d545f6200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xec81afc3485a425347ac03316675e58a680b283a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf96ccbe114f900be3e4999fdffce10febae37581` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 56
- Live contracts: 0
- Unknown liveness contracts: 56
- Source-verified contracts: 1
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=1, unverified unclassified=55

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | NearBridge<br>`0x0151568af92125fb289f1dd81d9d8f7484efc362` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x015e634c7c1311a9034220c28d3d12b7f710a3b1` |
| unverified unclassified | UnnamedContract<br>`0x0ddae29ff6bed2db780d1d1073f79eb125910aa5` | non_address_book | unknown | unknown | unverified | n/a | `0xcc7f3dffa25147f60b59504f0f745c57af2e365b` |
| unverified unclassified | UnnamedContract<br>`0x0faf5e4bb504dc07732a6e42cf25816ed84702a2` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x139ac8e6eb5d3f00d919b7820145f8f39bb42069` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x150c79c8a70b1d528e95e200c6ca5ed0421c44f7` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x252e87862a3a720287e7fd527ce6e8d0738427a2` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x261e5f140bba8c54c45196418646dd9a16abebe6` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x3be7df8db39996a837041bb8ee0dadf60f767038` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x3ce68e9c51a106ea855f5685459cccb0e1e5ff41` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x3fefc5a4b1c02f21cbc8d3613643ba0635b9a873` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x53785920165fbdf33b3f56885dbc8d12854ac414` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x6566dc833f28adb7ed97dbbc573f9c33f2a06a69` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x801f5ff0266c065bf855dd2b344ef2d5ad2c323d` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x8fbe4c80a2b6a88725d419afd6e64aca4342e871` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xb0fc4eb96857570f7c79eb4d364b93634ffd04f0` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xc2274923263547349930af00f7e8d32f80e48b82` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xd5a0165ba4e83769aef74e0855497258ace4c88f` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xe2c20f46554fef9f5b94966029120149a61675a6` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xf20440f42264bd0e3be0c3d0a257fb38335eb6ce` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xafda1b2ad1cfe85fdfd34cd87930ff56f07cdbe3` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xb9de9f72e81d1609e940fb2217f7286602064881` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xcd9c538206f5eb433c8f1df763a7596d9a69d122` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xd025b38762b4a4e36f0cde483b86cb13ea00d989` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xd565f7cce0fa1bb8dbe73fcda281390d545f6200` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xf353b40fc144d1c6c5bcdda712fa6de833016af9` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xafda1b2ad1cfe85fdfd34cd87930ff56f07cdbe3` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xafda1b2ad1cfe85fdfd34cd87930ff56f07cdbe3` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xafda1b2ad1cfe85fdfd34cd87930ff56f07cdbe3` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x16a26c3c21561e01e5c2d4ff03102a5c7d632ee9` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xafda1b2ad1cfe85fdfd34cd87930ff56f07cdbe3` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xc80d9eb120d6e40e31d5ae9040d5fc0753c52da7` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xd025b38762b4a4e36f0cde483b86cb13ea00d989` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xd565f7cce0fa1bb8dbe73fcda281390d545f6200` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xf353b40fc144d1c6c5bcdda712fa6de833016af9` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x047a5c612d1af591065ef1e8f48dc9fbce1773d9` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x058458d2b03c012d6630b0f5438f78014b7c1e8b` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x073c8a225c8cf9d3f9157f5c1a1dbe02407f5720` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x0908d61f9254ae8df89577ea1fd343ac3c9cc23f` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x16a26c3c21561e01e5c2d4ff03102a5c7d632ee9` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x245f63456dad6fa3663c61d42770f0a0ec76a7a5` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x25b90ddeb87b58acdea3f948d631f40227f98c10` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x2b1f70bbaa4f8055097414e347815c8d588aa99e` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x33f7948e004ff0b54b7023bb157610bccbd64017` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x551843e11a3b953326acfa9980ad3ff6c963700b` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x62aa6de1126aa39496fafbfafaee463f2ae9881e` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x6566dc833f28adb7ed97dbbc573f9c33f2a06a69` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x68f0517837402ee5092a4fcf3a75fd86577b1803` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x828329be39c85e6fa267ff061af1cfc918150e14` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x8b0f5d9cd593a19f868b612da4b85dd9e321a74e` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0x90b42c40bfc1c9c695a1ed9f3716bde03112ae9b` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xafda1b2ad1cfe85fdfd34cd87930ff56f07cdbe3` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xb9de9f72e81d1609e940fb2217f7286602064881` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xc80d9eb120d6e40e31d5ae9040d5fc0753c52da7` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xd565f7cce0fa1bb8dbe73fcda281390d545f6200` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xec81afc3485a425347ac03316675e58a680b283a` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |
| unverified unclassified | UnnamedContract<br>`0xf96ccbe114f900be3e4999fdffce10febae37581` | non_address_book | unknown | unknown | unverified | n/a | `0xd9cb077700aa4d32d30bda5e99bb171549b5a382` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf](https://www.datocms-assets.com/50156/1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf) | Sigma Prime | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf](https://www.datocms-assets.com/50156/1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf) | Sigma Prime | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Rainbow-Bridge-audit-report-_compressed.pdf](https://blaize.tech/wp-content/uploads/2023/03/Rainbow-Bridge-audit-report-_compressed.pdf) | Blaize Security | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Manual audit seed](https://aurora.dev/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [January 2025 / HackenNEAR IntentsView audit report](https://www.datocms-assets.com/50156/1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf) | Hacken | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [May 2024 / AuditOneEngine/BridgeView audit report](https://www.datocms-assets.com/50156/1719854230-aurora-engine-audit-report.pdf) | Hacken | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [May 2023 / AuditOneFast BridgeView audit report](https://www.datocms-assets.com/50156/1686729017-auditone-fast-bridge-final-report-v3-may2023-1.pdf) | Hacken | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [January 2023 / HackenVote Token & Election ContractView audit report](https://www.datocms-assets.com/50156/1675403586-hacken-election-vote-contracts-final-report.pdf) | Hacken | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [October 2022 / BlaizeNEAR FT ConnectorView audit report](https://www.datocms-assets.com/50156/1676635327-blaize-near-ftconnector-reportv2-october-2022.pdf) | Hacken | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [June 2022 / HackenStaking ContractView audit report](https://www.datocms-assets.com/50156/1659612404-hacken-staking-contract-final-report-08-06-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [June 2022 / BlaizeStaking ContractView audit report](https://www.datocms-assets.com/50156/1660299853-blaize-staking-contract-final-report-8-6-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21316] 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf — no match: Extracted contracts from scope description and findings. Date from cover page: 'June, 2022' -> last day of month.
- [21317] 1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf — no match: Extracted from the report title page which states 'June, 2023'. Used last day of month.
- [21318] Rainbow-Bridge-audit-report-_compressed.pdf — no match: Scope explicitly listed on page 2: BridgeToken.sol, BridgeTokenFactory.sol, BridgeTokenProxy.sol, ProofConsumer.sol, ResultsDecoder.sol, ERC20Locker.sol, Locker.sol, ERC20MetadataLogger.sol, and Rust files bridge-common/src/lib.rs, bridge-common/src/prover.rs, token-locker/src/lib.rs, token-locker/src/token_receiver.rs, token-locker/src/unlock_event.rs. Also bridge-common/src/result_types.rs appears in test coverage. Audit date from cover page: October 5th 2022.
- [24384] Manual audit seed — no match: The provided text is a webpage listing multiple audit reports with links, but does not contain the full text of any single audit report. No contract names or audit dates can be extracted.
- [24385] January 2025 / HackenNEAR IntentsView audit report — no match: Scope section lists multiple Rust source files organized into crates (bitmap, core, crypto, defuse, erc191, nep413). The audit date is explicitly given as 27/01/2025.
- [24386] May 2024 / AuditOneEngine/BridgeView audit report — no match: Extracted contract names from the 'Contracts in scope' section (page 5) and additional contracts mentioned in findings. Audit date from finishing date 10-05-2024.
- [24390] May 2023 / AuditOneFast BridgeView audit report — no match: Contracts in scope are Rust modules (lib.rs, lp_relayer.rs, whitelist.rs, ft.rs, utils.rs) from the fast-bridge-protocol repository. Audit date is 09-05-2023 (May 9, 2023) from the cover page.
- [24393] January 2023 / HackenVote Token & Election ContractView audit report — no match: Four contracts in scope across three review rounds. Date from cover page: January 18, 2023.
- [24394] October 2022 / BlaizeNEAR FT ConnectorView audit report — no match: Scope explicitly lists 8 Solidity contracts and 5 Rust source files. Audit date from cover page.
- [24395] June 2022 / HackenStaking ContractView audit report — no match: Contracts listed in scope for initial, second, and third reviews. Date from cover page: June 8th, 2022.
- [24396] June 2022 / BlaizeStaking ContractView audit report — no match: Scope explicitly lists Treasury.sol, AdminControlled.sol, JetStakingV1.sol. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | w-near | unmatched — not counted | — | listed in scope as w-near contracts | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | FungibleToken | unmatched — not counted | — | listed in scope as FungibleToken standard library | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | EthOnNearClient | unmatched — not counted | — | described in overview as part of Rainbow Bridge | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | NearOnEthClient | unmatched — not counted | — | described in overview as part of Rainbow Bridge | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | AdminControlled | unmatched — not counted | — | finding NSS-08 targets AdminControlled.sol | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | NearBridge | unmatched — not counted | — | finding NSS-09 and NSS-10 target NearBridge.sol | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | NearProver | unmatched — not counted | — | mentioned in finding NSS-13 | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | EthCustodian | unmatched — not counted | — | finding NSS-06 and NSS-13 target EthCustodian.sol | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | ERC20Locker | unmatched — not counted | — | finding NSS-06 targets ERC20Locker.sol | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | eNear | unmatched — not counted | — | mentioned in resolution of NSS-05 and NSS-07 | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | ProofKeeper | unmatched — not counted | — | mentioned in finding NSS-07 and NSS-13 | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | ERC20MetadataLogger | unmatched — not counted | — | finding NSS-11 targets ERC20MetadataLogger.sol | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | Borsh | unmatched — not counted | — | finding NSS-05 targets Borsh.sol | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | ProofDecoder | unmatched — not counted | — | mentioned in finding NSS-13 | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | Bridge | unmatched — not counted | — | mentioned in finding NSS-13 | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | Locker | unmatched — not counted | — | mentioned in finding NSS-13 | no |
| 1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf | eth2-client | unmatched — not counted | — | listed in scope as NEAR contract | no |
| 1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf | eth2-validator | unmatched — not counted | — | listed in scope as DAO validator | no |
| 1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf | eth2_to_near_relay | unmatched — not counted | — | listed in scope as off-chain relayer | no |
| 1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf | contract_wrapper | unmatched — not counted | — | mentioned in finding RBE2-15 | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | BridgeToken | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | BridgeTokenFactory | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | BridgeTokenProxy | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | ProofConsumer | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | ResultsDecoder | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | ERC20Locker | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | Locker | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | ERC20MetadataLogger | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | bridge-common/src/lib.rs | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | bridge-common/src/prover.rs | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | bridge-common/src/result_types.rs | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | token-locker/src/lib.rs | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | token-locker/src/token_receiver.rs | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | token-locker/src/unlock_event.rs | unmatched — not counted | — | listed in scope | no |
| January 2025 / HackenNEAR IntentsView audit report | bitmap | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | core | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | crypto | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | defuse | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | erc191 | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | nep413 | unmatched — not counted | — | listed in scope table | no |
| May 2024 / AuditOneEngine/BridgeView audit report | admin_controlled | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | deposit_event | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | errors | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | external | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | fungible_token | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | internal | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | mod | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | silo | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | whitelist | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | admin | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | evm_transaction | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | xcc | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | accounting | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | engine | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | hashchain | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | lib | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | map | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | pausable | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | prelude | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | state | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | connector | unmatched — not counted | — | mentioned in findings | no |
| May 2024 / AuditOneEngine/BridgeView audit report | EthConnectorContract | unmatched — not counted | — | mentioned in findings | no |
| May 2024 / AuditOneEngine/BridgeView audit report | EngineFungibleToken | unmatched — not counted | — | mentioned in findings | no |
| May 2024 / AuditOneEngine/BridgeView audit report | EngineStorageManagement | unmatched — not counted | — | mentioned in findings | no |
| May 2023 / AuditOneFast BridgeView audit report | bridge | unmatched — not counted | — | listed in scope | no |
| May 2023 / AuditOneFast BridgeView audit report | lp_relayer | unmatched — not counted | — | listed in scope | no |
| May 2023 / AuditOneFast BridgeView audit report | whitelist | unmatched — not counted | — | listed in scope | no |
| May 2023 / AuditOneFast BridgeView audit report | ft | unmatched — not counted | — | listed in scope | no |
| May 2023 / AuditOneFast BridgeView audit report | utils | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | AuroraVoteTokenV1 | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | ERC20VotesUpgradeable | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | AdminControlled | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | ElectionManager | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | BridgeToken | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | BridgeTokenFactory | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | BridgeTokenProxy | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ProofConsumer | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ResultsDecoder | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ERC20Locker | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | Locker | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ERC20MetadataLogger | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | bridge-common/src/lib.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | bridge-common/src/prover.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | bridge-common/src/result_types.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | token-locker/src/lib.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | token-locker/src/token_receiver.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | token-locker/src/unlock_event.rs | unmatched — not counted | — | listed in scope | no |
| June 2022 / HackenStaking ContractView audit report | AdminControlled | unmatched — not counted | — | listed in scope | no |
| June 2022 / HackenStaking ContractView audit report | DelegateCallGuard | unmatched — not counted | — | listed in scope | no |
| June 2022 / HackenStaking ContractView audit report | ITreasury | unmatched — not counted | — | listed in scope | no |
| June 2022 / HackenStaking ContractView audit report | JetStakingV1 | unmatched — not counted | — | listed in scope | no |
| June 2022 / HackenStaking ContractView audit report | Treasury | unmatched — not counted | — | listed in scope | no |
| June 2022 / BlaizeStaking ContractView audit report | AdminControlled | unmatched — not counted | — | listed in scope | no |
| June 2022 / BlaizeStaking ContractView audit report | JetStakingV1 | unmatched — not counted | — | listed in scope | no |
| June 2022 / BlaizeStaking ContractView audit report | Treasury | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 64 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 95 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=1
- Match method counts: n/a

Zero-match audit list:

- [21316] 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf
- [21317] 1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf
- [21318] Rainbow-Bridge-audit-report-_compressed.pdf
- [24384] Manual audit seed
- [24385] January 2025 / HackenNEAR IntentsView audit report
- [24386] May 2024 / AuditOneEngine/BridgeView audit report
- [24390] May 2023 / AuditOneFast BridgeView audit report
- [24393] January 2023 / HackenVote Token & Election ContractView audit report
- [24394] October 2022 / BlaizeNEAR FT ConnectorView audit report
- [24395] June 2022 / HackenStaking ContractView audit report
- [24396] June 2022 / BlaizeStaking ContractView audit report

Fork inheritance lineage and inherited audits are included when available.
