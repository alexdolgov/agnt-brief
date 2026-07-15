# Agentic Audit Brief: sDAI

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: sDAI (`sdai`)
- Website: [https://docs.spark.fi/dev/savings/sdai-token](https://docs.spark.fi/dev/savings/sdai-token)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, gnosis
- Contract surface: 119 unique implementations (207 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $66,118,976.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for sDAI. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum, gnosis. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20permit (1), erc4626 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- SavingsDai (`0x83f20f...42beea`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 118 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 1 of 119 unique; 118 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/72
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 47
- Unique implementations: 119
- Raw deployments: 207
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

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AgaveBuybackOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5d1e9f...5befb4` | ⚠️ Unaudited |
| AgaveHoldingsOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0xa671d7...ec8791`; gnosis `0xbe76f3...f615ef` | ⚠️ Unaudited |
| AgaveIncentivesBulkClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc777eb...913277` | ⚠️ Unaudited |
| AgaveOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x062b9d...85db7a` | ⚠️ Unaudited |
| AgaveProtocolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x57cba8...bdb2cb`; gnosis `0x8cc3f9...1ab097`; gnosis `0xe67293...b51329` | ⚠️ Unaudited |
| AgaveReimbursementReclaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xec8baf...ca9620` | ⚠️ Unaudited |
| AgaveswapInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x466df2...a7b1d7` | ⚠️ Unaudited |
| AgaveswapV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x0cf086...55b66f`; gnosis `0xa98c2e...d047c3` | ⚠️ Unaudited |
| AgaveTreasuryRedeemer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x33805e...bbc457` | ⚠️ Unaudited |
| AgaveTreasuryWithdrawer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x91ed56...890018` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x223fe0...2c7ac2`; gnosis `0x3e2081...9ec2d2`; gnosis `0x8f0563...b9ee40`; gnosis `0x8f40f6...3a27ba`; gnosis `0xc8270d...e23725`; gnosis `0xdc77a0...92f381` | ⚠️ Unaudited |
| BridgeInterestReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x17780d...625122`; gnosis `0x670dae...059088` | ⚠️ Unaudited |
| BridgeRouter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9a8736...66a0b0` | ⚠️ Unaudited |
| BridgeValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x26fc9f...823299`; gnosis `0xb289f0...3f1b6d` | ⚠️ Unaudited |
| BulkMerkleClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb22935...f644b1` | ⚠️ Unaudited |
| Claimable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x4aa421...045016`; gnosis `0x710d6e...47d2c5`; gnosis `0xd760e0...dd5100`; gnosis `0xe1579d...ea201e` | ⚠️ Unaudited |
| CLSynchronicityPriceAdapterPegToBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae27e6...7b48c3` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 13 deployments: gnosis `0x0514ba...d599b1`; gnosis `0x103a06...5ee672`; gnosis `0x152fe5...40927f`; gnosis `0x1707a7...2046be`; gnosis `0x23c551...265126`; gnosis `0x5f539a...e0aba4`; gnosis `0x629a80...c6ee47`; gnosis `0x64bdf6...8628c3`; gnosis `0x794da8...254aa7`; gnosis `0x8c41d5...f0c254`; gnosis `0xa32b57...e6558d`; gnosis `0xe25309...a430e0`; gnosis `0xf7f880...386edc` | ⚠️ Unaudited |
| Erc20AMBOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb7f600...65f4ea` | ⚠️ Unaudited |
| Erc20ToNativeBridgeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe30269...22fbf5` | ⚠️ Unaudited |
| ERC4626SynchronicityPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x2cd349...449042`; gnosis `0x732958...6fa0ee` | ⚠️ Unaudited |
| GenericLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x985323...ce20a7` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x42f38e...e7a3f6` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | gnosis | n/a | `0x7a48da...0875bd` | ⚠️ Unaudited |
| HashiManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x0d3cc0...3d8776`; gnosis `0x6c70cd...bf2962` | ⚠️ Unaudited |
| HashiManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x5483eb...e4440d`; gnosis `0x60aa15...2ddb49` | ⚠️ Unaudited |
| HashiManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x694bee...28b5b5`; gnosis `0x74caca...a7296e` | ⚠️ Unaudited |
| HomeAMB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa03353...9903d7` | ⚠️ Unaudited |
| HomeBridgeErcToNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x37d5b9...9f2ff5`; gnosis `0x492c2d...0d9732`; gnosis `0xab2785...4e8937`; gnosis `0xb74047...0c82de` | ⚠️ Unaudited |
| HomeBridgeErcToNative | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x7301cf...eb0aa6`; gnosis `0xe6998b...782846` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: gnosis `0x1437f1...4eadfe`; gnosis `0x315a82...ba0553`; gnosis `0x39ce83...48a050`; gnosis `0x65efaf...474c47`; gnosis `0xf1dc94...8cb26f` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x1881dd...1a6bec`; gnosis `0x73280c...d024fd`; gnosis `0xbd804a...054921`; gnosis `0xe183c7...fd1e2d` | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x9bc06e...60ac2b`; gnosis `0xd7e650...db949f` | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e7dfd...9304ca` | ⚠️ Unaudited |
| LendingRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa83a29...22c5c1` | ⚠️ Unaudited |
| MerkleClaimERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x15b7bd...241a95`; gnosis `0xb88d66...7399ba`; gnosis `0xc21a7b...72edf7` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xedc96c...a05cf1` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1f7810...dd2f75` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5ad434...137bed` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x96f4bf...18f57c` | ⚠️ Unaudited |
| ReserveLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1b0348...ae9966` | ⚠️ Unaudited |
| SavingsDai | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392087 | `0x83f20f...42beea` | ⚠️ Unaudited |
| SavingsXDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x4ab77f...a171d1`; gnosis `0xaf2047...483701` | ⚠️ Unaudited |
| SavingsXDaiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x02ae11...f63907`; gnosis `0xd499b5...591a94`; gnosis `0xfae3a9...fd7b9c` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x059c47...9bf73a`; gnosis `0x100bd9...7ec7c3`; gnosis `0x3eb706...ddfdf4`; gnosis `0x5d9a99...c7dc09`; gnosis `0xeb5767...658af6`; gnosis `0xfcdd91...cd3d23` | ⚠️ Unaudited |
| StakedAgave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2e91cd...ec2695` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x01ac90...c5f6e2`; gnosis `0x248ce8...2acc13` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x110e2d...3ec78b`; gnosis `0x858227...fcb2f0` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x13f2b8...9de3fb`; gnosis `0x6d9dc1...949f22` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x20e5eb...43461f`; gnosis `0xd28490...ce4ed2` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x365d2e...f35322`; gnosis `0x9a4dcb...8631ea`; gnosis `0xe22b9b...e0ef13` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x3d938f...5a9bbc`; gnosis `0xa95027...25cc68` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x4a0c32...7e8adb`; gnosis `0x8e0dbc...2bc339` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x9ae6d6...5c97ed`; gnosis `0xc15933...19d314` | ⚠️ Unaudited |
| StaticATokenLM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xa357ef...0ae61e`; gnosis `0xce02a2...d8daff` | ⚠️ Unaudited |
| Swapper_Coordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0xba51d0...896eb4`; gnosis `0xdd4945...99ca42`; gnosis `0xf429c5...a621e9` | ⚠️ Unaudited |
| Swapper_Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x7ffc86...13d1a0`; gnosis `0x8b707c...e9af64`; gnosis `0xb45016...0ce5b7`; gnosis `0xb62488...f89489` | ⚠️ Unaudited |
| Swapper_UserProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x0f0a02...a6efa0`; gnosis `0x19bfaf...1abd10`; gnosis `0x456844...9179ff` | ⚠️ Unaudited |
| Swapper_UserProxyImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 10 deployments: gnosis `0x2869b6...87145f`; gnosis `0x412573...b0b078`; gnosis `0x475506...27ff7b`; gnosis `0x5668e5...8fe99a`; gnosis `0x98216d...e3b385`; gnosis `0xb0b0f7...2a08b8`; gnosis `0xdb8e23...f419ea`; gnosis `0xea45ce...4d5636`; gnosis `0xf7da8f...e63284`; gnosis `0xfd4283...8ac91d` | ⚠️ Unaudited |
| Swapper_Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xac942b...519bdb` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x662a92...869728` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x76bbec...787ed9` | ⚠️ Unaudited |
| UiPoolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x169eb8...1744c5`; gnosis `0x46ad11...512e8f`; gnosis `0x569358...d2075e`; gnosis `0x606a84...dbfe88` | ⚠️ Unaudited |
| USDSDepositContract | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5c183c...7ff8c9` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x53ba4b...16921f` | ⚠️ Unaudited |
| ValidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x09bf5d...25e678` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x0d2335...1e81dd`; gnosis `0x25fa1d...376471`; gnosis `0x563062...a35789`; gnosis `0x954632...7325b0`; gnosis `0xa476a5...034fd7`; gnosis `0xf63736...f3a2c4` | ⚠️ Unaudited |
| WETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e1461...2e52c0` | ⚠️ Unaudited |
| WrappedAgTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6c1878...d434d2` | ⚠️ Unaudited |
| WrappedAgTokenUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x78eb5d...9c304b`; gnosis `0xa1d0ad...a6bdc5`; gnosis `0xfc4c44...b0d716` | ⚠️ Unaudited |
| WXDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe91d15...63a97d` | ⚠️ Unaudited |
| XDaiForeignBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4aa421...045016` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (47)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x02e2e6...c6eef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x071bf5...8b73c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x109f6f...8d23fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x17dce5...d55c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1964b0...3ceff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1c5b8d...ecf942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x201959...9437a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x22df53...3b02c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2ac1f9...4f1904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2ffaba...775aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x35dd00...b85db6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x376739...40d42c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x40d2e7...c67b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x46eb3f...cd581c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4c8b99...bfb961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4da5be...3eaae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x562e49...9ec2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5be5d4...c20dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x678b93...1cc69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6a0614...fc387a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6c8ae5...7beb75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7057a9...9c2e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7b81e0...b93dc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7eb44b...651fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x832cd1...6c4ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8677a7...e27136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x88be51...2ecb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8b1fcd...15da34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8d43d5...0905b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8eb798...46d250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9065d6...6e56a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x912824...0e7570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x921571...5f89d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9380d8...7f368f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x95d0e8...470b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9f1837...4ae99b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae8988...50b423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb69aa1...188dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb6f20b...679725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbc07ce...152f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbd5690...17ef81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc1529e...830986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc66e94...babc42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcf6a20...fbe689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd99d9d...e2f10e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe7728d...3861e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xed1d03...473a5e` | ❓ Unverified |

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
| ethereum | `0x83f20f...42beea` | SavingsDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 69 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 47 |

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
