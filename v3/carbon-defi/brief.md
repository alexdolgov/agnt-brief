# Agentic Audit Brief: Carbon Defi

## Project Overview

- Project: Carbon Defi (`carbon-defi`)
- Website: [https://app.carbondefi.xyz/](https://app.carbondefi.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:38.460Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: base, blast, celo, ethereum, sei
- Contract surface: 206 unique implementations (287 raw deployments)
- DeFi Llama TVL: $2,187,230.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 93 project-authored contract(s) across 4 chain(s); 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 33 common project-authored base contract(s) (upgradeable, time, utils). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 474; live-surface contracts included: 282 (92 live, 190 unknown).
- Excluded by liveness: 192 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 19/35 (54.3%)
- Deployed-live implementations: 35 of 206 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 19/35
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 171
- Unique implementations: 206
- Raw deployments: 287
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 19 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 25.7% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 18 | 51.4% | 2024-07 |
| ChainSecurity | Tier 1 | 9 | 25.7% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CarbonController | unknown | ethereum | n/a | 8 deployments: ethereum [`0x16b9b6...79d72d`](./contracts/ethereum-1/0x16b9b6f8d2077db1032531f0e1f6019d2679d72d/); ethereum `0x1a3122...c218cf`; ethereum `0x21f02a...c086ee`; ethereum `0x5ec3b3...4e5b20`; ethereum `0x6db6ee...8b12c1`; ethereum `0xd59bca...063ff8`; sei `0x8ce318...6ab749`; celo `0xbbaff3...c5b496` | ✅ Audited |
| CarbonController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1e0804...32bf2c`](./contracts/ethereum-1/0x1e08049c180e25478bf7a0357171547b7332bf2c/); ethereum `0xc537e8...ea45e1` | ✅ Audited |
| CarbonController | unknown | sei | n/a | 2 deployments: sei [`0x8c05ea...ade636`](./contracts/sei-1329/0x8c05ea305235a67c7095a32ad4a2ee2688ade636/); sei `0xe48166...1f1087` | ✅ Audited |
| CarbonController | unknown | celo | n/a | 2 deployments: celo [`0x51aa24...e36317`](./contracts/celo-42220/0x51aa24a9230e62cfaf259c47de3133578ce36317/); celo `0x661987...29ed3a` | ✅ Audited |
| CarbonPOL | unknown | ethereum | n/a | 2 deployments: ethereum [`0x779b3b...4ab123`](./contracts/ethereum-1/0x779b3bea233ebc5947c5ff0ffd7f4f90654ab123/); ethereum `0xd06146...2bef46` | ✅ Audited |
| CarbonPOL | unknown | ethereum | n/a | [`0x945ac6...287105`](./contracts/ethereum-1/0x945ac60e655a84b6638216521b391ae984287105/) | ✅ Audited |
| CarbonVortex | unknown | ethereum | n/a | 14 deployments: ethereum [`0x2c0fa8...923502`](./contracts/ethereum-1/0x2c0fa8b5c3a26ae8f014efb50ff27d95dd923502/); ethereum `0x55effb...f472ad`; ethereum `0x676b91...ce95c0`; ethereum `0x727170...f0fb9e`; sei `0x924ad5...cb5502`; sei `0xc95a9c...f977b0`; base `0xc7dd38...c5c55c`; base `0xe48166...1f1087`; celo `0x31548b...6b2db0`; celo `0x4fe1b7...15b4c1`; celo `0x8b6631...e1f3a0`; celo `0xfe19cb...b54d4d`; blast `0x59f210...4c84ea`; blast `0x5e994a...8dbf9a` | ✅ Audited |
| CarbonVortex | unknown | ethereum | n/a | 2 deployments: ethereum [`0xba7d15...3c8f84`](./contracts/ethereum-1/0xba7d1581db6248dc9177466a328bf457703c8f84/); ethereum `0xd241a7...be23ca` | ✅ Audited |
| CarbonVortex | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc56eb3...b03fbc`](./contracts/ethereum-1/0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc/); ethereum `0xd053dc...d79801` | ✅ Audited |
| CarbonVortex | unknown | sei | n/a | 2 deployments: sei [`0x4bbd9f...1b08a2`](./contracts/sei-1329/0x4bbd9fae81734cd2c73428307c74079f4e1b08a2/); sei `0x571520...eaf933` | ✅ Audited |
| CarbonVortex | unknown | base | n/a | 2 deployments: base [`0xa4682a...eaf8d5`](./contracts/base-8453/0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5/); base `0xb53f07...642a36` | ✅ Audited |
| CarbonVortex | unknown | celo | n/a | 2 deployments: celo [`0x37a65d...7eec10`](./contracts/celo-42220/0x37a65dda75a4c32959834c9b391a24dca17eec10/); celo `0xa15e32...01e562` | ✅ Audited |
| CarbonVortex | unknown | celo | n/a | 2 deployments: celo [`0x6cd7f6...bc2fdc`](./contracts/celo-42220/0x6cd7f631f8c017bb4427d3257593e29ed9bc2fdc/); celo `0xd9d89e...764857` | ✅ Audited |
| CarbonVortex | unknown | blast | n/a | 2 deployments: blast [`0x0f5409...a9bdaa`](./contracts/blast-81457/0x0f54099d787e26c90c487625b4de819ec5a9bdaa/); blast `0x30dd96...af39f0` | ✅ Audited |
| MasterVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x649765...2bc373`](./contracts/ethereum-1/0x649765821d9f64198c905ec0b2b037a4a52bc373/); ethereum `0xf3b685...f10144` | ✅ Audited |
| Voucher | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3660f0...8f554e`](./contracts/ethereum-1/0x3660f04b79751e31128f6378eac70807e38f554e/); ethereum `0x460cb0...109d0a` | ✅ Audited |
| Voucher | unknown | ethereum | n/a | [`0xc6b2f9...953997`](./contracts/ethereum-1/0xc6b2f9b6bf3521308fb9360e4a6fe05f63953997/) | ✅ Audited |
| Voucher | unknown | sei | n/a | 3 deployments: sei [`0xa4682a...eaf8d5`](./contracts/sei-1329/0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5/); sei `0xb0d399...cb4c26`; sei `0xc7dd38...c5c55c` | ✅ Audited |
| Voucher | unknown | celo | n/a | 2 deployments: celo [`0x5bca33...b2482e`](./contracts/celo-42220/0x5bca3389786385a35bca14c2d0582adc6cb2482e/); celo `0x5e994a...8dbf9a` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CarbonBatcher | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0199f3...4b7d4e`](./contracts/ethereum-1/0x0199f3a6c4b192b9f9c3ebe31fbc535cdd4b7d4e/); ethereum `0x70ab82...25842a` | ⚠️ Unaudited |
| CarbonBatcher | unknown | sei | n/a | 2 deployments: sei [`0x30dd96...af39f0`](./contracts/sei-1329/0x30dd96d6b693f78730c7c48b6849d9c44caf39f0/); sei `0xe375dd...2f952e` | ⚠️ Unaudited |
| CarbonBatcher | unknown | celo | n/a | 2 deployments: celo [`0x482b27...7845e1`](./contracts/celo-42220/0x482b27719b31760e0c45f01685d3f750c47845e1/); celo `0xa97787...0718f7` | ⚠️ Unaudited |
| EtherToken | token | ethereum | n/a | 2 deployments: ethereum [`0xc08294...2ce315`](./contracts/ethereum-1/0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315/); ethereum `0xd76b5c...b746ae` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| LinkToken | token | ethereum | n/a | [`0x514910...f986ca`](./contracts/ethereum-1/0x514910771af9ca656af840dff83e8264ecf986ca/) | ⚠️ Unaudited |
| LiquidityProtection | unknown | ethereum | n/a | [`0x85cbbb...9001e5`](./contracts/ethereum-1/0x85cbbb1ede2b3e389235ae56ec54bec8159001e5/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | blast | n/a | 2 deployments: blast [`0xa15e32...01e562`](./contracts/blast-81457/0xa15e3295465439a361dbcac79c1dbce6cd01e562/); blast `0xfe19cb...b54d4d` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 21 deployments: ethereum [`0x059d3d...2cf9a1`](./contracts/ethereum-1/0x059d3d353336886cfaf17383c9fb6715652cf9a1/); ethereum `0x12388c...d118cb`; ethereum `0x642879...2f0034`; ethereum `0x8c05ea...ade636`; sei `0x45d2e2...5a7ac8`; sei `0x7fc12a...e17f06`; sei `0xcd8c6d...357772`; sei `0xdf1c3b...76b332`; sei `0xfea28d...fc23b5`; base `0x177dbf...36947e`; base `0xa15e32...01e562`; base `0xb0d399...cb4c26`; base `0xe033be...dfe1cf`; base `0xfe19cb...b54d4d`; celo `0x0f5409...a9bdaa`; celo `0x59f210...4c84ea`; celo `0xb2a2f1...3c9d2a`; celo `0xd0b82e...3bb921`; blast `0x8b6631...e1f3a0`; blast `0x8c05ea...ade636`; blast `0xe6d513...733611` | ⚠️ Unaudited |
| StakingRewardsClaim | unknown | ethereum | n/a | [`0x6248e4...88af58`](./contracts/ethereum-1/0x6248e4118818c9075a142ef8a12e09d49888af58/) | ⚠️ Unaudited |
| VortexAcrossBridge | unknown | blast | n/a | 2 deployments: blast [`0x31548b...6b2db0`](./contracts/blast-81457/0x31548b11d685a358de7f52978e099e04116b2db0/); blast `0x63e353...c97525` | ⚠️ Unaudited |
| VortexOpStackBridge | unknown | celo | n/a | 2 deployments: celo [`0x753425...4d6aaf`](./contracts/celo-42220/0x753425e27ae996f0db75c759c6e5eba5c74d6aaf/); celo `0xd9c6f8...afacdb` | ⚠️ Unaudited |
| VortexStargateBridge | operational_periphery | sei | n/a | [`0x57cf0c...87ea05`](./contracts/sei-1329/0x57cf0c29c2b7bc7cf5396568e25e34a1b687ea05/) | ⚠️ Unaudited |
| VortexStargateBridge | operational_periphery | base | n/a | [`0x773b75...b05119`](./contracts/base-8453/0x773b75cfb146bd5d1095fa9d6d45637f02b05119/) | ⚠️ Unaudited |
| VortexWormholeBridge | operational_periphery | celo | n/a | [`0x0f9df7...0f68e1`](./contracts/celo-42220/0x0f9df7475b6d50fb19940e071e5311c9ac0f68e1/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (171)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x3e67d217325a7298c3f80385e9f9eff2dc0f5de1) | unknown | ethereum | n/a | 2 deployments: ethereum `0x0f5409...a9bdaa`; ethereum `0x3e67d2...0f5de1` | ❓ Unverified |
| Proxy (impl: 0x77e925eebcc9ecb03b03e1fb2b1906e7bcf3c20d) | unknown | celo | n/a | 2 deployments: celo `0x20216f...b31271`; celo `0x77e925...f3c20d` | ❓ Unverified |
| Proxy (impl: 0xa977879684eece2015ae879dc120c8a1c00718f7) | unknown | blast | n/a | 2 deployments: blast `0x4a0c4e...ad4130`; blast `0xa97787...0718f7` | ❓ Unverified |
| Proxy (impl: 0xafa374dfab26d61b789b69cfad7bb481ef558502) | unknown | celo | n/a | 2 deployments: celo `0x0677bf...e3ea3d`; celo `0xafa374...558502` | ❓ Unverified |
| Proxy (impl: 0xbbaff3bf6ec4c15992c0fb37f12491fd62c5b496) | unknown | sei | n/a | 2 deployments: sei `0x661987...29ed3a`; sei `0xbbaff3...c5b496` | ❓ Unverified |
| Proxy (impl: 0xbca03b0b918bcdc78c3111ee242c7fec73e11669) | unknown | base | n/a | 2 deployments: base `0x31548b...6b2db0`; base `0xbca03b...e11669` | ❓ Unverified |
| Proxy (impl: 0xe92fd7a55f37cc175aae2e0a13bf401120fe5bcc) | unknown | celo | n/a | 2 deployments: celo `0x185340...04fa82`; celo `0xe92fd7...fe5bcc` | ❓ Unverified |
| Proxy (impl: 0xe97749fd20909213e287e6f39a72568edd40c899) | unknown | base | n/a | 2 deployments: base `0x94a04b...ad022c`; base `0xe97749...40c899` | ❓ Unverified |
| Proxy (impl: 0xf067013fefe758f179689bebefce8d2fac1f9829) | unknown | sei | n/a | 2 deployments: sei `0xc56eb3...b03fbc`; sei `0xf06701...1f9829` | ❓ Unverified |
| Proxy (impl: 0xfea28d3a9994bc4e7851035764171a02c3fc23b5) | unknown | ethereum | n/a | 2 deployments: ethereum `0x37a65d...7eec10`; ethereum `0xfea28d...fc23b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cbd55...390940` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d126c...c00c60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d64d8...50fbd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x102560...5df38b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x103607...25c031` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x107b45...fa2993` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x127f3c...a9199b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x136593...412b89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15f73a...6f5605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x176707...9dde6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x183739...a98908` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b5674...7263d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ff103...26f4da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20826b...363058` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20bced...f4d8d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20bdda...9a55b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x230557...37b15e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c6f75...35b507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ff889...b8854d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x31548b...6b2db0`; ethereum `0x63e353...c97525` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31d687...cda740` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x335926...f90c3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x362b56...9dfce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x384c53...293036` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3aafb6...874d13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad977...98f8a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bd1ee...3ca5af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x402fa0...2584b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x411ea3...9e93b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4205a8...3d1924` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46695c...003ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x471208...0a8732` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c209a...223d28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c9ad5...1c9acd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e0178...faca13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5560d0...e3a99e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56de9e...fa51a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59f210...4c84ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4997...5c76c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4ba4...789c09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b828a...997453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62d883...f6c5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e0dfd...ef7755` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x753985...49001c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76d8a5...b14646` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cf03c...55ea3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d3701...6b4877` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84f162...cbf197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x897c79...ebc249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89f800...389aa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b00a8...af293b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b6631...e1f3a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cbd1d...aeed7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d634a...d3e639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92bfd0...fb3e9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x947766...892d01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97b155...64b103` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9843e5...bd50ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98bc79...4cf142` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a1deb...a2296d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e978e...73fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f4ef8...57df75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f6de3...1f2423` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fcb31...35be6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa71a6c...905627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf5219...76e32c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc61d91...f4a581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc77841...0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc882b9...2b0d9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca0907...6e9142` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbc21c...efe931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcce7a4...5ba322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd54fa...7467db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3f3c5...8a8a89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd72cf0...559ee9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc7040...9646be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6eaa2...a68e1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe81930...a59891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef0594...5e8173` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf50db8...785f99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf68393...8fbf14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf85903...287c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf88cbc...c08ff4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe19cb...b54d4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfeda93...a64ef1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff0eb5...489010` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x177dbf...36947e` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x253f62...1fdd10` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x3e67d2...0f5de1` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x3f086f...623435` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x482b27...7845e1` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x4e0178...faca13` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x5530eb...40b274` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x5bca33...b2482e` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x5e994a...8dbf9a` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x653e98...f232c5` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x6db97c...b71424` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x773b75...b05119` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | 2 deployments: sei `0x95fa9b...af5f23`; sei `0xb2a2f1...3c9d2a` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x9fac0f...2af35c` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xaf5219...76e32c` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xb4e1fc...9f807a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19c6df...e21f6f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20216f...b31271` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x253f62...1fdd10` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37a65d...7eec10` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ba67a...d5eee7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4e0178...faca13` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x4f81e8...752f8b`; base `0x8e4965...59c063` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51aa24...e36317` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5530eb...40b274` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x59f210...4c84ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5bca33...b2482e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x661987...29ed3a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x6db97c...b71424`; base `0xd0b82e...3bb921` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b6631...e1f3a0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x94a63a...375a83` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98d314...a25b44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaeee7b...bf6f66` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbbaff3...c5b496` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc56eb3...b03fbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd8c6d...357772` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeaa436...7a456c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x17e078...f32376` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2063a1...fecfd5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x210760...abbe57` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x27d59c...faf112` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | 2 deployments: celo `0x30dd96...af39f0`; celo `0x8c05ea...ade636` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x351b73...bf66e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3cbb34...bb9d0c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x45d2e2...5a7ac8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x45f7ea...ad8cf3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4a0c4e...ad4130` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4e0178...faca13` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x653e98...f232c5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6845b8...d23f20` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | 2 deployments: celo `0x70ff80...8dd1cf`; celo `0x75af20...e8a03e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x759db9...5d2352` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8ce318...6ab749` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9ceb88...a52341` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9fac0f...2af35c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa4682a...eaf8d5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | 2 deployments: celo `0xb0d399...cb4c26`; celo `0xc7dd38...c5c55c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb4e1fc...9f807a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbca03b...e11669` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbdfc7f...f5662f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdf1c3b...76b332` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe48166...1f1087` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xee21c0...131d9a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf7c7d7...5709a9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37a65d...7eec10` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x45d2e2...5a7ac8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x51aa24...e36317` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | 2 deployments: blast `0x571520...eaf933`; blast `0xc7dd38...c5c55c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x661987...29ed3a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x759db9...5d2352` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7fc12a...e17f06` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x94a63a...375a83` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb0d399...cb4c26` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdf1c3b...76b332` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe033be...dfe1cf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf) | PeckShield | Audit | 2024-07 | stale | Direct | contract_name | 28 | high |
| [PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | contract_name | 45 | high |
| [ChainSecurity_Carbon_Audit_Report.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/ChainSecurity_Carbon_Audit_Report.pdf) | ChainSecurity | Audit | 2023-04 | stale | Direct | contract_name | 24 | high |
| [PeckShield-Audit-Report-Carbon-v1.0.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Carbon-v1.0.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | 22 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 206 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=119

Fork inheritance lineage and inherited audits are included when available.
