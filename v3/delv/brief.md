# Agentic Audit Brief: DELV

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 10 (0 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: DELV (`delv`)
- Website: [https://delv.tech/](https://delv.tech/)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, gnosis, linea, sepolia
- Contract surface: 371 unique implementations (371 raw deployments)
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

The pinned logic-topography run contains 19 contract row(s) across base, ethereum, gnosis, linea, sepolia. Structural roles: 12 supporting, 7 core. No upgradeable pattern was identified in these rows.

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
- Address-book implementation classification: 0 own, 352 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 333
- Unique implementations: 371
- Raw deployments: 371
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

### ❓ Unverified (333)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x00a3093d7f16c8cd58bb0bdc9f998b8389182b4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x05890fac1b957b48a4f74d6fe74cf76c92389b17` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x05b65fa90ad702e6fd0c3bd7c4c9c47bab2bea6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x080fc6a0e66502c6e15f0f3200c87c83b9461400` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0b854187370c558682dd56d97d3114ef8bcee719` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0e8d8c4ae326084cc9ddacc2e65f28b31089be2d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0eb8ae3dc4b606fc047a0f9bfec51ade7cc5c378` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x12a860db0b8928da0c0b64b5ce51a524c3a40e13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x13c486ec46eb5cd39e98f9bdd870fd0257527119` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1a4cee4e32ea51ec7671a0fd7333ca64fbf004f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1d9baada79d2c8b9da96438d3054c2c689132f7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1dcacd117101161d4beb63f61443fa03059ae9dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x230c708944e0ce1fc470265628d3c64ecf7581f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x2964ad2bb498bb0f4da19bf74287a522f78ef953` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x324395d5d835f84a02a75aa26814f6fd22f25698` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x3837024d7b9d4a60514bb9f7cb9d9493e29656fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x3fbb025e081c9c0afed8ef596e40d345345f4e81` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x413d8f7559e37860757f4b0b539afd2ac48cda90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x463ba5f41413b5f318fbf6256c8aa78e5d382455` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4c3054e51b46be3191be9a05e73d73f1a2147854` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x56568eb63e1b0dde1adccf60fa370d051bfdf89f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x58405eaa12c9d7075e7b7938f3ddffb2e0427f13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5dc40e5efe347f6379517124f5bbc2ab826f55d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5e723b39ca597ae3b08a6fa6836b3c605f37c3f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x67a48daf2f6e183a992647d685298a3a144af8ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x686ffbdd397de6b2fff855b1bed53947da673f4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6a05c863cb7858d196a4f5c83876a8bef3b96820` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x72f88ba5dd6cf894a7367010c54eddb5e208ce45` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7548c4f665402bab3a4298b88527824b7b18fe27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x78beeccfeedb99a1a461619c84cc7be78c97de70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7b5ce2411fcf3d06e9e60bde66cc8ee869ff13b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8015beb77685a583751b411f896a8aca05044aa7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x83cfd1fb412d0b4ab5c4852f3faf990d63cc760a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x87a9305ad62e72ea7504b0b0029ba832a61d4df6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x891b96005e5ee58d802878bfcfcc12ed88219470` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8c6603500d8dfd110283db082e329d2165005aa7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8c7f97820db3b84ee57e1c45fa6445019d5aaf37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8f2ac104e07d94488a1821e5a393351fca9239aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x93ed390c959b561e98a2343a74bccd7a77ae5dc8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x948860043742b53f73742c981aebb2242ed0e707` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x94da7f7fefdb53daa5abe4a430c6e43686807f80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x97926f0c898adbc2fb4246c64403c2947408d6da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9a70e96309d62a7c1c16ad9ba1f36bdee6823c89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9aa89a768e642a9d4ce0c8d0ebfc2dc051f55289` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9f0fa40a785da114ff38b3c92aa2f2a2a56e469a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa29a771683b4857bbd16e1e4f27d5b6bff53209b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa4090183878d5b7b6ad104863743dd7e58985321` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa62de3ff524502e3ac3d3bca4fea32defa3c37b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa74b93bb431f159fa3e2b624abb8eaf0a2fbba56` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa7f4fa98e61cca63130b66699620bd80ccdbe5b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xaa7fe6c0ec2f339ab829622926a8b61ea635662d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xaa8a28ea55ee5c4974a2eabdfcc7b965718bd243` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xab5bc66a72884fd6e9adbe7ebda605146515db14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xabbb2a6789b1e5376d803cbcf80c7659fa610abe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb024d78b3c33bee494c3802bb3c82969b5e67881` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb30736fa300e8673e7df91f6dcd999b460e5585c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb83c81797c7036479fe1bebafeff1a7490126af0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb9c9f11351600e75ad2daea0ce1c94d374e55a11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbb170c562d46ce71dac431c4849cbe9d6cebf326` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbe082293b646cb619a638d29e8eff7cf2f46aa3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc409e9faf2f6cfc7a9c90ccc63f0450c66fdc8aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc524e22306205e3f5290be51784b358876400ec5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc7e168d81efd3d0b2fe17aa8ea15d0a1dd376acc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc81b84995414bdc462da45b9a16e3f71e1ed860d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xca5db9bb25d09a9bf3b22360be3763b5f2d13589` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcd51526c7169652f8380095b338afc1557bda155` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcec152d19982ef88e69f538f5a7d06a38ca8773e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd41225855a5c5ba1c672ccf4d72d1822a5686d30` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd52688318f8dd75a08a708e1a2fcb8a7b8419461` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd7e470043241c10970953bd8374ee6238e77d735` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdde9eac01f5895055c9078c4044689c552f1e12f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xde7f1e3f02018169ef24622400933b7eff44ae2d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdf5d682404b0611f46f2626d9d5a37eb6a6fd27d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe0d88c12fbde02bf2675eb27da2afe68e16a74d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe299a8c26bf6a7958f1a0aa8ea6fee9b8ede1df9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe30bf456cd0697365ea786729eeb082239dad64e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe549bac862a408294df78c6ca7b89d75e8582147` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe6aa85faa591650bb7ec6b53d68b39b66bc74441` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe71747db194a3c8d56b548e8a432198e8e4ee30d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe841b3f7864ba9d13726aa2ee2027a2e0e486b55` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf1232dc21eadaf503d82f1e1361cff2bbf40394d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf129352f6a592bece51122bd5c2d087f286cd1ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf51f3013146f6db636f54d5bb09b90e61df0cb29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xfc91a2083ba5067165d5ecd632465a8b514b2b9c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xfd892a8581184288f32d71238c95fb95b6fdb5de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x068d5258f54b462de4240547dca0f1fce6382426` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x08b40647714ac1e5742633fc2d83c20d61a199d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x0da0ab9296f45cbd694875a6fdf8e14c16b79ce1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x0fb305a458b1008faee03147b700b3975bea03fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x11505124bd6b77bee2bbcce19f2999055f953c87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x121439b3a97dc7ccbdedd352096aaef740f42c54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x174d04d254f9b7d85da3e80b09ad24034e47151a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x2bbf0716fb1ac91169b0dbecff232c7bf1b7e701` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x2e54eba93f35817ce75090ae6f026e138b4549cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x2f840f1575ee77adaa43415ac5953f7db9f8c6ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x68ba944d89d7481f3a9d73dcb75b7e6c7db5562b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x70dfef2aa019486a9e938888b67bf78e41f3b16b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x77644b188a5d1d58246a233761273c74b0f9d88d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x859b393d89f57649c8bfaa32f6e342f30f3f7ea0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x87f566ede278c328e9a3af3b6958e0f95fe80476` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x8d6d5d48f881bcccd6c09256724692b3a971b87b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x9248f874aaa2c53ad9324d7a2d033ea133443874` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x92ea2678afcd2f7c76ddfc4488ad7af68215253c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xabc4622d505891648ffa2bb649994f59f4b10f98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xb7c320cef81f0f9abb726590ef5105f551816d76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xbaa863b62c69993143b013fe7b8af278fd52f76b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xbe082293b646cb619a638d29e8eff7cf2f46aa3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd304b96d64b5cb13060b5677cdf41e3850e3fcd6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd35e6bff0d1c3fe78f9d45b184bdbc9fc7d5e455` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd917235d89a58af93302e9a998d62735740c8117` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd9400ab142b4ad18c181538b76522334e0cd8d37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd9bdabb0f87e46af44063d251eb07edfe260d9f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xdc7adbc302785c3c95ffa288f7287237e434b706` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xde92e963a7e8945b09495576cecaaec72506501c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xdf5d682404b0611f46f2626d9d5a37eb6a6fd27d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xe61fb0f6a265f614ca6bf2ee83bbc463cb34da38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xe670f140dedcdf142e15ce198e1a99fecd67d21c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xeb9f3848acd0c0766fd4c117b4c440a5acac7a9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xee9bff933add313c4289e98da80fefbf9d5cd9ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xf95b98256edb861be389b9807f6656e8be2dc488` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x02715a4223b02681c2d5936b75c516cea51db2a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x04d7b653ed41b2d16c4f82b28792f8b58511fafe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x0827943d58ab22dbe79a1fe2ab158480cb4f0d9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x08b40647714ac1e5742633fc2d83c20d61a199d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x0a4d43365229f46250fdbaaece73b6bce28e925f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x0a97d6e87661c9158e1dc4fde66e98ea96fccde0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x1243c06146aca2d4aaf8f9860f6d8d59d636d46c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x144f74f2b663ab5030fb5e6f24bada13441aa4b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x15c4c91e7b82e725544b412e66863dbf7dc50f83` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x1843435b39de92dd0eb98092aef00d2aaf3b64a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x19328453e9b570a8a4bc047bfac0a28564edb02e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x1a4cee4e32ea51ec7671a0fd7333ca64fbf004f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x207ded1eede260fd40760e8a230b51ae27b44dd3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x22e80a035558e4a18a04fa52c92e20d86c8411b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x23fbb591e851ba7bf8a13c8d980642cde8558559` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x248ba8bfc1e4a4dc092de7e50c3c299775e85f3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x257411570bc419b1b13aecb5fe83eba6e2903cea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x265aa795d8a52768c67e3ec3e4940565441b4253` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x27169f09769747c055d79458179d850bfdccfbf2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x2a1ca35ded36c531f77c614b5aaa0d4f86edbb06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x2fe0b1c864bb92d969d62a32457b7b64ad81fb9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x30f48d0cace859fa633031035bf2395bbbfe030a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x33ae0193a175bde2ac9309c05329e6c7727e6fa7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x34542df0d0db6524a7ebbb504d4a607b802fad70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x39c701f3659b6029672ee18433b3c32d184933b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x491d42347f810e19de96d492e492a68ffd6df540` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x4cb748492cc5f300abea39e327e21aa88a157a01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x4f06409e9a775f79b2e5970c8c27aa9aec24e635` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x4f3e88e6dc6d6a68fcfdc5d6e4ba4681c8704140` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x52f00bd18e53134ed75073e09f48a190559a0fe2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x5341d9a9935beabf06f3904fe3601984efddc420` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x5580845d3f597a9a309a4448924c270ea0f4c736` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x56d2430ee396d3f4811781b146d66361206ba3dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x59e48b46180cfa53a23884e076d999daf4c6c174` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x5db16781a29549d708c4c34bf2771c1b34415c21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x62cf36e2e8b675457629d6a6672a0098df205405` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x66264c6707e8d7eab8f7a5e0bb522423c4e8a6a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x6668310631ad5a5ac92dc9549353a5baae16c666` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x6bf79a3fa08cc268a9eb4adc041a085e157943ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x6d4875817ad6de6c353e9ac7512d9bbb6abaa05d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x6e596c06bb5a7eaf654ba14f8352c3257dd8403c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x6ef7ec1cc1f7bed3b3a2461ee78b2b381dff152c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x746887d49347292e2089449552bb2d25475b344a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x77eb47d666f3d8a89085335b12c5ef29956516e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x78beeccfeedb99a1a461619c84cc7be78c97de70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x7dd0143eb6344808058912434d59df7e6b750b45` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x8015beb77685a583751b411f896a8aca05044aa7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x80517bbbf5a51b271cb5b1bcc8dbfac28317a92f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x805677e1536591c84c534df00b4909af7b002dac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x8c111c109cf5d084318308ca8da1b4ced76bcfaa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x8dab48f05798e99830d199a76af73241124370f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x948860043742b53f73742c981aebb2242ed0e707` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x9705c9bc7e9f3da041f23033225c4967d1aa6385` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x9927f9c74e5ad5579c4c5ad2ca4eaefbadf6f5dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x9badb6a21fba04ee94fde3e85f7d170e90394c89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xa35411b03078ef2edc254d1a2f0497d77c5b3e1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xadd2ec1a20edcd26fb18f30214f48d06d36b9c94` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xb3f2380f7f9f78112ab152c486d27222bff4673c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xb7a3f2550793f57b881ea3f9edad1a8b11879b64` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xbe082293b646cb619a638d29e8eff7cf2f46aa3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xc49731384c0c4dbbfff8dae727eb001caffcb107` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xcc36026d325519672d062f233a1fb84a023ad65d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xcec152d19982ef88e69f538f5a7d06a38ca8773e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xced9f810098f8329472aefbaa1112534e96a5c7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xd4bc07dee13b6b300643e20c1a4b8736feacd9ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xd53123342fd44e3b8073a0c3d1ed5992ad26a0d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xd75484526111aaf0ff23ffbf09123c39a69414ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xd9400ab142b4ad18c181538b76522334e0cd8d37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xd9b66d9a819b36ecefc26b043ef3b422d5a6123a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xd9bdabb0f87e46af44063d251eb07edfe260d9f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xdab7725bfe505bdb0f61c628aed87590adeaa630` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xdd8e1b14a04cbdd98dfcaf3f0db84a80bfb8fc25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xde08a8213e957d149f4d4402cbcef2570ec64b54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xdeac3b00e20a7bc1dee2af459ee9a3c2e48a5f81` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xdf5d682404b0611f46f2626d9d5a37eb6a6fd27d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xe299a8c26bf6a7958f1a0aa8ea6fee9b8ede1df9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xe61fb0f6a265f614ca6bf2ee83bbc463cb34da38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xef61c5a09cea2cec0767e904d8c86e7a7cf44864` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xf205ab2cb616d71b082d4d6694b241caa1d725c2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xf3dbf254a4b005b48a7ca938106f64cc965f12ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xf3e231d710dc9f7435592c0836dc440d9dcf9535` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xf49d1f422a7661541033c566f358e944a2bfb976` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xf95b98256edb861be389b9807f6656e8be2dc488` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xf9774486d547e87fd273d46eb96e176686d1af21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xfa8a5165219c5bd7992038202bf504110de61efd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xfbabc73b6241df6453d88ac13b556ba643f9a6ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xfcdaf9a4a731c24ed2e1bfd6fa918d9cf7f50137` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xfd10c9d2695dc78ab96ff75828e6bea438969518` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xfebf749775877b2df0038c3a8e4087924b607306` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x08b40647714ac1e5742633fc2d83c20d61a199d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x0fb305a458b1008faee03147b700b3975bea03fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x1cb0e96c07910fee9a22607bb9228c73848903a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x279c0504575639131be082923c21289d553d7c08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x27f2e4d64b73b91bee988b1171214ec8bbdadbf5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x2bbf0716fb1ac91169b0dbecff232c7bf1b7e701` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x5bba056fd994717cc660b93cbdd8f014eab87918` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x6668310631ad5a5ac92dc9549353a5baae16c666` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x67e30917490fd202e97b24c3f48c6918e31cd17f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x72340258f42447ebe368ca2e3ed2fc9bcb522b27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x9510856f4e5dad6286dd7d785fe0fa9dc5741ef1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x9eaae814183821f9f4f13dddae5784ee2248c316` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xa1bfb507067ceb2c08abb72d0a49a76564ce4587` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xb2f17302ed12fe72d883fcc2b66f1b844fbb7964` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xb56e0bf37c4747abbc3aa9b8084b0d9b9a336777` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xbe082293b646cb619a638d29e8eff7cf2f46aa3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xc7822a469436dc786e88cca48f6e194d2b8c0e03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xd48441847d418c1ab9d43cbd10935f504b1cb3e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xd699770b203ae5e2837dff96e02e6c1a3fb36a07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xd8ee8f39c42ee9b005582e4dc0d530c7de6f1471` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xd8f660b2115d0902d4559bf333932fec0ebde0cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xd9400ab142b4ad18c181538b76522334e0cd8d37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xd9bdabb0f87e46af44063d251eb07edfe260d9f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xdf5d682404b0611f46f2626d9d5a37eb6a6fd27d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xe0da47a1a6ceb80bb945652cb96a821fa5d91327` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xe441e793f7d6f7b0d633a770554d8924103a30b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xe61fb0f6a265f614ca6bf2ee83bbc463cb34da38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xe8dc5073b02d062388db8e50762a8c9a1c823540` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xf95b98256edb861be389b9807f6656e8be2dc488` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xfbabc73b6241df6453d88ac13b556ba643f9a6ad` | ❓ Unverified |
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
| needs_review | 333 |

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
