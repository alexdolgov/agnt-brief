# Agentic Audit Brief: Cybro

## Project Overview

- Project: Cybro (`cybro`)
- Website: [https://app.cybro.io](https://app.cybro.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.380Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: arbitrum, base, blast, bsc, ethereum, unichain
- Contract surface: 664 unique implementations (725 raw deployments)
- DeFi Llama TVL: $54,309.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 22 project-authored contract(s) across 5 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 8 common project-authored base contract(s) (basemanagerv3, baselpmanagerv3, pancakev3baselpmanager). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 725; live-surface contracts included: 725 (88 live, 637 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 15/23 (65.2%)
- Deployed-live implementations: 27 of 664 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/23
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 641
- Unique implementations: 664
- Raw deployments: 725
- Audits discovered: 25 (25 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 7 fresh, 8 aging, 6 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 19 match-unverified
- Tier 1 coverage: 8.7% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pessimistic | Tier 2 | 8 | 34.8% | 2026-02 |
| unknown | Tier 2 | 6 | 26.1% | 2025-12 |
| Code4rena | Tier 1 | 2 | 8.7% | 2025-10 |
| CertiK | Tier 2 | 1 | 4.3% | 2025-02 |
| yAudit | Tier 2 | 1 | 4.3% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlasterSwapV2Vault | core_logic | blast | n/a | [`0xbfb18e...aedfea`](./contracts/blast-81457/0xbfb18eda8961ee33e38678caf2bceb2d23aedfea/) | ✅ Audited |
| BlasterSwapV3Vault | core_logic | blast | n/a | [`0xe472cc...eaaab2`](./contracts/blast-81457/0xe472ccb182a51c589034957cd6291d0b64eaaab2/) | ✅ Audited |
| CYBROOFT | unknown | bsc | n/a | 2 deployments: ethereum `0xd58826...9aff07`; bsc [`0xa9972b...1d2ad6`](./contracts/bsc-56/0xa9972b1fac35fdd8cbdbaa315a002b2ad91d2ad6/) | ✅ Audited |
| CYBROStaking | unknown | blast | n/a | 3 deployments: blast [`0x03b7be...152707`](./contracts/blast-81457/0x03b7becb964ab0ebad805683d14f338504152707/); blast `0x13a2a1...3eeaa5`; blast `0xd01d2b...ada688` | ✅ Audited |
| LidoVault | core_logic | base | n/a | [`0x84fbcd...c398b7`](./contracts/base-8453/0x84fbcde24b75f3d45863e82282683dff16c398b7/) | ✅ Audited |
| LidoVault | core_logic | arbitrum | n/a | [`0xbde529...a2f4b1`](./contracts/arbitrum-42161/0xbde5296ea786a12c4bfd60408063816e36a2f4b1/) | ✅ Audited |
| LockedCYBRO | unknown | blast | n/a | 2 deployments: blast [`0x2f3af6...07e8a2`](./contracts/blast-81457/0x2f3af664ecdbc66f832e12f0df38180b2807e8a2/); blast `0x9ac9b1...f66919` | ✅ Audited |
| LockedCYBROStaking | unknown | blast | n/a | 3 deployments: blast [`0x3e7f5c...42b75f`](./contracts/blast-81457/0x3e7f5cf6372b2b1f029c7294190057828f42b75f/); blast `0xc222a3...ea3a0f`; blast `0xe27c6d...d90003` | ✅ Audited |
| LPManager | governance | arbitrum | n/a | 33 deployments: ethereum `0x0ea8ef...aa6868`; unichain `0x7ad4e1...74189b`; unichain `0xdb6564...203d0b`; base `0x7a37c6...185c7b`; base `0xb3da21...85936f`; arbitrum [`0x03d2fa...7f4c0f`](./contracts/arbitrum-42161/0x03d2fa92d845da3f13d27885d6269ed4f67f4c0f/); arbitrum `0x0964b7...19e998`; arbitrum `0x0a3066...2f96df`; arbitrum `0x128452...04a3eb`; arbitrum `0x22b2ad...d29e89`; arbitrum `0x258af6...af707a`; arbitrum `0x2dd169...958ded`; arbitrum `0x36cf76...418260`; arbitrum `0x38a8da...ece1e8`; arbitrum `0x471c8a...d65c20`; arbitrum `0x493307...d0a5bf`; arbitrum `0x4f6008...4e46cf`; arbitrum `0x5575fc...9560d2`; arbitrum `0x5c9d27...c46e44`; arbitrum `0x5ecb32...5b2f1b`; arbitrum `0x77948e...078ad4`; arbitrum `0x87154a...b07d1f`; arbitrum `0xa24cdc...1d3faf`; arbitrum `0xb1de2f...b07c20`; arbitrum `0xb3e370...338e96`; arbitrum `0xbd0704...a27c8e`; arbitrum `0xd18cd8...645941`; arbitrum `0xd1a5b9...22c604`; arbitrum `0xd20402...9b5123`; arbitrum `0xec1c20...3c14b3`; arbitrum `0xf06166...c55e5f`; arbitrum `0xf40148...c0abca`; arbitrum `0xf96928...930d1d` | ✅ Audited |
| PancakeV3AutoManager | governance | bsc | n/a | [`0x77369b...8a2f32`](./contracts/bsc-56/0x77369bbebd14e91a6688bf400d560c89f38a2f32/) | ✅ Audited |
| PancakeV3LPManager | governance | bsc | n/a | 2 deployments: bsc [`0x6ce9b6...3b4029`](./contracts/bsc-56/0x6ce9b6288bdf6091d4ce071a81a12e96103b4029/); bsc `0x9afb3e...62d5d3` | ✅ Audited |
| ProtocolFeeCollector | unknown | arbitrum | n/a | 23 deployments: ethereum `0xd82870...51d6b9`; bsc `0xf40148...c0abca`; unichain `0x4164ca...fbcf71`; unichain `0xfb8466...101348`; base `0x567103...0397a1`; base `0xd3bece...c79b13`; arbitrum [`0x01623a...2b066c`](./contracts/arbitrum-42161/0x01623abc8fb5fe01486e1a55c0c98a1b722b066c/); arbitrum `0x03ef21...cad110`; arbitrum `0x1081d9...5e30bd`; arbitrum `0x26b9f1...0df66d`; arbitrum `0x50d969...697abc`; arbitrum `0x5e3703...80b8a6`; arbitrum `0x69706d...929989`; arbitrum `0x9fd1e0...93a6ef`; arbitrum `0xb05961...2ec24e`; arbitrum `0xbf2922...75ce25`; arbitrum `0xc185fb...c1ecc3`; arbitrum `0xc75e10...84cdc1`; arbitrum `0xdb1874...2c86f0`; arbitrum `0xe22980...ff112b`; arbitrum `0xeb2538...5ef368`; arbitrum `0xedb9f6...debf85`; arbitrum `0xfd3be1...6ad744` | ✅ Audited |
| StargateVault | core_logic | arbitrum | n/a | [`0x320cd9...db5d95`](./contracts/arbitrum-42161/0x320cd9d00961fb45857a043efea77dc6b9db5d95/) | ✅ Audited |
| UniswapV3AutoManager | governance | arbitrum | n/a | [`0x2ce270...38574c`](./contracts/arbitrum-42161/0x2ce2701ad396982ef0bf2efb4d03a4d7c638574c/) | ✅ Audited |
| UniswapV3LPManager | governance | arbitrum | n/a | [`0x9a5921...2828f0`](./contracts/arbitrum-42161/0x9a592115fa75a1a53e45974e8810aedd212828f0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AutoManager | governance | arbitrum | n/a | [`0x4aa185...12f281`](./contracts/arbitrum-42161/0x4aa185859b5ea4799029af65b89af6874812f281/) | ⚠️ Unaudited |
| CYBROOFTAdapter | adapter | blast | n/a | [`0x7bb6ca...c0304f`](./contracts/blast-81457/0x7bb6cac7e47e8149c4ef62b759ee8b2e56c0304f/) | ⚠️ Unaudited |
| CYBROToken | token | blast | n/a | [`0x963eec...4ae4d5`](./contracts/blast-81457/0x963eec23618bbc8e1766661d5f263f18094ae4d5/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | n/a | [`0x66e424...d716f6`](./contracts/ethereum-1/0x66e424337c0f888dccbcf2e0730a00a526d716f6/) | ⚠️ Unaudited |
| LPManagerV4 | governance | arbitrum | n/a | [`0x20f97f...75d9ad`](./contracts/arbitrum-42161/0x20f97f2323473cd91d610df2aa7a80083c75d9ad/) | ⚠️ Unaudited |
| SafeL2 | unknown | blast | n/a | [`0x081295...f52e54`](./contracts/blast-81457/0x081295ac2c9b425af1c570b933925d44e3f52e54/) | ⚠️ Unaudited |
| SafeProxy | unknown | blast | n/a | [`0x4cc28b...fe406d`](./contracts/blast-81457/0x4cc28bc851e874a7187f71bed63daa3ec9fe406d/) | ⚠️ Unaudited |
| SparkVault | core_logic | base | n/a | [`0x578e72...f639c5`](./contracts/base-8453/0x578e7261b9d3c143700a735526bfd63713f639c5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (641)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveVault | core_logic | blast | n/a | `0x4f3da5...f5d6b1` | ❓ Unverified |
| AaveVault | core_logic | blast | n/a | `0x7458ac...0a7ee7` | ❓ Unverified |
| AaveVault | core_logic | blast | n/a | `0xf56dab...33797e` | ❓ Unverified |
| CompoundVault | core_logic | blast | n/a | `0x567103...0397a1` | ❓ Unverified |
| CompoundVault | core_logic | blast | n/a | `0xdccde9...6faf9f` | ❓ Unverified |
| CompoundVaultETH | core_logic | blast | n/a | `0x9cc62e...4c3a3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0667ac...f32951` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f9590...21d7f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24acbe...b7e563` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38f96d...449be8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40392a...77c3ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x502cad...f56cc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6654cd...9962a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6fd228...f55705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bbb45...1425d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e85f7...5358ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e022b...5af14b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x914b0c...2b9a30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x940552...d13663` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x954319...fc5e3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cc62e...4c3a3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7712d...aefe79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2491c...aa9312` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd75b0...e25dde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc9c40...cccef5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcdf110...ab7303` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcff807...f56e6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe922bc...008e41` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x2d6f2a...f9b028` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x38694d...35535b` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x4f654e...893e66` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x50ef20...cf9ba0` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x64b6d0...a4641c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x690029...caffc3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x8c2187...801ff7` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xb985b4...ea7b39` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xba823d...946aa3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xc6ac03...5b486a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x007377...48c381` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02d66c...0fa574` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x040244...29ffc8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0434e6...8963c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0655e3...7583b9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x071e34...aff7af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x075b41...af39fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x082e7e...04db88` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08ab44...193505` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x090b6c...23622d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x095860...096b04` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09f3e9...9f39ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a75b0...162766` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b5345...830d70` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b631e...145945` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d53de...5d26f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d6998...5b74db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d95cf...029f99` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10abf1...6034b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1310b9...619440` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13d186...a2ebc4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13dd9b...bcea99` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x14296c...a228b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x14b8cb...8a352d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x161f08...330389` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x17ebbf...86c931` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x183a46...78896f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1920bf...74fc46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19f510...2e4f02` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1bc912...784dab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c69b3...efdabc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1d94c0...b58391` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1df679...5bc6c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x200815...178033` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2032b0...62bedd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20cbb2...c17c1e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20fc2b...a7ef06` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x212661...3a1d34` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2130c3...507b80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x219d53...5e57ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x220fe7...d72184` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x22fa6d...f895ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x283c31...1f8958` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2870bd...b3d39b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2998b3...3a35df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b5a8a...be41e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2bf61b...600d1e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2c03d5...d4c6c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2ce89d...302723` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2de38e...e91898` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f44b8...d3ac7e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2fac29...447ba8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x306bea...a4725d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x320cd9...db5d95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x33c336...241c37` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x36e1e8...7663e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37d3b4...a15c8d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37e315...49d1ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a881d...350dc0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b310b...79a833` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c400b...43d811` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3cb6b1...4e65d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3cf384...b1728e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d4c58...418a53` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d4c78...e124dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e21b7...0f0495` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e5834...6845d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3eef58...6930fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f7686...ed23e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x40e7c5...5b9b87` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x411a42...a4b8d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4157c7...e6cdd7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x415e9f...4e30d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4241f7...43bf5d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x449402...c10f58` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x459a3d...484e78` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4620fe...a74718` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x46b708...30f814` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x48be08...d2aecb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x49dd6b...782572` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4abe51...953393` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4b3b14...144a76` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4bf6a0...50abe3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c5432...7e66dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c7f54...726455` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4e433a...a455ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4e88b2...c60b99` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51b8b3...8cc551` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5248fc...1b2336` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5351d7...487ade` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x54f10d...e8d800` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x55ea52...3a57ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x58f9d8...baecc6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ae226...4ca2f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5e5e21...d87862` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5f5561...4d5e33` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x605031...3d26e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x618244...8631c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x627779...8dc0cd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62b2dd...2fd208` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x675bb4...110d25` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69053d...3872ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6941ea...9d58f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69e0a5...3da30d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6abf0a...cb2f80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6b2594...67ae08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6caf0e...2e2089` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6cc97a...54ee1d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d5df2...0dd2b0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6dfe87...6ae795` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6e1293...4a2f7f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6e4323...083ab8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6f0acb...20adbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6f7cbe...9d3757` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x712b0e...459b1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x73d341...fd6ae7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x75cd29...b7ff71` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76a82f...cd97c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7936b7...0e4a91` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7a7ebc...8c4343` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b2f37...25f2f9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b7c37...e43137` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7bd92a...0506a8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7dba39...6be15b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7dced8...ad2093` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x814906...b9d318` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x815e9a...a5af7e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81d9d9...d660f9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x84b0c6...174694` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x84b24d...6544ad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x85db5f...edbbea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x85e7ec...c3dd10` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x86ca85...326924` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x889487...ad940e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88d6fe...aa0736` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x895f3d...21b63b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89ac9b...50ed70` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89b926...df1b42` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a7090...51d114` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8bf1c0...710710` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8c669f...930d54` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x903e1f...09c818` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x92936a...3e0123` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x931b09...38d1a9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x932fad...9af4dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x987ae3...228bd7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x988e38...7ee1d1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98c6e3...198e62` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9a86e1...5ed6ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9ab29d...dcb308` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9ad17b...a2fa82` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9cabcb...3ee0fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9cde49...0dbbb6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d0627...3707cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e20d8...378e3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e76c1...16d8ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f98cf...8f02ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9fe836...e730bc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa018bd...1686f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa037b8...144517` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa06bc4...0d29ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa13405...b3e7cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa1c87b...f29ff3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3547c...d1e5a9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4bc0c...862c87` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa533da...c0690d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa5dc83...a31d16` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa7517b...21881f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa815da...b3dbd9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa87887...63df88` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa96bd7...7833aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa980ac...ccb0af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa991ff...a8356c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xabdf86...572235` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac4ca7...57357e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xae8af5...293e2e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf0b92...03590d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf19b0...1652fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf8613...06428d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb04ec5...2a16c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb0d21c...717c8d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb0fcbd...09276c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb1246d...02af38` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb208aa...24a2fc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb2a967...e8ba50` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb6489a...f524b0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb6fa4f...bdb735` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb8de09...1f87c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd93c1...a40ca6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbdfe4d...7f21a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe839b...3f110b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc00b95...858ad7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc11bd7...fb7ed4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc26aa3...95ae8c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc40071...dd02c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc599ee...fcbefd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc5e437...dc3ab2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc5fd78...d43f43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc63233...3b91b9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc6e57a...1c90ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc77656...52c7e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7e0c3...15e5e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc83530...5e870c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc9c888...986b54` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca0f4c...1b850f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca5336...1b8e8b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc58e3...bc1240` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc8082...f910a8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf672a...3cdabe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcfaea7...baf6c8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd003e2...006616` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd014eb...06be42` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd068bd...c5f14c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd25327...f59a53` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd549d7...0402e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd60f30...7e10a8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd65f1c...cf5c5f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd694f1...aaf5e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd6d8ee...c71143` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd6e482...bf1ed0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd7b5ea...7b5675` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd7f643...bb25bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd803b1...e41276` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd80f9a...7c6253` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd81958...727887` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd81df1...0b737b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd82355...20ccba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd9b920...4ef241` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdb1302...7d768a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdb1b3f...046a17` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdbf435...7c47c5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc77ae...e01ee3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd9966...e50f2b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddf1e6...8c5d57` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde89e2...9beb0a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf0e6a...b48533` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf43db...7bf1a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe09fae...39d90d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe40721...02c917` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe45785...6cd4e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe694a5...8e1202` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6dbf5...343894` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7142c...f24021` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7c1a1...43a810` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7c703...061b41` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe85d97...978c24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe88397...063803` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe9eff9...75ab17` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb7f70...418f76` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xedd162...530134` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee9033...a5ce07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeff1c3...1c2f75` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0707f...9958f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0a136...d499aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf20c1d...64cad0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf360da...92bd58` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf372de...3a9fc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3e97c...50003c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3f5da...3754e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf41e57...f352d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf441ad...3bc329` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6eade...245b0e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf775a6...931667` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7942e...2f54cc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf83044...9eccba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf87d98...610129` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf921bd...b4d9cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf97f62...f92c39` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf9c879...a74b04` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfc114c...1f53bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd74b7...bf15d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfde6a4...96544c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe7777...9d9ee1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe9e9f...36e8a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x019f54...cbda3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02d66c...0fa574` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x046282...b648f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x070d34...a67028` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08ab44...193505` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x095860...096b04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09f3e9...9f39ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0a9773...250ff3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b631e...145945` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fadf8...977710` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fbd7b...7206d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x128621...1eaf4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1310b9...619440` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x15822c...afbbe5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1605d1...ca22fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17a1eb...5c53d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x190ed7...12017d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a14d5...5632aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1d94c0...b58391` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20cbb2...c17c1e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25233f...242c0f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3370a0...877de7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37d3b4...a15c8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3a9352...de4774` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b310b...79a833` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3cc269...57c394` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3eb430...c1ff15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4191fc...89e1d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x430edd...c6a93f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x446db3...fa221a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x459a3d...484e78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x460341...11032c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4620fe...a74718` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x466ce4...441b01` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46a1c0...b748bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46b708...30f814` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x475fcc...73c753` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x47f298...107a2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49dd6b...782572` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d2ff7...5b6d2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4e3e75...c4ec95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4e433a...a455ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x54e458...a76d83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x55ea52...3a57ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x568f02...21f118` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x578e72...f639c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x587a0d...b6fcc6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5fb331...d9867e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x605031...3d26e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61a44d...5c7309` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x675bb4...110d25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6941ea...9d58f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6abf0a...cb2f80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b8ca4...e2b633` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c7b71...65b297` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6cc97a...54ee1d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ddb54...9bcf55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6dfe87...6ae795` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6e4323...083ab8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6e78ba...768d00` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f0acb...20adbc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x706683...580048` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7145f7...48af61` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7786c0...589271` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7a7ebc...8c4343` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7a9d8a...0d1bd0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7bc8c1...520679` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7bd6fb...5e6cad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c6da1...75662d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e67ec...02edaf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x80e59d...88c047` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8197f6...215a3a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x81d9d9...d660f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84fbcd...c398b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x851b81...e48923` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x889487...ad940e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x89b926...df1b42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a7090...51d114` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c669f...930d54` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8dd23a...9eae06` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e0ae8...3162a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x90b2a9...4da757` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92936a...3e0123` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x932fad...9af4dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x94d88f...550033` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x951c84...f71769` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x988e38...7ee1d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a2b79...486563` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9af619...d389d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b23d9...c08112` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c6dc9...9678f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9eaa97...f6aba6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f2f96...a67139` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9fc05d...203ba2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa037b8...144517` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2c97b...03fe88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6294b...fccaef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa7517b...21881f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xabdf86...572235` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xabe668...0ccb0d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xabfebe...cfe722` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac4ca7...57357e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad66c1...978fe1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae8af5...293e2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb07667...a7de66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb0d21c...717c8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb1d168...24f05f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb208aa...24a2fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2a967...e8ba50` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb36338...1865ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6e4b1...5e4e89` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6fa4f...bdb735` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb9afff...413194` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbc5705...c78a27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbd93c1...a40ca6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbdfe4d...7f21a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe839b...3f110b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc09d8d...0f8947` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc1b79a...d692cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc63233...3b91b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc7e0c3...15e5e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc83530...5e870c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9c888...986b54` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc58e3...bc1240` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc709d...1f3c5d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd60f30...7e10a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd81df1...0b737b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd82355...20ccba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd86c44...bbdbc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9b920...4ef241` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9bbba...d41630` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdbf091...cc823b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdbf435...7c47c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdd3ef2...aadc7c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe39005...81d95b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4aff7...492e42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe5974f...0edd10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe694a5...8e1202` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe6a8e8...26f5c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7c703...061b41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe88397...063803` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe94e9c...78d730` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9eff9...75ab17` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb7f70...418f76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebb88b...37b8ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xedd162...530134` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee9033...a5ce07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef3253...19c5cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0f6f0...1ef9ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf211dc...da34d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7617c...62b544` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf775a6...931667` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9e241...1234d6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x017098...a4204f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x01f759...bc3f3f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0215c6...7bc3d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0667ac...f32951` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x08c252...b68e64` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0c07a7...c5878a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0c0a0c...ce4e3d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0cff7a...d9188e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0d6907...80e9c4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0dd42f...e190b8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x138f71...440d05` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x18e22f...2249af` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x19ad99...f08eeb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1bfe4a...c7d94d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1c1825...141a7f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1fdfcc...43d0f2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x206c40...5943f9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x21bd9b...58c5af` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x223f39...a4dd25` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x231195...7ce715` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x24acbe...b7e563` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x24e72c...99514d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x26b269...897625` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x288a28...fad35d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2bb102...d7d168` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2cadd6...d36f48` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2cbe5c...26bae7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2e3950...afec30` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3049f8...192647` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3125ba...d2ef9c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x322a33...d66440` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x336e91...aa28d5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x346d73...98df34` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3500e1...3fa1bc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x354739...24e416` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x370498...a39ec5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37d4ff...149a79` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3db2bd...d78456` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3e02a7...ce4287` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3f8bfe...9079b2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3fe57b...bc1b2d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x44b226...fbbb86` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x44d9c7...7436bf` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4668e0...d3b0f0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x479813...493ded` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x484389...5f6d84` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4af008...778116` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4caec6...353748` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4e5ed7...24f787` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4fd205...1c3d68` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x501010...cd6105` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x502cad...f56cc1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x534654...47dca3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x563784...fea61c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x57b9a3...1396fb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5806ee...3d1a1f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5986a2...65aab4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5a6223...6eeee1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5abcfd...217821` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5b977e...3d96cb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5c41ff...a27bab` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5d0930...7cd65f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5fbd22...a71470` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6654cd...9962a1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x66e1be...85521b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6968bc...6559cd` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6beadf...627c2c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6d0a17...0ef78e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6d8d0e...e9efe7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6ef576...65929d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6ff020...2251dc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x705d17...ce6078` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x709209...afb1ae` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x70dba9...d65f15` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x71a2b7...6ae2ec` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x748f9b...7ff4f9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7617d8...586028` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x782ae0...6a1dad` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7a37c6...185c7b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7aa8da...49f8c9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7c7bc7...0c9525` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7d7095...581697` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7e3c70...908e61` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8035ad...80ffbd` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x80ae95...b6e2ea` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x83eaed...e501a4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x845b83...b2eea2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x849af0...48b4b6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x85be87...212b8f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8929cf...eb3317` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8995ba...23392b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8cf6cf...3146a9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8ee322...d7b820` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8efb8d...45c887` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8fdfcf...9eec0a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x905c06...8ec11f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x90f85a...5f46ea` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x939e0f...4afc69` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x93be79...95b8d9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x93df8a...8b9920` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x981e01...ae4684` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x98da7d...eb2b0a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x994cb1...bd36c7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x995f06...20cd33` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9b1577...d5995a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9b84b5...6bd8fb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9b9d53...78d523` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9c3d4e...920889` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9e0269...eba015` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9fec57...8aeb24` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9ff1cb...79f9a5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa0a16a...7fe448` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa0ef6c...1be76c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa2dd2b...b81d85` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa77a6d...63b5ff` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa8cc0e...022d12` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xaaecc9...b6ec0f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xab9f17...892112` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xad6036...4acc11` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xae1a94...551f2f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xafbfaa...8afa81` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb11aed...e3b888` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb17fc2...b68bd3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb1db6c...0cff98` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb2d217...56b6af` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb374ff...d2eb99` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb3d38b...a2f485` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb3da21...85936f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb3e209...25c67d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb4e96a...4e26e7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb83935...559e72` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb8514d...792fbf` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbb0dd5...823692` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbc76de...7cf85d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbdd45f...5f087c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbfefe3...5ec1ab` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc11788...e8eb34` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc244ad...ac3e50` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc59969...1223f0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc64f91...3df9a9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc66fc5...e21daa` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc882c2...b4ad96` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc899ef...c5ba42` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc92b42...6ff3c6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc9434f...1d8915` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc95317...e83cd0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcd31d2...e815f2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcd33f6...314f7a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xce54a9...1ba853` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcf2a0e...3a8cb0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd1a31f...cbc551` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd2b33d...256522` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd4585a...5694a7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd58826...9aff07` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd72fae...c54f6f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd8f528...401baa` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdb5e7d...7e1c03` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe0ed52...6d094a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe394ab...68bb0c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe5e214...3b6a5d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe6d519...0f1c03` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe76da5...503baa` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe7c169...19afe7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe9041d...be144f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe922bc...008e41` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xeba47e...f1a71f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xec9144...dd1fe1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf01e01...a95d36` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf044ff...969874` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf617b9...1a027d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf8edc0...504fad` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfa5514...b1441d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfa59cb...47153d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfe0800...c4ae78` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfe2d26...fe52c7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xffe923...419799` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CYBRO One Click Lending Security Analysis by Pessimistic.pdf](https://github.com/cybro-io/dapp-contracts-audits/blob/main/CYBRO%20One%20Click%20Lending%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [CYBRO Security Analysis by Pessimistic.pdf](https://github.com/cybro-io/dapp-contracts-audits/blob/main/CYBRO%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [CYBRO Smart Contract Audit Report - QuillAudits.pdf](https://github.com/cybro-io/dapp-contracts-audits/blob/main/CYBRO%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | 4 | n/a |
| [CYBRO Staking Security Analysis by Pessimistic.pdf](https://github.com/cybro-io/dapp-contracts-audits/blob/main/CYBRO%20Staking%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 3 | n/a |
| [Cybro Vault Smart Contract Audit - QuillAudits.pdf](https://github.com/cybro-io/dapp-contracts-audits/blob/main/Cybro%20Vault%20Smart%20Contract%20Audit%20-%20QuillAudits.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 3 | n/a |
| [Cybro Privacy.pdf](https://cybro.io/legals/Cybro%20Privacy.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Cybro Terms of Use December 2025.pdf](https://cybro.io/legals/Cybro%20Terms%20of%20Use%20December%202025.pdf) | unknown | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [skynet.certik.com/projects/cybro](https://skynet.certik.com/projects/cybro) | CertiK | Audit | 2025-02 | aging | Direct | contract_name | 1 | n/a |
| [security-audits.md](https://cybro.gitbook.io/cybro/governance/security-audits.md) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 1 | n/a |
| [reports.md](https://cybro.gitbook.io/cybro/governance/reports.md) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [security-report-1st-may-2024.md](https://cybro.gitbook.io/cybro/governance/reports/security-report-1st-may-2024.md) | unknown | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [security-report-29th-may-2025.md](https://cybro.gitbook.io/cybro/governance/reports/security-report-29th-may-2025.md) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [security-report-9th-july-2024.md](https://cybro.gitbook.io/cybro/governance/reports/security-report-9th-july-2024.md) | unknown | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [security-report-10th-may-2024.md](https://cybro.gitbook.io/cybro/governance/reports/security-report-10th-may-2024.md) | unknown | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [cybro-privacy.pdf](https://cybro.io/legals/cybro-privacy.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [cybro-terms-of-use.pdf](https://cybro.io/legals/cybro-terms-of-use.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [hexens-cybro-mar-26(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/hexens-cybro-mar-26(Final).pdf) | Hexens | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [hexens.io/audit-reports/cybro-v3-v4-automation-mar-2026](https://hexens.io/audit-reports/cybro-v3-v4-automation-mar-2026) | Hexens | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [CYBRO Liquidity manager Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/a27871ebd7f6e36d0f61604a8edf9e53be096473/CYBRO%20Liquidity%20manager%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2026-02 | fresh | Direct | contract_name | 6 | n/a |
| [CYBRO LPManager Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/5bafc9eb1003bcc443caa7282d381c752373a624/CYBRO%20LPManager%20Security%20Analysis%20by%20Pessimistic.pdf) | Code4rena | Contest | 2025-10 | fresh | Direct | contract_name | 2 | n/a |
| [Cybro LidoVault Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/cccca3bd4fedf5955fcf178fefd7b4ebb75de0a1/Cybro%20LidoVault%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2025-07 | aging | Direct | contract_name | 2 | n/a |
| [skynet.certik.com/projects/cybro](https://skynet.certik.com/projects/cybro?auditId=CYBRO%20Token%20-%20Audit) | CertiK | Audit | 2025-02 | aging | Direct | contract_name | 1 | n/a |
| [CYBRO LPManager Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/CYBRO%20LPManager%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2025-10 | fresh | Direct | contract_name | 2 | n/a |
| [CYBRO LPManager Security Analysis by Pessimistic.pdf](https://github.com/cybro-io/dapp-contracts-audits/blob/main/CYBRO%20LPManager%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2025-10 | fresh | Direct | contract_name | 2 | n/a |
| [Cybro V3 Smart Contract Audit Report - QuillAudits.pdf](https://github.com/cybro-io/dapp-contracts-audits/blob/main/Cybro%20V3%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2025-03 | aging | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 664 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=30

Zero-match audit list:

- [12982] CYBRO One Click Lending Security Analysis by Pessimistic.pdf
- [12983] CYBRO Security Analysis by Pessimistic.pdf
- [12987] Cybro Privacy.pdf
- [12988] Cybro Terms of Use December 2025.pdf
- [12991] reports.md
- [12992] security-report-1st-may-2024.md
- [12993] security-report-29th-may-2025.md
- [12994] security-report-9th-july-2024.md
- [12995] security-report-10th-may-2024.md
- [16256] cybro-privacy.pdf
- [16257] cybro-terms-of-use.pdf
- [16265] hexens-cybro-mar-26(Final).pdf
- [16266] hexens.io/audit-reports/cybro-v3-v4-automation-mar-2026

Fork inheritance lineage and inherited audits are included when available.
