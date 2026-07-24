# Agentic Audit Brief: BOB Fusion

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 26 (0 matched; 26 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: BOB Fusion (`bob-fusion`)
- Website: [https://gobob.xyz](https://gobob.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, sepolia
- Contract surface: 173 unique implementations (176 raw deployments)
- Coverage basis: 0/12 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $285,350.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for BOB Fusion. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across ethereum, sepolia. Structural roles: 11 core, 1 supporting. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: core (11), supporting (1)
- Contract kinds: contract (12)
- Detected standards: ownable (5), erc1967proxy (3), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (7), solmate (3), solady (1)
- Upgradeable-pattern rows: 8

## Fork Lineage

This project reuses audited code from **BOB Bridge** (`bob-bridge`) in the KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame subsystem.
8 audits inherited from `bob-bridge`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Fork Analysis

1 of 31 contracts are derived from known codebases. 30 contracts have no detected origin.

### Forked Contracts

**L1StandardBridge** (`0x0b09ba359a106c9ea3b181cbc5f394570c7d2a7a`, chain 1)
Origin: bob-bridge (`0x0b09ba...7d2a7a`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x37e15e4d6dffa9e5e320ee1ec036922e563cb76c`, chain 1)
- UnnamedContract (`0x3f6ce1b36e5120bbc59d0cfe8a5ac8b6464ac1f7`, chain 1)
- UnnamedContract (`0x4da82a327773965b8d4d85fa3db8249b387458e7`, chain 1)
- UnnamedContract (`0x5493f4677a186f64805fe7317d6993ba4863988f`, chain 1)
- UnnamedContract (`0x5557408ab14013ce9dbb300de0d87d386bb09cb6`, chain 1)
- UnnamedContract (`0x5d5a095665886119693f0b41d8dfee78da033e8b`, chain 1)
- UnnamedContract (`0x5e40b9231b86984b5150507046e354dbfbed3d9e`, chain 1)
- UnnamedContract (`0x7ae1d3bd877a4c5ca257404ce26be93a02c98013`, chain 1)
- UnnamedContract (`0x8adee124447435fe03e3cd24df3f4cae32e65a3e`, chain 1)
- UnnamedContract (`0x96123dbfc3253185b594c6a7472ee5a21e9b1079`, chain 1)
- UnnamedContract (`0xa70ddfb3e00fcfd083e64b200fe867104f703e1c`, chain 1)
- UnnamedContract (`0xacb886b75d76d1c8d9248cfddfa09b70c71c5393`, chain 1)
- UnnamedContract (`0xb443da3e07052204a02d630a8933dac05a0d6fb4`, chain 1)
- UnnamedContract (`0xe3bd00f57b44e7aa4a6c212878427c85d638702a`, chain 1)
- UnnamedContract (`0xe3d981643b806fb8030cdb677d6e60892e547eda`, chain 1)
- UnnamedContract (`0xe925205ad05d8d612ac205c4941ccd61fc965c46`, chain 1)
- UnnamedContract (`0xe99af5f4c60e06beb3827f4ffdd06e88c55fb895`, chain 1)
- UnnamedContract (`0xeba14d52f1b19ca65455e5ecab72d2ffd9e43fef`, chain 1)
- UnnamedContract (`0xf027f4a985560fb13324e943edf55ad6f1d15dc1`, chain 1)
- AddressManager (`0xf2dc77c697e892542cc53336178a78bb313dfdc7`, chain 1)
- AnchorStateRegistry (`0x7b465370bb7a333f99edd19599eb7fb1c2d3f8d2`, chain 1)
- DisputeGameFactory (`0x4bba758f006ef09402ef31724203f316ab74e4a0`, chain 1)
- OPContractsManager (`0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c`, chain 1)
- PreimageOracle (`0x1fb8cdfc6831fc866ed9c51af8817da5c287add3`, chain 1)
- Proxy (`0x0dd8ed2f044fde13be5d28d51b29e87e22bd97d2`, chain 1)
- Proxy (`0x3a1d54496cf461ffc96d3b1a8a0b43b091ea3c13`, chain 1)
- Proxy (`0x5ff93263d5181b2a826f8c51d54bc0da2d20d50a`, chain 1)
- ProxyAdmin (`0x0d9f416260598313be6fdf6b010f2fbc34957cd0`, chain 1)
- RiscZeroVerifierRouter (`0x8eab2d97dfce405a1692a21b3ff3a172d593d319`, chain 1)
- SystemConfig (`0x340f923e5c7cbb2171146f64169ec9d5a9ffe647`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 12; live-surface rows included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/58 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/12 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 29 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 115 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 29 of 173 unique; 144 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/35
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 138
- Unique implementations: 173
- Raw deployments: 176
- Audits discovered: 26 (18 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 4 fresh, 11 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230820 | `0xf2dc77c697e892542cc53336178a78bb313dfdc7` | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230791 | `0x7b465370bb7a333f99edd19599eb7fb1c2d3f8d2` | ⚠️ Unaudited |
| BobToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52b5fb4b0f6572b8c44d0251cc224513ac5eb7e7` | ⚠️ Unaudited |
| DisputeGameFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230779 | `0x4bba758f006ef09402ef31724203f316ab74e4a0` | ⚠️ Unaudited |
| KailuaGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x296e7ad6d441b0627768bc0650179a4206479444` | ⚠️ Unaudited |
| KailuaTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9937033cc967eed9d753e31c77d2f146d002ae53` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x237853621998a33fa5b9b820592f4c6f4c158c12` | ⚠️ Unaudited |
| L1StandardBridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230769 | `0x0b09ba359a106c9ea3b181cbc5f394570c7d2a7a` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59191bd38eba4a642c9fec308dc188731b229822` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003ea7f54b6dcf6cee86986edc18143a35f15505` | ⚠️ Unaudited |
| MIPS64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c64e93846935dfbd281a5540a14d4cd67195f7` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca11bde05977b3631167028862be2a173976ca11` | ⚠️ Unaudited |
| NEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc80c051057b774cd75067dc48f8987c4eb97a5e` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5a41e85f4ce2433beef476305d307b9205d98d` | ⚠️ Unaudited |
| OPContractsManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230805 | `0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c` | ⚠️ Unaudited |
| OPSuccinctDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c2da5effabda3a9ffe8e3d526c5b1f3b42fea6d` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0640c9377a4fac00225097eacbb0295f4d5fbd76` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x994e3b01d130944a3e67bfd3b8fc73069b959fec` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c877699263119022cdaa251058c1bac8fc43287` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0605f3bf6de982f4b7e24b150a54c694f88cb27c` | ⚠️ Unaudited |
| PreimageOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230773 | `0x1fb8cdfc6831fc866ed9c51af8817da5c287add3` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x097f99768a0a4a0a81babbcb1ea18193ba9d53cc` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230858 | 2 deployments: ethereum `0x0dd8ed2f044fde13be5d28d51b29e87e22bd97d2`; ethereum `0x37e15e4d6dffa9e5e320ee1ec036922e563cb76c` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11c03c11ba32fede01fb870ed35ecb0f3d5f8acf` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230859 | 2 deployments: ethereum `0x3a1d54496cf461ffc96d3b1a8a0b43b091ea3c13`; ethereum `0x5e40b9231b86984b5150507046e354dbfbed3d9e` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230860 | `0x5ff93263d5181b2a826f8c51d54bc0da2d20d50a` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6b49976a7340d0a3c00d1bebe0e36e2367d89c7c`; ethereum `0x7fc721acc2183c292737c5a28ea1b30d19f1cf29` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230771 | `0x0d9f416260598313be6fdf6b010f2fbc34957cd0` | ⚠️ Unaudited |
| RiscZeroGroth16Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a99469f18a5863d3258e577892589386dfd965e` | ⚠️ Unaudited |
| RiscZeroVerifierEmergencyStop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08aed6c108e500540a9544bef7a8b8a05e056e87` | ⚠️ Unaudited |
| RiscZeroVerifierRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230795 | `0x8eab2d97dfce405a1692a21b3ff3a172d593d319` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230775 | `0x340f923e5c7cbb2171146f64169ec9d5a9ffe647` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e98db51010dd1ade14dd3fb164e218805fdba1b` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b144e07a0826182b6b59788c34b32bfa86fb711` | ⚠️ Unaudited |
| WrapperLockEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991f0e5c5775ca9dd02e30e67f545c36cff3690e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (138)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07e50a0ad526d8cd1eb6b9220e922125ca1ab70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e162344a1ca3a31c9455212d055bd3101d48880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ffc3535517fe991a05b5c2a939188370ae996a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dd08101104c64cb98443a9b92cd21c7936f15b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33f9c5201f97dd1856a97fd0c527b7c0f6a710a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x345f46fdd0adad44ba8e2a65ce6a7ba879f3404e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x377d6993b848013991e3d8b3028db74ec6fdf03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37f330e667208633e1da1cf601d01f0ef8484306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3974436fa4bb4deb5a04ace51a704b10ff5a1f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b3505ae63b6cb180ba684cdfe76d71f6096a2bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230777 | `0x3f6ce1b36e5120bbc59d0cfe8a5ac8b6464ac1f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000000000000000000000000000000000000f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000000000000000000000000000000000001a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ca789d45234c2251de20da39fdfb272c89d12f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44c220f0598345195ce99ad6a57adffcb9ea33e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44efe3ecf916f756c02e09fe17fe2d9abc8d9d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4695931f9b659eec35e1c2057d08341f16e05dad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4be239c86364ed73fc244a5f50c8ccb101a492ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230781 | `0x4da82a327773965b8d4d85fa3db8249b387458e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230783 | `0x5493f4677a186f64805fe7317d6993ba4863988f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x554ffc3fe0ae9487f58cec547e91ba337cc5e667` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230785 | `0x5557408ab14013ce9dbb300de0d87d386bb09cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5687b5950fc5604c7d4959bf09192c57d0d62891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57e99fb38da9e332d0d13a7223a7037de041cf1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b172bbfa0140285a02374ec1f5b9f25ef415514` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230787 | `0x5d5a095665886119693f0b41d8dfee78da033e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6753df477d00ce9b6a1d81d143cc0fc1382f6776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a386814c10a3fb7f75473ec675278c94421b05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x703db807862df033883988a6e6e31742404914ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70675e148b5f88fffaeac70bc6c5369f3273bef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70dee5e3723c76fc83238f62d2b3d4071533de69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7342e0d56913479260bf143300424f5e7b3ec237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7444d4470ed4320e4b84ee160351fbbcbcd4bb2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75f48fe4deab3f9043ee995c3c84d6a2303d9a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a25d06af869d0a94f6effaffa0a830eebf1ecfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230789 | `0x7ae1d3bd877a4c5ca257404ce26be93a02c98013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe0013d4a1b86bb57c9205d4a7203d0ab7d87db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82e5624e76cdc8315c56e61777f3fac0c726c8e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87692b8741ba36e2d7f7942c418829a305b3eff2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230793 | `0x8adee124447435fe03e3cd24df3f4cae32e65a3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a4684d6f7085c19138bd4f9f3295fa9943c622` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230797 | `0x96123dbfc3253185b594c6a7472ee5a21e9b1079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98ba8b9cf38732db65c7e556617135a0e6669f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b3e1661bccaf907893b71e4016c01513ae9263c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fe7ef727da3d79e0308ff43f31ea1d077ee9f41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa23bf38299bbcbaa01b9ea8a1d3412d9f405b97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa58898f7f706c208410232a8fbf70699cd0ef9a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5d58aa93682a9a29492588d153304e093e39084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67fc05d295d2be6bc4cbfad4f880c1c58734212` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230799 | `0xa70ddfb3e00fcfd083e64b200fe867104f703e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0a1efd35d6578ea6b5704dbc2c40b36a55b590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230801 | `0xacb886b75d76d1c8d9248cfddfa09b70c71c5393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae6770a207e86fae3b191564fa55ce7bfee0dde9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ebba78eebb4670ca357faea3c2b723cdf03221` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230803 | `0xb443da3e07052204a02d630a8933dac05a0d6fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4899ff43ae727b1e9cb19ac44660e4a43fad0b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb839ea7bba8e6bb2893ca5252f3f3c13323d74f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb88164ee7669f1c736a55121160dab9c82b62d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9d8f5ef115f7fdd92bfbc1c02500b70b317aad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaaf3bafdbd660380938b27d21c31bb7d072a799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcee7287370b3ed030e9b15ec94003307716fb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfca47de47620ff1fcd3f2051125027d9b54847c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7bef1384ad5285f2db983bc1c6673008f8bc630` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7eacdd1e755d2823463abc4434ca445f752b336` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9746f73cc33a36c2cd55b8aefd732586946cedd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9934db60031add319d008f8d643e3b723f28e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0216bdcc195abdf77746b6a6347ce85e2535431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37b0bedd9094988a31dbbb6bf77dc97269e742b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc986a09728f76110ff666ee7b20d99086501d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd26da83b27987a7040cae31f2e35d9bd6f5de59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdda53e23f8a32640b04d7256e651c1db98db11c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe34577e7d8bbdf044de236b15df132b1409ca82a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230807 | `0xe3bd00f57b44e7aa4a6c212878427c85d638702a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230809 | `0xe3d981643b806fb8030cdb677d6e60892e547eda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4341585b9bbc55a44c20a3c037058891e7a053b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230812 | `0xe925205ad05d8d612ac205c4941ccd61fc965c46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230814 | `0xe99af5f4c60e06beb3827f4ffdd06e88c55fb895` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230816 | `0xeba14d52f1b19ca65455e5ecab72d2ffd9e43fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee74fd716edbfe6575ecc18b39f181b4de79fa7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeafa156a5dd3811ee0d9f91db57a77ea53a8d31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230818 | `0xf027f4a985560fb13324e943edf55ad6f1d15dc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf59da245d3d69e5432afd05008e8d332c1bfab4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf70abab028eb6f4100a24b203e113d94e87de93c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdce12536a20b2736fd2f8bccc6285c08234c809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdfed82309b14b7e3edfc768bb5ebf80ddcafb3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230822 | `0x0b09ba359a106c9ea3b181cbc5f394570c7d2a7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230824 | `0x0e162344a1ca3a31c9455212d055bd3101d48880` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230825 | `0x17c64e93846935dfbd281a5540a14d4cd67195f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230827 | `0x340f923e5c7cbb2171146f64169ec9d5a9ffe647` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230829 | `0x37e15e4d6dffa9e5e320ee1ec036922e563cb76c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230831 | `0x3974436fa4bb4deb5a04ace51a704b10ff5a1f25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230833 | `0x3b3505ae63b6cb180ba684cdfe76d71f6096a2bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230835 | `0x44efe3ecf916f756c02e09fe17fe2d9abc8d9d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x47fd71e0b4dd5253a97210b4c902dec687b250cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230836 | `0x4bba758f006ef09402ef31724203f316ab74e4a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230838 | `0x4da82a327773965b8d4d85fa3db8249b387458e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230839 | `0x5493f4677a186f64805fe7317d6993ba4863988f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230840 | `0x5687b5950fc5604c7d4959bf09192c57d0d62891` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230841 | `0x57e99fb38da9e332d0d13a7223a7037de041cf1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230842 | `0x5d5a095665886119693f0b41d8dfee78da033e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6982e35c878cd2b5af8dcf06f33c4efb01d6f482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x69c0d1659703dd666ec8fb17788aed4acc05ed3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6a0208d45c378346619c8967570bb5e2fad16e89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230843 | `0x70675e148b5f88fffaeac70bc6c5369f3273bef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x70bb7eb25471f1c4ead5051578fca85058948a76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230844 | `0x70dee5e3723c76fc83238f62d2b3d4071533de69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230845 | `0x7444d4470ed4320e4b84ee160351fbbcbcd4bb2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230846 | `0x75f48fe4deab3f9043ee995c3c84d6a2303d9a2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230847 | `0x7a25d06af869d0a94f6effaffa0a830eebf1ecfb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230848 | `0x7ae1d3bd877a4c5ca257404ce26be93a02c98013` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230849 | `0x7b465370bb7a333f99edd19599eb7fb1c2d3f8d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x856ea788977bc771e8ca87471baec507a0f54771` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230850 | `0x98ba8b9cf38732db65c7e556617135a0e6669f57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230851 | `0xa58898f7f706c208410232a8fbf70699cd0ef9a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230852 | `0xb2ebba78eebb4670ca357faea3c2b723cdf03221` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230853 | `0xb88164ee7669f1c736a55121160dab9c82b62d55` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230854 | `0xbaaf3bafdbd660380938b27d21c31bb7d072a799` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230855 | `0xbfca47de47620ff1fcd3f2051125027d9b54847c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcabf38d8eadde0bc6c91655242afb4da92a63fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd1cbbc06213b7e14e99adfffef1c249e6f9537e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd87d72eb3aa50264ea593f0b6860c988e0778aff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdb86292e09de84edf2f942bc223864f32ff4c417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xea7eacae0e2fefc7c134c2c0f6b7bc47bc271a24` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230856 | `0xee74fd716edbfe6575ecc18b39f181b4de79fa7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230857 | `0xfdce12536a20b2736fd2f8bccc6285c08234c809` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 53
- Live contracts: 0
- Unknown liveness contracts: 53
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=53

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x07e50a0ad526d8cd1eb6b9220e922125ca1ab70b` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ffc3535517fe991a05b5c2a939188370ae996a5` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2dd08101104c64cb98443a9b92cd21c7936f15b2` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33f9c5201f97dd1856a97fd0c527b7c0f6a710a3` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43ca789d45234c2251de20da39fdfb272c89d12f` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4695931f9b659eec35e1c2057d08341f16e05dad` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4be239c86364ed73fc244a5f50c8ccb101a492ef` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x554ffc3fe0ae9487f58cec547e91ba337cc5e667` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b172bbfa0140285a02374ec1f5b9f25ef415514` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6753df477d00ce9b6a1d81d143cc0fc1382f6776` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a386814c10a3fb7f75473ec675278c94421b05e` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x703db807862df033883988a6e6e31742404914ca` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7342e0d56913479260bf143300424f5e7b3ec237` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7fc721acc2183c292737c5a28ea1b30d19f1cf29` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7fe0013d4a1b86bb57c9205d4a7203d0ab7d87db` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82e5624e76cdc8315c56e61777f3fac0c726c8e1` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87692b8741ba36e2d7f7942c418829a305b3eff2` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b3e1661bccaf907893b71e4016c01513ae9263c` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa23bf38299bbcbaa01b9ea8a1d3412d9f405b97d` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5d58aa93682a9a29492588d153304e093e39084` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4899ff43ae727b1e9cb19ac44660e4a43fad0b5` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9d8f5ef115f7fdd92bfbc1c02500b70b317aad4` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbcee7287370b3ed030e9b15ec94003307716fb8b` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc7bef1384ad5285f2db983bc1c6673008f8bc630` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc7eacdd1e755d2823463abc4434ca445f752b336` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9934db60031add319d008f8d643e3b723f28e43` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0216bdcc195abdf77746b6a6347ce85e2535431` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd37b0bedd9094988a31dbbb6bf77dc97269e742b` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdd26da83b27987a7040cae31f2e35d9bd6f5de59` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe34577e7d8bbdf044de236b15df132b1409ca82a` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4341585b9bbc55a44c20a3c037058891e7a053b` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf59da245d3d69e5432afd05008e8d332c1bfab4e` | non_address_book | unknown | unknown | unverified | n/a | `0x0a1c5e42e423fab63746d375b84d3fe4caf9b513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9746f73cc33a36c2cd55b8aefd732586946cedd` | non_address_book | unknown | unknown | unverified | n/a | `0x3c30d693b23f77d55e14b8e0cfb6c00075ff93ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa67fc05d295d2be6bc4cbfad4f880c1c58734212` | non_address_book | unknown | unknown | unverified | n/a | `0x43ea7cc3fc5c47de680bd25d3716ba08dcfea0b2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa0a1efd35d6578ea6b5704dbc2c40b36a55b590` | non_address_book | unknown | unknown | unverified | n/a | `0x43ea7cc3fc5c47de680bd25d3716ba08dcfea0b2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdda53e23f8a32640b04d7256e651c1db98db11c1` | non_address_book | unknown | unknown | unverified | n/a | `0x43ea7cc3fc5c47de680bd25d3716ba08dcfea0b2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeeafa156a5dd3811ee0d9f91db57a77ea53a8d31` | non_address_book | unknown | unknown | unverified | n/a | `0x43ea7cc3fc5c47de680bd25d3716ba08dcfea0b2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x44c220f0598345195ce99ad6a57adffcb9ea33e7` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x94a4684d6f7085c19138bd4f9f3295fa9943c622` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb839ea7bba8e6bb2893ca5252f3f3c13323d74f7` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc986a09728f76110ff666ee7b20d99086501d15` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf70abab028eb6f4100a24b203e113d94e87de93c` | non_address_book | unknown | unknown | unverified | n/a | `0xc450a7c66f97202605c1b46ed0735dbe49c8f4fb` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6982e35c878cd2b5af8dcf06f33c4efb01d6f482` | non_address_book | unknown | unknown | unverified | n/a | `0x72af66a4ff8bc96a1175bc729a938ea35f274e53` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x856ea788977bc771e8ca87471baec507a0f54771` | non_address_book | unknown | unknown | unverified | n/a | `0x72af66a4ff8bc96a1175bc729a938ea35f274e53` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xcabf38d8eadde0bc6c91655242afb4da92a63fce` | non_address_book | unknown | unknown | unverified | n/a | `0x72af66a4ff8bc96a1175bc729a938ea35f274e53` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x47fd71e0b4dd5253a97210b4c902dec687b250cf` | non_address_book | unknown | unknown | unverified | n/a | `0xae4f9cf448f2179a62126463529e32bae95dcae4` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x69c0d1659703dd666ec8fb17788aed4acc05ed3f` | non_address_book | unknown | unknown | unverified | n/a | `0xae4f9cf448f2179a62126463529e32bae95dcae4` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6a0208d45c378346619c8967570bb5e2fad16e89` | non_address_book | unknown | unknown | unverified | n/a | `0xae4f9cf448f2179a62126463529e32bae95dcae4` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x70bb7eb25471f1c4ead5051578fca85058948a76` | non_address_book | unknown | unknown | unverified | n/a | `0xae4f9cf448f2179a62126463529e32bae95dcae4` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd1cbbc06213b7e14e99adfffef1c249e6f9537e0` | non_address_book | unknown | unknown | unverified | n/a | `0xae4f9cf448f2179a62126463529e32bae95dcae4` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd87d72eb3aa50264ea593f0b6860c988e0778aff` | non_address_book | unknown | unknown | unverified | n/a | `0xae4f9cf448f2179a62126463529e32bae95dcae4` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdb86292e09de84edf2f942bc223864f32ff4c417` | non_address_book | unknown | unknown | unverified | n/a | `0xae4f9cf448f2179a62126463529e32bae95dcae4` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xea7eacae0e2fefc7c134c2c0f6b7bc47bc271a24` | non_address_book | unknown | unknown | unverified | n/a | `0xae4f9cf448f2179a62126463529e32bae95dcae4` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [BOB-Staking-security-review_2025-10-18.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Staking-security-review_2025-10-18.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [BOB-security-review-September.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-September.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [BOB-security-review_2025-03-17.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review_2025-03-17.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [BOB-security-review-August.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-August.pdf) | Pashov Audit Group | Audit | 2024-08 | aging | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [BOB-security-review-June.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-June.pdf) | Pashov Audit Group | Audit | 2024-06 | stale | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [BOB-Onramp-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Onramp-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [BOB-USDCBridge-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-USDCBridge-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Report](https://docs.gobob.xyz/assets/files/veridise-kailua-20250217-c317614d026618741e34d6a269c5f9e9.pdf) | yAudit | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Report](https://docs.gobob.xyz/assets/files/veridise-kailua-20250522-d1dff99d6a1be809bcb27c48671c8b46.pdf) | Code4rena | Contest | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Report](https://docs.gobob.xyz/assets/files/veridise-kailua-20250616-92721909a6b90ab336d6fae5365a76d4.pdf) | yAudit | Audit | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Report](https://docs.gobob.xyz/assets/files/BobToken-Pashov-Audit-Report-Feb-2025-9f199a39dec0967a6e789403c9fc896d.pdf) | Pashov Audit Group | Audit | 2025-02 | aging | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [Report](https://docs.gobob.xyz/assets/files/BobTokenV2-Pashov-Audit-Report-Oct-2025-0263f8b0c49bf2b75df5b6bcad9fbcc9.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Report](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-10-18-f54577c242e3990575db4789a421c165.pdf) | Pashov | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Report](https://docs.gobob.xyz/assets/files/BOB-02-WP2-report-dcd81ac9bbd6f6efa2addaa189c9dc11.pdf) | Cure53 | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Report](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2024-v1-82d2528b6e9e352b0d6972f399c0d425.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Report](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2024-v2-86896538aa291f687a0f6a37446b84a1.pdf) | Pashov Audit Group | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Report](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2024-v3-a63f8cca35682dfec1fb6d814ecd2f42.pdf) | Pashov Audit Group | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Report](https://docs.gobob.xyz/assets/files/BOB-security-review_2025-03-17-3ab501a0f6519fc8f95c9f285481414b.pdf) | Pashov | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Report](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2025-offramp-solver-e6126bcad381876b88a6550ddde8aa88.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf](https://docs.gobob.xyz/assets/files/BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Report](https://docs.gobob.xyz/assets/files/BOB-USDCBridge-security-review-e97c3ee59cc234a9bd75876a86343b6b.pdf) | Pashov | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Report](https://docs.gobob.xyz/assets/files/FusionLock-Ottersec-023eec834a0e03cd844e312523e0a9a2.pdf) | Ottersec | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Report](https://docs.gobob.xyz/assets/files/FusionLock-Common_Prefix-7d4631fe0288ee12c628ae07a84f7076.pdf) | Common Prefix | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Report](https://docs.gobob.xyz/assets/files/FusionLock-Trail_of_Bits-4ce7aa57bbf6123a486f4dd2753d4fcd.pdf) | Trail of Bits | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [/URI ()>>](https://github.com/pashov/audits) | Pashov Audit Group | Audit | 2024 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18848] BOB-Staking-security-review_2025-10-18.pdf — no match: Scope explicitly lists BobStaking.sol and BonusWrapper.sol. Audit date from title: October 18th 2025 - October 21st 2025, using end date.
- [18849] BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf — no match: Scope section lists 5 contracts: BonusWrapper, SafeERC20Ext, UnbondableStake, Address, CurrencyTransferLib. Audit date is March 7th 2025 (end date of audit period).
- [18850] BOB-security-review-September.pdf — no match: Scope section explicitly lists 10 contracts. Audit date from 'September 5th - September 7th' uses end date.
- [18851] BOB-security-review_2025-03-17.pdf — no match: Scope section explicitly lists CommonStructs and OfframpRegistry as the smart contracts in scope.
- [18852] BOB-security-review-August.pdf — no match: Scope section lists 14 contracts/interfaces. Audit date is the end date of the engagement (August 12, 2024).
- [18853] BOB-security-review-June.pdf — no match: Scope section explicitly lists four contracts: OrdinalsNFT, Bridge, MultiSig, SigCollection. Audit date is June 26th 2024 (end date of engagement).
- [18854] BOB-Onramp-security-review.pdf — no match: Scope section explicitly lists OnrampFactory and Onramp as the only contracts in scope.
- [18855] BOB-USDCBridge-security-review.pdf — no match: Scope section explicitly lists 6 contracts. Audit date is the end date of the engagement (April 22th 2024).
- [19584] Report — no match: Extracted contract names from scope section and findings. Audit date from cover page: Feb. 18, 2025.
- [19585] Report — no match: Scope explicitly states four Solidity files in crates/contracts/foundry/src. Extracted contract names from file references and vulnerability locations.
- [19586] Report — no match: The audit scope explicitly excludes on-chain smart contracts and focuses only on off-chain zkVM application source files (Rust files). No smart contract names are in scope.
- [19587] Report — no match: Only one contract, BobToken, is explicitly listed in scope. The report mentions ERC20Permit and Nonces from OpenZeppelin but these are dependencies, not in-scope contracts.
- [19589] Report — no match: Scope explicitly lists BobTokenV2.sol and BobTokenV2Upgrade.sol. Audit date is the end date of the timeline (October 21st 2025).
- [19590] Report — no match: Scope explicitly lists BobStaking.sol and BonusWrapper.sol. Audit date from title: October 18th 2025 - October 21st 2025, using end date.
- [19591] Report — no match: The report explicitly lists the Onramp smart contracts and Rust codebase in scope. Two Solidity contracts (Onramp and OnrampFactory) are identified from the findings. The audit date is April 30, 2024, as stated on the cover page.
- [19593] Report — no match: Scope section explicitly lists OnrampFactory and Onramp as the only contracts in scope.
- [19594] Report — no match: Scope section lists 14 contracts/interfaces. Audit date is the end date of the engagement (August 12, 2024).
- [19595] Report — no match: Scope section explicitly lists 10 smart contracts. Audit date from 'September 5th - September 7th' uses end date.
- [19596] Report — no match: Scope section explicitly lists CommonStructs and OfframpRegistry as the smart contracts in scope.
- [19597] Report — no match: The audit report covers Rust source files (modules) rather than Solidity contracts. The scope section lists 7 files: api_client.rs, app.rs, error.rs, main.rs, models.rs, scan_and_process_orders.rs, utils.rs. The audit date is the end date of the engagement: August 30th 2025.
- [19598] BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf — no match: Extracted from scope section and affected files in findings. The report covers modified USDC bridge library including L1UsdcBridge, L2UsdcBridge, UsdcBridge, and UsdcManager.
- [19599] Report — no match: Scope section lists 6 contracts. Audit date is the end date of the engagement (April 22th 2024).
- [19600] Report — no match: Only one contract, FusionLock, is explicitly mentioned in the scope and findings.
- [19601] Report — no match: Only one contract, FusionLock.sol, is in scope. Audit date from title line.
- [19602] Report — no match: Only one contract, FusionLock, is in scope. The audit date is April 3, 2024, from the cover page.
- [19613] /URI ()>> — no match: The provided text is a GitHub repository README listing audit reports by project name and date, but does not contain any specific audit report with contract names or scope details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| BOB-Staking-security-review_2025-10-18.pdf | BobStaking | unmatched — not counted | — | listed in scope section | no |
| BOB-Staking-security-review_2025-10-18.pdf | BonusWrapper | unmatched — not counted | — | listed in scope section | no |
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | BonusWrapper | unmatched — not counted | — | listed in scope | no |
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | SafeERC20Ext | unmatched — not counted | — | listed in scope | no |
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | UnbondableStake | unmatched — not counted | — | listed in scope | no |
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | Address | unmatched — not counted | — | listed in scope | no |
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | CurrencyTransferLib | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | CommonStructs | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | Gateway | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | GatewayRegistry | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | GatewayRegistryV2 | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | BedrockStrategy | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | PellStrategy | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | SegmentStrategy | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | ShoebillStrategy | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | SolvStrategy | unmatched — not counted | — | listed in scope | no |
| BOB-security-review_2025-03-17.pdf | CommonStructs | unmatched — not counted | — | listed in scope | no |
| BOB-security-review_2025-03-17.pdf | OfframpRegistry | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | OnrampV1 | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | OnrampFactoryV1 | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | Gateway | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | GatewayRegistry | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | ERC20Mintable | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | CommonStructs | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | IERC20Ext | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | IGateway | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | VelodromeSwapper | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | TestnetSwapper | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | ISwapper | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | IRouter | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | IWH | unmatched — not counted | — | — | no |
| BOB-security-review-August.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-June.pdf | OrdinalsNFT | unmatched — not counted | — | listed in scope section | no |
| BOB-security-review-June.pdf | Bridge | unmatched — not counted | — | listed in scope section and mentioned in finding L-03 | no |
| BOB-security-review-June.pdf | MultiSig | unmatched — not counted | — | listed in scope section | no |
| BOB-security-review-June.pdf | SigCollection | unmatched — not counted | — | listed in scope section | no |
| BOB-Onramp-security-review.pdf | OnrampFactory | unmatched — not counted | — | listed in scope section | no |
| BOB-Onramp-security-review.pdf | Onramp | unmatched — not counted | — | listed in scope section | no |
| BOB-USDCBridge-security-review.pdf | IPartialUsdc | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | L1UsdcBridge | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | L2UsdcBridge | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | UsdcBridge | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | UsdcManager | unmatched — not counted | — | listed in scope | no |
| Report | KailuaTournament | unmatched — not counted | — | Listed in scope and mentioned in findings (e.g., V-KLA-VUL-001, V-KLA-VUL-003, V-KLA-VUL-006). | no |
| Report | KailuaTreasury | unmatched — not counted | — | Listed in scope and mentioned in findings (e.g., V-KLA-VUL-003, V-KLA-VUL-004, V-KLA-VUL-007). | no |
| Report | KailuaLib | unmatched — not counted | — | Listed in scope and mentioned in findings (e.g., V-KLA-VUL-002, V-KLA-VUL-021, V-KLA-VUL-023, V-KLA-VUL-024). | no |
| Report | IKailuaTreasury | unmatched — not counted | — | Mentioned in finding V-KLA-VUL-024 as an interface. | no |
| Report | KailuaTournament | unmatched — not counted | — | listed in scope and vulnerability file references | no |
| Report | KailuaTreasury | unmatched — not counted | — | listed in scope and vulnerability file references | no |
| Report | KailuaGame | unmatched — not counted | — | mentioned in trust model and vulnerability references | no |
| Report | KailuaLib | unmatched — not counted | — | mentioned in vulnerability V-KLA-VUL-005 | no |
| Report | BobToken | unmatched — not counted | — | listed in scope table and deployment verification | no |
| Report | BobTokenV2 | unmatched — not counted | — | listed in scope section | no |
| Report | BobTokenV2Upgrade | unmatched — not counted | — | listed in scope section | no |
| Report | BobStaking | unmatched — not counted | — | listed in scope section | no |
| Report | BonusWrapper | unmatched — not counted | — | listed in scope section | no |
| Report | Onramp | unmatched — not counted | — | Listed in scope and referenced in findings as the main smart contract. | no |
| Report | OnrampFactory | unmatched — not counted | — | Mentioned in findings as the factory contract that creates Onramp instances. | no |
| Report | OnrampFactory | unmatched — not counted | — | listed in scope section | no |
| Report | Onramp | unmatched — not counted | — | listed in scope section | no |
| Report | OnrampV1 | unmatched — not counted | — | listed in scope | no |
| Report | OnrampFactoryV1 | unmatched — not counted | — | listed in scope | no |
| Report | Gateway | unmatched — not counted | — | listed in scope | no |
| Report | GatewayRegistry | unmatched — not counted | — | listed in scope | no |
| Report | ERC20Mintable | unmatched — not counted | — | listed in scope | no |
| Report | Constants | unmatched — not counted | — | listed in scope | no |
| Report | CommonStructs | unmatched — not counted | — | listed in scope | no |
| Report | IERC20Ext | unmatched — not counted | — | listed in scope | no |
| Report | IGateway | unmatched — not counted | — | listed in scope | no |
| Report | VelodromeSwapper | unmatched — not counted | — | listed in scope | no |
| Report | TestnetSwapper | unmatched — not counted | — | listed in scope | no |
| Report | ISwapper | unmatched — not counted | — | listed in scope | no |
| Report | IRouter | unmatched — not counted | — | listed in scope | no |
| Report | IETH | unmatched — not counted | — | listed in scope | no |
| Report | CommonStructs | unmatched — not counted | — | listed in scope | no |
| Report | Constants | unmatched — not counted | — | listed in scope | no |
| Report | Gateway | unmatched — not counted | — | listed in scope | no |
| Report | GatewayRegistry | unmatched — not counted | — | listed in scope | no |
| Report | GatewayRegistryV2 | unmatched — not counted | — | listed in scope | no |
| Report | BedrockStrategy | unmatched — not counted | — | listed in scope | no |
| Report | PellStrategy | unmatched — not counted | — | listed in scope | no |
| Report | SegmentStrategy | unmatched — not counted | — | listed in scope | no |
| Report | ShoebillStrategy | unmatched — not counted | — | listed in scope | no |
| Report | SolvStrategy | unmatched — not counted | — | listed in scope | no |
| Report | CommonStructs | unmatched — not counted | — | listed in scope | no |
| Report | OfframpRegistry | unmatched — not counted | — | listed in scope | no |
| Report | api_client | unmatched — not counted | — | listed in scope section | no |
| Report | app | unmatched — not counted | — | listed in scope section | no |
| Report | error | unmatched — not counted | — | listed in scope section | no |
| Report | main | unmatched — not counted | — | listed in scope section | no |
| Report | models | unmatched — not counted | — | listed in scope section | no |
| Report | scan_and_process_orders | unmatched — not counted | — | listed in scope section | no |
| Report | utils | unmatched — not counted | — | listed in scope section | no |
| BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf | L1UsdcBridge | unmatched — not counted | — | Affected file #1 in BOB-02-001 | no |
| BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf | L2UsdcBridge | unmatched — not counted | — | Affected file #2 in BOB-02-001 | no |
| BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf | UsdcBridge | unmatched — not counted | — | Affected file #3 in BOB-02-001 | no |
| BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf | UsdcManager | unmatched — not counted | — | Affected file in BOB-02-002 | no |
| Report | IPartialUsdc | unmatched — not counted | — | listed in scope | no |
| Report | L1UsdcBridge | unmatched — not counted | — | listed in scope | no |
| Report | L2UsdcBridge | unmatched — not counted | — | listed in scope | no |
| Report | UsdcBridge | unmatched — not counted | — | listed in scope | no |
| Report | Pausable | unmatched — not counted | — | listed in scope | no |
| Report | UsdcManager | unmatched — not counted | — | listed in scope | no |
| Report | FusionLock | unmatched — not counted | — | mentioned in scope description and findings | no |
| Report | FusionLock | unmatched — not counted | — | listed in scope and findings | no |
| Report | FusionLock | unmatched — not counted | — | Project Targets section lists 'FusionLock' as the target contract; executive summary mentions 'FusionLock contract'. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf2dc77c697e892542cc53336178a78bb313dfdc7` | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7b465370bb7a333f99edd19599eb7fb1c2d3f8d2` | AnchorStateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4bba758f006ef09402ef31724203f316ab74e4a0` | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b09ba359a106c9ea3b181cbc5f394570c7d2a7a` | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c` | OPContractsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1fb8cdfc6831fc866ed9c51af8817da5c287add3` | PreimageOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8eab2d97dfce405a1692a21b3ff3a172d593d319` | RiscZeroVerifierRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x340f923e5c7cbb2171146f64169ec9d5a9ffe647` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 138 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 26
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 109 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=24, low=2
- Match method counts: n/a

Zero-match audit list:

- [18848] BOB-Staking-security-review_2025-10-18.pdf
- [18849] BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf
- [18850] BOB-security-review-September.pdf
- [18851] BOB-security-review_2025-03-17.pdf
- [18852] BOB-security-review-August.pdf
- [18853] BOB-security-review-June.pdf
- [18854] BOB-Onramp-security-review.pdf
- [18855] BOB-USDCBridge-security-review.pdf
- [19584] Report
- [19585] Report
- [19586] Report
- [19587] Report
- [19589] Report
- [19590] Report
- [19591] Report
- [19593] Report
- [19594] Report
- [19595] Report
- [19596] Report
- [19597] Report
- [19598] BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf
- [19599] Report
- [19600] Report
- [19601] Report
- [19602] Report
- [19613] /URI ()>>

Fork inheritance lineage and inherited audits are included when available.
