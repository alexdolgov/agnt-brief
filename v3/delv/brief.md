# Agentic Audit Brief: DELV

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 10 (0 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: DELV (`delv`)
- Website: [https://delv.tech/](https://delv.tech/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, gnosis, linea, sepolia
- Contract surface: 132 unique implementations (132 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $749,242.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for DELV. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across ethereum, gnosis, sepolia. Structural roles: 12 supporting, 7 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: supporting (12), core (7)
- Contract kinds: contract (19)
- Detected standards: none
- Frameworks: openzeppelin (15)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 19; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 113 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 94
- Unique implementations: 132
- Raw deployments: 132
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EETHHyperdriveCoreDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a945...10c2e0` | ⚠️ Unaudited |
| EETHHyperdriveDeployerCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ca2f...4a11fb` | ⚠️ Unaudited |
| EETHTarget0Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81a4b3...2c1047` | ⚠️ Unaudited |
| EETHTarget1Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69fb6a...5dd37f` | ⚠️ Unaudited |
| EETHTarget2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e3ea1...3370b1` | ⚠️ Unaudited |
| EETHTarget3Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7a4ea...7650cf` | ⚠️ Unaudited |
| EETHTarget4Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014cf9...7fe1f7` | ⚠️ Unaudited |
| ERC20ForwarderFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235066 | `0x08b406...a199d2` | ⚠️ Unaudited |
| ERC4626HyperdriveCoreDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dcac7...c81289` | ⚠️ Unaudited |
| ERC4626HyperdriveDeployerCoordinator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235067 | `0x0ebbb7...a633c9` | ⚠️ Unaudited |
| ERC4626Target0Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bbf07...b7e701` | ⚠️ Unaudited |
| ERC4626Target1Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068d52...382426` | ⚠️ Unaudited |
| ERC4626Target2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fb305...ea03fd` | ⚠️ Unaudited |
| ERC4626Target3Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235065 | `0x01f06f...e624b1` | ⚠️ Unaudited |
| ERC4626Target4Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fb70c...238ccb` | ⚠️ Unaudited |
| EzETHHyperdriveCoreDeployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235074 | `0x82629d...98a1f3` | ⚠️ Unaudited |
| EzETHHyperdriveDeployerCoordinator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235075 | `0x95b379...85349b` | ⚠️ Unaudited |
| EzETHTarget0Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68ba94...b5562b` | ⚠️ Unaudited |
| EzETHTarget1Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7c320...816d76` | ⚠️ Unaudited |
| EzETHTarget2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d6d5d...71b87b` | ⚠️ Unaudited |
| EzETHTarget3Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235077 | `0xc0dc10...4f0fb3` | ⚠️ Unaudited |
| EzETHTarget4Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235073 | `0x6940c1...0ff3ac` | ⚠️ Unaudited |
| HyperdriveFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235082 | `0xf95b98...2dc488` | ⚠️ Unaudited |
| HyperdriveRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-235083 | `0x666fa9...c59666` | ⚠️ Unaudited |
| HyperdriveRoycoHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0b60c...615440` | ⚠️ Unaudited |
| RETHHyperdriveCoreDeployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235070 | `0x3df847...ef931d` | ⚠️ Unaudited |
| RETHHyperdriveDeployerCoordinator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235072 | `0x6027d5...87ff2e` | ⚠️ Unaudited |
| RETHTarget0Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02d668...f1e9ee` | ⚠️ Unaudited |
| RETHTarget1Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235071 | `0x5718e9...4824ef` | ⚠️ Unaudited |
| RETHTarget2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2f4c...c39719` | ⚠️ Unaudited |
| RETHTarget3Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235079 | `0xd25987...278bee` | ⚠️ Unaudited |
| RETHTarget4Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a2f15...8c1fbd` | ⚠️ Unaudited |
| StETHHyperdriveCoreDeployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235081 | `0xe8dc50...823540` | ⚠️ Unaudited |
| StETHHyperdriveDeployerCoordinator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235068 | `0x23dd1c...465239` | ⚠️ Unaudited |
| StETHTarget0Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235080 | `0xe0da47...d91327` | ⚠️ Unaudited |
| StETHTarget1Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235069 | `0x279c05...3d7c08` | ⚠️ Unaudited |
| StETHTarget2Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235078 | `0xca76fd...d784b5` | ⚠️ Unaudited |
| StETHTarget3Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235076 | `0xb274f4...18f6ea` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (94)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x0399bb...72513e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x03f655...4b837a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x042576...0cc061` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x0956d4...e80c02` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x160d55...862b6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x183ce2...3b062d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1a02bf...c58d4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1be314...d911d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1ec256...f38f89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1f5625...0bf95d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x21a53e...599502` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x238417...cfc2af` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x29a093...c23754` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x29c2b9...bc216c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2c1100...f52acb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2d9a09...dda156` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2e1f6d...82247e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2ec1d7...5eacdb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x340b78...a17f26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x388665...6bcee4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x3c2b92...d07634` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x3d42fa...9e9a4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x467abc...cd361d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x4713c8...efc338` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x48f922...e5f1f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x51c054...2473d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x548c02...e63cda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x54a939...ddf278` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x58f3c3...1a6cec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x5b3b40...f50c43` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x5b7a46...306917` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x5ff812...a1257e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x63f508...1a3fb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6511a6...fee0c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6680bd...264468` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x67323c...7fa22c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6b2e8d...a7408d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7002c8...fb18f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x711167...eda52a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x73055b...8ab271` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x787ba0...f069ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7c485f...963c32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7f90dc...38f762` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x82089f...862bdc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x83ae36...32da40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x86695a...33b987` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x87621c...53d34c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x883edb...416f29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8dc765...66e0b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8dfc7c...ca2ce8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x90598c...e22d49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x93232b...6c5c3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x942de6...e75b25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x983fd4...bfff54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x9998fd...cac527` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa12734...c3be1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa3ec1f...e8a3c6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa7b7aa...c0b872` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa95a24...bbba9d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xaa3dac...f606e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xae7ebd...d16ce5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb160a4...32c3bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb2a1f3...437252` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb59b98...89bb91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb739a4...57eee2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb8f987...18d876` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xbdf7fa...6464b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc1c6e3...f35ac8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc63f0c...341467` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc7cb71...f13cd3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc887a1...2a903d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xcac763...af2d0c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xcd0cf4...015ee4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xcdb48b...e95d36` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd14841...1a3d1e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd4dd5e...8aa420` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd55162...bc3f9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd599ed...bf2000` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd99b13...4c3474` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xdd0d63...c80e4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xdd343b...76e559` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe13cc3...8da0c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe352f4...f35f4b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe8b99b...0a0513` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe98e41...4cb2eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xed10e0...af027e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xee0d4b...da56a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf17392...c4a9f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf345d3...37188b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf6d23a...b865e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf73d5b...5ea356` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf76150...be3f72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xfa8db2...c5a5e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xff8afe...1201df` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [certora-08-2023.pdf](https://github.com/delvtech/hyperdrive/blob/main/audits/certora-08-2023.pdf) | Certora | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [chainsafe-06-2023.pdf](https://github.com/delvtech/hyperdrive/blob/main/audits/chainsafe-06-2023.pdf) | ChainSafe | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [spearbit-02-2024.pdf](https://github.com/delvtech/hyperdrive/blob/main/audits/spearbit-02-2024.pdf) | Spearbit | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |
| [spearbit-03-2024.pdf](https://github.com/delvtech/hyperdrive/blob/main/audits/spearbit-03-2024.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 72 | high |
| [spearbit-06-2023.pdf](https://github.com/delvtech/hyperdrive/blob/main/audits/spearbit-06-2023.pdf) | Spearbit | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 31 | medium |
| [spearbit-06-2024.pdf](https://github.com/delvtech/hyperdrive/blob/main/audits/spearbit-06-2024.pdf) | Spearbit | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | medium |
| [Runtime_Verification_Security_Audit_Report.pdf](https://github.com/delvtech/elf-contracts/blob/main/audits/Runtime_Verification_Security_Audit_Report.pdf) | Runtime Verification | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [PeckShield-Audit-Report.pdf](https://github.com/delvtech/elf-contracts/blob/main/audits/PeckShield-Audit-Report.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Element_ChainSafe_Council_Audit_October_2021.pdf](https://github.com/delvtech/council/blob/main/audits/Element_ChainSafe_Council_Audit_October_2021.pdf) | ChainSafe | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf](https://github.com/delvtech/council/blob/main/audits/Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf) | Runtime Verification | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19693] certora-08-2023.pdf — no match: All contracts listed in the scope section of the report were extracted. The audit date is from the cover page: 08.08.2023.
- [19694] chainsafe-06-2023.pdf — no match: Contracts extracted from findings sections referencing specific .sol files. Audit date inferred from 'June 2023' in header.
- [19695] spearbit-02-2024.pdf — no match: Extracted contract names from file paths and context references in findings. Audit date from report preparation date.
- [19696] spearbit-03-2024.pdf — no match: Extracted contract names from findings context and file paths mentioned throughout the report. No explicit scope section found; the report lists findings for many contracts. Audit date from report preparation date.
- [19697] spearbit-06-2023.pdf — no match: The report does not have a dedicated scope section; contract names were extracted from findings context and file paths mentioned throughout the report. The audit date is from the report preparation date on the cover page.
- [19698] spearbit-06-2024.pdf — no match: No explicit scope section found; contract names extracted from finding contexts and file paths mentioned in the report.
- [19699] Runtime_Verification_Security_Audit_Report.pdf — no match: Audit report for Element Finance, delivered April 26, 2021. Scope explicitly lists 9 core contracts.
- [19700] PeckShield-Audit-Report.pdf — no match: Extracted contract names from findings and scope description. Audit date from cover page and version history.
- [19701] Element_ChainSafe_Council_Audit_October_2021.pdf — no match: Report title indicates October 2021; 16 contracts in scope, 13 explicitly named in line-by-line review.
- [19702] Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf — no match: Scope section explicitly lists 16 contract source files. Audit date from cover page: 'Delivered: October 15th, 2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| certora-08-2023.pdf | AaveHyperdriveDeployer | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | DsrHyperdriveDeployer | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | ERC4626HyperdriveDeployer | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | HyperdriveFactory | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | StethHyperdriveFactory | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | AaveHyperdriveFactory | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | DsrHyperdriveFactory | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | ERC4626HyperdriveFactory | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | StethHyperdriveDeployer | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | AaveHyperdrive | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | DsrHyperdrive | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | ERC4626DataProvider | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | StethHyperdrive | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | AaveHyperdriveDataProvider | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | DsrHyperdriveDataProvider | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | ERC4626Hyperdrive | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | StethHyperdriveDataProvider | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | AssetId | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | FixedPointMath | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | HyperdriveMath | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | YieldSpaceMath | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | BondWrapper | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | ERC20Forwarder | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | ForwarderFactory | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | MultiToken | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | MultiTokenDataProvider | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | MultiTokenStorage | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | DataProvider | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | HyperdriveDataProvider | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | HyperdriveShort | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | Hyperdrive | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | HyperdriveLP | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | HyperdriveStorage | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | HyperdriveBase | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | HyperdriveLong | unmatched — not counted | — | listed in scope | no |
| certora-08-2023.pdf | HyperdriveTWAP | unmatched — not counted | — | listed in scope | no |
| chainsafe-06-2023.pdf | HyperdriveFactory | unmatched — not counted | — | mentioned in findings | no |
| chainsafe-06-2023.pdf | DSRHyperdriveFactory | unmatched — not counted | — | mentioned in findings | no |
| chainsafe-06-2023.pdf | AaveHyperdrive | unmatched — not counted | — | mentioned in findings | no |
| chainsafe-06-2023.pdf | DsrHyperdrive | unmatched — not counted | — | mentioned in findings | no |
| chainsafe-06-2023.pdf | AaveHyperdriveDataProvider | unmatched — not counted | — | mentioned in findings | no |
| chainsafe-06-2023.pdf | ERC20Permit | unmatched — not counted | — | mentioned in findings | no |
| chainsafe-06-2023.pdf | BondWrapper | unmatched — not counted | — | mentioned in findings | no |
| chainsafe-06-2023.pdf | HyperdriveDataProvider | unmatched — not counted | — | mentioned in findings | no |
| chainsafe-06-2023.pdf | HyperdriveLP | unmatched — not counted | — | mentioned in findings | no |
| chainsafe-06-2023.pdf | HyperdriveTWAP | unmatched — not counted | — | mentioned in findings | no |
| chainsafe-06-2023.pdf | DsrHyperdriveDataProvider | unmatched — not counted | — | mentioned in findings | no |
| spearbit-02-2024.pdf | Hyperdrive | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveLP | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveShort | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveLong | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveCheckpoint | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveBase | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveMath | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | LPMath | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | YieldSpaceMath | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | FixedPointMath | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | AssetId | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveFactory | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveDeployerCoordinator | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveAdmin | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveMultiToken | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveTarget0 | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveTarget1 | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveTarget2 | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveTarget3 | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | HyperdriveTarget4 | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | StETHBase | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | StETHHyperdriveCoreDeployer | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | StETHTarget0Deployer | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | StETHTarget1Deployer | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | StETHTarget2Deployer | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | StETHTarget3Deployer | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | StETHTarget4Deployer | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | ERC4626HyperdriveDeployerCoordinator | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | ERC4626Base | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | ERC20Forwarder | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | IMultiTokenMetadata | unmatched — not counted | — | listed in scope | no |
| spearbit-02-2024.pdf | IERC20Forwarder | unmatched — not counted | — | listed in scope | no |
| spearbit-03-2024.pdf | HyperdriveDeployerCoordinator | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626HyperdriveDeployerCoordinator | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626HyperdriveCoreDeployer | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626Target0Deployer | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626Target1Deployer | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626Target2Deployer | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626Target3Deployer | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626Target4Deployer | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveFactory | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626Target0 | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626Target1 | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626Target2 | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626Target3 | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626Target4 | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | IERC20 | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | IERC4626 | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | IERC4626Hyperdrive | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | IHyperdrive | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | IHyperdriveDeployerCoordinator | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | AssetId | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | FixedPointMath | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveMath | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC20ForwarderFactory | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC20Mintable | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | MockERC4626 | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | MockERC4626Hyperdrive | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveTest | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveUtils | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626HyperdriveTest | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | LPMath | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveLP | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | YieldSpaceMath | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveAdmin | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | SafeCast | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | RETHBase | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | RETHHyperdriveDeployerCoordinator | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | StETHBase | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | EzETHHyperdriveDeployerCoordinator | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | LsETHHyperdriveDeployerCoordinator | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | EzETHHyperdriveCoreDeployer | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | LsETHHyperdriveCoreDeployer | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | LsETHTarget0Deployer | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | LsETHTarget1Deployer | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | LsETHTarget2Deployer | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | LsETHTarget3Deployer | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | LsETHTarget4Deployer | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | EzETHBase | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | LsETHBase | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626Base | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | ERC4626Hyperdrive | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | EzETHHyperdrive | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | LsETHHyperdrive | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | RETHHyperdrive | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | StETHHyperdrive | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveBase | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveCheckpoint | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveLong | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveShort | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveMultiToken | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveStorage | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveTarget0 | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveTarget1 | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveTarget2 | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveTarget3 | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | HyperdriveTarget4 | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | IHyperdriveEvents | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | IHyperdriveCore | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | IHyperdriveRead | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | IMultiTokenCore | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | Errors | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | MockMultiToken | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-03-2024.pdf | MockHyperdriveBase | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-06-2023.pdf | HyperdriveLP | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | HyperdriveShort | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | StEthHyperdrive | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | HyperdriveMath | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | HyperdriveLong | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | Hyperdrive | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | HyperdriveBase | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | HyperdriveFactory | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | HyperdriveDataProvider | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | HyperdriveTWAP | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | HyperdriveStorage | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | MultiToken | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | MultiTokenDataProvider | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | MultiTokenStorage | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | BondWrapper | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | ERC4626DataProvider | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | ERC4626Hyperdrive | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | ERC4626HyperdriveFactory | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | ERC4626HyperdriveDeployer | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | AaveHyperdrive | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | AaveHyperdriveFactory | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | DsrHyperdrive | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | DsrHyperdriveDataProvider | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | StethHyperdriveDataProvider | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | FixedPointMath | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | YieldSpaceMath | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | AssetId | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | Errors | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | IHyperdrive | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | EmissionManager | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2023.pdf | ERC20Forwarder | unmatched — not counted | — | mentioned in findings context | no |
| spearbit-06-2024.pdf | HyperdriveBase | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-06-2024.pdf | HyperdriveLP | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-06-2024.pdf | HyperdriveMath | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-06-2024.pdf | HyperdriveLong | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-06-2024.pdf | HyperdriveShort | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-06-2024.pdf | HyperdriveCheckpoint | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-06-2024.pdf | FixedPointMath | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-06-2024.pdf | LPMath | unmatched — not counted | — | mentioned in finding context | no |
| spearbit-06-2024.pdf | IHyperdriveCheckpointRewarder | unmatched — not counted | — | mentioned in finding context | no |
| Runtime_Verification_Security_Audit_Report.pdf | ConvergentCurvePool | unmatched — not counted | — | listed in scope | no |
| Runtime_Verification_Security_Audit_Report.pdf | InterestToken | unmatched — not counted | — | listed in scope | no |
| Runtime_Verification_Security_Audit_Report.pdf | Tranche | unmatched — not counted | — | listed in scope | no |
| Runtime_Verification_Security_Audit_Report.pdf | UserProxy | unmatched — not counted | — | listed in scope | no |
| Runtime_Verification_Security_Audit_Report.pdf | WrappedPosition | unmatched — not counted | — | listed in scope | no |
| Runtime_Verification_Security_Audit_Report.pdf | YVaultAssetProxy | unmatched — not counted | — | listed in scope | no |
| Runtime_Verification_Security_Audit_Report.pdf | ConvergentPoolFactory | unmatched — not counted | — | listed in scope | no |
| Runtime_Verification_Security_Audit_Report.pdf | InterestTokenFactory | unmatched — not counted | — | listed in scope | no |
| Runtime_Verification_Security_Audit_Report.pdf | TrancheFactory | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report.pdf | WrappedPosition | unmatched — not counted | — | Mentioned in finding PVE-001: WrappedPosition::deposit() | no |
| PeckShield-Audit-Report.pdf | Tranche | unmatched — not counted | — | Mentioned in finding PVE-001: Tranche::deposit() | no |
| PeckShield-Audit-Report.pdf | InterestToken | unmatched — not counted | — | Mentioned in finding PVE-002: Non-Compliant ERC20 Implementation Of Tranche And InterestToken | no |
| PeckShield-Audit-Report.pdf | UserProxy | unmatched — not counted | — | Mentioned in findings PVE-001, PVE-003, PVE-004: UserProxy::mint(), recoverERC20() | no |
| PeckShield-Audit-Report.pdf | YVaultAssetProxy | unmatched — not counted | — | Mentioned in finding PVE-001: YVaultAssetProxy::reserveDeposit(), reserveWithdraw() | no |
| PeckShield-Audit-Report.pdf | ConvergentPoolFactory | unmatched — not counted | — | Mentioned in finding PVE-005: ConvergentPoolFactory::create() | no |
| PeckShield-Audit-Report.pdf | ConvergentCurvePool | unmatched — not counted | — | Mentioned in finding PVE-005: constructor registers pool | no |
| PeckShield-Audit-Report.pdf | ERC20Permit | unmatched — not counted | — | Mentioned in finding PVE-002: base contract for Tranche and InterestToken | no |
| PeckShield-Audit-Report.pdf | PoolRegistry | unmatched — not counted | — | Mentioned in finding PVE-005: registerPool() function | no |
| Element_ChainSafe_Council_Audit_October_2021.pdf | OptimisticGrants | unmatched — not counted | — | mentioned in line-by-line review | no |
| Element_ChainSafe_Council_Audit_October_2021.pdf | Treasury | unmatched — not counted | — | mentioned in line-by-line review | no |
| Element_ChainSafe_Council_Audit_October_2021.pdf | History | unmatched — not counted | — | mentioned in line-by-line review | no |
| Element_ChainSafe_Council_Audit_October_2021.pdf | VestingVaultStorage | unmatched — not counted | — | mentioned in line-by-line review | no |
| Element_ChainSafe_Council_Audit_October_2021.pdf | GSCVault | unmatched — not counted | — | mentioned in line-by-line review | no |
| Element_ChainSafe_Council_Audit_October_2021.pdf | LockingVault | unmatched — not counted | — | mentioned in line-by-line review | no |
| Element_ChainSafe_Council_Audit_October_2021.pdf | OptimisticRewards | unmatched — not counted | — | mentioned in line-by-line review | no |
| Element_ChainSafe_Council_Audit_October_2021.pdf | VestingVault | unmatched — not counted | — | mentioned in line-by-line review | no |
| Element_ChainSafe_Council_Audit_October_2021.pdf | CoreVoting | unmatched — not counted | — | mentioned in line-by-line review | no |
| Element_ChainSafe_Council_Audit_October_2021.pdf | Spender | unmatched — not counted | — | mentioned in line-by-line review | no |
| Element_ChainSafe_Council_Audit_October_2021.pdf | Authorizable | unmatched — not counted | — | mentioned in line-by-line review | no |
| Element_ChainSafe_Council_Audit_October_2021.pdf | MerkleRewards | unmatched — not counted | — | mentioned in line-by-line review | no |
| Element_ChainSafe_Council_Audit_October_2021.pdf | SimpleProxy | unmatched — not counted | — | mentioned in line-by-line review | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | CoreVoting | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | SimpleProxy | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | GSCVault | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | LockingVault | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | OptimisticRewards | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | VestingVault | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | Airdrop | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | OptimisticGrants | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | Spender | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | Timelock | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | Treasury | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | Authorizable | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | History | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | MerkleRewards | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | Storage | unmatched — not counted | — | listed in scope | no |
| Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf | VestingVaultStorage | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 94 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 240 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, medium=2
- Match method counts: n/a

Zero-match audit list:

- [19693] certora-08-2023.pdf
- [19694] chainsafe-06-2023.pdf
- [19695] spearbit-02-2024.pdf
- [19696] spearbit-03-2024.pdf
- [19697] spearbit-06-2023.pdf
- [19698] spearbit-06-2024.pdf
- [19699] Runtime_Verification_Security_Audit_Report.pdf
- [19700] PeckShield-Audit-Report.pdf
- [19701] Element_ChainSafe_Council_Audit_October_2021.pdf
- [19702] Element_Finance_RuntimeVerification_Governance_Security_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
