# Agentic Audit Brief: Ultron Staking Hub NFT

## Project Overview

- Project: Ultron Staking Hub NFT (`ultron-staking-hub-nft`)
- Website: [https://ultron.foundation/technology#staking-hub](https://ultron.foundation/technology#staking-hub)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:02.353Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: avalanche, bsc, ethereum, fantom, polygon
- Contract surface: 145 unique implementations (147 raw deployments)
- DeFi Llama TVL: $3,005,043.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Staking Pool. Structurally: 7 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (baseupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 181; live-surface contracts included: 147 (3 live, 144 unknown).
- Excluded by liveness: 34 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 145 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 144
- Unique implementations: 145
- Raw deployments: 147
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20Custom | token | ethereum | n/a | 3 deployments: ethereum [`0x5aa158...4a636f`](./contracts/ethereum-1/0x5aa158404fed6b4730c13f49d3a7f820e14a636f/); bsc `0xd983ab...43f810`; avalanche `0xc685e8...c404ef` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (144)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x079418...6cb331` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ab2a6...4b1412` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dcd76...292e27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05789a...01a853` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0abe51...ef2c66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x122eca...a3d1e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x178994...c12b55` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x183bce...744f8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x189d91...1798a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1912d3...3d6997` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c3940...abb758` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d2e95...c49a3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f3bea...b9fa0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x203be7...a67506` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x206d41...d19834` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26da57...e087e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28a9e5...427f99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fb18c...3f87d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2feb8d...ae072f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31b185...83eafd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x339e47...19137e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33f0c5...7dc689` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35c8f1...bca891` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c04d2...ac9c77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d82af...cedc50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ddaca...2171d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f666c...6c90ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41f8e3...19381a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x435f04...97f34e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x454e81...ae3dba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a61a7...c1aed0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x567546...9d3dce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5aeca9...55d65a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b6f74...b462ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5becca...d94c8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f1699...70154b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6025ad...8017e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60ddb3...7f3f06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x647c3f...2ce710` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68143b...6ae846` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a5c03...62ac16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ab2a6...4b1412` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6bbb3d...7f8ebc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d7ed5...c23d82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e1b4f...58e033` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e8cf2...3e6bb3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7463a4...cc9fee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x789b4e...6cf659` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79dc1b...88ab09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b7557...f6a19e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ca73f...e8d214` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ee504...ad9fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83227e...9e0cac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ab2b3...2c6047` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b3cba...5f64a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9003af...e8e66f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91e09b...4f9b9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x939842...4afa79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93a6e4...ee5d5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x957206...f4d386` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x965b34...484208` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x96c49c...832f39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x985a24...093c44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9dcd76...292e27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e2f95...d4d0b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa036d3...b5383d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5cdcc...c7a0dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa72f18...da99b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9c5f9...24de23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad5d42...8e5688` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad85b0...43ea20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1c24a...87cbc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb32c0b...108909` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3774f...0c1070` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5b7fc...03aa28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb71718...6626db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb7ede3...3e04d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbdf7d4...360199` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc56377...247cd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc75e73...5435d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc84472...4ba6a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc99732...979229` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb0d31...71b7f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfa7ff...4e99ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3183a...6b4dcd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7b6d5...feda90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb3d05...bfa60d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb4014...2767d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb5a77...331ce3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdba12f...64d6ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd794c...b8cd5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde676d...585669` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdea328...c8afe3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfe5f9...e96c48` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0b624...58fec1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe171e0...f499f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1f0d4...cf00b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe50049...05fdc2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe53437...99f917` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7c147...b38737` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9361a...921cb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeca80f...9137e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed356d...b19be0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee132a...1ba1ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1129d...442b8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf31bfe...71e44b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf33538...757797` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf54a9d...b4625e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf625eb...80e53f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6505a...144f29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf73005...622178` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7c758...964c59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe21dd...5a94f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x045f0f...f0b8f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x13036d...bd9cf7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x169ac5...4a0488` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17a083...55bc82` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1e0333...fd5379` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2318bf...d651cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2806bb...d51ee3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x283f04...9a50a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4605b3...dfaccd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4646b4...3b1d3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x51c9ab...bb494f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x598e5d...2a720b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6094a1...e9d9f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6ab2a6...4b1412` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6fe944...ab8e97` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7696c8...1ee3cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7aa279...08e154` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8c14a9...3d3477` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97fdd2...e87656` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9dcd76...292e27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa8731c...8e8bd8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5bb19...0d907f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc7cac8...65e2e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd2b86a...3d87dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd79e96...46e5dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe8ef8a...fa02c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfe21dd...5a94f0` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x8867f4...91949d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6ab2a6...4b1412` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9dcd76...292e27` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe21dd...5a94f0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [sourcehat.com/audits/UltronFoundation](https://sourcehat.com/audits/UltronFoundation) | SourceHat | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 145 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21057] sourcehat.com/audits/UltronFoundation

Fork inheritance lineage and inherited audits are included when available.
