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
| EETHHyperdriveCoreDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a94527ff10858228d8c96d13f235ff0710c2e0` | ⚠️ Unaudited |
| EETHHyperdriveDeployerCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ca2fc7c6c241aa66e4cbc750895c92f94a11fb` | ⚠️ Unaudited |
| EETHTarget0Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81a4b3439430971bb23473d036dab1efd72c1047` | ⚠️ Unaudited |
| EETHTarget1Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69fb6a96b69c7bf4ffbdc056dc7b71fa835dd37f` | ⚠️ Unaudited |
| EETHTarget2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e3ea168287ac8e4c6fb8fe66dc171560b3370b1` | ⚠️ Unaudited |
| EETHTarget3Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7a4eab5fa48cd17d4f2c8180a1cdc5fc97650cf` | ⚠️ Unaudited |
| EETHTarget4Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014cf9e55a9ddf075b4780d3addae7873e7fe1f7` | ⚠️ Unaudited |
| ERC20ForwarderFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235066 | `0x08b40647714ac1e5742633fc2d83c20d61a199d2` | ⚠️ Unaudited |
| ERC4626HyperdriveCoreDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dcac79c73ca892d5872e5d8cb3ff43db0c81289` | ⚠️ Unaudited |
| ERC4626HyperdriveDeployerCoordinator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235067 | `0x0ebbb7e85337cf4ed496dd81a300c6c31ba633c9` | ⚠️ Unaudited |
| ERC4626Target0Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bbf0716fb1ac91169b0dbecff232c7bf1b7e701` | ⚠️ Unaudited |
| ERC4626Target1Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068d5258f54b462de4240547dca0f1fce6382426` | ⚠️ Unaudited |
| ERC4626Target2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fb305a458b1008faee03147b700b3975bea03fd` | ⚠️ Unaudited |
| ERC4626Target3Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235065 | `0x01f06f23d684d2beacb4dc9dcb4bd27a3fe624b1` | ⚠️ Unaudited |
| ERC4626Target4Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fb70c3de906eddab929b5d288b638adb5238ccb` | ⚠️ Unaudited |
| EzETHHyperdriveCoreDeployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235074 | `0x82629da7b2c14933982e5de9ff97f505ff98a1f3` | ⚠️ Unaudited |
| EzETHHyperdriveDeployerCoordinator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235075 | `0x95b379ad131412e702cc6c9a52bcaaf07785349b` | ⚠️ Unaudited |
| EzETHTarget0Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68ba944d89d7481f3a9d73dcb75b7e6c7db5562b` | ⚠️ Unaudited |
| EzETHTarget1Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7c320cef81f0f9abb726590ef5105f551816d76` | ⚠️ Unaudited |
| EzETHTarget2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d6d5d48f881bcccd6c09256724692b3a971b87b` | ⚠️ Unaudited |
| EzETHTarget3Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235077 | `0xc0dc10957777ba5aaeec5d1df351a5bea64f0fb3` | ⚠️ Unaudited |
| EzETHTarget4Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235073 | `0x6940c108b1bee27600e8bb46d9710b46f60ff3ac` | ⚠️ Unaudited |
| HyperdriveFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235082 | `0xf95b98256edb861be389b9807f6656e8be2dc488` | ⚠️ Unaudited |
| HyperdriveRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-235083 | `0x666fa9ef9bca174a042c4c306b23ba8ee0c59666` | ⚠️ Unaudited |
| HyperdriveRoycoHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0b60cafe428bca732f016ed853a77d621615440` | ⚠️ Unaudited |
| RETHHyperdriveCoreDeployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235070 | `0x3df8476a3fdf2636dcf47b1e066f7691f9ef931d` | ⚠️ Unaudited |
| RETHHyperdriveDeployerCoordinator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235072 | `0x6027d51985cf01f5df8fb2bb56ea0e69a487ff2e` | ⚠️ Unaudited |
| RETHTarget0Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02d668b32fc23f223464f3daf9df6e518cf1e9ee` | ⚠️ Unaudited |
| RETHTarget1Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235071 | `0x5718e9228e4582076fc514ba329203518e4824ef` | ⚠️ Unaudited |
| RETHTarget2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2f4c0360ae5cf7a0e655dd1a002a142ac39719` | ⚠️ Unaudited |
| RETHTarget3Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235079 | `0xd259875f89ca9db95974d06a6cd6d92195278bee` | ⚠️ Unaudited |
| RETHTarget4Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a2f15a6941d13719abae15c03dde580098c1fbd` | ⚠️ Unaudited |
| StETHHyperdriveCoreDeployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235081 | `0xe8dc5073b02d062388db8e50762a8c9a1c823540` | ⚠️ Unaudited |
| StETHHyperdriveDeployerCoordinator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235068 | `0x23dd1c32c7f14deca77d4b0f1b818fa181465239` | ⚠️ Unaudited |
| StETHTarget0Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235080 | `0xe0da47a1a6ceb80bb945652cb96a821fa5d91327` | ⚠️ Unaudited |
| StETHTarget1Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235069 | `0x279c0504575639131be082923c21289d553d7c08` | ⚠️ Unaudited |
| StETHTarget2Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235078 | `0xca76fd3033fa9f754c05844773d79c193ad784b5` | ⚠️ Unaudited |
| StETHTarget3Deployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-235076 | `0xb274f4fcc2b391e0dfabfbe7b7c130447018f6ea` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x0399bba8de5959007148a95adaad04ea3172513e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x03f6554299acf544ac646305800f57db544b837a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x042576cf0e3e75bdebe4bd5482a7d298020cc061` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x0956d46d0bff881cd02fe80ea04fce7b33e80c02` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x160d55b218c38a9114f52bb1f5b90a180d862b6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x183ce2ad3be9ce74bc0089c89c552fc34d3b062d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1a02bf8f3897cd671e3cd147997f81b011c58d4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1be314fb8e5f331bda4c350215dc616e75d911d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1ec2562c37def8fa507c4fbae76580bf7cf38f89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1f5625b9d2b1c02b06bca6f95bee71b9700bf95d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x21a53e18d907f9727b5ed99e4c04f8477c599502` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x23841713b4fb268ccec3fd9ca231fa2116cfc2af` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x29a09380be010f9b4321cd09b640fc2390c23754` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x29c2b979380b4f149bd6251dcc0f7419d4bc216c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2c1100be8d1a00731fee91bb2672f3f9a9f52acb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2d9a09eff180e0efb0e419fd8a9d8cb442dda156` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2e1f6df541c57c5f87e29af81be30de07182247e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2ec1d79527d594f82cf3ec0ba06e40634c5eacdb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x340b785817ba1180a9b89eace04552dbd5a17f26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x38866504ff4ced0b520a08541128fdf6456bcee4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x3c2b92f4ec8bbe03b6a3f9974abad2d497d07634` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x3d42faab135ceba153074fd6150350ce4c9e9a4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x467abc288d950f589513f133eb76a3ab4acd361d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x4713c86d0e467064a4cd2a974b7fda79f7efc338` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x48f922417b6171c82954de826f43beabbbe5f1f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x51c054f75b2c4b53e8e5114430c3ded4572473d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x548c02b776573d5fef529f6610f962a7b8e63cda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x54a93937ee00838d659795b9bbbe904a00ddf278` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x58f3c3a3b7d882b769f98ac76699aca7391a6cec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x5b3b408cd8db05d922a41ef481089a285cf50c43` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x5b7a46f6040c9f2a6ed5ce27ab4cc7adb8306917` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x5ff81275b481baef0e34d1118137248b7fa1257e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x63f5084182194e3c7477e6041681ee75661a3fb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6511a69918dae90aff82994b952c97c6fffee0c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6680bd54216fa325a764b66a530c7d126f264468` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x67323c1ca721034a20a96badad218b22647fa22c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6b2e8de070c4aaa9abbb6153daceeb4ef5a7408d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7002c811d18199435bd7ff60923ffcf6d8fb18f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7111675bed3a26025cc01b1fb780a0bd0aeda52a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x73055bdd28574ac4dfd2c2c4838e7bf70c8ab271` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x787ba0cc2e05fda879339bd50e6a308fedf069ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7c485f458ad1f32ff66bc45306fd32974c963c32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7f90dc0dd4258feba19122f8b24cf398d938f762` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x82089fdfdbdeb89f208fec03c1ca5122d6862bdc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x83ae36fb98233ef3ffff9e9bc97c1ff97b32da40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x86695a49d4ebcbb69ab8f540a5bf24e7c333b987` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x87621c072b1967730b70f4c0536d739c2053d34c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x883edb27c198671cee5921a02abf74b541416f29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8dc765674de5b59570250f990e63d0555766e0b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8dfc7c74331162fe2fcc2ee83173d806e4ca2ce8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x90598c248110cb0bf413883751392e5b97e22d49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x93232b38a43cd32d3fede2f5ac4ee7a9f16c5c3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x942de6161dce6b216eab2b0fb07a4cab01e75b25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x983fd44ef8c551abfb1748be485c5d047ebfff54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x9998fdd2a9fbc30d0537b01d6e068117dacac527` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa12734165a3ac5726dfa0f0c3fe7d55860c3be1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa3ec1f24fe8bc863d989d930c6876a621ae8a3c6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa7b7aab0154611062fd98694df101448c2c0b872` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa95a24160b29925035c0e76c34caa1c177bbba9d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xaa3dacae44d750386af9227469f02c571ef606e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xae7ebd75a14c79998da05d6d5dd7b1d758d16ce5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb160a49c99c8e579f761b20654ef6b490e32c3bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb2a1f3703ba511dccf12445f161397ed7c437252` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb59b98209e82fc0549bb2572809b7cd10289bb91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb739a49da1c748e540efa2d32920624fad57eee2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb8f9876f10524c7b5cbdbbfac0409a77a518d876` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xbdf7facd9620c33bbd0d0c819cfb516c476464b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc1c6e3407b519d1b1e8900f402a8ede313f35ac8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc63f0c07646c382b73f22e196ad828b003341467` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc7cb718d5f1c5b4839045aed2620fabc1cf13cd3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc887a1768d55c316662b309484aa636c0f2a903d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xcac763721928802343d799adfec3fca776af2d0c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xcd0cf4d0405be6ae834c295f3d89e3b75b015ee4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xcdb48bb065c12aea6aa7693b718fc2d1d8e95d36` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd14841f978861f516801d074e2a435b3221a3d1e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd4dd5e37303385ec186660158ae1e2b1cd8aa420` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd55162f1f68fb42f6e5cf49d9ce20ed05bbc3f9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd599edcf942331c0c2e9c091f2f3320daabf2000` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd99b130e34d4df9ed1ebe3ab56430598074c3474` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xdd0d63e304f3d9d9e54d8945be95011867c80e4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xdd343b97baed73b233dc9b61d61edae9a276e559` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe13cc3c62dab269693980abdad696a05fd8da0c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe352f4d16c7ee4162d1aa54b77a15d4da8f35f4b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe8b99bf4249d90c0eb900651f92485f7160a0513` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe98e41c06764cc7338a3a2c32785666c4e4cb2eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xed10e02e38af2e98ffe6c40981ee0040a5af027e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xee0d4b4c97dff995d39b868f823686f8d4da56a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf17392948e48c45bd6664db0aee397fb80c4a9f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf345d3ba1bcf850d4801b89cd48f28552437188b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf6d23ac1e41ed1b5dc9fb43c719022fb8db865e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf73d5b53af7867d08927b48677957bc4165ea356` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf76150c8656de60e62d60013c2faebcad3be3f72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xfa8db2177f1e1ee4327c9b9d1389b1173bc5a5e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xff8afe6bb92eb9d8e80c607bbe5bbb78bf1201df` | ❓ Unverified |

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
