# Agentic Audit Brief: Eventum Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Eventum Bridge (`eventum-bridge`)
- Website: [https://evedex.com/en-US/](https://evedex.com/en-US/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 79 unique implementations (116 raw deployments)
- Coverage basis: 4/23 confirmed own live verified implementations (17.4%); conservative 17.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,518,168.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Eventum Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across arbitrum, ethereum. Structural roles: 23 unclassified, 7 core, 7 supporting, 3 infra. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: unclassified (23), core (7), supporting (7), infra (3)
- Contract kinds: contract (40)
- Detected standards: erc1967proxy (9), ownable (1), pausable (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 12

## Fork Analysis

1 of 41 contracts are derived from known codebases. 40 contracts have no detected origin.

### Forked Contracts

**Storage** (`0xc7c194...a3ea0c`, chain 42161)
Origin: rocket-pool (`0x1d8f8f...e0fa46`)
Containment: 53.3% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- addUint(bytes32,uint256)
- confirmGuardian()
- confirmWithdrawalAddress(address)
- deleteBytes32(bytes32)
- getBytes32(bytes32)
- getDeployedStatus()
- getGuardian()
- getNodePendingWithdrawalAddress(address)
- getNodeWithdrawalAddress(address)
- setBytes32(bytes32,bytes32)
- setDeployedStatus()
- setGuardian(address)
- setWithdrawalAddress(address,address,bool)
- subUint(bytes32,uint256)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2880ab...c17b43`, chain 1)
- UnnamedContract (`0x02c07b...5908f1`, chain 42161)
- UnnamedContract (`0x071360...63be14`, chain 42161)
- UnnamedContract (`0x08e9dc...11f424`, chain 42161)
- UnnamedContract (`0x0977a7...93b39d`, chain 42161)
- UnnamedContract (`0x104177...b28ad0`, chain 42161)
- UnnamedContract (`0x13fb7b...8e8357`, chain 42161)
- UnnamedContract (`0x16a4f9...02c595`, chain 42161)
- UnnamedContract (`0x225a85...2f3594`, chain 42161)
- UnnamedContract (`0x22839d...586606`, chain 42161)
- UnnamedContract (`0x4e6826...41b116`, chain 42161)
- UnnamedContract (`0x58c6f3...b841ff`, chain 42161)
- UnnamedContract (`0x5bc15d...8abf68`, chain 42161)
- UnnamedContract (`0x62be54...1748a7`, chain 42161)
- UnnamedContract (`0x93244b...9e5a3c`, chain 42161)
- UnnamedContract (`0xaebf6c...e31969`, chain 42161)
- UnnamedContract (`0xb54d62...f7d6e8`, chain 42161)
- UnnamedContract (`0xb5e569...dab267`, chain 42161)
- UnnamedContract (`0xc9905e...ee38a7`, chain 42161)
- UnnamedContract (`0xdbb435...a645d9`, chain 42161)
- UnnamedContract (`0xe8b4c9...bfcbb6`, chain 42161)
- UnnamedContract (`0xf22a47...13f2a8`, chain 42161)
- UnnamedContract (`0xf911c3...2dac69`, chain 42161)
- UnnamedContract (`0xff1968...e114c3`, chain 42161)
- UnnamedContract (`0xff1a0f...12925c`, chain 42161)
- BridgeMiddlewareV2 (`0x4721ae...b251a9`, chain 42161)
- ClonableBeaconProxy (`0x2f2a25...fc5b0f`, chain 42161)
- FiatTokenProxy (`0xaf88d0...8e5831`, chain 42161)
- MinimalProxyFactory (`0x1ee981...fdd057`, chain 42161)
- MinimalProxyFactory (`0x99be07...52977a`, chain 42161)
- RollupProxy (`0xd226bd...1abbbc`, chain 42161)
- TransparentUpgradeableProxy (`0x1628ce...59e66a`, chain 42161)
- TransparentUpgradeableProxy (`0x2e8d8b...4ca8fe`, chain 42161)
- TransparentUpgradeableProxy (`0x82af49...3fbab1`, chain 42161)
- TransparentUpgradeableProxy (`0x8696d3...6db025`, chain 42161)
- TransparentUpgradeableProxy (`0x8d21df...33d4b1`, chain 42161)
- TransparentUpgradeableProxy (`0xa0a1b4...a11296`, chain 42161)
- TransparentUpgradeableProxy (`0xad3026...086b38`, chain 42161)
- TransparentUpgradeableProxy (`0xec32bd...dbc040`, chain 42161)
- TransparentUpgradeableProxy (`0xfd086b...9fcbb9`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 40; live-surface rows included: 40 (40 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 47/94 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/23 (17.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 47 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 31 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 49
- Confirmed-live implementations: 47 of 79 unique; 32 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/46
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 79
- Raw deployments: 116
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HashEx | Tier 2 | 4 | 8.7% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BadgeV1 | unknown | project_anchor | own_supporting | 15 | arbitrum | unit-239762 (15 proxies) | 15 deployments: arbitrum `0x026968...3f9af8`; arbitrum `0x1fdf83...961c01`; arbitrum `0x21f69c...c404e5`; arbitrum `0x372a18...b7b3f8`; arbitrum `0x4b2f4f...13c2bf`; arbitrum `0x6a457a...7ca3a2`; arbitrum `0x6c015b...d812e0`; arbitrum `0x77075c...ff8a17`; arbitrum `0x86dc07...2e6197`; arbitrum `0x948c63...3530a2`; arbitrum `0xa4fbdd...7f6880`; arbitrum `0xc6bc0e...40ecfd`; arbitrum `0xdac651...c63dfd`; arbitrum `0xdb5ea5...f0586f`; arbitrum `0xdef2dd...c697de` | ✅ Audited |
| BurnRegistryV1 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239763 | `0xc7defc...1dc36c` | ✅ Audited |
| GovernorMultisig | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239744 | `0xeb71a9...291bf8` | ✅ Audited |
| TreasuryV1 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239760 | `0x0a9591...b5735a` | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| aeWETH | token | project_anchor | own_supporting | 1 | arbitrum | unit-239758 | `0x82af49...3fbab1` | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-239754 | `0xfd086b...9fcbb9` | ⚠️ Unaudited |
| BadgeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | arbitrum | n/a | 5 deployments: arbitrum `0x050738...83919b`; arbitrum `0x6b25e2...ca402e`; arbitrum `0x7101f6...30d568`; arbitrum `0xb8d4b9...fb2945`; arbitrum `0xbe0a8f...6dda52` | ⚠️ Unaudited |
| BadgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1750e2...bb892b` | ⚠️ Unaudited |
| BadgeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x28d509...094b4f`; arbitrum `0x6a60af...05a890`; arbitrum `0xa2f387...704825` | ⚠️ Unaudited |
| BridgeMiddleware | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239710 | `0x254e69...35be16` | ⚠️ Unaudited |
| BridgeMiddleware | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239711 | `0x26052f...5fa503` | ⚠️ Unaudited |
| BridgeMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x683c48...0e3e40` | ⚠️ Unaudited |
| BridgeMiddlewareV2 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-239714 | `0x4721ae...b251a9` | ⚠️ Unaudited |
| BridgeMiddlewareV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5fbf44...521b82`; arbitrum `0xfdaf74...2826b8` | ⚠️ Unaudited |
| BurnRegistryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79cec0...fe79a5` | ⚠️ Unaudited |
| DepositManager | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239765 | 2 deployments: arbitrum `0x665842...f8a2d0`; arbitrum `0xc14225...64562e` | ⚠️ Unaudited |
| DepositManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf6ec90...56d45b` | ⚠️ Unaudited |
| DVFDepositContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3db75...b93b47` | ⚠️ Unaudited |
| DVFDepositContract | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbca303...045afa` | ⚠️ Unaudited |
| DVFSunset | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x73699b...bd2704`; ethereum `0xec9093...0cf9b5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x14b993...6d8552`; ethereum `0xe15357...76f38e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x378d87...3c1d8e`; ethereum `0xd35e56...ff4b71` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x438b5a...cfde9c`; ethereum `0xa78951...c5e4b2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x636915...842a74`; ethereum `0xcac639...f167b8` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | arbitrum | unit-239757 | `0xaf88d0...8e5831` | ⚠️ Unaudited |
| Inbox | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239756 | `0xa0a1b4...a11296` | ⚠️ Unaudited |
| L1ERC20Gateway | unknown | project_anchor | own_supporting | 2 | arbitrum | unit-239752 (2 proxies) | 3 deployments: arbitrum `0x08e9dc...11f424`; arbitrum `0x8d21df...33d4b1`; arbitrum `0xad3026...086b38` | ⚠️ Unaudited |
| L1GatewayRouter | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-239759 | `0x1628ce...59e66a` | ⚠️ Unaudited |
| MinimalProxyFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-239707 | `0x1ee981...fdd057` | ⚠️ Unaudited |
| MinimalProxyFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-239728 | `0x99be07...52977a` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dbbd1...fb70a5` | ⚠️ Unaudited |
| OpenfortUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19e7e0...04cec1`; ethereum `0x90ec5b...342d8c` | ⚠️ Unaudited |
| OpenfortUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x237b7a...5a58f3`; ethereum `0x850af9...104aac` | ⚠️ Unaudited |
| OpenfortUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3a2dd0...d41820`; ethereum `0x8d289c...d746f8` | ⚠️ Unaudited |
| Outbox | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239753 | `0xec32bd...dbc040` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x709116...ed87bf`; ethereum `0x92650d...b60175` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ad6d5...ef78be` | ⚠️ Unaudited |
| PythUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x26dd80...595e85`; ethereum `0x35a58b...746b13`; ethereum `0xdd24f8...5bbd21` | ⚠️ Unaudited |
| RollupAdminLogic | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239766 | `0xd226bd...1abbbc` | ⚠️ Unaudited |
| SequencerInbox | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239751 | `0x8696d3...6db025` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-239755 | `0x2f2a25...fc5b0f` | ⚠️ Unaudited |
| Storage | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239737 | `0xc7c194...a3ea0c` | ⚠️ Unaudited |
| SwapManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x770722...def2f6` | ⚠️ Unaudited |
| SwapManager | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239761 | 2 deployments: arbitrum `0xac3450...a22291`; arbitrum `0xe575f5...75daa4` | ⚠️ Unaudited |
| VaultV1 | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-239764 | `0x2e8d8b...4ca8fe` | ⚠️ Unaudited |
| VaultV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xa526c0...0c9684` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x87047526937246727e4869c5f76a347160e08672) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x74f09c...e3e94e`; ethereum `0x870475...e08672` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239679 | `0x2880ab...c17b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e023c...fcacd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ee2d7...cfec95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c56d1...0afd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0d4a9...3a7c49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc643e5...2d8941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9d69c...5c8adc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf19229...a47a3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239697 | `0x02c07b...5908f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239698 | `0x071360...63be14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239699 | `0x0977a7...93b39d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239700 | `0x104177...b28ad0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239702 | `0x13fb7b...8e8357` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239703 | `0x16a4f9...02c595` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239708 | `0x225a85...2f3594` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239709 | `0x22839d...586606` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239715 | `0x4e6826...41b116` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239719 | `0x58c6f3...b841ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239721 | `0x5bc15d...8abf68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239725 | `0x62be54...1748a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239727 | `0x93244b...9e5a3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239730 | `0xaebf6c...e31969` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239733 | `0xb54d62...f7d6e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239734 | `0xb5e569...dab267` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239738 | `0xc9905e...ee38a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239741 | `0xdbb435...a645d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239743 | `0xe8b4c9...bfcbb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239745 | `0xf22a47...13f2a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239747 | `0xf911c3...2dac69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239749 | `0xff1968...e114c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239750 | `0xff1a0f...12925c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hashex.org/audits/evedex](https://hashex.org/audits/evedex) | HashEx | Audit | 2025-08 | fresh | Direct | address | matched | 6 | 4 | 0 | 2 | high |
| [skynet.certik.com/projects/evedex](https://skynet.certik.com/projects/evedex) | CertiK | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2788] hashex.org/audits/evedex — matched: Contracts extracted from the 'Contracts Checked' table in the audit report. Audit completed date is 11 Aug 2025.
- [2789] skynet.certik.com/projects/evedex — no match: Only one contract file explicitly listed in the audit report's 'Audited Files/SHA256' section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| hashex.org/audits/evedex | EHMarketV2 | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/evedex | VaultV2 | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/evedex | CashbackVaultV1Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x0a9591...b5735a` — deployed 2024-10-10 20:32:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | TreasuryV1 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x77075c...ff8a17` — deployed 2024-10-10 20:31:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | StorageConfig | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x21f69c...c404e5` — deployed 2024-10-10 20:31:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | GovernorMultisigAuthorization | own contract | GovernorMultisig (selected) `0xeb71a9...291bf8` — deployed 2024-10-10 20:31:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | Multiownable | own contract | GovernorMultisig (selected) `0xeb71a9...291bf8` — deployed 2024-10-10 20:31:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | Multicall3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc7defc...1dc36c` — deployed 2024-10-10 20:32:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| skynet.certik.com/projects/evedex | OwnableValidator | unmatched — not counted | — | Listed under Audited Files/SHA256 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x82af49...3fbab1` | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfd086b...9fcbb9` | ArbitrumExtensionV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x254e69...35be16` | BridgeMiddleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x26052f...5fa503` | BridgeMiddleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4721ae...b251a9` | BridgeMiddlewareV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x665842...f8a2d0` | DepositManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xaf88d0...8e5831` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa0a1b4...a11296` | Inbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1628ce...59e66a` | L1GatewayRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1ee981...fdd057` | MinimalProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x99be07...52977a` | MinimalProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xec32bd...dbc040` | Outbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd226bd...1abbbc` | RollupAdminLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8696d3...6db025` | SequencerInbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2f2a25...fc5b0f` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc7c194...a3ea0c` | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xac3450...a22291` | SwapManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2e8d8b...4ca8fe` | VaultV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: address=5

Zero-match audit list:

- [2789] skynet.certik.com/projects/evedex

Fork inheritance lineage and inherited audits are included when available.
