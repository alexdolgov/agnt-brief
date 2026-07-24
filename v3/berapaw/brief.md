# Agentic Audit Brief: BeraPaw

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 5 audit(s)
- Eligible audit results: 7 (5 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: BeraPaw (`berapaw`)
- Website: [https://www.berapaw.com](https://www.berapaw.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: berachain
- Contract surface: 73 unique implementations (74 raw deployments)
- Coverage basis: 2/4 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $213,335.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for BeraPaw. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across berachain. Structural roles: 3 core, 2 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), infra (2)
- Contract kinds: contract (5)
- Detected standards: accesscontrol (3), erc165 (3), erc20 (3), erc1967proxy (2), erc20permit (2)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x8ba3f4592cca78935bd1153169949030e4a71d66`, chain 80094)
- UnnamedContract (`0xa77dee7bc36c463bb3e39804c9c7b13427d712b0`, chain 80094)
- UnnamedContract (`0xe3e61dbb030998110b91c0d1de8215db761f52c6`, chain 80094)
- UnnamedContract (`0xeeac643d1bb0fa39656a971ff41c161089c20e3d`, chain 80094)
- UnnamedContract (`0xface73a169e2ca2934036c8af9f464b5de9ef0ca`, chain 80094)
- UnnamedContract (`0xfeedb9750d6ac77d2e52e0c9eb8fb79f9de5cafe`, chain 80094)
- ERC1967Proxy (`0x4b1d14c4fea305c4144b51ee64141567a0f0b00b`, chain 80094)
- LBGT (`0xbaadcc2962417c01af99fb2b7c75706b9bd6babe`, chain 80094)
- pBERA (`0xdeadf18cb9233770fe8874c78d7483b4a126b34a`, chain 80094)
- PrePaw (`0x03c86e21623f25eca0ea544890c7603b9a33e1ac`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (4 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/4 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 61 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 10 of 73 unique; 63 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/22
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 51
- Unique implementations: 73
- Raw deployments: 74
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 6 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 9.1% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LBGT | unknown | project_anchor | own_supporting | 0 | berachain | unit-380490 | `0xbaadcc2962417c01af99fb2b7c75706b9bd6babe` | ✅ Audited |
| pBERA | unknown | project_anchor | own_supporting | 0 | berachain | unit-380491 | `0xdeadf18cb9233770fe8874c78d7483b4a126b34a` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AuctionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x79f068438022995ae4c11f00df3b2fd9bae0bc59` | ⚠️ Unaudited |
| BeaconProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | berachain | unit-380496 | `0x34018ac9dc4b114036ca148aa18c8f75594e5e95` | ⚠️ Unaudited |
| BeraPawForge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1cb5d6147fe08c4baf787a5f6bc30e16e829fb3d` | ⚠️ Unaudited |
| BeraPawRewardsReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x717dd5cea52cfb549b2e6b9d56e48b459406bdd0` | ⚠️ Unaudited |
| BeraPawRewardVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x339922dc33f06308c19d1a5830908820cde2c699` | ⚠️ Unaudited |
| BGT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x656b95e550c07a9ffe548bd4085c72418ceb1dba` | ⚠️ Unaudited |
| BuyBackBurnModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8e91e211c4ba7e95a7301a537b09435c1a19ef5b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x118d2ceee9785eaf70c15cd74cd84c9f8c3eec9a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x357c198891915406128023af428f65e17ac4e656`; berachain `0x3ea91ae9e47edbc43e64c6ddf99d67207296ec28` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | berachain | unit-380497 | `0x4b1d14c4fea305c4144b51ee64141567a0f0b00b` | ⚠️ Unaudited |
| EulerDepositLBGTModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9e1b7bdfeb1f6a0365f158f4052472f093b22634` | ⚠️ Unaudited |
| LbgtHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x938f83738ccd5b4217862fa4b521b015f3355eb4` | ⚠️ Unaudited |
| LBGTStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0e4692b4ec8c920ad7f00aed419ad22d8dff13f4` | ⚠️ Unaudited |
| LPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3301dd4676f022807f23bd66611679ff59b55b8d` | ⚠️ Unaudited |
| PolVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x43a5df33d4bf24cb79894c912962c88a0d3c9606` | ⚠️ Unaudited |
| PrePaw | unknown | project_anchor | own_supporting | 0 | berachain | unit-380486 | `0x03c86e21623f25eca0ea544890c7603b9a33e1ac` | ⚠️ Unaudited |
| RewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe8ed00b1b142e8d84ef773c4fccaa18682d5a401` | ⚠️ Unaudited |
| StakedLbgt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x083546224a992eb0cd8f2290576b15c612771ce9` | ⚠️ Unaudited |
| StakedPBera | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x18e352afe7b29624f827489c833869bc98265a5c` | ⚠️ Unaudited |
| yPawRefund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe9405de9ee6684fee4d7c0489fe3219a878a96b5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (51)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0d6c629ed2ea598dc07d275012a5016ce8c5d69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x10302beb3146a083af453922797dc14baad9b01f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x17455b1b74b3bbb1da3f3310742fb26b49d14607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1d5263495013597baa75f8f370d268c3f410ea07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3656d1ecb836fcf2f3fb7827dfcefd7c5c2f0d62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x37eb4a1abf8d41005a1321b383fa8b172efea5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3b6ca8ce14b33d2c3520d973c71ae0bc7a671364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3fe3d19de57dfb41a551cb94bac7eeed188caa20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x431a6e5be205a980fefd071bf2ff29afe11b163c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x47b300eff4c693e795d3f858a60255cf628ec861` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | berachain | unit-380487 | `0x4eb3351066494852a03ffbbde40a9776380ce20d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x51bd456e1dd4ea8a1a816b039facf547f222359b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x569e07d2453390a246875b996833e4469219ea1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x56d061d64ba70a32d5c86df8fbff189c3c3582b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5783204231ef2271beab9bccad9040c7f0cdf485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x58c2b0dd52160047ea4a61ed6c0b9187b4847d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x60e6588b844478096645ea6ee042340a470cc228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x60f62273118dc517e26f2d54f3fc5a09940696ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x634fe8cac306cfc3f464468b5569d06f70487761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6e251a817a8de1c284f46b7d80158a35bc2e142e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6f966bce7d5f28333baa896bcbdaaedc23674baa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x77b707408e9daa8db667b9795d6e881cc1864ed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x825e3e45e551cb591bf8dfda09063b2deb837110` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380488 | `0x8ba3f4592cca78935bd1153169949030e4a71d66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x957e514ac75f9ab9802fa537e54c8f1cb805a146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x99702eba8d441664af945fc48fe416ecf9098980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa1c400f1ec0dd6a4dc5a08ff2fe9aa0fbfd76d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa1eef21b9ee98790caf2ba374c341f21a5bb4dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa48ebaa52aceae169201ab7d47f86d5cf2288c30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380489 | `0xa77dee7bc36c463bb3e39804c9c7b13427d712b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xaff22b505ae2cebdef41d49a4fa551ac44080cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb29f6416b51773c6c5c84fb487867d51b52329d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xba99c0f0fa86df5f1c1466dd0a20828dde2346cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc0575253eefa57dbac7e44c87ecdf50f77ad82fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc49c6219f4626047e7b6d9f2f676ce92c6396edc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc854dc9edcc762b923d2bb097703298921315083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xca4f2d4c65084ddce2c04737afed1b0e9bd32a32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd3397aa52b133f6aacf66ebce2cbd210d03aa5b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd5a2bf00395679040da0e5c1d6650a0c03302e69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdd6ef4a531784072d367ada892bdc0725a1af46d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xde40f60064841aea69e76ba124ba7c109d3ed0ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380492 | `0xe3e61dbb030998110b91c0d1de8215db761f52c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe4b3c18daac784d529fbb8cfeea2e915a9811adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe59b8ca97d1edbe375fce88bf9491520ae5241ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380493 | `0xeeac643d1bb0fa39656a971ff41c161089c20e3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf0422bc37f1d2d1b57596cca5a64e30c71d10170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf128136958c21772d053f302293c1e7bcc704fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf2572953a67cad1a6b54485610a2d4c3ed6e6c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf99c2c38eae43932747138376eed19a9f75498dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380494 | `0xface73a169e2ca2934036c8af9f464b5de9ef0ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380495 | `0xfeedb9750d6ac77d2e52e0c9eb8fb79f9de5cafe` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 45
- Live contracts: 0
- Unknown liveness contracts: 45
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=45

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0d6c629ed2ea598dc07d275012a5016ce8c5d69c` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x10302beb3146a083af453922797dc14baad9b01f` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x17455b1b74b3bbb1da3f3310742fb26b49d14607` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x1d5263495013597baa75f8f370d268c3f410ea07` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x357c198891915406128023af428f65e17ac4e656` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x3656d1ecb836fcf2f3fb7827dfcefd7c5c2f0d62` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x37eb4a1abf8d41005a1321b383fa8b172efea5d3` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x3b6ca8ce14b33d2c3520d973c71ae0bc7a671364` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x3fe3d19de57dfb41a551cb94bac7eeed188caa20` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x431a6e5be205a980fefd071bf2ff29afe11b163c` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x47b300eff4c693e795d3f858a60255cf628ec861` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x51bd456e1dd4ea8a1a816b039facf547f222359b` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x569e07d2453390a246875b996833e4469219ea1a` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x56d061d64ba70a32d5c86df8fbff189c3c3582b6` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x5783204231ef2271beab9bccad9040c7f0cdf485` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x58c2b0dd52160047ea4a61ed6c0b9187b4847d63` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x60e6588b844478096645ea6ee042340a470cc228` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x60f62273118dc517e26f2d54f3fc5a09940696ff` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x634fe8cac306cfc3f464468b5569d06f70487761` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x6e251a817a8de1c284f46b7d80158a35bc2e142e` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x6f966bce7d5f28333baa896bcbdaaedc23674baa` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x77b707408e9daa8db667b9795d6e881cc1864ed2` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x825e3e45e551cb591bf8dfda09063b2deb837110` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x957e514ac75f9ab9802fa537e54c8f1cb805a146` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0x99702eba8d441664af945fc48fe416ecf9098980` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xa1c400f1ec0dd6a4dc5a08ff2fe9aa0fbfd76d5f` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xa1eef21b9ee98790caf2ba374c341f21a5bb4dbf` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xa48ebaa52aceae169201ab7d47f86d5cf2288c30` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xaff22b505ae2cebdef41d49a4fa551ac44080cf7` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xb29f6416b51773c6c5c84fb487867d51b52329d0` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xba99c0f0fa86df5f1c1466dd0a20828dde2346cb` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xc0575253eefa57dbac7e44c87ecdf50f77ad82fd` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xc49c6219f4626047e7b6d9f2f676ce92c6396edc` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xc854dc9edcc762b923d2bb097703298921315083` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xca4f2d4c65084ddce2c04737afed1b0e9bd32a32` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xd3397aa52b133f6aacf66ebce2cbd210d03aa5b2` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xd5a2bf00395679040da0e5c1d6650a0c03302e69` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xdd6ef4a531784072d367ada892bdc0725a1af46d` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xde40f60064841aea69e76ba124ba7c109d3ed0ef` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xe4b3c18daac784d529fbb8cfeea2e915a9811adb` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xe59b8ca97d1edbe375fce88bf9491520ae5241ac` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xf0422bc37f1d2d1b57596cca5a64e30c71d10170` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xf128136958c21772d053f302293c1e7bcc704fa5` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xf2572953a67cad1a6b54485610a2d4c3ed6e6c6e` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |
| unverified unclassified | UnnamedContract<br>`0xf99c2c38eae43932747138376eed19a9f75498dd` | non_address_book | unknown | unknown | unverified | n/a | `0x8362faab2711f757b8f52ecb746f6b6a69622b8f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [BeraPaw - Core Contracts - Initial Report](https://drive.google.com/file/d/1-QYOlw-qVZRdeFvqeNrqwFHh27zhjojC/view?usp=drive_link) | unknown | Audit | 2025-02 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [BeraPaw - Core Contracts - Final Report](https://drive.google.com/file/d/1G43j12bsHnqktqF75Z1Bu2aaUh1Hekad/view?usp=drive_link) | unknown | Audit | 2025-03 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [BeraPaw - Pol Strategy Vault - Initial Report](https://drive.google.com/file/d/19DeHlc3RRT_ZVr5yXRO8VgsAxBWkfyq3/view?usp=drive_link) | unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [BeraPaw - Pol Strategy Vault - Final Report](https://drive.google.com/file/d/104um4fN6lTN7EY8KxUfofVhkcs7w1Fcm/view?usp=drive_link) | unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [BeraPaw - pBERA - Initial Report](https://drive.google.com/file/d/1lbUUP96kl8Z2Hba8aIEeLS8g8wtAJKTb/view?usp=drive_link) | unknown | Audit | 2025-07 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |
| [BeraPaw - pBERA - Final Report](https://drive.google.com/file/d/18EWumO-MPJrPbNMDQvWrT6mYXlFZGupw/view?usp=drive_link) | unknown | Audit | 2025-07 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |
| [BeraPaw – Forge & Staker Upgrades](https://drive.google.com/file/d/1DxzKgFjstAunklmUoHKFwY2z_uWfcysk/view?usp=drive_link) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16836] BeraPaw - Core Contracts - Initial Report — matched: Scope section explicitly lists 6 files. Audit date from cover page and timeline.
- [16837] BeraPaw - Core Contracts - Final Report — matched: Scope section explicitly lists 6 files. Audit date from cover page and final report publication date.
- [16838] BeraPaw - Pol Strategy Vault - Initial Report — no match: Scope section explicitly lists 6 files. Audit date from cover page and executive summary.
- [16839] BeraPaw - Pol Strategy Vault - Final Report — no match: Scope section explicitly lists 6 files. Audit date from cover page and header.
- [16840] BeraPaw - pBERA - Initial Report — matched: Scope section explicitly lists 5 files. Audit date from cover page and executive summary.
- [16841] BeraPaw - pBERA - Final Report — matched: Scope section explicitly lists 5 contracts in src/core/. Audit date from cover page and final report publication date.
- [16842] BeraPaw – Forge & Staker Upgrades — matched: Scope section explicitly lists two contracts: BeraPawForge.sol and BeraPawStaker.sol. Audit date is 10/09/2025 from the published date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| BeraPaw - Core Contracts - Initial Report | Constants | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Initial Report | LBGT | own contract | LBGT (selected) `0xbaadcc2962417c01af99fb2b7c75706b9bd6babe` — deployed 2025-02-25 14:51:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - Core Contracts - Initial Report | StakedLgbt | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Initial Report | RewardCollector | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Initial Report | PolController | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Initial Report | BeraPawForge | own contract | 0xfeedb9… (selected) `0xfeedb9750d6ac77d2e52e0c9eb8fb79f9de5cafe` — deployed 2025-02-25 14:49:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - Core Contracts - Final Report | Constants | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Final Report | LBGT | own contract | LBGT (selected) `0xbaadcc2962417c01af99fb2b7c75706b9bd6babe` — deployed 2025-02-25 14:51:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - Core Contracts - Final Report | StakedLgbt | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Final Report | RewardCollector | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Final Report | PolController | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Core Contracts - Final Report | BeraPawForge | own contract | 0xfeedb9… (selected) `0xfeedb9750d6ac77d2e52e0c9eb8fb79f9de5cafe` — deployed 2025-02-25 14:49:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - Pol Strategy Vault - Initial Report | HarvestModule | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Pol Strategy Vault - Initial Report | PolVault | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Pol Strategy Vault - Initial Report | RewardVaultStakingToken | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Pol Strategy Vault - Initial Report | BuyBackBurn | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Pol Strategy Vault - Initial Report | IHarvestModule | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Pol Strategy Vault - Initial Report | IPolVault | unmatched — not counted | — | listed in scope | no |
| BeraPaw - Pol Strategy Vault - Final Report | HarvestModule | unmatched — not counted | — | listed in scope section | no |
| BeraPaw - Pol Strategy Vault - Final Report | PolVault | unmatched — not counted | — | listed in scope section | no |
| BeraPaw - Pol Strategy Vault - Final Report | RewardVaultStakingToken | unmatched — not counted | — | listed in scope section | no |
| BeraPaw - Pol Strategy Vault - Final Report | BuyBackBurn | unmatched — not counted | — | listed in scope section | no |
| BeraPaw - Pol Strategy Vault - Final Report | IHarvestModule | unmatched — not counted | — | listed in scope section | no |
| BeraPaw - Pol Strategy Vault - Final Report | IPolVault | unmatched — not counted | — | listed in scope section | no |
| BeraPaw - pBERA - Initial Report | BeraPawStaker | unmatched — not counted | — | listed in scope | no |
| BeraPaw - pBERA - Initial Report | pBERA | own contract | pBERA (selected) `0xdeadf18cb9233770fe8874c78d7483b4a126b34a` — deployed 2025-09-10 21:36:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - pBERA - Initial Report | StakedPBera | own contract | 0xe3e61d… (selected) `0xe3e61dbb030998110b91c0d1de8215db761f52c6` — deployed 2025-09-10 22:24:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - pBERA - Initial Report | ValidatorOperator | unmatched — not counted | — | listed in scope | no |
| BeraPaw - pBERA - Initial Report | StakerRewardCollector | unmatched — not counted | — | listed in scope | no |
| BeraPaw - pBERA - Final Report | BeraPawStaker | unmatched — not counted | — | listed in scope | no |
| BeraPaw - pBERA - Final Report | pBERA | own contract | pBERA (selected) `0xdeadf18cb9233770fe8874c78d7483b4a126b34a` — deployed 2025-09-10 21:36:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - pBERA - Final Report | StakedPBera | own contract | 0xe3e61d… (selected) `0xe3e61dbb030998110b91c0d1de8215db761f52c6` — deployed 2025-09-10 22:24:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw - pBERA - Final Report | ValidatorOperator | unmatched — not counted | — | listed in scope | no |
| BeraPaw - pBERA - Final Report | StakerRewardCollector | unmatched — not counted | — | listed in scope | no |
| BeraPaw – Forge & Staker Upgrades | BeraPawForge | own contract | 0xfeedb9… (selected) `0xfeedb9750d6ac77d2e52e0c9eb8fb79f9de5cafe` — deployed 2025-02-25 14:49:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BeraPaw – Forge & Staker Upgrades | BeraPawStaker | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0x03c86e21623f25eca0ea544890c7603b9a33e1ac` | PrePaw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: unique_name=9

Zero-match audit list:

- [16838] BeraPaw - Pol Strategy Vault - Initial Report
- [16839] BeraPaw - Pol Strategy Vault - Final Report

Fork inheritance lineage and inherited audits are included when available.
