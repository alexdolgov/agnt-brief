# Agentic Audit Brief: Neku

## Project Overview

- Project: Neku (`neku`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:36.302Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum, moonriver
- Contract surface: 128 unique implementations (165 raw deployments)
- DeFi Llama TVL: $1,598,052.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 18 project-authored contract(s) across 2 chain(s); 6 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 4 common project-authored base contract(s) (operator, exponentialnoerror, ctokeninterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 266; live-surface contracts included: 165 (45 live, 120 unknown).
- Excluded by liveness: 101 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 128 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 120
- Unique implementations: 128
- Raw deployments: 165
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Delegator | token | arbitrum | n/a | 38 deployments: arbitrum [`0x19714e...50ab5f`](./contracts/arbitrum-42161/0x19714ee460f9d030e310bf1730b5172f5b50ab5f/); arbitrum `0x1ea643...dbb2fe`; arbitrum `0x2907c3...a9b43b`; arbitrum `0x2fda3a...209bce`; arbitrum `0x3631de...e93ea8`; arbitrum `0x374aed...b2799a`; arbitrum `0x3823d2...31f28b`; arbitrum `0x38a069...83cd1c`; arbitrum `0x3ae83a...0ed251`; arbitrum `0x3d2c13...d50d5b`; arbitrum `0x655773...c01912`; arbitrum `0x660474...44396f`; arbitrum `0x679818...bbe205`; arbitrum `0x70d279...c814a3`; arbitrum `0x70faf3...6af0db`; arbitrum `0x71ad16...32e920`; arbitrum `0x7fd875...f52163`; arbitrum `0x815330...5a4c4a`; arbitrum `0x82015c...33eb20`; arbitrum `0x874a86...d41554`; arbitrum `0x8e9027...151b07`; arbitrum `0x9ac8f7...f50caf`; arbitrum `0xa7ad08...1acd48`; arbitrum `0xa9958d...cae784`; arbitrum `0xb5dc00...9bfeea`; arbitrum `0xba7dab...30e6b3`; arbitrum `0xbd1bf6...8f3296`; arbitrum `0xbd65ae...c96915`; arbitrum `0xc7dec2...7494ea`; arbitrum `0xcb2b0b...daf95a`; arbitrum `0xccb8da...98aa15`; arbitrum `0xd73ed2...37bdd1`; arbitrum `0xdac3b1...070a29`; arbitrum `0xdbfd9c...c11a26`; arbitrum `0xdee7e9...79c68c`; arbitrum `0xdf19d7...e17bae`; arbitrum `0xee2a89...f6e07f`; arbitrum `0xfd4224...2f0553` | ⚠️ Unaudited |
| CEther | unknown | arbitrum | n/a | [`0xbc4a19...eccb8b`](./contracts/arbitrum-42161/0xbc4a19345c598d73939b62371cf9891128eccb8b/) | ⚠️ Unaudited |
| Comp | unknown | arbitrum | n/a | [`0x3bf088...4be840`](./contracts/arbitrum-42161/0x3bf0880fd26e49c46d1a1e69adb268889b4be840/) | ⚠️ Unaudited |
| MasterChef | unknown | moonriver | n/a | [`0x1e930c...a9641e`](./contracts/moonriver-1285/0x1e930c6a1ec0e098617a2c202939ed0345a9641e/) | ⚠️ Unaudited |
| OracleObserver | operational_periphery | arbitrum | n/a | [`0xf8e3c6...d57c98`](./contracts/arbitrum-42161/0xf8e3c6d39a4f05fc8980cea6710c79d7a9d57c98/) | ⚠️ Unaudited |
| StableMint | unknown | arbitrum | n/a | [`0xb57524...6a4229`](./contracts/arbitrum-42161/0xb575244296c27e7897382e6c140708c44a6a4229/) | ⚠️ Unaudited |
| TVL | unknown | arbitrum | n/a | [`0x4c02f3...d3691f`](./contracts/arbitrum-42161/0x4c02f377eec59f41b4ba3a83a03cae7f79d3691f/) | ⚠️ Unaudited |
| WrappedToken | token | arbitrum | n/a | [`0xa4cc4a...997ce3`](./contracts/arbitrum-42161/0xa4cc4a18a44595d8c7dc34431a99994545997ce3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (120)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonriver | n/a | `0x02ef4c...1cc9e9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x09d2f3...6f9d3e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0c233e...3607ec` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0f5bf2...85ec1f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0f81bb...9cec87` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x10a90c...99e87d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x10ca09...f5e9f3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x17fc53...9350d9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x18045b...3f4233` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1985f3...fe00c6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1a8ef8...6017ca` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1cfffd...099cc0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1d96ac...a1109a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1e08ae...7df0b6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1ff6f6...a2e72c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x20187f...090317` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x224137...5f9c59` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2259cd...21a027` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2776ed...b72077` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x28b4d2...74a155` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2dbd8d...6966ea` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2eaa6c...b6eb8d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x307fd8...3f1c45` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3153a0...aebba3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x322b2e...f64d05` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x34c0f1...61d834` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x37960e...6ffc1c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3805b1...74219b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3fd51f...af7abf` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x40a327...d3405f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x435d1c...73bf86` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x440852...751ec9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x440b54...5926ab` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x44ed29...52374b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x46f43d...9c9417` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x47206e...276c56` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x480b30...ead3cb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4831b6...27a10c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4bfa40...7c4940` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4c7c95...dd4361` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4cfeb7...e9a02a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x50c110...5c18f5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x527d10...9f9fd5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x535cd5...13c662` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x563f5d...5d8d93` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x58436d...2220bb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b8725...bab617` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5c027c...f2b30e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5c5609...525ed5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5cb437...ed600a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5f9a3f...f87e98` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x61a53a...99a12d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x644781...61938c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x644a85...3c7cb7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x64e2cd...9ecb82` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x65a8fe...a953c2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x66f02f...03ef44` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6bbbb3...7578eb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6ecfd0...6445bc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7482f0...77b101` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7485e3...980f28` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x757207...680d49` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x797b9a...922bf6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7aed16...930798` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7b99bc...62ba15` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7daa3e...97ac2b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x815f24...86efec` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x868935...673486` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8b8107...8fe930` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8dfd47...5ec698` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x91385b...057a3d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x91b6a9...b4a3ba` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9220c2...d77d3a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x92d098...f33fbb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x93a681...2f9193` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x997b95...b18035` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9a0a85...06f118` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9b068c...4f2d71` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa0f191...ba5a32` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa49c30...393660` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa49f4c...afd82b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa73ab9...60dd18` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa92b9d...03face` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xac5812...53cfaf` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xafe7ed...9536a6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb12624...62fd3e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb1bbd4...602ad3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb2ebfe...abe797` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb35172...a1990c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb49552...fa48f5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb5001f...9a4f59` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbc9c02...25dafd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbd0956...f5c443` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc3976d...a067b2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc7aa01...b1c1b5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xca9a77...caf396` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd4784c...83abe7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd5f781...ff59c2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd86a40...481f17` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xde9785...010f84` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdea086...a0d28e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe18cc9...92035a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe1f8c5...bd76cf` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe454d0...e9502a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe7f6d6...cb0f56` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xea9853...93163f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xebd1c0...ec272e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xecb9ce...f720c7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf261b3...b38806` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf815e0...7b6d21` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfbd90a...c6b7fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0140d4...57a814` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bddee...b4d250` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2703e4...6774b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ba34d...730629` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87746c...6f0d31` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x893c6f...759ba5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae2218...44f9e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbb52d...0bd0a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4a982...462b6b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/nekufinance](https://skynet.certik.com/projects/nekufinance) | CertiK | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 128 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3021] skynet.certik.com/projects/nekufinance

Fork inheritance lineage and inherited audits are included when available.
