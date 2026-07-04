# Agentic Audit Brief: MOBOX

## Project Overview

- Project: MOBOX (`mobox`)
- Website: [https://www.mobox.io/home/#/iframe/momo](https://www.mobox.io/home/#/iframe/momo)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:33.241Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc
- Contract surface: 312 unique implementations (317 raw deployments)
- DeFi Llama TVL: $528,771.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gaming. Structurally: 14 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (upgradeableproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 427; live-surface contracts included: 317 (6 live, 311 unknown).
- Excluded by liveness: 110 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 312 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 306
- Unique implementations: 312
- Raw deployments: 317
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KeyToken | token | bsc | n/a | [`0x85c128...b51d33`](./contracts/bsc-56/0x85c128ee1feeb39a59490c720a9c563554b51d33/) | ⚠️ Unaudited |
| MasterChefV2 | unknown | bsc | n/a | [`0xa5f8c5...f07652`](./contracts/bsc-56/0xa5f8c5dbd5f286960b9d90548680ae5ebff07652/) | ⚠️ Unaudited |
| MoboxToken | token | bsc | n/a | [`0x3203c9...da2377`](./contracts/bsc-56/0x3203c9e46ca618c8c1ce5dc67e7e9d75f5da2377/) | ⚠️ Unaudited |
| MoMoProxy | proxy | bsc | n/a | [`0x2873d9...7c69e7`](./contracts/bsc-56/0x2873d94d21efa8af064b02174413966b357c69e7/) | ⚠️ Unaudited |
| MoMoProxy | proxy | bsc | n/a | [`0x529e2a...393757`](./contracts/bsc-56/0x529e2a515ce4499c41b23102e56e45025e393757/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x8fa596...7a7c3f`](./contracts/bsc-56/0x8fa59693458289914db0097f5f366d771b7a7c3f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (306)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x7aa0e649d5b40872705b55f350bd315282fbcced) | unknown | bsc | n/a | 2 deployments: bsc `0x592e9e...28d117`; bsc `0x7aa0e6...fbcced` | ❓ Unverified |
| Proxy (impl: 0xdb1c49103f55f67fed5a5a30b0e0c7472b8243eb) | unknown | bsc | n/a | 2 deployments: bsc `0x91a986...d57358`; bsc `0xdb1c49...8243eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x008ec8...e3e23a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x00d805...039e04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x013875...f00cfc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01bd0a...b60aec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01bfac...85818d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02d33b...28d4da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0369c9...237730` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03c50e...5892eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03ffe1...28427e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04145a...49570e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04ae8b...350e3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x070cff...841909` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07c0f2...21eb63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x081c28...192e06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08b97f...6849cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0af8b2...9e913a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b5a22...73aa34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b9e10...c085c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0beb87...4d7084` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d5ee0...d576de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d7d56...96570d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e6826...eaae69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f3217...9c952c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f596f...e1beac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x110133...3a33c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x114495...7ad3ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x119d51...f24af5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1238d6...d1e41e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1240aa...43efc9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13469b...2fd8c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13d570...bc9baa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13e523...9a6c08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14e6ab...ffed32` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1522c2...218d42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x152b93...f2069d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x19842d...106101`; bsc `0x8b50d3...401d7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a569b...ece4d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cc40d...c8dabc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d33e4...52f8a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1dd015...62fd30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1fa6b4...2ba065` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x201d2c...fcd53b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21f126...b1dbf0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x231caf...e2e8f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24a306...bf43e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24a82b...944b8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26df4c...946c06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2880fc...d85a5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28cc56...97c102` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x295f68...3d2741` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29838d...b0b954` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b5d04...7436a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e403d...740f36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e6bca...5a0fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f9df0...964d95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fda03...89235c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3076f2...98be23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31d3fb...ee497e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x331349...2f65eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3327f5...21a360` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3333f8...421ff9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x337f7e...1b86fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3384d9...42d6b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x340ce5...01d7d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35b470...8a5d26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37c668...3c9f23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38023e...361d45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x381503...89a0ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x381850...f4a070` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38332f...d257e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3978fc...aae081` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x399bf8...0800b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a5128...a8da0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c6fb9...4440d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d0c8b...96ecc7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d42dd...41417a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d634a...bff213` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3db32c...deb98f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fdef0...078c92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40221c...f0bded` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41399f...ad0233` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41c045...653265` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42d06a...e054ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42f331...8dda10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43bb75...40f493` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44024d...98908b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44abd1...884837` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45469a...1a688b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x458961...dac076` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x458d73...e4da8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x471c1a...f5f923` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4803a8...801240` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x488c3a...2d41e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48e2c4...f542ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49cfd2...f5cc2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a6871...a597e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a6f39...968d12` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4aedbc...36f263` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f41c6...7562c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x507b0a...7d72f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x509ef0...e5f76c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5197a1...9aa8f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x527e9c...c796a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52d7c7...fa47c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x533b68...7dac80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53fca3...d28e3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55cf2a...3edcd0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55fba9...890e01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x560003...8cc8f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56be2c...89f153` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56d530...5b8273` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59020a...a27390` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x596b4d...0c25a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59f307...72039e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a4052...1d85c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5aa7fd...ff1a62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b2c66...19b298` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b54c4...750e20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b69ff...67b648` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b7a58...3f9b44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c445f...399bee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c6550...1930cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c88c9...c19f8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dcc3b...df4bb9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dd48f...21ed1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dd8ee...9c1fc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5df1bf...243d72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ebb97...bdf2f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6004cf...a61c42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x614cb7...da8fab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61fdb8...d6d204` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62e65f...517d9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6641b6...2c4478` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x676753...bc3f7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x688a26...485cb3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x697255...2832c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a0292...47f5e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a449a...a5db84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ad398...cd796c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c1944...47b7c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c8675...cca75d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ca9ce...1fc0d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6cbbc4...f59481` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d3849...129781` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6df15c...6930fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ff653...2802bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70d1db...2a6090` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70d469...986a63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71ce10...e32368` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7204b2...36d981` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x729d34...b9c818` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72b438...a84d2b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73f220...ec1f24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x748018...ed36d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x76352e...91ba53`; bsc `0xdc444e...a48f6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x763ace...a001a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77303e...8727d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x777405...18fd20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77e7cb...d727cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x785c3d...3fe60e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x797bfe...2ce239` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79d6db...d40870` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7af49d...e47a74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c902a...35674b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d3d86...b0944f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d742b...38e471` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d9ffb...e6b3f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7db762...d53e46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7dc560...f98d76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7dd1c4...8c5c3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f7508...4a04b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8034fc...26f98a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x819891...db54c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81f776...b49725` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83edc1...e609bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x841513...ac613b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84be45...d49924` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x858d89...7aa926` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x85d1d8...3bd0c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x862d09...5d3e38` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88bcda...a7257b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b5f58...a7bd41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ba186...97b47f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c410d...e764d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8dd8b6...2bb424` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e2133...54463c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e58d7...e9e9a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e9171...8131a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8eb23d...a58956` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f5690...c09442` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8fe492...d78407` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90e1bc...ca5df9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91739a...2ab107` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9463dc...e9cf51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94ddff...222edd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x96252d...172ed9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97aba8...ddbc94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x993e81...81452c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b059c...dc3fbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c7cba...9026a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d8ded...294502` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e13d3...a542e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e287b...7ddbaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e9c74...b9befe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ec4f2...926b2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f613f...f12665` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa008a0...635746` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa11564...8ba0ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2a9ba...b4ee41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4a959...57a4ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa524c8...cb41d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa594fd...20ba4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa75612...8a91d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9ffb4...068f65` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaaa335...a9162a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab07dc...c8ae3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab1a26...ac55c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab2883...4499ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae7095...056b31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf7239...242152` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb10d87...56dd6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb14de6...843129` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1e02b...a08755` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3d0e2...0bd212` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4848c...cb5b84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4a6c5...90236d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4e5f5...98bed6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb6ac38...c6487d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba19ba...814eb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbbaab4...323e81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbbf98c...36ea9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc0211...2d4f2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc28a6...79a8f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd63ce...b9cd8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe2cba...6cde8a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe363c...bdcf51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbea9f5...3b2668` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf5cfa...fbbdd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0906a...a9516b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0c210...0bab25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1239a...c9a52c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0xc1b7a3...411e9e`; bsc `0xeefb22...d5555d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc224f1...36d18e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc26857...b12cd7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2e7a8...cf595a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc365c6...dcaf91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4adc7...43c1a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5744a...8d012a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5f5f9...cfdf79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc61d85...8ef553` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc667e8...698270` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7f2e2...ae18a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7f5dd...1ab873` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfc650...bfe1ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd24216...9b2b08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2563f...728aa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd529c4...49be6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd943c5...1d5520` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9d81d...d8d2e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdad968...e16af3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdadab5...68540a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb2016...9ef302` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb6c8f...877eeb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb8040...721219` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdbb5e0...2fe88a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdbb812...544d8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdce839...c769d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdceb42...5f69d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd4495...7fc495` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde2950...74f045` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdec390...b17503` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf3d38...4aa786` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfa4b3...295824` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe00592...1110e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe07a50...09b0d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe26850...ddb92d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe39b3f...7831ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3d82f...47b781` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe42e37...467a9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4f2ff...cc7d5d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6fb68...4a0bb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7b6ca...70c3e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe82163...4be028` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe86d77...902542` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe870bd...a2aa82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb68c1...4034d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed100a...eec022` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeeae10...6159b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef178b...f30136` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef28e7...d01c2a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf18e6d...6663fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf30d67...4b8541` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3910d...383520` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3a9bf...e20f40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3e3b2...7f6992` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3fa56...c37ee8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5a4d8...a5e860` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6da38...c863f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf780df...72ccc9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7c5b3...2edf47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf82844...41b8f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf90ba1...3736cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb725c...c396d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xffe801...a0a0cd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/mobox](https://skynet.certik.com/projects/mobox) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x85c128...b51d33`](./contracts/bsc-56/0x85c128ee1feeb39a59490c720a9c563554b51d33/) | KeyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa5f8c5...f07652`](./contracts/bsc-56/0xa5f8c5dbd5f286960b9d90548680ae5ebff07652/) | MasterChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3203c9...da2377`](./contracts/bsc-56/0x3203c9e46ca618c8c1ce5dc67e7e9d75f5da2377/) | MoboxToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2873d9...7c69e7`](./contracts/bsc-56/0x2873d94d21efa8af064b02174413966b357c69e7/) | MoMoProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x529e2a...393757`](./contracts/bsc-56/0x529e2a515ce4499c41b23102e56e45025e393757/) | MoMoProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8fa596...7a7c3f`](./contracts/bsc-56/0x8fa59693458289914db0097f5f366d771b7a7c3f/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 306 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2864] skynet.certik.com/projects/mobox

Fork inheritance lineage and inherited audits are included when available.
