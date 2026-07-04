# Agentic Audit Brief: SynFutures

## Project Overview

- Project: SynFutures (`synfutures`)
- Website: [https://www.synfutures.com/](https://www.synfutures.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.398Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: base, blast, bsc, ethereum
- Contract surface: 368 unique implementations (415 raw deployments)
- DeFi Llama TVL: $4,639,090.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 6 project-authored contract(s) across 3 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 433; live-surface contracts included: 415 (2 live, 413 unknown).
- Excluded by liveness: 18 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 368 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 364
- Unique implementations: 368
- Raw deployments: 415
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProjectRegisterUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x0c5235...2e21a6`](./contracts/base-8453/0x0c523542f44ba58e3d8a5278e762d66be22e21a6/); base `0x1d19fd...03ac1f` | ⚠️ Unaudited |
| ProjectRegisterUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x672df9...7de110`](./contracts/base-8453/0x672df93c08f6ad19e45514c4e5973ba8b07de110/); base `0xb643cd...2f3944` | ⚠️ Unaudited |
| SynFuturesToken | token | ethereum | n/a | [`0x6e15a5...0252f9`](./contracts/ethereum-1/0x6e15a54b5ecac17e58dadeddbe8506a7560252f9/) | ⚠️ Unaudited |
| SynFuturesTokenOFT | token | bsc | n/a | [`0xc9ccbd...04d3bb`](./contracts/bsc-56/0xc9ccbd76c2353e593cc975f13295e8289d04d3bb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (364)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x228f51f5f6ae1349674c2d5c37e1caa111f14455) | unknown | base | n/a | 2 deployments: base `0x0b54c5...bf4d1d`; base `0x228f51...f14455` | ❓ Unverified |
| Proxy (impl: 0x4d605e57510dc81103c6bd363a11fe00a98b88e7) | unknown | base | n/a | 2 deployments: base `0x034a4f...a08123`; base `0x4d605e...8b88e7` | ❓ Unverified |
| Proxy (impl: 0x53bf62d84131cac36eaf3954473a54fb2791a12c) | proxy | base | n/a | `0xefb4fc...4b914c` | ❓ Unverified |
| Proxy (impl: 0x5ee78082b1947a8a418f1a599041d157e2c5c886) | unknown | blast | n/a | 2 deployments: blast `0x409204...e6fba7`; blast `0x5ee780...c5c886` | ❓ Unverified |
| Proxy (impl: 0x727b0fe01214fdfabba7d85ffdf83884d244b837) | unknown | base | n/a | 2 deployments: base `0x3af980...439db2`; base `0x727b0f...44b837` | ❓ Unverified |
| Proxy (impl: 0x7845ebd12886359767bf7933d33e9f875328e9fa) | unknown | base | n/a | 2 deployments: base `0x2bcc72...69ed96`; base `0x7845eb...28e9fa` | ❓ Unverified |
| Proxy (impl: 0x83ce7c1de6d6e039e4cb0ef331e1d5e615399795) | proxy | blast | n/a | `0xc003fa...4a47d1` | ❓ Unverified |
| Proxy (impl: 0x8559deffa541ff83eae7d7ef0271fa3da0a5b239) | unknown | base | n/a | `0xa42c6f...8c8d2f` | ❓ Unverified |
| Proxy (impl: 0x9880dc031e993afdb8268142306f23075f18c36f) | unknown | base | n/a | 2 deployments: base `0x8be83f...329f1c`; base `0x9880dc...18c36f` | ❓ Unverified |
| Proxy (impl: 0xa18581168f42c9ff0423213d3205fcf6adf795b5) | unknown | base | n/a | 2 deployments: base `0x94cb98...08cbc7`; base `0xa18581...f795b5` | ❓ Unverified |
| Proxy (impl: 0xa49b3fdca2ec1ec9dd49a754d4c8f2ae7479aa79) | unknown | blast | n/a | 2 deployments: blast `0x19bac6...aaf33a`; blast `0xa49b3f...79aa79` | ❓ Unverified |
| Proxy (impl: 0xb19e3a35c12723bc8f81bbd7321b92803ce2b3d7) | proxy | base | n/a | 8 deployments: base `0x666f50...d9e997`; base `0x89c2e7...661a50`; base `0x90471f...71cec6`; base `0x9285aa...e20e26`; base `0xabc244...dbdb3f`; base `0xb39c83...d1ea45`; base `0xcdf971...1ec11b`; base `0xfdc1bb...1ce4ba` | ❓ Unverified |
| Proxy (impl: 0xb3e1fc2d08812dbfecd658bc60fe182cd6e01c4c) | unknown | blast | n/a | 2 deployments: blast `0x938fbb...07840f`; blast `0xb3e1fc...e01c4c` | ❓ Unverified |
| Proxy (impl: 0xb5b2983e25292ad406c5d915235b14fec871c8c1) | unknown | blast | n/a | 2 deployments: blast `0x29c4c7...1c3f26`; blast `0xb5b298...71c8c1` | ❓ Unverified |
| Proxy (impl: 0xbe621092b1a17ea66ccff0c4703f6750fc61ff3b) | unknown | base | n/a | 2 deployments: base `0x9b0fcc...f9bd36`; base `0xbe6210...61ff3b` | ❓ Unverified |
| Proxy (impl: 0xc4f8016bf760fcc98312e300f1fb3cdae7855272) | unknown | base | n/a | 2 deployments: base `0x9674e2...d44959`; base `0xc4f801...855272` | ❓ Unverified |
| Proxy (impl: 0xc7b285e11602c7c652951f3cc1da0bccc12b24b7) | unknown | blast | n/a | 2 deployments: blast `0x245bb4...fabb7a`; blast `0xc7b285...2b24b7` | ❓ Unverified |
| Proxy (impl: 0xd046a47e0c3fa89877a0aebec014e90fa43ba439) | unknown | blast | n/a | 2 deployments: blast `0xb85b77...32c751`; blast `0xd046a4...3ba439` | ❓ Unverified |
| Proxy (impl: 0xe7cd14018f3b5020aeb5c50188176c26f9f8e79a) | unknown | base | n/a | `0x8f93fd...1d5b36` | ❓ Unverified |
| Proxy (impl: 0xf20876a9923bd23b42fedb98bafc28f3e94ac8eb) | unknown | base | n/a | 2 deployments: base `0x245bb4...fabb7a`; base `0xf20876...4ac8eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x004546...e328a1`; base `0xb85b77...32c751` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x007754...bcbd4b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x00da3a...79f096` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x00e2dd...4f24b9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x00edbc...0b14cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x019d5d...f421db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x01da06...258ff6`; base `0x5eb834...57ee29` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03f2e7...e2816c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x055658...dcd047` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x056572...16eb7e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x05f322...4143b4`; base `0x730d6a...6ac194` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x062436...23f65f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x07a28b...bd62b4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a2e09...f4a62c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c4428...7c9fcc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x0c7f6f...3dbc2b`; base `0x769b23...320fb6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x0ca8a3...17e2e4`; base `0xc37ead...1384ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x0db5ba...b2cd29`; base `0x12a660...b8cc09` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0dea16...cf0ed7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x10b4c5...445fc3`; base `0xdb166a...b2a830` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10d871...dc9454` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x114507...fd02dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x130d35...246ed6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x1366ac...5127e6`; base `0x5510bc...b9d150` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x14e0ca...8072b9`; base `0x6926cc...2c0b18` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x17f815...814013` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x17fbe1...c58adf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x187d79...008c78` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19bac6...aaf33a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1ae92f...b472dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b1f9a...8b4276` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b8267...a5879f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x1b91f4...14e621`; base `0x8f7692...1e81cd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b95bd...205c36` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x1d4300...9cdeae`; base `0x4a5ef7...5adc08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x1e43f2...c95e00`; base `0xbe0f37...0bd87e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x208b44...071270` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x224818...37b506` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x26abc9...323af2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x286dd8...caffa5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29c4c7...1c3f26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29ee09...114d54` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2ac509...572d9f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2bbc2c...f84a7e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2c57e8...86d18f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2cf5f5...24b85a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x2d2219...62e5f3`; base `0x3bc7ad...ee3b76` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x30c94e...874397` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x344741...a9099b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3481b0...123a67` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x351942...9552ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x35614e...2977bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x35a55f...2119fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x36f091...edd99f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3914f4...f5fb3c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a85f3...79def8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x421642...5583bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x424615...c43552` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x43e5a3...ee8c95`; base `0xc003fa...4a47d1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x450483...0f7688` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x46e45d...967180` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x47ab1e...b1d6fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4968e9...2987e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x49b9b3...fbc1ec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x49be45...934616` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4a96fd...cd94c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4bbc0f...c0334b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4dd076...f0858e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x503f83...b140e6`; base `0xb3a590...901663` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51fc59...7fae86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5437a7...5e4f81` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x549926...29a40a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x54bc4a...7bf78d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x55e76d...ff9410` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x561a3d...bf1f7d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5850c2...51ee27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x58eb7b...dc106b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5a0117...0fcbd1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x5b33f9...e38ca1`; base `0xc3ec13...a5725e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5d1ebb...422bcc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5d2ea7...e67b74` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5e2de6...6fc317` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x5e63b8...d3f606`; base `0x6f26b4...a5739a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ee780...c5c886` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62a31d...5bf3cc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x632cb6...1278c6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x646284...10f7ad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x661a9b...e00a3f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6705c2...0e3c51` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x693307...e49dc1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6970ca...8e19e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a372d...72c257` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6adf8b...4b3afe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6c0f90...47c574` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6c8203...bee8ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6cfb0c...6bccd4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6e5b87...82d2f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x6ed355...542bbd`; base `0xba2593...91f3d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6f1e74...748ff5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6f9019...db222c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6fc712...2f3fd3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x744499...c929a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76a51e...875c9b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x77ff90...5862c5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7917bf...ca7dd0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7c3960...7be4b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7cbb40...2e7b59` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7ff25e...b27796` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81a391...8d276e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x854330...e1cb8d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x85b9ed...a00f8c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x860555...fbde94` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x86eb76...7b1511` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8926b1...849444` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a5355...641915` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a8bac...81cd26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8bafd6...3d6163` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8c3867...bb3f7b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x907ed8...11b9db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x910517...dd2112` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x92bbc2...8eccfa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x938fbb...07840f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9467ae...a9ef80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98d584...953707` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x995000...e21324` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9a7caf...cc9960` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9abb2e...4708ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9b0684...bc914e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9b1608...c5bcac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c7038...cb5187` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9ffe20...52d770` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3480b...920467` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa44561...e7531a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa49b3f...79aa79` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa901e7...c64134` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaaea67...80ef8d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xae5b10...bd83dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaebe4e...f8d942` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb1838d...4879c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb28922...3437e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb373ef...8fe043` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb3b27a...223c59` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb3e1fc...e01c4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb4b678...c8eb85` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5b298...71c8c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb61986...7a5e7c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb63902...fea172` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0xb7ce7b...fe42af`; base `0xe73d81...dcf8aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb9420f...293a7e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb97e69...a5326a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbae2c4...f70b4b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb74bb...9e2e37` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbbe724...015eb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbcc19e...fa8ee7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe4af4...e2ed5b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe6d5c...09e60b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf35bb...aca536` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc3365f...541fed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc3dd4b...00a280` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc3e38e...6942b3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc73dac...a63fa6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc77c77...bd3ca8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7b285...2b24b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcae2c6...b625f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc7d03...b8b69d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xccec32...b62855` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf5655...f7f4b4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd046a4...3ba439` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd2180e...444e8f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd25a40...0c8b15` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd3c461...71fe8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd45fb0...404bd1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd51452...1a54a2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd6c30d...ebf7bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd964e4...42a111` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd9b7ee...3a9947` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdaec96...9be2ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdbe8ad...66e89d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd42b6...0ec940` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde58f3...bf5313` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe07807...ded051` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1927c...f1b23b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1f29f...cd9fcd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe25ddb...3efea5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe48218...68fa2e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe551db...a4aa6d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe64616...bf7ff5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6f9de...87450f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe93d50...d09067` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb2f7e...f41416` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xebb397...378318` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec629d...d91d9b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xefdb53...26d70d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0a58c...4b6ca8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0e06b...3b15bc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf45d60...7620d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6b705...7e92ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7e3c2...52722e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf83ff7...21d6de` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb2206...5d2018` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd1cce...08d2fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdf9f9...8deaa3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe0a67...61118b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x004546...e328a1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x007754...bcbd4b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | 2 deployments: blast `0x00e2dd...4f24b9`; blast `0x730d6a...6ac194` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x01da06...258ff6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x034a4f...a08123` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x03f2e7...e2816c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x056572...16eb7e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x05f322...4143b4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x07a28b...bd62b4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0a2e09...f4a62c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0b54c5...bf4d1d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0c7f6f...3dbc2b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | 2 deployments: blast `0x0db5ba...b2cd29`; blast `0x12a660...b8cc09` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0dea16...cf0ed7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x10b4c5...445fc3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x114507...fd02dc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x130d35...246ed6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1366ac...5127e6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x14e0ca...8072b9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x17fbe1...c58adf` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x187d79...008c78` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1b91f4...14e621` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | 2 deployments: blast `0x1d4300...9cdeae`; blast `0x4a5ef7...5adc08` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x208b44...071270` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x224818...37b506` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x228f51...f14455` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x26abc9...323af2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2ac509...572d9f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2c57e8...86d18f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2cf5f5...24b85a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | 2 deployments: blast `0x2d2219...62e5f3`; blast `0x3bc7ad...ee3b76` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x30c94e...874397` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3481b0...123a67` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x351942...9552ee` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x35614e...2977bb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x35a55f...2119fb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x36f091...edd99f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3914f4...f5fb3c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3a85f3...79def8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3af980...439db2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x43e5a3...ee8c95` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x49b9b3...fbc1ec` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x49be45...934616` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4a96fd...cd94c1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4d605e...8b88e7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4dd076...f0858e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x51fc59...7fae86` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5437a7...5e4f81` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x549926...29a40a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5510bc...b9d150` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x55e76d...ff9410` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5850c2...51ee27` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x58eb7b...dc106b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5a0117...0fcbd1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5b33f9...e38ca1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5d1ebb...422bcc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5e2de6...6fc317` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5e63b8...d3f606` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5eb834...57ee29` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x62f2d5...9316e8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x646284...10f7ad` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x661a9b...e00a3f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6705c2...0e3c51` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6926cc...2c0b18` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6a372d...72c257` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6adf8b...4b3afe` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6c0f90...47c574` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6c8203...bee8ab` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6e5b87...82d2f4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6ed355...542bbd` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6f1e74...748ff5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6f26b4...a5739a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6fc712...2f3fd3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x727b0f...44b837` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x744499...c929a1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x769b23...320fb6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7917bf...ca7dd0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7ef84c...df33ac` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7ff25e...b27796` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x81a391...8d276e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x854330...e1cb8d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x86eb76...7b1511` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8a8bac...81cd26` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8f7692...1e81cd` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8f93fd...1d5b36` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x910517...dd2112` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9285aa...e20e26` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9674e2...d44959` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9b0684...bc914e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9c7038...cb5187` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9f6a95...1c9bf4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa42c6f...8c8d2f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa44561...e7531a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa901e7...c64134` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xaaea67...80ef8d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xaebe4e...f8d942` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb1838d...4879c3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb373ef...8fe043` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb3b27a...223c59` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb61986...7a5e7c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb63902...fea172` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb7ce7b...fe42af` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb9420f...293a7e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xba2593...91f3d9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbcc19e...fa8ee7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbe0f37...0bd87e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbe4af4...e2ed5b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbe6d5c...09e60b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc37ead...1384ba` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc3dd4b...00a280` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc3ec13...a5725e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xccec32...b62855` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd25a40...0c8b15` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd3c461...71fe8a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd51452...1a54a2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd6c30d...ebf7bb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd964e4...42a111` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd9b7ee...3a9947` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdaec96...9be2ce` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdb166a...b2a830` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdd42b6...0ec940` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xde58f3...bf5313` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe07807...ded051` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe1f29f...cd9fcd` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe25ddb...3efea5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe48218...68fa2e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe551db...a4aa6d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe6f9de...87450f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe73d81...dcf8aa` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xebb397...378318` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xec629d...d91d9b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xefb4fc...4b914c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf0a58c...4b6ca8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf0e06b...3b15bc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf20876...4ac8eb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf45d60...7620d7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf7e3c2...52722e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfb2206...5d2018` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfd1cce...08d2fe` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfdf9f9...8deaa3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfe0a67...61118b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf](https://sherlock-files.ams3.digitaloceanspaces.com/reports/2026.04.02%20-%20Final%20-%20Anchored%20Collaborative%20Audit%20Report%201775117748.pdf) | Sherlock | Contest | 2026-04 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x0c5235...2e21a6`](./contracts/base-8453/0x0c523542f44ba58e3d8a5278e762d66be22e21a6/) | ProjectRegisterUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e15a5...0252f9`](./contracts/ethereum-1/0x6e15a54b5ecac17e58dadeddbe8506a7560252f9/) | SynFuturesToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc9ccbd...04d3bb`](./contracts/bsc-56/0xc9ccbd76c2353e593cc975f13295e8289d04d3bb/) | SynFuturesTokenOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 365 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11701] 2026.04.02 - Final - Anchored Collaborative Audit Report 1775117748.pdf

Fork inheritance lineage and inherited audits are included when available.
