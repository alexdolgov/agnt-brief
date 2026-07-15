# Agentic Audit Brief: Angle

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DEAD - TVL dropped 50.7% over 90 days

## Project Overview

- Project: Angle (`angle`)
- Website: [https://app.angle.money](https://app.angle.money)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, avalanche, base, ethereum, gnosis, mantle, optimism, polygon
- Contract surface: 103 unique implementations (114 raw deployments)
- Coverage basis: 0/65 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,277,329.70
- On-chain TVL (included contracts): $1,081,061.99
- TVL by chain: Ethereum $991,901.97 | Polygon $89,160.02

## Project Description

This brief describes the observed EVM deployment and audit surface for Angle. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 101 contract row(s) across arbitrum, aurora, avalanche, base, ethereum, gnosis, mantle, optimism, polygon. Structural roles: 55 unclassified, 35 supporting, 7 core, 4 infra. 28 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 101
- Structural roles: unclassified (55), supporting (35), core (7), infra (4)
- Contract kinds: contract (101)
- Detected standards: erc1967proxy (23), ownable (3), erc165 (2), erc20 (2), erc20permit (2), accesscontrol (1)
- Frameworks: openzeppelin (36), openzeppelin-upgradeable (22)
- Upgradeable-pattern rows: 28

## Fork Analysis

0 of 46 contracts are derived from known codebases. 46 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ANGLE Rainbow Bridge (`0xb7e361...80b750`, chain 1313161554)
- CoreBorrow (`0x5bc6be...ec89be`, chain 1)
- CoreBorrow (`0x4b1e2c...d35984`, chain 5000)
- DiamondProxy (`0x002535...4cefab`, chain 1)
- DiamondProxy (`0x222222...4d0137`, chain 1)
- DiamondProxy (`0x222222...38fd4f`, chain 8453)
- DiamondProxy (`0xd253b6...418053`, chain 42161)
- EURA Rainbow Bridge (`0xdc7acd...74ea7c`, chain 1313161554)
- EURA Rebalancer (`0x6238cd...f1e4ae`, chain 1)
- FlashAngle (`0x4a2ff9...506f7f`, chain 1)
- GnosisSafeProxy (`0x0c2553...42d430`, chain 1)
- GnosisSafeProxy (`0x57eedc...aa89fc`, chain 1)
- GnosisSafeProxy (`0xdc4e6d...4eb1c8`, chain 1)
- GnosisSafeProxy (`0x3245d3...5e08a6`, chain 10)
- GnosisSafeProxy (`0xd24567...2fd080`, chain 10)
- GnosisSafeProxy (`0x3b9d32...ff6f8d`, chain 137)
- GnosisSafeProxy (`0xda2d2f...4c02ea`, chain 137)
- GnosisSafeProxy (`0x55f01d...560a9c`, chain 42161)
- GnosisSafeProxy (`0xaa2dac...54df0b`, chain 42161)
- Governor (`0x748ba9...ca4436`, chain 1)
- LayerZero ANGLE bridge (`0x105617...e28670`, chain 1)
- LayerZero EURA bridge (`0x0c1ebb...60d36f`, chain 137)
- ProposalReceiver (`0xcda39b...ca8df4`, chain 42161)
- ProposalSender (`0x896d64...9790a8`, chain 1)
- ProxyAdmin governor (`0x1d941e...53a32b`, chain 1)
- ProxyAdmin guardian (`0xd9f1a8...cec017`, chain 1)
- SmartWalletWhitelist (`0xaa241c...c5888e`, chain 1)
- Swapper (`0xd7cf34...fb5346`, chain 1)
- Timelock (`0x09d814...e9d53f`, chain 1)
- Transmuter EURA (`0xba0e73...ce0455`, chain 8453)
- TransparentUpgradeableProxy (`0x000020...c63274`, chain 1)
- TransparentUpgradeableProxy (`0x002222...ab5776`, chain 1)
- TransparentUpgradeableProxy (`0x004626...e59a23`, chain 1)
- TransparentUpgradeableProxy (`0x1a7e4e...fcbce8`, chain 1)
- TransparentUpgradeableProxy (`0x457970...890930`, chain 1)
- TransparentUpgradeableProxy (`0x4fa745...cdf982`, chain 1)
- TransparentUpgradeableProxy (`0xec0b13...002961`, chain 1)
- TransparentUpgradeableProxy (`0x002222...ab5776`, chain 10)
- TransparentUpgradeableProxy (`0x002222...ab5776`, chain 42161)
- TransparentUpgradeableProxy (`0x004626...e59a23`, chain 42161)
- TransparentUpgradeableProxy (`0x31429d...e214c2`, chain 42161)
- UI helper (`0x1b17ac...4e068e`, chain 1)
- USDA Permissionless Harvester (`0x2385a7...a694ef`, chain 1)
- USDA Rebalancer (`0x22604c...7ac411`, chain 1)
- veANGLE (`0x0c462d...9f0dd5`, chain 1)
- veANGLEVotingDelegation (`0x2d7bd1...d63078`, chain 1)

## Contract Surface Quality

- Indexed contracts: 101; live-surface contracts included: 101 (76 live, 25 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 69/105 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/65 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 66 own, 37 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (16 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 41
- Deployed-live implementations: 68 of 103 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/65
- Verified + Unaudited implementations: 65
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 103
- Raw deployments: 114
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (83)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AgTokenNameable | token | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-379175 | `0x000020...c63274` | ⚠️ Unaudited |
| TokenPolygonUpgradeableNameable | token | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | unit-379190 | `0xe0b52e...057db4` | ⚠️ Unaudited |
| AgEURNameable | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-379179 | `0x1a7e4e...fcbce8` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 2 | optimism | unit-379184 (2 proxies) | 2 deployments: optimism `0x000020...c63274`; optimism `0x9485ac...c8b1ed` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 1 | gnosis | unit-379187 | `0x4b1e2c...d35984` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | unit-379189 | `0x000020...c63274` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 2 | arbitrum | unit-379193 (2 proxies) | 2 deployments: arbitrum `0x000020...c63274`; arbitrum `0xfa5ed5...3528e7` | ⚠️ Unaudited |
| ANGLE | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-379109 | `0x31429d...e214c2` | ⚠️ Unaudited |
| ANGLE | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-379133 | `0x58441e...8ff665` | ⚠️ Unaudited |
| ANGLE | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-379156 | `0x900f71...60ebf1` | ⚠️ Unaudited |
| ANGLE | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-379172 | `0xaaaaaa...ec5015` | ⚠️ Unaudited |
| ANGLE | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-379164 | `0x5ee94c...4d9217` | ⚠️ Unaudited |
| ANGLE Rainbow Bridge | unknown | project_anchor | own_supporting | 0 | aurora | unit-379144 | `0xb7e361...80b750` | ⚠️ Unaudited |
| AngleRouter V2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-379134 | `0x658286...cb27e1` | ⚠️ Unaudited |
| AngleRouter V2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-379153 | `0x595ab8...c47aa8` | ⚠️ Unaudited |
| AngleRouter V2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-379166 | `0xf530b8...1cec86` | ⚠️ Unaudited |
| AngleRouterArbitrum | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-379197 | `0x9a33e6...8be835` | ⚠️ Unaudited |
| AngleRouterArbitrum | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-379198 | `0xc16b81...1e3049` | ⚠️ Unaudited |
| AngleRouterMainnet | adapter | project_anchor | own_supporting | 1 | ethereum | unit-379176 | `0x457970...890930` | ⚠️ Unaudited |
| CoreBorrow | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379114 | `0x5bc6be...ec89be` | ⚠️ Unaudited |
| CoreBorrow | unknown | project_anchor | own_supporting | 0 | optimism | unit-379129 | `0x1a7e4e...fcbce8` | ⚠️ Unaudited |
| CoreBorrow | unknown | project_anchor | own_supporting | 0 | polygon | unit-379154 | `0x787541...af51b8` | ⚠️ Unaudited |
| CoreBorrow | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-379199 | `0x31429d...e214c2` | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379178 | `0x002535...4cefab` | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379182 | `0x222222...4d0137` | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | project_anchor | own_supporting | 1 | base | unit-379205 | `0x222222...38fd4f` | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-379202 | `0xd253b6...418053` | ⚠️ Unaudited |
| EURA | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-379171 | `0xa61beb...1125b4` | ⚠️ Unaudited |
| EURA Rainbow Bridge | unknown | project_anchor | own_supporting | 0 | aurora | unit-379145 | `0xdc7acd...74ea7c` | ⚠️ Unaudited |
| EURA Rebalancer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379116 | `0x6238cd...f1e4ae` | ⚠️ Unaudited |
| FlashAngle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379111 | `0x4a2ff9...506f7f` | ⚠️ Unaudited |
| FlashAngle | unknown | project_anchor | own_supporting | 0 | optimism | unit-379143 | `0xf1ddca...efe123` | ⚠️ Unaudited |
| FlashAngle | unknown | project_anchor | own_supporting | 0 | polygon | unit-379149 | `0x287859...bdf00a` | ⚠️ Unaudited |
| FlashAngle | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-379195 | `0x59153e...55373b` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 3 | ethereum | unit-379181 (3 proxies) | 3 deployments: ethereum `0x0c2553...42d430`; ethereum `0x57eedc...aa89fc`; ethereum `0xdc4e6d...4eb1c8` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | optimism | unit-379185 | `0x3245d3...5e08a6` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | polygon | unit-379191 (2 proxies) | 2 deployments: polygon `0x3b9d32...ff6f8d`; polygon `0xda2d2f...4c02ea` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | arbitrum | unit-379196 (2 proxies) | 2 deployments: arbitrum `0x55f01d...560a9c`; arbitrum `0xaa2dac...54df0b` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | optimism | unit-379139 | `0xd24567...2fd080` | ⚠️ Unaudited |
| Governor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379117 | `0x748ba9...ca4436` | ⚠️ Unaudited |
| LayerZero ANGLE bridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379103 | `0x105617...e28670` | ⚠️ Unaudited |
| LayerZero ANGLE bridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-379136 | `0x9201cc...15313a` | ⚠️ Unaudited |
| LayerZero EURA bridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-379135 | `0x840b25...230a72` | ⚠️ Unaudited |
| LayerZero EURA bridge | unknown | project_anchor | own_supporting | 0 | polygon | unit-379146 | `0x0c1ebb...60d36f` | ⚠️ Unaudited |
| LayerZero USDA bridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-379138 | `0xc69e66...bb5c88` | ⚠️ Unaudited |
| LayerZero USDA bridge | unknown | project_anchor | own_supporting | 0 | polygon | unit-379158 | `0xe70575...007169` | ⚠️ Unaudited |
| LayerZeroBridge | operational_periphery | project_anchor | own_supporting | 2 | ethereum | unit-379180 (2 proxies) | 2 deployments: ethereum `0x4fa745...cdf982`; ethereum `0xec0b13...002961` | ⚠️ Unaudited |
| LayerZeroBridgeToken | operational_periphery | project_anchor | own_supporting | 1 | gnosis | unit-379186 | `0xfa5ed5...3528e7` | ⚠️ Unaudited |
| LayerZeroBridgeToken | operational_periphery | project_anchor | own_supporting | 2 | arbitrum | unit-379200 (2 proxies) | 2 deployments: arbitrum `0x16cd38...43d5aa`; arbitrum `0x8f4245...fc0ade` | ⚠️ Unaudited |
| LayerZeroBridgeTokenERC20 | operational_periphery | project_anchor | own_supporting | 1 | arbitrum | unit-379201 | `0x366cee...019695` | ⚠️ Unaudited |
| ProposalReceiver | unknown | project_anchor | own_supporting | 0 | optimism | unit-379140 | `0xd67881...bab514` | ⚠️ Unaudited |
| ProposalReceiver | unknown | project_anchor | own_supporting | 0 | polygon | unit-379150 | `0x2c159f...d19c04` | ⚠️ Unaudited |
| ProposalReceiver | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379162 | `0xcda39b...ca8df4` | ⚠️ Unaudited |
| ProposalSender | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379120 | `0x896d64...9790a8` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | arbitrum | unit-379161 | 2 deployments: arbitrum `0x9a5b06...0afb19`; arbitrum `0xf2eda0...bcef64` | ⚠️ Unaudited |
| ProxyAdmin governor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379105 | `0x1d941e...53a32b` | ⚠️ Unaudited |
| ProxyAdmin governor | unknown | project_anchor | own_supporting | 0 | optimism | unit-379137 | `0xc16b81...1e3049` | ⚠️ Unaudited |
| ProxyAdmin governor | unknown | project_anchor | own_supporting | 0 | polygon | unit-379157 | `0xbfca29...bae6d6` | ⚠️ Unaudited |
| ProxyAdmin guardian | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379125 | `0xd9f1a8...cec017` | ⚠️ Unaudited |
| ProxyAdmin guardian | unknown | project_anchor | own_supporting | 0 | optimism | unit-379141 | `0xe14bfa...fdd5b5` | ⚠️ Unaudited |
| ProxyAdmin guardian | unknown | project_anchor | own_supporting | 0 | polygon | unit-379148 | `0x10be88...fe8b57` | ⚠️ Unaudited |
| SavingsNameable | unknown | project_anchor | own_supporting | 2 | ethereum | unit-379177 (2 proxies) | 2 deployments: ethereum `0x002222...ab5776`; ethereum `0x004626...e59a23` | ⚠️ Unaudited |
| SavingsNameable | unknown | project_anchor | own_supporting | 1 | optimism | unit-379183 | `0x002222...ab5776` | ⚠️ Unaudited |
| SavingsNameable | unknown | project_anchor | own_supporting | 2 | arbitrum | unit-379194 (2 proxies) | 2 deployments: arbitrum `0x002222...ab5776`; arbitrum `0x004626...e59a23` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379122 | `0xaa241c...c5888e` | ⚠️ Unaudited |
| Swapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379124 | `0xd7cf34...fb5346` | ⚠️ Unaudited |
| Swapper | unknown | project_anchor | own_supporting | 0 | optimism | unit-379132 | `0x3f125e...3707ab` | ⚠️ Unaudited |
| Swapper | unknown | project_anchor | own_supporting | 0 | polygon | unit-379152 | `0x516735...a621c5` | ⚠️ Unaudited |
| Swapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-379160 | `0x2904a4...3894f7` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379101 | `0x09d814...e9d53f` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | optimism | unit-379131 | `0x343902...5e8227` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | polygon | unit-379147 | `0x0c2476...4fb631` | ⚠️ Unaudited |
| TimelockControllerWithCounter | governance | project_anchor | own_supporting | 0 | arbitrum | unit-379159 | `0x169487...37a373` | ⚠️ Unaudited |
| TokenSideChainMultiBridge | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 1 | arbitrum | unit-379192 | `0x656b80...610253` | ⚠️ Unaudited |
| Transmuter EURA | unknown | project_anchor | own_supporting | 0 | base | unit-379173 | `0xba0e73...ce0455` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | unit-379204 | `0xaec831...f96c57` | ⚠️ Unaudited |
| Treasury | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-379188 | `0x5addc8...086a87` | ⚠️ Unaudited |
| Treasury | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-379203 | `0x0d7105...eccf52` | ⚠️ Unaudited |
| UI helper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379104 | `0x1b17ac...4e068e` | ⚠️ Unaudited |
| USDA Permissionless Harvester | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379107 | `0x2385a7...a694ef` | ⚠️ Unaudited |
| USDA Rebalancer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379106 | `0x22604c...7ac411` | ⚠️ Unaudited |
| veANGLE | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379102 | `0x0c462d...9f0dd5` | ⚠️ Unaudited |
| veANGLEVotingDelegation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379108 | `0x2d7bd1...d63078` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CoreBorrow | unknown | project_anchor | own_supporting | 0 | mantle | unit-379168 | `0x4b1e2c...d35984` | ❓ Unverified |
| EURA | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | unit-379169 | `0xa61beb...1125b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379110 | `0x411e14...846f29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379112 | `0x4f91f0...4917ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379113 | `0x52701b...77dae3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379115 | `0x5f9f41...ee2cff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379118 | `0x7f82ff...4e62a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379119 | `0x8667db...067d60` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379121 | `0x9ad7e7...6f2367` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379123 | `0xc48b15...88e942` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379126 | `0xe02f8e...883459` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379127 | `0xec876e...952f84` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379128 | `0xf48aa7...cdd9c2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-379130 | `0x2859a4...642b20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-379142 | `0xe9f183...9ad8ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379151 | `0x2f2e0b...10927e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379155 | `0x892bf7...6decea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-379170 | `0xfa5ed5...3528e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-379174 | `0xfa5ed5...3528e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-379165 | `0xa014a4...97a549` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Chainsecurity Audit Report December 21.pdf](https://github.com/AngleProtocol/angle-core/blob/main/audits/Chainsecurity%20Audit%20Report%20December%2021.pdf) | yAudit | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Chainsecurity Audit Report July 21.pdf](https://github.com/AngleProtocol/angle-core/blob/main/audits/Chainsecurity%20Audit%20Report%20July%2021.pdf) | yAudit | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [Sigma Prime Audit Report July 21.pdf](https://github.com/AngleProtocol/angle-core/blob/main/audits/Sigma%20Prime%20Audit%20Report%20July%2021.pdf) | Sigma Prime | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14210] Chainsecurity Audit Report December 21.pdf — no match: Extracted 7 contracts from the scope table in section 2.1. Audit date from cover page: January 7, 2022.
- [14211] Chainsecurity Audit Report July 21.pdf — no match: No reason recorded
- [14212] Sigma Prime Audit Report July 21.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Chainsecurity Audit Report December 21.pdf | BaseSurplusConverter | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterSanTokens | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterUniV2Sushi | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterUniV3 | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | PoolManager | unmatched — not counted | — | listed in scope table (focusing on new functionality) | no |
| Chainsecurity Audit Report December 21.pdf | AngleDistributor | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | LiquidityGaugeV4 | unmatched — not counted | — | listed in scope table (the diff with Curve's LiquidityGaugeV4) | no |
| Chainsecurity Audit Report July 21.pdf | AgToken | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | BondingCurve | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | CollateralSettler | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | Core | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | FeeManager | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | GenericAave | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | ModuleChainlinkMulti | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | ModuleUniswapMulti | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | OracleAbstract | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | OracleChainlinkSingle | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | OracleMath | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | OracleMulti | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | PerpetualManager | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | PerpetualManagerFront | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | PerpetualManagerInternal | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | PoolManager | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | PoolManagerInternal | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | RewardsDistributor | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | SanToken | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | StableMaster | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | StableMasterStorage | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | StakingRewards | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | Strategy | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | UniswapUtils | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | ANGLE | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | AgToken | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | AgTokenEvents | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | BondingCurve | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | BondingCurveEvents | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | CollateralSettler | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | CollateralSettlerERC20 | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | Core | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | FeeManager | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | FunctionUtils | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | ModuleChainlinkMulti | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | ModuleUniswapMulti | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | Oracle | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | OracleChainlinkMulti | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | OracleChainlinkSingle | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | OracleMath | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | OracleMulti | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | PerpetualManager | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | PerpetualManagerEvents | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | PerpetualManagerFront | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | PerpetualManagerInternal | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | PoolManager | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | PoolManagerInternal | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | RewardsDistributor | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | SanToken | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | StableMaster | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | StableMasterFront | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | StableMasterInternal | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | StakingRewards | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | UniswapUtils | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x002535...4cefab` | DummyDiamondImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x222222...4d0137` | DummyDiamondImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x222222...38fd4f` | DummyDiamondImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd253b6...418053` | DummyDiamondImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcda39b...ca8df4` | ProposalReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2904a4...3894f7` | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x169487...37a373` | TimelockControllerWithCounter | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 29 |
| needs_review | 66 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 61 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [14210] Chainsecurity Audit Report December 21.pdf
- [14211] Chainsecurity Audit Report July 21.pdf
- [14212] Sigma Prime Audit Report July 21.pdf

Fork inheritance lineage and inherited audits are included when available.
