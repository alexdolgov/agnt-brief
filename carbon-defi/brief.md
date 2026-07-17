# Agentic Audit Brief: Carbon Defi

## Project Overview

- Project: Carbon Defi (`carbon-defi`)
- Website: [https://app.carbondefi.xyz/](https://app.carbondefi.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.080Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: base, blast, celo, ethereum, sei
- Contract surface: 141 unique implementations (222 raw deployments)
- DeFi Llama TVL: $2,187,230.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 93 project-authored contract(s) across 4 chain(s); 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 33 common project-authored base contract(s) (upgradeable, time, utils). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 310; live-surface contracts included: 217 (92 live, 125 unknown).
- Excluded by liveness: 93 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 19/34 (55.9%)
- Deployed-live implementations: 35 of 141 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 19/35
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 106
- Unique implementations: 141
- Raw deployments: 222
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 19 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 26.5% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 18 | 51.4% | 2024-07 |
| ChainSecurity | Tier 1 | 9 | 25.7% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CarbonController | unknown | ethereum | n/a | 8 deployments: ethereum [`0x16b9b6f8d2077db1032531f0e1f6019d2679d72d`](./contracts/ethereum-1/0x16b9b6f8d2077db1032531f0e1f6019d2679d72d/); ethereum `0x1a31220b36b6d02f59d12c04e221ae7926c218cf`; ethereum `0x21f02ac7fc8915f1b884b532f6cbcd0ef0c086ee`; ethereum `0x5ec3b3748a2af4e14977949c76c44d0ca54e5b20`; ethereum `0x6db6ee351fc802833ed2f28a25bbbf971d8b12c1`; ethereum `0xd59bcabd00721b754acb79fe668fae4b6a063ff8`; sei `0x8ce318919438982514f9f479fdfb40d32c6ab749`; celo `0xbbaff3bf6ec4c15992c0fb37f12491fd62c5b496` | ✅ Audited |
| CarbonController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1e08049c180e25478bf7a0357171547b7332bf2c`](./contracts/ethereum-1/0x1e08049c180e25478bf7a0357171547b7332bf2c/); ethereum `0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1` | ✅ Audited |
| CarbonController | unknown | sei | n/a | 2 deployments: sei [`0x8c05ea305235a67c7095a32ad4a2ee2688ade636`](./contracts/sei-1329/0x8c05ea305235a67c7095a32ad4a2ee2688ade636/); sei `0xe4816658ad10bf215053c533cceae3f59e1f1087` | ✅ Audited |
| CarbonController | unknown | celo | n/a | 2 deployments: celo [`0x51aa24a9230e62cfaf259c47de3133578ce36317`](./contracts/celo-42220/0x51aa24a9230e62cfaf259c47de3133578ce36317/); celo `0x6619871118d144c1c28ec3b23036fc1f0829ed3a` | ✅ Audited |
| CarbonPOL | unknown | ethereum | n/a | 2 deployments: ethereum [`0x779b3bea233ebc5947c5ff0ffd7f4f90654ab123`](./contracts/ethereum-1/0x779b3bea233ebc5947c5ff0ffd7f4f90654ab123/); ethereum `0xd06146d292f9651c1d7cf54a3162791dfc2bef46` | ✅ Audited |
| CarbonPOL | unknown | ethereum | n/a | [`0x945ac60e655a84b6638216521b391ae984287105`](./contracts/ethereum-1/0x945ac60e655a84b6638216521b391ae984287105/) | ✅ Audited |
| CarbonVortex | unknown | ethereum | n/a | 14 deployments: ethereum [`0x2c0fa8b5c3a26ae8f014efb50ff27d95dd923502`](./contracts/ethereum-1/0x2c0fa8b5c3a26ae8f014efb50ff27d95dd923502/); ethereum `0x55effb50729c049ab8c87977d324246996f472ad`; ethereum `0x676b91af9eaae263485c95ccafb2764228ce95c0`; ethereum `0x72717080da2e9e057dc29d25eeeb5d4873f0fb9e`; sei `0x924ad5d745ed622e8303929f8540dc2806cb5502`; sei `0xc95a9c1f378e0009e49fe7fe33dda22da4f977b0`; base `0xc7dd38e64822108446872c5c2105308058c5c55c`; base `0xe4816658ad10bf215053c533cceae3f59e1f1087`; celo `0x31548b11d685a358de7f52978e099e04116b2db0`; celo `0x4fe1b742e484181255385a026653f8bc1115b4c1`; celo `0x8b66315ae646d3b528184c37cd9365aebae1f3a0`; celo `0xfe19cba3ab1a189b7fc17caa798df64ad2b54d4d`; blast `0x59f21012b2e9ba67ce6a7605e74f945d0d4c84ea`; blast `0x5e994ac7d65d81f51a76e0bb5a236c6fda8dbf9a` | ✅ Audited |
| CarbonVortex | unknown | ethereum | n/a | 2 deployments: ethereum [`0xba7d1581db6248dc9177466a328bf457703c8f84`](./contracts/ethereum-1/0xba7d1581db6248dc9177466a328bf457703c8f84/); ethereum `0xd241a762f4ca4e32e723e91b1138ac97b9be23ca` | ✅ Audited |
| CarbonVortex | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc`](./contracts/ethereum-1/0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc/); ethereum `0xd053dcd7037af7204cece544ea9f227824d79801` | ✅ Audited |
| CarbonVortex | unknown | sei | n/a | 2 deployments: sei [`0x4bbd9fae81734cd2c73428307c74079f4e1b08a2`](./contracts/sei-1329/0x4bbd9fae81734cd2c73428307c74079f4e1b08a2/); sei `0x5715203b16f15d7349cb1e3537365e9664eaf933` | ✅ Audited |
| CarbonVortex | unknown | base | n/a | 2 deployments: base [`0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5`](./contracts/base-8453/0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5/); base `0xb53f078315790b62974cdd12fe6f80e946642a36` | ✅ Audited |
| CarbonVortex | unknown | celo | n/a | 2 deployments: celo [`0x37a65dda75a4c32959834c9b391a24dca17eec10`](./contracts/celo-42220/0x37a65dda75a4c32959834c9b391a24dca17eec10/); celo `0xa15e3295465439a361dbcac79c1dbce6cd01e562` | ✅ Audited |
| CarbonVortex | unknown | celo | n/a | 2 deployments: celo [`0x6cd7f631f8c017bb4427d3257593e29ed9bc2fdc`](./contracts/celo-42220/0x6cd7f631f8c017bb4427d3257593e29ed9bc2fdc/); celo `0xd9d89e8a0dfe549e5b424d5b511cb3b84a764857` | ✅ Audited |
| CarbonVortex | unknown | blast | n/a | 2 deployments: blast [`0x0f54099d787e26c90c487625b4de819ec5a9bdaa`](./contracts/blast-81457/0x0f54099d787e26c90c487625b4de819ec5a9bdaa/); blast `0x30dd96d6b693f78730c7c48b6849d9c44caf39f0` | ✅ Audited |
| MasterVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x649765821d9f64198c905ec0b2b037a4a52bc373`](./contracts/ethereum-1/0x649765821d9f64198c905ec0b2b037a4a52bc373/); ethereum `0xf3b685d24f84b6eeeeee334250cf73ade1f10144` | ✅ Audited |
| Voucher | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3660f04b79751e31128f6378eac70807e38f554e`](./contracts/ethereum-1/0x3660f04b79751e31128f6378eac70807e38f554e/); ethereum `0x460cb0b4fb97b5a05b6105d7fd8d464902109d0a` | ✅ Audited |
| Voucher | unknown | ethereum | n/a | [`0xc6b2f9b6bf3521308fb9360e4a6fe05f63953997`](./contracts/ethereum-1/0xc6b2f9b6bf3521308fb9360e4a6fe05f63953997/) | ✅ Audited |
| Voucher | unknown | sei | n/a | 3 deployments: sei [`0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5`](./contracts/sei-1329/0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5/); sei `0xb0d39990e1c38b50d0b7f6911525535fbacb4c26`; sei `0xc7dd38e64822108446872c5c2105308058c5c55c` | ✅ Audited |
| Voucher | unknown | celo | n/a | 2 deployments: celo [`0x5bca3389786385a35bca14c2d0582adc6cb2482e`](./contracts/celo-42220/0x5bca3389786385a35bca14c2d0582adc6cb2482e/); celo `0x5e994ac7d65d81f51a76e0bb5a236c6fda8dbf9a` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CarbonBatcher | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0199f3a6c4b192b9f9c3ebe31fbc535cdd4b7d4e`](./contracts/ethereum-1/0x0199f3a6c4b192b9f9c3ebe31fbc535cdd4b7d4e/); ethereum `0x70ab8222a5fff4b360764bb51cbea76f0025842a` | ⚠️ Unaudited |
| CarbonBatcher | unknown | sei | n/a | 2 deployments: sei [`0x30dd96d6b693f78730c7c48b6849d9c44caf39f0`](./contracts/sei-1329/0x30dd96d6b693f78730c7c48b6849d9c44caf39f0/); sei `0xe375ddb4f244337727fd69fcd7645074e82f952e` | ⚠️ Unaudited |
| CarbonBatcher | unknown | celo | n/a | 2 deployments: celo [`0x482b27719b31760e0c45f01685d3f750c47845e1`](./contracts/celo-42220/0x482b27719b31760e0c45f01685d3f750c47845e1/); celo `0xa977879684eece2015ae879dc120c8a1c00718f7` | ⚠️ Unaudited |
| EtherToken | token | ethereum | n/a | 2 deployments: ethereum [`0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315`](./contracts/ethereum-1/0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315/); ethereum `0xd76b5c2a23ef78368d8e34288b5b65d616b746ae` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| LinkToken | token | ethereum | n/a | [`0x514910771af9ca656af840dff83e8264ecf986ca`](./contracts/ethereum-1/0x514910771af9ca656af840dff83e8264ecf986ca/) | ⚠️ Unaudited |
| LiquidityProtection | unknown | ethereum | n/a | [`0x85cbbb1ede2b3e389235ae56ec54bec8159001e5`](./contracts/ethereum-1/0x85cbbb1ede2b3e389235ae56ec54bec8159001e5/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | blast | n/a | 2 deployments: blast [`0xa15e3295465439a361dbcac79c1dbce6cd01e562`](./contracts/blast-81457/0xa15e3295465439a361dbcac79c1dbce6cd01e562/); blast `0xfe19cba3ab1a189b7fc17caa798df64ad2b54d4d` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 21 deployments: ethereum [`0x059d3d353336886cfaf17383c9fb6715652cf9a1`](./contracts/ethereum-1/0x059d3d353336886cfaf17383c9fb6715652cf9a1/); ethereum `0x12388c005c3e3a88b6d30c55f21e49b747d118cb`; ethereum `0x64287956b8b587670d4d9b94378177f6c52f0034`; ethereum `0x8c05ea305235a67c7095a32ad4a2ee2688ade636`; sei `0x45d2e25c04f43a06f6c3e21e4f39b860d05a7ac8`; sei `0x7fc12ab5823b8977803f009a36ea21c9b4e17f06`; sei `0xcd8c6df64830288aa6091e9e8d281faedc357772`; sei `0xdf1c3beccc182eaa23e1894be3bb55a81876b332`; sei `0xfea28d3a9994bc4e7851035764171a02c3fc23b5`; base `0x177dbf7343181d522a20bca2850138e1e836947e`; base `0xa15e3295465439a361dbcac79c1dbce6cd01e562`; base `0xb0d39990e1c38b50d0b7f6911525535fbacb4c26`; base `0xe033bed7cae4114af84be1e9f1ca7dea07dfe1cf`; base `0xfe19cba3ab1a189b7fc17caa798df64ad2b54d4d`; celo `0x0f54099d787e26c90c487625b4de819ec5a9bdaa`; celo `0x59f21012b2e9ba67ce6a7605e74f945d0d4c84ea`; celo `0xb2a2f14979a68c21181c6a63ca55a5b3693c9d2a`; celo `0xd0b82e96cba38cda95de4943a771e832bf3bb921`; blast `0x8b66315ae646d3b528184c37cd9365aebae1f3a0`; blast `0x8c05ea305235a67c7095a32ad4a2ee2688ade636`; blast `0xe6d513dc1107e2b091588e10460cf4b62a733611` | ⚠️ Unaudited |
| StakingRewardsClaim | unknown | ethereum | n/a | [`0x6248e4118818c9075a142ef8a12e09d49888af58`](./contracts/ethereum-1/0x6248e4118818c9075a142ef8a12e09d49888af58/) | ⚠️ Unaudited |
| VortexAcrossBridge | unknown | blast | n/a | 2 deployments: blast [`0x31548b11d685a358de7f52978e099e04116b2db0`](./contracts/blast-81457/0x31548b11d685a358de7f52978e099e04116b2db0/); blast `0x63e353ae90f95c72bf1e78e45456fb78b0c97525` | ⚠️ Unaudited |
| VortexOpStackBridge | unknown | celo | n/a | 2 deployments: celo [`0x753425e27ae996f0db75c759c6e5eba5c74d6aaf`](./contracts/celo-42220/0x753425e27ae996f0db75c759c6e5eba5c74d6aaf/); celo `0xd9c6f857f296a27e2d64a62634a6a30eddafacdb` | ⚠️ Unaudited |
| VortexStargateBridge | operational_periphery | sei | n/a | [`0x57cf0c29c2b7bc7cf5396568e25e34a1b687ea05`](./contracts/sei-1329/0x57cf0c29c2b7bc7cf5396568e25e34a1b687ea05/) | ⚠️ Unaudited |
| VortexStargateBridge | operational_periphery | base | n/a | [`0x773b75cfb146bd5d1095fa9d6d45637f02b05119`](./contracts/base-8453/0x773b75cfb146bd5d1095fa9d6d45637f02b05119/) | ⚠️ Unaudited |
| VortexWormholeBridge | operational_periphery | celo | n/a | [`0x0f9df7475b6d50fb19940e071e5311c9ac0f68e1`](./contracts/celo-42220/0x0f9df7475b6d50fb19940e071e5311c9ac0f68e1/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (106)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x3e67d217325a7298c3f80385e9f9eff2dc0f5de1) | unknown | ethereum | n/a | 2 deployments: ethereum `0x0f54099d787e26c90c487625b4de819ec5a9bdaa`; ethereum `0x3e67d217325a7298c3f80385e9f9eff2dc0f5de1` | ❓ Unverified |
| Proxy (impl: 0x77e925eebcc9ecb03b03e1fb2b1906e7bcf3c20d) | unknown | celo | n/a | 2 deployments: celo `0x20216f3056bf98e245562940e6c9c65ad9b31271`; celo `0x77e925eebcc9ecb03b03e1fb2b1906e7bcf3c20d` | ❓ Unverified |
| Proxy (impl: 0xa977879684eece2015ae879dc120c8a1c00718f7) | unknown | blast | n/a | 2 deployments: blast `0x4a0c4ef72e0ba9d6a2d34dad6e794378d9ad4130`; blast `0xa977879684eece2015ae879dc120c8a1c00718f7` | ❓ Unverified |
| Proxy (impl: 0xafa374dfab26d61b789b69cfad7bb481ef558502) | unknown | celo | n/a | 2 deployments: celo `0x0677bfcb0123867c3ea9e0983976be7f7ee3ea3d`; celo `0xafa374dfab26d61b789b69cfad7bb481ef558502` | ❓ Unverified |
| Proxy (impl: 0xbbaff3bf6ec4c15992c0fb37f12491fd62c5b496) | unknown | sei | n/a | 2 deployments: sei `0x6619871118d144c1c28ec3b23036fc1f0829ed3a`; sei `0xbbaff3bf6ec4c15992c0fb37f12491fd62c5b496` | ❓ Unverified |
| Proxy (impl: 0xbca03b0b918bcdc78c3111ee242c7fec73e11669) | unknown | base | n/a | 2 deployments: base `0x31548b11d685a358de7f52978e099e04116b2db0`; base `0xbca03b0b918bcdc78c3111ee242c7fec73e11669` | ❓ Unverified |
| Proxy (impl: 0xe92fd7a55f37cc175aae2e0a13bf401120fe5bcc) | unknown | celo | n/a | 2 deployments: celo `0x185340a71447f3c247e4cfd6d805df25d604fa82`; celo `0xe92fd7a55f37cc175aae2e0a13bf401120fe5bcc` | ❓ Unverified |
| Proxy (impl: 0xe97749fd20909213e287e6f39a72568edd40c899) | unknown | base | n/a | 2 deployments: base `0x94a04b4a237b8ff72e41d872a240527a5fad022c`; base `0xe97749fd20909213e287e6f39a72568edd40c899` | ❓ Unverified |
| Proxy (impl: 0xf067013fefe758f179689bebefce8d2fac1f9829) | unknown | sei | n/a | 2 deployments: sei `0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc`; sei `0xf067013fefe758f179689bebefce8d2fac1f9829` | ❓ Unverified |
| Proxy (impl: 0xfea28d3a9994bc4e7851035764171a02c3fc23b5) | unknown | ethereum | n/a | 2 deployments: ethereum `0x37a65dda75a4c32959834c9b391a24dca17eec10`; ethereum `0xfea28d3a9994bc4e7851035764171a02c3fc23b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x103607e92b6264a909fdc10e7553b8593325c031` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1365935610776b30a1da088173987307a5412b89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x176707a177c9aa3e8872e4bb2c2ff1f9589dde6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b5674cb6a2ba724833585e0aaf0cd92657263d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20bcedd753e750965ade287f7a6c5ae8fdf4d8d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x31548b11d685a358de7f52978e099e04116b2db0`; ethereum `0x63e353ae90f95c72bf1e78e45456fb78b0c97525` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3aafb6c8d44255f11bd85b0321a087bae5874d13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e017822e77e34842b71b8a24b09e6e490faca13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59f21012b2e9ba67ce6a7605e74f945d0d4c84ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b828a0a6fa6a1a81368fd870bee5079c8997453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62d8839c6ddb1d8dbaf559cc8c5b588f17f6c5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e0dfd0f21dbee835f2b960f3a23e92a11ef7755` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b66315ae646d3b528184c37cd9365aebae1f3a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d634aa8ba21dc9411ec1da7d12f1091dad3e639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x947766d4f964bd9f622f28d05baac657b5892d01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a1deb19e7600eaf1ec722b3a2e4b0b0ffa2296d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf5219f7de072f88b9239fa1a55321374c76e32c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca09071c809f4b48d6bd5049f365c6ed2d6e9142` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd54fa71a2c7b2169acf4afdfb0dc04ec77467db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc7040fa7ef4afe900f1390043045866209646be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe19cba3ab1a189b7fc17caa798df64ad2b54d4d` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x177dbf7343181d522a20bca2850138e1e836947e` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x253f62cec30be9681f1ee9f33ca40d81a61fdd10` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x3e67d217325a7298c3f80385e9f9eff2dc0f5de1` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x3f086f628678cf136c4fa7d2901ff5ebe2623435` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x482b27719b31760e0c45f01685d3f750c47845e1` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x4e017822e77e34842b71b8a24b09e6e490faca13` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x5530eb6eb259401f3b42df99a2b3af09bf40b274` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x5bca3389786385a35bca14c2d0582adc6cb2482e` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x5e994ac7d65d81f51a76e0bb5a236c6fda8dbf9a` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x653e98561925b55977c0100636ccd314c4f232c5` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x6db97c98bac07f667817110c79c5593152b71424` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x773b75cfb146bd5d1095fa9d6d45637f02b05119` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | 2 deployments: sei `0x95fa9ba30f6389762ca0e0d34538c2d925af5f23`; sei `0xb2a2f14979a68c21181c6a63ca55a5b3693c9d2a` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x9fac0f1e0190a97e1efbf8b20ab56424552af35c` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xaf5219f7de072f88b9239fa1a55321374c76e32c` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xb4e1fc457dbf8d85683fe1e223398f44ff9f807a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19c6df3963f12cfb0f43fed4b641afc2f7e21f6f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20216f3056bf98e245562940e6c9c65ad9b31271` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x253f62cec30be9681f1ee9f33ca40d81a61fdd10` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37a65dda75a4c32959834c9b391a24dca17eec10` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ba67ae64317e06fbc12144191549d64a0d5eee7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4e017822e77e34842b71b8a24b09e6e490faca13` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x4f81e82dae5dbfec21fb162958a4f0262f752f8b`; base `0x8e49650b4cee7776b0d9b3b132f8b15ffd59c063` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51aa24a9230e62cfaf259c47de3133578ce36317` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5530eb6eb259401f3b42df99a2b3af09bf40b274` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x59f21012b2e9ba67ce6a7605e74f945d0d4c84ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5bca3389786385a35bca14c2d0582adc6cb2482e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6619871118d144c1c28ec3b23036fc1f0829ed3a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x6db97c98bac07f667817110c79c5593152b71424`; base `0xd0b82e96cba38cda95de4943a771e832bf3bb921` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b66315ae646d3b528184c37cd9365aebae1f3a0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x94a63aa724c3ca73d4c6abc06a794373b9375a83` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98d314c8eae09cdb2acb624e1714dc029da25b44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaeee7bd1570d9fe142be5d213da57abc7abf6f66` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbbaff3bf6ec4c15992c0fb37f12491fd62c5b496` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd8c6df64830288aa6091e9e8d281faedc357772` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeaa4368a09e5e7889c6ae3d44a7f5eb8587a456c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x17e07821c3a476ece3fbd923f52a55e617f32376` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2063a1e02471a14d3a06f4bad1b13dd4edfecfd5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x210760f8810b154a964b29c0ae10fa89e0abbe57` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x27d59ce77c5d833062d22223adca3f47aefaf112` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | 2 deployments: celo `0x30dd96d6b693f78730c7c48b6849d9c44caf39f0`; celo `0x8c05ea305235a67c7095a32ad4a2ee2688ade636` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x351b735cc9ae7442a84cf9cacf34dde83ebf66e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3cbb34decb79e4634e6472c2b624e56856bb9d0c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x45d2e25c04f43a06f6c3e21e4f39b860d05a7ac8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x45f7eacd310fa649a4b239df8dd448084aad8cf3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4a0c4ef72e0ba9d6a2d34dad6e794378d9ad4130` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4e017822e77e34842b71b8a24b09e6e490faca13` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x653e98561925b55977c0100636ccd314c4f232c5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6845b84ed3fb951b4c54818178a8858ab1d23f20` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | 2 deployments: celo `0x70ff80d8d811ada518e409f07b817b50d38dd1cf`; celo `0x75af205b44c2e4a755186d96b2084ddf66e8a03e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x759db9cd657e627238fb8e846b2f9805485d2352` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8ce318919438982514f9f479fdfb40d32c6ab749` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9ceb88d0714a07783f475b5fc5d743eb3ba52341` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9fac0f1e0190a97e1efbf8b20ab56424552af35c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | 2 deployments: celo `0xb0d39990e1c38b50d0b7f6911525535fbacb4c26`; celo `0xc7dd38e64822108446872c5c2105308058c5c55c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb4e1fc457dbf8d85683fe1e223398f44ff9f807a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbca03b0b918bcdc78c3111ee242c7fec73e11669` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbdfc7f4dc5bda4a186efbc9d4c2a581e34f5662f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdf1c3beccc182eaa23e1894be3bb55a81876b332` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe4816658ad10bf215053c533cceae3f59e1f1087` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xee21c0e10391be7d471917b9bbbdf79d86131d9a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf7c7d7507041977ab0328caf449f1e80085709a9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37a65dda75a4c32959834c9b391a24dca17eec10` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x45d2e25c04f43a06f6c3e21e4f39b860d05a7ac8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x51aa24a9230e62cfaf259c47de3133578ce36317` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | 2 deployments: blast `0x5715203b16f15d7349cb1e3537365e9664eaf933`; blast `0xc7dd38e64822108446872c5c2105308058c5c55c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6619871118d144c1c28ec3b23036fc1f0829ed3a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x759db9cd657e627238fb8e846b2f9805485d2352` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7fc12ab5823b8977803f009a36ea21c9b4e17f06` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x94a63aa724c3ca73d4c6abc06a794373b9375a83` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb0d39990e1c38b50d0b7f6911525535fbacb4c26` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdf1c3beccc182eaa23e1894be3bb55a81876b332` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe033bed7cae4114af84be1e9f1ca7dea07dfe1cf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf) | PeckShield | Audit | 2024-07 | stale | Direct | contract_name | 28 | high |
| [PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | contract_name | 45 | high |
| [ChainSecurity_Carbon_Audit_Report.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/ChainSecurity_Carbon_Audit_Report.pdf) | ChainSecurity | Audit | 2023-04 | stale | Direct | contract_name | 24 | high |
| [PeckShield-Audit-Report-Carbon-v1.0.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Carbon-v1.0.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | 22 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0199f3a6c4b192b9f9c3ebe31fbc535cdd4b7d4e`](./contracts/ethereum-1/0x0199f3a6c4b192b9f9c3ebe31fbc535cdd4b7d4e/) | CarbonBatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x30dd96d6b693f78730c7c48b6849d9c44caf39f0`](./contracts/sei-1329/0x30dd96d6b693f78730c7c48b6849d9c44caf39f0/) | CarbonBatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x482b27719b31760e0c45f01685d3f750c47845e1`](./contracts/celo-42220/0x482b27719b31760e0c45f01685d3f750c47845e1/) | CarbonBatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315`](./contracts/ethereum-1/0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315/) | EtherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x514910771af9ca656af840dff83e8264ecf986ca`](./contracts/ethereum-1/0x514910771af9ca656af840dff83e8264ecf986ca/) | LinkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85cbbb1ede2b3e389235ae56ec54bec8159001e5`](./contracts/ethereum-1/0x85cbbb1ede2b3e389235ae56ec54bec8159001e5/) | LiquidityProtection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xa15e3295465439a361dbcac79c1dbce6cd01e562`](./contracts/blast-81457/0xa15e3295465439a361dbcac79c1dbce6cd01e562/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6248e4118818c9075a142ef8a12e09d49888af58`](./contracts/ethereum-1/0x6248e4118818c9075a142ef8a12e09d49888af58/) | StakingRewardsClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x31548b11d685a358de7f52978e099e04116b2db0`](./contracts/blast-81457/0x31548b11d685a358de7f52978e099e04116b2db0/) | VortexAcrossBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x753425e27ae996f0db75c759c6e5eba5c74d6aaf`](./contracts/celo-42220/0x753425e27ae996f0db75c759c6e5eba5c74d6aaf/) | VortexOpStackBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x57cf0c29c2b7bc7cf5396568e25e34a1b687ea05`](./contracts/sei-1329/0x57cf0c29c2b7bc7cf5396568e25e34a1b687ea05/) | VortexStargateBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x773b75cfb146bd5d1095fa9d6d45637f02b05119`](./contracts/base-8453/0x773b75cfb146bd5d1095fa9d6d45637f02b05119/) | VortexStargateBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0f9df7475b6d50fb19940e071e5311c9ac0f68e1`](./contracts/celo-42220/0x0f9df7475b6d50fb19940e071e5311c9ac0f68e1/) | VortexWormholeBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 106 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=119

Fork inheritance lineage and inherited audits are included when available.
