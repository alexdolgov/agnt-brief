# Agentic Audit Brief: Zircon Gamma

## Project Overview

- Project: Zircon Gamma (`zircon-gamma`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.907Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: moonriver
- Contract surface: 182 unique implementations (197 raw deployments)
- DeFi Llama TVL: $2.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 10 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 231; live-surface contracts included: 197 (22 live, 175 unknown).
- Excluded by liveness: 34 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/7 (85.7%)
- Deployed-live implementations: 7 of 182 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/7
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 175
- Unique implementations: 182
- Raw deployments: 197
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 85.7% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Migrator | unknown | moonriver | n/a | [`0x7276dc...d24248`](./contracts/moonriver-1285/0x7276dcc889c92234b0d2d2562dd9fd0e94d24248/) | ✅ Audited |
| PsionicFarmFactory | unknown | moonriver | n/a | [`0x97b2ae...d0dcf3`](./contracts/moonriver-1285/0x97b2ae105dafb7dc8a73c93e5f56d3f095d0dcf3/) | ✅ Audited |
| ZirconEnergyFactory | unknown | moonriver | n/a | 7 deployments: moonriver [`0x1a1956...a47e50`](./contracts/moonriver-1285/0x1a1956b60623cd52cc38d8aa62ac4e54d6a47e50/); moonriver `0x1f5807...5eba74`; moonriver `0x33c5b2...a7e325`; moonriver `0x3b7d45...f5305e`; moonriver `0x911fce...53e6f3`; moonriver `0xdeb930...3718fa`; moonriver `0xfc413b...f64649` | ✅ Audited |
| ZirconFactory | unknown | moonriver | n/a | 4 deployments: moonriver [`0x6b6071...06d5bd`](./contracts/moonriver-1285/0x6b6071ccc534fcee7b699aab87929faf8806d5bd/); moonriver `0x8c91cc...fa96db`; moonriver `0x98340c...8d1775`; moonriver `0xbbd854...dba9a2` | ✅ Audited |
| ZirconPTFactory | unknown | moonriver | n/a | 3 deployments: moonriver [`0x2d4dde...d41c54`](./contracts/moonriver-1285/0x2d4ddeb8b183413e9d88a98fa3dd844e34d41c54/); moonriver `0x3dc6f6...f5f4b1`; moonriver `0xbc67eb...9531df` | ✅ Audited |
| ZirconPylonFactory | unknown | moonriver | n/a | 5 deployments: moonriver [`0x115355...f41440`](./contracts/moonriver-1285/0x1153550210bbef5b74890b242f37ae24e1f41440/); moonriver `0x2e0826...c2d299`; moonriver `0x65815a...4a6924`; moonriver `0x96dee2...f23b97`; moonriver `0xde75d7...c0ef1c` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ZirconGammaToken | token | moonriver | n/a | [`0x4545e9...152055`](./contracts/moonriver-1285/0x4545e94974adacb82fc56bcf136b07943e152055/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (175)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonriver | n/a | `0x021d56...40f18b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x032090...31f437` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x051c97...39a582` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x061857...84d3a5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x082520...e53742` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x09f8e0...cc1e0a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0b1ff2...5da3cd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0b2ad6...90db34` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0bd83a...7befe7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0c304a...3b6e7b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0d0302...ea02df` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0eb07c...f60fa8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0f45f1...7f1d60` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x118c5a...4c7fb3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x118d64...617e4f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1234f5...50837c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x177f2f...e9fc8b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1781ec...b14e0e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1c265b...e3c217` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1e0c08...79578c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1fe5a2...75f4ad` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1ffa4d...7c3a58` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x232d51...68cd9e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x26afe9...822dda` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x274b87...d10311` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2939cc...ad2a40` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x298f66...4b30a1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2ab804...d65e6e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2b0b3e...c20405` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2b5c5d...e53ccc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2ce0ba...5b2eeb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2dbb1a...eb97af` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x301f47...55e4eb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x30b7f2...bf41e6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3413b2...5c00e8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x352419...29df04` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x364359...a66767` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x385cc0...ffecb5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3adcd0...7f04d9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3be5af...a75b33` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3da19d...a318bd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3f81fb...8a8aff` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3f95db...25ab70` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x442849...a6efa2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4438e4...21627f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x45fd7e...39a1a9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x460a19...b8119c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x46e0a2...8ee6b4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x472c86...4557c0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x48fc61...3d4fd3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x495dd7...39e1e4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x49e15a...282de8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4a1626...6d6792` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4a77db...cc8deb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4ba754...3b32ce` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4c6bfd...d2213b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4d9c0f...ef26a7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x512333...b60e10` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x513ec2...f6aa74` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x51a6ca...08dc25` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x51cb2b...832112` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x529bd3...354751` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x544bb8...8278b5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x545fff...d2d8c6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x597d1f...956d63` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x59db42...fa8fa2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b1b12...f86b2e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5ce256...82f923` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5f3caf...c3c09d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x615836...12488b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x623ba0...8ce519` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x64be87...40efc4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x67fe4c...04c1a5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6ac364...03af7a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6b4e73...a6ae7f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6ced7b...0d71d9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6ed187...5935d9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x72ae77...ffb612` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x76652a...7e99b0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x783766...6eb382` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7888f3...2a4ea5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x79fde0...9dcd72` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7a8f86...708322` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7b7733...279ee4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7c4d84...6a1eb4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7c8512...138d69` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7cbea5...ddd7ab` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7dbd08...eaac62` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7def16...eee8d0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7ed589...08d2dd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7fd3eb...293cd4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7ffcbc...885224` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x80219b...a363fa` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x80de63...67ac5f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x842e0c...5e2b98` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x86f809...8bde5b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x88e218...5d02c0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8ac0dd...0850ec` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8c7b45...401e42` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8cd0e4...7abd37` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8da75b...3a7d3a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x91d5c6...ce56ce` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x924451...3880f2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9505ee...8ef005` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x97abc0...db0b46` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x97ad0f...605693` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x992182...462dcc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9adef5...28fd12` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9aef90...3307d3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9b38fd...2420a8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9d7154...13f46e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa1428f...e808db` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa3da14...702cb0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa511a2...8eab11` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa61146...130368` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa82e97...66961c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa90861...3d25ec` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xabb9fc...c732b7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xad4218...279f7e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xafa727...977b9b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb48f90...e277b8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb58924...2e76f2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb7adc6...224bed` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb8b97b...6e4c6a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbc6820...c24391` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbd57ad...e2c719` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbd8899...3d9d50` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbe58f8...9be5a2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbfbb1e...bfdc83` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc076f4...c81715` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc09ad8...6f1b3c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc38cfb...c27479` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcc4993...8b6520` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcc97c1...13498a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xccc644...321d55` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xce2cb5...3a747c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xce75cd...643f9c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd0dc01...0e02d1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd1eac2...0f0420` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd2b566...f52d42` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd424f1...a28d2f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd59b74...b764f3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd62d8d...194232` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd92274...5c0d7b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd97498...a2894d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdb26a2...027e8c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdb6c40...65e22e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdf109a...a5d3c3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdf4637...6ab5fa` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe23f44...04dcd0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe44e74...cd6126` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe4a236...47b8d8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe6d378...2e58de` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe7aad2...a6cb10` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe94229...a8157f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe9db6e...d38548` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xea0125...b69af1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xeab02f...9333f2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xebeacd...5a1c07` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xec4a0c...10dffa` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xedac4d...2bce6b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xedd38f...94cb7f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xefa50e...b5bac6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf21133...76324c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf2a2c0...3db8d4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf3cd98...514188` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf3d806...0d27df` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf54868...516134` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf71fcc...919350` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf77046...16c00e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf7eee0...3ec300` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfa9f93...8eafc8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfe50e1...6c39da` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfe931b...9a8d9f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xffde67...45e529` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Zircon_Protocol2_SecAssessment_report_v1.1.pdf](https://github.com/Zircon-Finance/zircon-protocol-2/blob/master/audit/chaintroopers/Zircon_Protocol2_SecAssessment_report_v1.1.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 21 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonriver | [`0x4545e9...152055`](./contracts/moonriver-1285/0x4545e94974adacb82fc56bcf136b07943e152055/) | ZirconGammaToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 175 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=21

Fork inheritance lineage and inherited audits are included when available.
