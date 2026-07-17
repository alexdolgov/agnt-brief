# Agentic Audit Brief: BOB Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 40.4% over 90 days

## Project Overview

- Project: BOB Bridge (`bob-bridge`)
- Website: [https://www.gobob.xyz](https://www.gobob.xyz)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:07.659Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum, linea
- Contract surface: 40 unique implementations (79 raw deployments)
- DeFi Llama TVL: $2,343,275.74
- On-chain TVL (included contracts): $1,178,796.23
- TVL by chain: Ethereum $1,178,796.23

## Project Description

Bridge. Structurally: 202 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 12 functional families. Its contracts share 23 common project-authored base contract(s) (faultdisputegame, semver, irisczeroverifier). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 91; live-surface contracts included: 76 (76 live, 0 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/26 (3.8%)
- Deployed-live implementations: 40 of 40 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/40
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 40
- Raw deployments: 79
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $1,178,796.23
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,178,796.23 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 1 | 2.5% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L2USDCBridge | unknown | linea | n/a | [`0x1998108fa7993ea67a8b1a99d392a3288c5a5521`](./contracts/linea-59144/0x1998108fa7993ea67a8b1a99d392a3288c5a5521/) | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BobToken | token | ethereum | n/a | 2 deployments: ethereum [`0x52b5fb4b0f6572b8c44d0251cc224513ac5eb7e7`](./contracts/ethereum-1/0x52b5fb4b0f6572b8c44d0251cc224513ac5eb7e7/); ethereum `0xc9746f73cc33a36c2cd55b8aefd732586946cedd` | ⚠️ Unaudited |
| SideToken | token | ethereum | n/a | 2 deployments: ethereum [`0xbdab72602e9ad40fc6a6852caf43258113b8f7a5`](./contracts/ethereum-1/0xbdab72602e9ad40fc6a6852caf43258113b8f7a5/); ethereum `0xbdbb63f938c8961af31ead3deba5c96e6a323dd1` | ⚠️ Unaudited |
| AddressManager | unknown | ethereum | n/a | [`0xf2dc77c697e892542cc53336178a78bb313dfdc7`](./contracts/ethereum-1/0xf2dc77c697e892542cc53336178a78bb313dfdc7/) | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | n/a | [`0xd0216bdcc195abdf77746b6a6347ce85e2535431`](./contracts/ethereum-1/0xd0216bdcc195abdf77746b6a6347ce85e2535431/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | n/a | [`0x4bba758f006ef09402ef31724203f316ab74e4a0`](./contracts/ethereum-1/0x4bba758f006ef09402ef31724203f316ab74e4a0/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | n/a | [`0x96123dbfc3253185b594c6a7472ee5a21e9b1079`](./contracts/ethereum-1/0x96123dbfc3253185b594c6a7472ee5a21e9b1079/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xc91482a96e9c2a104d9298d1980eccf8c4dc764e`](./contracts/ethereum-1/0xc91482a96e9c2a104d9298d1980eccf8c4dc764e/) | ⚠️ Unaudited |
| KailuaGame | unknown | ethereum | n/a | 5 deployments: ethereum [`0x296e7ad6d441b0627768bc0650179a4206479444`](./contracts/ethereum-1/0x296e7ad6d441b0627768bc0650179a4206479444/); ethereum `0x4be239c86364ed73fc244a5f50c8ccb101a492ef`; ethereum `0xd37b0bedd9094988a31dbbb6bf77dc97269e742b`; ethereum `0xe34577e7d8bbdf044de236b15df132b1409ca82a`; ethereum `0xe4341585b9bbc55a44c20a3c037058891e7a053b` | ⚠️ Unaudited |
| KailuaTreasury | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x9937033cc967eed9d753e31c77d2f146d002ae53`](./contracts/ethereum-1/0x9937033cc967eed9d753e31c77d2f146d002ae53/); ethereum `0x9b3e1661bccaf907893b71e4016c01513ae9263c`; ethereum `0xc7eacdd1e755d2823463abc4434ca445f752b336`; ethereum `0xe99af5f4c60e06beb3827f4ffdd06e88c55fb895` | ⚠️ Unaudited |
| KailuaVerifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b49976a7340d0a3c00d1bebe0e36e2367d89c7c`](./contracts/ethereum-1/0x6b49976a7340d0a3c00d1bebe0e36e2367d89c7c/); ethereum `0x7fc721acc2183c292737c5a28ea1b30d19f1cf29` | ⚠️ Unaudited |
| KailuaVerifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa23bf38299bbcbaa01b9ea8a1d3412d9f405b97d`](./contracts/ethereum-1/0xa23bf38299bbcbaa01b9ea8a1d3412d9f405b97d/); ethereum `0xf59da245d3d69e5432afd05008e8d332c1bfab4e` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | 2 deployments: ethereum [`0x237853621998a33fa5b9b820592f4c6f4c158c12`](./contracts/ethereum-1/0x237853621998a33fa5b9b820592f4c6f4c158c12/); ethereum `0xe3d981643b806fb8030cdb677d6e60892e547eda` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x5d5a095665886119693f0b41d8dfee78da033e8b`](./contracts/ethereum-1/0x5d5a095665886119693f0b41d8dfee78da033e8b/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x5ff93263d5181b2a826f8c51d54bc0da2d20d50a`](./contracts/ethereum-1/0x5ff93263d5181b2a826f8c51d54bc0da2d20d50a/) | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x7ae1d3bd877a4c5ca257404ce26be93a02c98013`](./contracts/ethereum-1/0x7ae1d3bd877a4c5ca257404ce26be93a02c98013/); ethereum `0xa67fc05d295d2be6bc4cbfad4f880c1c58734212` | ⚠️ Unaudited |
| L1StandardBridge | operational_periphery | ethereum | n/a | [`0x0b09ba359a106c9ea3b181cbc5f394570c7d2a7a`](./contracts/ethereum-1/0x0b09ba359a106c9ea3b181cbc5f394570c7d2a7a/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x3f6ce1b36e5120bbc59d0cfe8a5ac8b6464ac1f7`](./contracts/ethereum-1/0x3f6ce1b36e5120bbc59d0cfe8a5ac8b6464ac1f7/) | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | [`0x59191bd38eba4a642c9fec308dc188731b229822`](./contracts/ethereum-1/0x59191bd38eba4a642c9fec308dc188731b229822/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0xdda53e23f8a32640b04d7256e651c1db98db11c1`](./contracts/ethereum-1/0xdda53e23f8a32640b04d7256e651c1db98db11c1/) | ⚠️ Unaudited |
| MIPS64 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17c64e93846935dfbd281a5540a14d4cd67195f7`](./contracts/ethereum-1/0x17c64e93846935dfbd281a5540a14d4cd67195f7/); ethereum `0xf027f4a985560fb13324e943edf55ad6f1d15dc1` | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | n/a | [`0xca11bde05977b3631167028862be2a173976ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| OPContractsManager | governance | ethereum | n/a | [`0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c`](./contracts/ethereum-1/0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c/) | ⚠️ Unaudited |
| OPSuccinctDisputeGame | unknown | ethereum | n/a | [`0x2c2da5effabda3a9ffe8e3d526c5b1f3b42fea6d`](./contracts/ethereum-1/0x2c2da5effabda3a9ffe8e3d526c5b1f3b42fea6d/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | n/a | [`0x5493f4677a186f64805fe7317d6993ba4863988f`](./contracts/ethereum-1/0x5493f4677a186f64805fe7317d6993ba4863988f/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x5557408ab14013ce9dbb300de0d87d386bb09cb6`](./contracts/ethereum-1/0x5557408ab14013ce9dbb300de0d87d386bb09cb6/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0x994e3b01d130944a3e67bfd3b8fc73069b959fec`](./contracts/ethereum-1/0x994e3b01d130944a3e67bfd3b8fc73069b959fec/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3c877699263119022cdaa251058c1bac8fc43287`](./contracts/ethereum-1/0x3c877699263119022cdaa251058c1bac8fc43287/); ethereum `0x8adee124447435fe03e3cd24df3f4cae32e65a3e` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5b172bbfa0140285a02374ec1f5b9f25ef415514`](./contracts/ethereum-1/0x5b172bbfa0140285a02374ec1f5b9f25ef415514/); ethereum `0xb443da3e07052204a02d630a8933dac05a0d6fb4` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | ethereum | n/a | 16 deployments: ethereum [`0x0605f3bf6de982f4b7e24b150a54c694f88cb27c`](./contracts/ethereum-1/0x0605f3bf6de982f4b7e24b150a54c694f88cb27c/); ethereum `0x07e50a0ad526d8cd1eb6b9220e922125ca1ab70b`; ethereum `0x1ffc3535517fe991a05b5c2a939188370ae996a5`; ethereum `0x2dd08101104c64cb98443a9b92cd21c7936f15b2`; ethereum `0x33f9c5201f97dd1856a97fd0c527b7c0f6a710a3`; ethereum `0x4695931f9b659eec35e1c2057d08341f16e05dad`; ethereum `0x6753df477d00ce9b6a1d81d143cc0fc1382f6776`; ethereum `0x6a386814c10a3fb7f75473ec675278c94421b05e`; ethereum `0x703db807862df033883988a6e6e31742404914ca`; ethereum `0x7342e0d56913479260bf143300424f5e7b3ec237`; ethereum `0x7fe0013d4a1b86bb57c9205d4a7203d0ab7d87db`; ethereum `0x82e5624e76cdc8315c56e61777f3fac0c726c8e1`; ethereum `0xa5d58aa93682a9a29492588d153304e093e39084`; ethereum `0xbcee7287370b3ed030e9b15ec94003307716fb8b`; ethereum `0xc7bef1384ad5285f2db983bc1c6673008f8bc630`; ethereum `0xe3bd00f57b44e7aa4a6c212878427c85d638702a` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x1fb8cdfc6831fc866ed9c51af8817da5c287add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/); ethereum `0xee74fd716edbfe6575ecc18b39f181b4de79fa7a` | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0dd8ed2f044fde13be5d28d51b29e87e22bd97d2`](./contracts/ethereum-1/0x0dd8ed2f044fde13be5d28d51b29e87e22bd97d2/); ethereum `0x87692b8741ba36e2d7f7942c418829a305b3eff2` | ⚠️ Unaudited |
| Proxy | proxy | ethereum | n/a | 2 deployments: ethereum [`0x11c03c11ba32fede01fb870ed35ecb0f3d5f8acf`](./contracts/ethereum-1/0x11c03c11ba32fede01fb870ed35ecb0f3d5f8acf/); ethereum `0xb9d8f5ef115f7fdd92bfbc1c02500b70b317aad4` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0d9f416260598313be6fdf6b010f2fbc34957cd0`](./contracts/ethereum-1/0x0d9f416260598313be6fdf6b010f2fbc34957cd0/); ethereum `0x43ca789d45234c2251de20da39fdfb272c89d12f`; ethereum `0xa70ddfb3e00fcfd083e64b200fe867104f703e1c`; ethereum `0xb4899ff43ae727b1e9cb19ac44660e4a43fad0b5` | ⚠️ Unaudited |
| RiscZeroVerifierRouter | adapter | ethereum | n/a | [`0x8eab2d97dfce405a1692a21b3ff3a172d593d319`](./contracts/ethereum-1/0x8eab2d97dfce405a1692a21b3ff3a172d593d319/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | n/a | 2 deployments: ethereum [`0x097f99768a0a4a0a81babbcb1ea18193ba9d53cc`](./contracts/ethereum-1/0x097f99768a0a4a0a81babbcb1ea18193ba9d53cc/); ethereum `0xe925205ad05d8d612ac205c4941ccd61fc965c46` | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x554ffc3fe0ae9487f58cec547e91ba337cc5e667`](./contracts/ethereum-1/0x554ffc3fe0ae9487f58cec547e91ba337cc5e667/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | n/a | 2 deployments: ethereum [`0x340f923e5c7cbb2171146f64169ec9d5a9ffe647`](./contracts/ethereum-1/0x340f923e5c7cbb2171146f64169ec9d5a9ffe647/); ethereum `0xaa0a1efd35d6578ea6b5704dbc2c40b36a55b590` | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0xacb886b75d76d1c8d9248cfddfa09b70c71c5393`](./contracts/ethereum-1/0xacb886b75d76d1c8d9248cfddfa09b70c71c5393/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0x68749665ff8d2d112fa859aa293f07a622782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [BOB-Onramp-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Onramp-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [BOB-Staking-security-review_2025-10-18.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Staking-security-review_2025-10-18.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [BOB-USDCBridge-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-USDCBridge-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [BOB-security-review-August.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-August.pdf) | Pashov Audit Group | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [BOB-security-review-June.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-June.pdf) | Pashov Audit Group | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [BOB-security-review-September.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-September.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [BOB-security-review_2025-03-17.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review_2025-03-17.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf](https://docs.gobob.xyz/assets/files/Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf) | Code4rena | Contest | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x52b5fb4b0f6572b8c44d0251cc224513ac5eb7e7`](./contracts/ethereum-1/0x52b5fb4b0f6572b8c44d0251cc224513ac5eb7e7/) | BobToken | token | $1,036,450.42 | Verified native implementation with $1,036,450.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdab72602e9ad40fc6a6852caf43258113b8f7a5`](./contracts/ethereum-1/0xbdab72602e9ad40fc6a6852caf43258113b8f7a5/) | SideToken | token | $142,345.81 | Verified native implementation with $142,345.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2dc77c697e892542cc53336178a78bb313dfdc7`](./contracts/ethereum-1/0xf2dc77c697e892542cc53336178a78bb313dfdc7/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0216bdcc195abdf77746b6a6347ce85e2535431`](./contracts/ethereum-1/0xd0216bdcc195abdf77746b6a6347ce85e2535431/) | AnchorStateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bba758f006ef09402ef31724203f316ab74e4a0`](./contracts/ethereum-1/0x4bba758f006ef09402ef31724203f316ab74e4a0/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9937033cc967eed9d753e31c77d2f146d002ae53`](./contracts/ethereum-1/0x9937033cc967eed9d753e31c77d2f146d002ae53/) | KailuaTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b49976a7340d0a3c00d1bebe0e36e2367d89c7c`](./contracts/ethereum-1/0x6b49976a7340d0a3c00d1bebe0e36e2367d89c7c/) | KailuaVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa23bf38299bbcbaa01b9ea8a1d3412d9f405b97d`](./contracts/ethereum-1/0xa23bf38299bbcbaa01b9ea8a1d3412d9f405b97d/) | KailuaVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x237853621998a33fa5b9b820592f4c6f4c158c12`](./contracts/ethereum-1/0x237853621998a33fa5b9b820592f4c6f4c158c12/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ff93263d5181b2a826f8c51d54bc0da2d20d50a`](./contracts/ethereum-1/0x5ff93263d5181b2a826f8c51d54bc0da2d20d50a/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f6ce1b36e5120bbc59d0cfe8a5ac8b6464ac1f7`](./contracts/ethereum-1/0x3f6ce1b36e5120bbc59d0cfe8a5ac8b6464ac1f7/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59191bd38eba4a642c9fec308dc188731b229822`](./contracts/ethereum-1/0x59191bd38eba4a642c9fec308dc188731b229822/) | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5557408ab14013ce9dbb300de0d87d386bb09cb6`](./contracts/ethereum-1/0x5557408ab14013ce9dbb300de0d87d386bb09cb6/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x994e3b01d130944a3e67bfd3b8fc73069b959fec`](./contracts/ethereum-1/0x994e3b01d130944a3e67bfd3b8fc73069b959fec/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c877699263119022cdaa251058c1bac8fc43287`](./contracts/ethereum-1/0x3c877699263119022cdaa251058c1bac8fc43287/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b172bbfa0140285a02374ec1f5b9f25ef415514`](./contracts/ethereum-1/0x5b172bbfa0140285a02374ec1f5b9f25ef415514/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dd8ed2f044fde13be5d28d51b29e87e22bd97d2`](./contracts/ethereum-1/0x0dd8ed2f044fde13be5d28d51b29e87e22bd97d2/) | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x554ffc3fe0ae9487f58cec547e91ba337cc5e667`](./contracts/ethereum-1/0x554ffc3fe0ae9487f58cec547e91ba337cc5e667/) | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x340f923e5c7cbb2171146f64169ec9d5a9ffe647`](./contracts/ethereum-1/0x340f923e5c7cbb2171146f64169ec9d5a9ffe647/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xacb886b75d76d1c8d9248cfddfa09b70c71c5393`](./contracts/ethereum-1/0xacb886b75d76d1c8d9248cfddfa09b70c71c5393/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 11 |
| standard_library | 5 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [2704] BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf
- [2712] BOB-Onramp-security-review.pdf
- [2713] BOB-Staking-security-review_2025-10-18.pdf
- [2715] BOB-security-review-August.pdf
- [2716] BOB-security-review-June.pdf
- [2717] BOB-security-review-September.pdf
- [2718] BOB-security-review_2025-03-17.pdf
- [2719] Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf

Fork inheritance lineage and inherited audits are included when available.
