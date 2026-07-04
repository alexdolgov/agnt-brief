# Agentic Audit Brief: KiloEx

## Project Overview

- Project: KiloEx (`kiloex`)
- Website: [https://app.kiloex.io/#/trade](https://app.kiloex.io/#/trade)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:19.879Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: base, bsc, manta, opbnb
- Contract surface: 773 unique implementations (801 raw deployments)
- DeFi Llama TVL: $1,251,178.06
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 5 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 801; live-surface contracts included: 801 (34 live, 767 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/22 (27.3%)
- Deployed-live implementations: 22 of 773 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/22
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 751
- Unique implementations: 773
- Raw deployments: 801
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 22.7% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 5 | 22.7% | 2025-03 |
| Secure3 | Tier 2 | 2 | 9.1% | 2023-06 |
| unknown | Tier 2 | 2 | 9.1% | 2024-07 |
| Scalebit | Tier 2 | 1 | 4.5% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KiloExToken | token | bsc | n/a | 2 deployments: bsc [`0x503fa2...c1df53`](./contracts/bsc-56/0x503fa24b7972677f00c4618e5fbe237780c1df53/); bsc `0xfcd054...a7019a` | ✅ Audited |
| MarketOrderWithTriggerOrder | unknown | bsc | n/a | 2 deployments: bsc [`0x256035...23eaeb`](./contracts/bsc-56/0x256035e9099c266f2a9bd3bdebc4c3f5a623eaeb/); bsc `0x759505...cf952c` | ✅ Audited |
| TransparentUpgradeableProxy | unknown | opbnb | n/a | 2 deployments: opbnb [`0x07b8bc...428e92`](./contracts/opbnb-204/0x07b8bc851e5fdef867a2bc81c6992cac38428e92/); opbnb `0x43e3e6...c6b477` | ✅ Audited |
| TransparentUpgradeableProxy | unknown | opbnb | n/a | 2 deployments: opbnb [`0x1b22f2...e2e15b`](./contracts/opbnb-204/0x1b22f2313ddf165348d783dd89d84daeaee2e15b/); opbnb `0x1ebed4...6e8c46` | ✅ Audited |
| TransparentUpgradeableProxy | proxy | opbnb | n/a | 2 deployments: opbnb [`0xe0ee1c...b752f7`](./contracts/opbnb-204/0xe0ee1cb99843c6dcdeb701707daadf9ea8b752f7/); opbnb `0xe31b01...919c72` | ✅ Audited |
| XKiloToken | token | bsc | n/a | 2 deployments: bsc [`0xa58643...88c040`](./contracts/bsc-56/0xa586438a641bf1d44938dabe819249d55e88c040/); bsc `0xdfd560...01df0e` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | governance | base | n/a | [`0xc7437d...3a6b0f`](./contracts/base-8453/0xc7437df5b7cea272999e368d581f1d4d273a6b0f/) | ⚠️ Unaudited |
| SolvBTCV3 | unknown | base | n/a | [`0x3b86ad...ee931f`](./contracts/base-8453/0x3b86ad95859b6ab773f55f8d94b4b9d443ee931f/) | ⚠️ Unaudited |
| StoneCross | unknown | base | n/a | [`0xd2012f...c728c6`](./contracts/base-8453/0xd2012fc1b913ce50732ebcaa7e601fe37ac728c6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 12 deployments: bsc [`0x078e31...7ffcda`](./contracts/bsc-56/0x078e31821c94e5a99a64fdc60ccae97e807ffcda/); bsc `0x49182d...716de7`; bsc `0x637142...e9e7da`; bsc `0x8d47bc...829b1e`; manta `0x19653d...a2717c`; manta `0x1ebed4...6e8c46`; manta `0x43e3e6...c6b477`; manta `0x471c5e...adff99`; manta `0xa02d43...536acc`; manta `0xa10f74...7e332a`; manta `0xe47262...aad4d0`; manta `0xf1fd3c...bec648` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 2 deployments: bsc [`0x1c3f35...7ad0fb`](./contracts/bsc-56/0x1c3f35f7883fc4ea8c4bca1507144dc6087ad0fb/); bsc `0x4f04cb...be9582` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x23422c...43690a`](./contracts/bsc-56/0x23422cf0e6a4c46953bda2874f360d98e043690a/); bsc `0xc23b49...973c48` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 2 deployments: bsc [`0x298e94...25d019`](./contracts/bsc-56/0x298e94d5494e7c461a05903dcf41910e0125d019/); bsc `0x4f4671...b683c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x41601f...d02b98`](./contracts/bsc-56/0x41601ff5b9e09c2572fe137dc3f5502584d02b98/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x6d0a3a...0fa4e9`](./contracts/bsc-56/0x6d0a3a626cf703caab4af6bb475ac9062e0fa4e9/); bsc `0xef7af0...c6cf48` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 2 deployments: bsc [`0x746c18...7692e2`](./contracts/bsc-56/0x746c180268825b52fc5ea8057ecf3768037692e2/); bsc `0xc7e47b...a78f93` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 2 deployments: bsc [`0x7c09a8...9f0864`](./contracts/bsc-56/0x7c09a8df940cf1d14d4c24f90aca39ee619f0864/); bsc `0xb92e22...4559f3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x8829c1...b1b1f6`](./contracts/bsc-56/0x8829c12fde0d6ad085f78f7a1bd3044dc9b1b1f6/); bsc `0xfe03be...351356` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | opbnb | n/a | 2 deployments: opbnb [`0x19653d...a2717c`](./contracts/opbnb-204/0x19653dc8d30e39442b9cc96cb60d755e49a2717c/); opbnb `0x2540be...a662ea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | opbnb | n/a | 2 deployments: opbnb [`0x1a7b3f...62f981`](./contracts/opbnb-204/0x1a7b3f8890da3cc6968c182fa528ce9c9c62f981/); opbnb `0x2ebb30...ac534a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | opbnb | n/a | 2 deployments: opbnb [`0x1bc6f4...e91d93`](./contracts/opbnb-204/0x1bc6f42d6d1680115a52f82dfa29265085e91d93/); opbnb `0x5644e6...897589` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | opbnb | n/a | 2 deployments: opbnb [`0x5e9f1e...364974`](./contracts/opbnb-204/0x5e9f1e1264998dff7bc360799fa2b5a282364974/); opbnb `0xa02d43...536acc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (751)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x007f1c...745126` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01e7fe...a875c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x027df1...b7ab3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x034240...25c525` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x040fc9...174c14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0724a1...f980de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0811e1...98b451` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0953ab...416c40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09e454...964377` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ceffb...cca6c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d4421...ffc9c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e23c0...acc97f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10d194...dfcba3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x114298...263444` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x119fa7...959e82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x125ea3...974cb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12a3f5...380859` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13b0e2...4b4694` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x147b79...4680f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14829f...ffe1c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1518ea...e8a245` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x156232...7d0d84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16fb2e...f91256` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x188bbd...e1483f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1906a6...5c6c64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x194db2...d8bad3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x195063...0b7757` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x196141...f21ada` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19d346...d40812` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b5796...ae82a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b64eb...c44024` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1bad36...26d667` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1bc6f4...e91d93` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cc40b...558699` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d0e55...ff9062` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d124c...48811f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d245e...702233` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f4926...4671e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20bc89...105c83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22b1c0...9d200c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22c40b...92dae5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x235c5c...6bc619` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23f2e3...431149` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24c081...e9c87d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26b98d...ab0e6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2736ef...a266e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a108d...421597` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ea8be...f2681a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3011f2...17ec56` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x328fbe...14dd8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33a4a5...26ae90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33a883...b9a72b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x345eb6...47fe9a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x351377...b6a0ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36a375...deb179` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36e9c6...5ef1b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36f70e...3179ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38f882...593ae2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3eb910...dc340c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f44ba...ad96d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f950c...d9d6fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x429b14...35d595` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43cc29...28d685` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46896f...08810b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47a062...cef3e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48948e...bdafab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x489b55...66b105` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b7a8c...cd9e14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ba09e...672edb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4bcb8f...511920` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d38b2...964c5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d9cbc...d78213` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e9acc...e32741` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4fbc5c...a2c53e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52cbc0...405a90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53da6f...2a1125` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x543539...7edce8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x560535...6906a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x569fb4...94406e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56ebb4...a47986` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x582959...6faa75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x596754...7c3b80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5abe9d...cde48e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b457f...91dab7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x600e33...49e961` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60ea97...aaf333` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6110ef...7e9580` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x615249...cf4bb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61e120...50ffd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x622609...4913b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62a63f...5758fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62ac28...c20441` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x647910...d0a63f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66f566...4f74f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6716b7...3b4b65` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x678b9d...f6e04e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6971f5...2032d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a24fa...378039` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c18fa...1f632c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c2e4c...396504` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dc49c...f58dcf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e7c93...c87d43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ea82d...0dc777` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f9ba1...87dfaf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x706c85...920732` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x730c34...1ec5c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x759809...d11ce5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x75e579...59c29c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7637e3...47c9c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78fd70...cff48b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ac553...c2dfbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bf3c5...c7a3dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d14a5...286933` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7dc249...18fae8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f6a1f...aabddb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7fbd67...82e430` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x801e97...f9d25b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80b000...c785a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81d613...60bfc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81e3f4...ed2a5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x820bbd...648464` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x830b7a...6e99e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8339f6...28e681` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83ff45...60717a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84ac5c...05384c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84c1db...847585` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x862ed1...2b0f9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8642c6...bd93d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86b7cb...6bc3db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8948ee...cecc5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89722e...71727b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8995ed...bc9533` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b338e...7d29ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8d7840...2a4854` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e0cc7...41bd88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e2a6f...adcdcb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8eab22...d84758` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ebec9...a0c403` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8fd9e2...a0a246` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x911a76...d35740` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91842f...71cf39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x921efa...58920c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92a381...feafcc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x950d9e...1b99fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x969ea9...2cc5d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97ab4e...739558` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98f557...cab4d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ae7fb...393c82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d1571...7162c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d7595...54d964` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d7859...d2764e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9de6c3...02a03c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e2ab9...1882ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e6c30...554346` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f7d64...8deefa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9fb836...2f9fd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0dc1d...fb97b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa205e3...dfeb18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa307f7...4b03e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4030b...b3c397` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa405e1...61c5c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5d3a6...b7f4cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa638e4...a5976b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7b57a...976606` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa981ba...b27de6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9ec17...1ccee5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa11c8...cce164` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab3692...d860ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab49fd...07dae9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab90bf...4fab14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad37c8...e7efb1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xadfaf8...e8620c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf457b...b2ecde` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf8926...7ab975` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb09e56...c6e4c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb109cc...22d059` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb10a77...a114e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1d065...7a8fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1ea39...f1c09f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1eee7...dedccf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2acb4...c97c64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2c4b9...b5a162` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb36299...ec03e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb46136...43ec15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb47bfa...db3ca7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb519c2...136e3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb89cef...0f8f57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8b74e...0b36f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9bb29...1db0a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba41b3...95341c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe37cb...81805e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1ea97...fe5693` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3aed3...f3d954` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3dde2...e1ce28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4c17a...3b5d26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4d384...314eb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc50ca7...5cd182` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc62c38...7246d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc65260...989516` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc70ced...b2c606` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7444b...10977d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7d5a5...be1109` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc90f1a...6c848a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc936d3...74ec63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb9d22...23fad8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc4004...815e1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xccb26b...4e94f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf3ef0...83f6ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf4382...6b088d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf52e5...87f967` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd03267...8b792f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2131f...49d39f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd21408...ce4b20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd26d01...2d50bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd26e88...6c0c91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3d1e2...913f2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd62d82...54b95c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6939b...5f055a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7ca74...0dda51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd82400...4a4177` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9b21b...0be217` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdcc6fd...f67e7a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd2f63...f17bc2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd304c...ef81ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde6f76...3aad2b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdff3c7...44cfe1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe01b02...ab3e6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0f091...3dffa4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0f3ef...0afd32` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1aa23...18a29b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe234f5...034220` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe32f25...ed74d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe418c0...cedfc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe47262...aad4d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe487b4...f0d914` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4991d...70103c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe56198...1aa2c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe830f3...0d34ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea45e9...2ca646` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea5e41...7ff0bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeae1c2...68a630` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeae561...d67630` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xebffd0...4c63cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee12cd...053699` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee195a...b60ec3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf32194...0b46a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf44a56...779cca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6b15e...807d74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6ee39...456706` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf705f2...19b5cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfad4ff...0215d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfae0d4...3ae606` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb140d...d21759` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfcc469...69e075` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd0696...02fbba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd3be5...34a6b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff5600...cf1050` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff5e38...3c01f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff6329...ee5827` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x007f1c...745126` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x01be6d...5bef7f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x04d6b3...e15e53` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x06bcc2...b33535` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x078e31...7ffcda` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x0980fd...e24e3a` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x0997a8...7ef8fd` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x0ab5f6...105c96` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x0bba2d...9742d8` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x0c10bb...ea1341` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x0cbafd...9244ef` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x0d383a...3bd721` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x0ed34f...19ac89` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x11018b...866361` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x129627...d7e177` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x156232...7d0d84` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x16bd84...12ce67` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x174aef...219593` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x188bbd...e1483f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x18bab1...103662` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x191b88...49a7bc` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x195063...0b7757` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1993c1...8af478` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x199d07...d1f9d2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x19d346...d40812` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1a7b3f...62f981` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1b42a7...c8ed7c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1b6292...53830f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1b64eb...c44024` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1c3f35...7ad0fb` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1fd3d4...d5b5c1` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x22c40b...92dae5` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x25038a...3ddb19` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2641a3...69fac8` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x27a980...a053fa` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x298e94...25d019` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2995fa...b5224d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2ea6ab...27740f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2f75b5...7b21b6` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2fd8bb...d9d691` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3166aa...dee5e0` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x33495c...f7a63e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x335459...bb8b16` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x35111c...424714` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x356b3a...b95cc4` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x357d59...3e20a3` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x374271...186a30` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x381700...c616aa` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3a0d28...78846a` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3a971a...7185b7` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3d69ce...a0b187` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3ea603...5bbbc6` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3fdd62...b5675a` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x40ba12...85e832` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x42a843...d8a36e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x43ed5a...34d953` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x441b63...082af5` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x44e568...492849` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x493ee8...1004dc` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x499dc9...b485ef` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x4af5e4...a95f99` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x4fbc5c...a2c53e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5090f7...6d6489` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x50f556...693ccd` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x51b2ce...0c67db` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x52a880...ee4b86` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5358bf...fe0594` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x569fb4...94406e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5ba5fe...d17ef2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5cdb06...ff4894` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5dc0a3...12820f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5e777a...77ff02` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5ec776...f6288b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5efe44...670cbf` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5fab4a...eef8c0` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x615249...cf4bb0` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x62ac28...c20441` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x62f2a5...1cae0d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x65b227...928221` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x66dc90...5dbd7a` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x66f566...4f74f5` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x673fd4...9c0bcc` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x681fff...f79039` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x69b14a...a9cada` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x6bd810...cdb4f6` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x6be5e8...e84865` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x6bf9cb...e4efae` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x6da425...9f13f6` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x6ea82d...0dc777` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x6efd13...757feb` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x6fb261...aa9f64` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x6fb8b2...4bbe93` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x712336...d08efb` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x727741...9ee51f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x739118...6c6176` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x73cff4...ec5328` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x746c18...7692e2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x74eb21...26bbe0` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x7746ef...d75717` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x7804d1...cdd1af` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x78469b...0fc495` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x796f17...f3aa9d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x7a9555...64c910` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x7b2ad6...fc2205` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x7b5f80...4b0b6d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x7bc8d5...ac44ce` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x7bf3c5...c7a3dc` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x7c09a8...9f0864` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x7de854...de1ffb` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x7f6a1f...aabddb` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x816974...25e45b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x819819...078feb` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x81e3f4...ed2a5b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x84b580...ee9b2d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x85acdb...4bd85b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x86b7cb...6bc3db` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x87286b...04853c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8995ed...bc9533` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8aad46...917699` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8b81bd...399733` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8bf9d9...922643` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8d0a3c...1c164d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8d8439...2b8074` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8dd0bd...32b7f6` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8ed987...2e4c87` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8fd9e2...a0a246` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9108b3...4cd38d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x93b095...ad7833` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x95a4d4...d0f940` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x96b598...d9d6c2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x99a249...3c2d02` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9c90b8...38432c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9d40ca...fbf0e2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9fc894...2d9f4b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa091a4...7c855f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa1f184...b01eab` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa2bcb3...be99fc` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa2e2f3...4fc5b2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa405e1...61c5c1` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa50ccb...827383` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa51d01...5f8760` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa5fadc...ea1ec5` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa6194b...2b61f6` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa7dc00...472ee7` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa934ef...7f3937` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa96a97...dd939d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa9ec17...1ccee5` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xabb9fc...d2769f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xac8b00...16f5be` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xac9bb9...17f5de` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xaf9670...6aa460` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb09e56...c6e4c8` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb10a77...a114e4` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb1437a...582e9a` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb1d065...7a8fbc` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb26a51...16c094` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb2c4b9...b5a162` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb31c98...abf56f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb36299...ec03e4` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb70af8...1e168f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb85b69...605c3e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xbe452f...2b2bc2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xbef6b8...65a78f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc23b49...973c48` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc2e5ae...651b72` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc7437d...3a6b0f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc84b84...7b9e79` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc94b9f...110423` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xcc1f90...7114cf` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xcc4004...815e1e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xcc7ca4...f13646` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xcdbac9...53d043` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xd26d01...2d50bd` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xd2cd7f...f0dec9` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xd30a62...9cccb3` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xd3df95...780a2b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xd7ca74...0dda51` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xd8ebb5...5000e0` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xd9b659...79756b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xde9c77...b859b3` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xe08232...f60531` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xe321ee...389ce5` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xe8112d...36f996` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xe8c663...09ad54` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xe93211...b32d38` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xeae561...d67630` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xee12cd...053699` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xef7af0...c6cf48` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf2fc93...d22130` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf3381e...2d8a76` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf396eb...f1d2bc` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf46aec...b5ed1d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf6c981...6c988b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xfa97b4...af788c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xfc72c1...854cd4` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xfcf7f3...9af62d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xfe03be...351356` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xff6329...ee5827` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x0176ec...d1e240` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x0238bd...65494f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x027df1...b7ab3d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x039be8...c008b2` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x053d0f...dd998a` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x06dff8...cfe98c` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x07159a...3e6fb1` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x08b808...cb1542` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x0997a8...7ef8fd` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x0ceab9...00e018` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x12d932...27c984` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x1333bf...3dbe15` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x1428f2...4ec082` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x1945ff...d7b38a` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x1b64eb...c44024` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x1bad36...26d667` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x1c3f35...7ad0fb` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x1ce1e0...134a55` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x1e316a...4cc6d2` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x218798...2969c1` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x221b96...0d1389` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x22c40b...92dae5` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x23041d...6708de` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x24c313...a2632f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x25c7e4...d471d5` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x298e94...25d019` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x2da0df...9a68d7` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x2f179f...1266bc` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x2f75b5...7b21b6` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x31afd6...21ff47` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x3377d8...ba11e3` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x33c70a...50f21b` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x34e3a4...562aee` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x36a375...deb179` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x377ca4...b686e1` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x37a2b8...dd3cd9` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x3d75c5...1eb26e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x3e91ab...b0a26e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x432e5f...f91b92` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x44e597...38505f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x497b12...6669c6` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x49894a...a094ec` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x4b1dbc...cc9dc7` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x4bc759...6d4824` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x4bf59d...750c0f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x4c27ff...658218` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x4d6cb5...bc958d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x4e1b5c...ffd2d4` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x4fbc5c...a2c53e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x5165e7...f00272` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x51b5fd...a2f062` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x5265ca...41ebf6` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x532e7e...f66e84` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x533685...a4e91c` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x596754...7c3b80` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x5abe9d...cde48e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x5b457f...91dab7` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x5beeb5...b97ce6` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x5d301d...67e228` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x5dadef...0cd4cb` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x5e5f70...71268a` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x5f1d77...0de839` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x64b2ae...5f36eb` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x65f6d2...c40576` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x6ab0af...129213` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x6b6a9b...7ec760` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x6d4887...ba0ca8` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x71134a...3a7d63` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x746c18...7692e2` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7565f3...1ef154` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x769bc4...ec96c1` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x778f22...ea0580` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x78469b...0fc495` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x796f17...f3aa9d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7aa149...50b04c` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7b8ebb...f13529` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7bc8d5...ac44ce` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7c09a8...9f0864` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7f11ee...d5e4bd` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x8058b2...2a7aba` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x80f52d...cc38a8` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x8133b1...4de9b2` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x81c7fe...a1d867` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x81cb2c...8e0eef` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x81e3f4...ed2a5b` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x82f391...72d58b` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x85e846...e2bf9e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x8995ed...bc9533` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x8aaa41...e32cf7` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x8d7840...2a4854` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x8fd9e2...a0a246` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x921efa...58920c` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x94f59a...0c81b8` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x950d9e...1b99fe` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x997f11...5b5331` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x9d8c69...021094` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x9f1646...d13369` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x9ffb77...56fa08` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xa2234f...89dcb5` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xa2e2f3...4fc5b2` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xa3aa0c...83f677` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xa3c269...14aa8c` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xa50ccb...827383` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xa5acea...d977c7` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xac9bb9...17f5de` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xad7cc1...48aeb6` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xae642e...dbd827` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xb1d065...7a8fbc` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xb1d2e7...9512de` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xb26dcb...38a966` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xb31c98...abf56f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xb36299...ec03e4` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xb85b69...605c3e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xb8d395...7dba86` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xbc5051...778972` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc1d1d4...65dd29` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc23b49...973c48` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc28789...4330d6` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc2c939...80564f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc2e5ae...651b72` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc328a8...91f44b` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc41a61...88dfdb` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc7437d...3a6b0f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc7444b...10977d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc84e04...8acfc7` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc8d089...e59be7` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xcd4065...d4b94c` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xce7dad...f01233` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xcf1961...c69fb2` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xd577c6...33bb3d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xd77449...7afd85` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xd7b250...57325c` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xd9075b...4377a8` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xdb325c...4c88ba` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xdbc507...68361f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xdbfff7...fa360d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xdd6eff...a306dc` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xde202c...bd069e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xdf9418...da0950` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xdfd773...ae1b15` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xe234f5...034220` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xe4889d...b2050e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xe4991d...70103c` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xe5ea07...ad4995` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xedf233...a35b53` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xeee96f...570f16` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xf060a1...0400bf` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xf06f51...da0478` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xf0736d...04eb2f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xf1bea3...4db511` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xf212c1...99a758` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xf3381e...2d8a76` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xf36b0d...bec5cb` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xf3eba5...1177dc` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xf6d619...e937ca` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xf7ccc9...83fced` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xfa97b4...af788c` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xfc46ea...5a54d5` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xfcf7f3...9af62d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xfe03be...351356` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x01f4e3...7319fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x041379...c4c0cd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x04760e...aedb80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x04d6b3...e15e53` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x066b67...60cfea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x07a60f...549086` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0811e1...98b451` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0997a8...7ef8fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0fd17d...c07e26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10e363...e5c82f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13b0e2...4b4694` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x14f204...abd9b9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19653d...a2717c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a7b3f...62f981` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b64eb...c44024` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c3f35...7ad0fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1ebed4...6e8c46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20bc89...105c83` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x221b96...0d1389` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x22b65d...b0c849` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x22c40b...92dae5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2646e7...2dbbaa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x27a2bf...80be1e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x295213...b527ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x298e94...25d019` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2aca0c...343357` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2c9026...3729e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f75b5...7b21b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f94c6...2054bc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x30865b...4a01de` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3274b6...ebe7c8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34c625...54690e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34cb54...4e6b48` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x351377...b6a0ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c8b46...a448af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x41ce2a...de83db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43e3e6...c6b477` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x489b55...66b105` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x499dc9...b485ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4d0f8d...995c13` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x514b14...890bc0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52cbc0...405a90` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x54e874...d34aed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x56c927...3052ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x580242...8fecf9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x581074...a7c202` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x618370...0e63e1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x61e120...50ffd5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62a63f...5758fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6390d5...c4cc41` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63f7b5...20bea9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x66dc90...5dbd7a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d7f4b...059571` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x705263...776105` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71134a...3a7d63` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x726516...5b9f11` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72836f...b6c89d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x746c18...7692e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7637e3...47c9c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x772dd9...ca5d7c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78469b...0fc495` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x796f17...f3aa9d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7ab5c3...9af634` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7bc8d5...ac44ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7c09a8...9f0864` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81e3f4...ed2a5b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x844e8a...ddb8bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87b718...046ee9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87da9d...c144a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88b767...93ae79` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8995ed...bc9533` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8fd9e2...a0a246` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9088e3...a2cf3c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x92a381...feafcc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9438b8...6ae107` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97ad75...07a706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x984eb2...9af13a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x994f4e...a5696e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9a51dc...5b83c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c4a7f...b95a3c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9ddb41...fddbf7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e357e...33aa9d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f6cd2...dce2f2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa02d43...536acc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2e2f3...4fc5b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa307f7...4b03e1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa39efa...957e86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4d342...1db86b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa62f9c...b90572` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa9f9e1...9f6405` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac9bb9...17f5de` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb1c7f6...4670b9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb1d065...7a8fbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb20faa...2745e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb31c98...abf56f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb4105d...fdafe4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb537db...d2af81` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb553fe...5cce9f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xba86fc...87bfbb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd1c1b...e44954` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbed75e...bb4e61` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc1d1d4...65dd29` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc23b49...973c48` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc2e5ae...651b72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc5655a...ffff97` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc56d3b...546ead` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7444b...10977d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc8d733...963292` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc90f1a...6c848a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc91672...42bcf6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc9d2aa...f1f540` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xccbd2a...fb0657` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xccf4df...fe03ec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcdc526...f167e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf07e1...c0ae28` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd28152...84e30e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd62d82...54b95c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd8f204...415984` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdaf169...98cf07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd304c...ef81ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd8651...5cf45f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf5acc...93ebbb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe40ece...0afcb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6999f...da76f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeae561...d67630` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xef5d9f...356909` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3eba5...1177dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf46aec...b5ed1d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4d446...f709fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6ee39...456706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7b1d5...800e8b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd0696...02fbba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdc7bc...3627ed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe03be...351356` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view](https://drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view?usp=sharing) | Secure3 | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view](https://drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view?usp=sharing) | Ancilia | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [Kilo---Vault2-Final-Audit-Report.pdf](https://scalebit.xyz/reports/Kilo---Vault2-Final-Audit-Report.pdf) | Scalebit | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [20240802-HybridVault-Final-Audit-Report.pdf](https://scalebit.xyz/reports/20240802-HybridVault-Final-Audit-Report.pdf) | Scalebit | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [20250321-XKilo-Token-Final-Audit-Report.pdf](https://scalebit.xyz/reports/20250321-XKilo-Token-Final-Audit-Report.pdf) | Scalebit | Audit | 2024-07 | stale | Direct | contract_name | 1 | n/a |
| [KiloEx - SlowMist Audit Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/KiloEx%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-03 | aging | Direct | contract_name | 5 | n/a |
| [HybridVault Audit Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/HybridVault%20Audit%20Report.pdf) | unknown | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [Kilo - Vault2 Audit Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/Kilo%20-%20Vault2%20Audit%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Kilo Auditing Report 1.3 public.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/Kilo%20Auditing%20Report%201.3%20public.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 2 | n/a |
| [KiloEx_final_Secure3_Audit_Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/KiloEx_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-06 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 773 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=10

Zero-match audit list:

- [2766] drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view
- [2767] drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view
- [2768] Kilo---Vault2-Final-Audit-Report.pdf
- [2769] 20240802-HybridVault-Final-Audit-Report.pdf
- [2772] HybridVault Audit Report.pdf
- [2773] Kilo - Vault2 Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
