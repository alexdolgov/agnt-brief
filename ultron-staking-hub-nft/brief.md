# Agentic Audit Brief: Ultron Staking Hub NFT

## Project Overview

- Project: Ultron Staking Hub NFT (`ultron-staking-hub-nft`)
- Website: [https://ultron.foundation/technology#staking-hub](https://ultron.foundation/technology#staking-hub)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-11T03:46:02.983Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-7b75
- Chains: avalanche, bsc, ethereum, fantom, polygon
- Contract surface: 150 unique implementations (162 raw deployments)
- DeFi Llama TVL: $7,090,109.60
- On-chain TVL (included contracts): $43,458.79
- TVL by chain: Bsc $38,083.88 | Ethereum $5,374.03 | Avalanche $0.87 | Polygon $0.01

## Project Description

Ultron Staking Hub NFT is an Ultron-network staking and rewards product where users mint and stake an NFT representing a five-year plan to earn ULX rewards. External ULX token deployments on other EVM chains should be treated as ancillary token references, not as the core Staking Hub NFT protocol or its TVL basis.

### Architecture

The ULX token family on other networks serves as the reward and staking token for the staking pools managed by the Ultron mainnet family. The proxy contracts (FuturaTreasury, Lottery, Autoplay, Platform) likely provide shared infrastructure for treasury management, lottery mechanics, automated play, and platform governance across both families.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 144
- Unique implementations: 150
- Raw deployments: 162
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $43,458.79
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC20Custom | token | ethereum | 4 deployments: ethereum [`0x5aa158...4a636f`](./contracts/ethereum-1/0x5aa158404fed6b4730c13f49d3a7f820e14a636f/); bsc `0xd983ab...43f810`; polygon `0xfa5d5d...e3d948`; avalanche `0xc685e8...c404ef` | ⚠️ Unaudited |
| Autoplay | unknown | bsc | [`0x3d3df9...dfbabc`](./contracts/bsc-56/0x3d3df9a4199e91d0929bba43e0731ae3f0dfbabc/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | bsc | 9 deployments: bsc [`0x0553d0...701a72`](./contracts/bsc-56/0x0553d0a9a6b2740dc512535bd6af8ced7f701a72/); bsc `0x0ed930...f238b6`; bsc `0x659979...a6dd2f`; bsc `0x6759a8...c15ac5`; bsc `0x77b796...34a651`; bsc `0x9445fa...96f1b1`; bsc `0xaab8e6...e5d096`; bsc `0xc7bd33...e5bc47`; bsc `0xd60250...ed12c1` | ⚠️ Unaudited |
| FuturaTreasury | operational_periphery | bsc | [`0x1d303f...368e97`](./contracts/bsc-56/0x1d303f80d711811091674de918b179e3aa368e97/) | ⚠️ Unaudited |
| Lottery | unknown | bsc | 2 deployments: bsc [`0x39c626...b4475b`](./contracts/bsc-56/0x39c626a8d974311bc7e20a0228aeaf1979b4475b/); bsc `0x42e8d6...273ccf` | ⚠️ Unaudited |
| Platform | unknown | bsc | [`0xff3731...f67e94`](./contracts/bsc-56/0xff3731a75d4427f0c3447ee3129f1ad944f67e94/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (144)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x079418...6cb331` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ab2a6...4b1412` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9dcd76...292e27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x05789a...01a853` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0abe51...ef2c66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x122eca...a3d1e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x178994...c12b55` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x183bce...744f8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x189d91...1798a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1912d3...3d6997` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1c3940...abb758` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1d2e95...c49a3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1f3bea...b9fa0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x203be7...a67506` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x206d41...d19834` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x26da57...e087e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x28a9e5...427f99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2fb18c...3f87d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2feb8d...ae072f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x31b185...83eafd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x339e47...19137e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x33f0c5...7dc689` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x35c8f1...bca891` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3c04d2...ac9c77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3d82af...cedc50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3ddaca...2171d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3f666c...6c90ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x41f8e3...19381a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x435f04...97f34e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x454e81...ae3dba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4a61a7...c1aed0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x567546...9d3dce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5aeca9...55d65a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5b6f74...b462ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5becca...d94c8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5f1699...70154b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6025ad...8017e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x60ddb3...7f3f06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x647c3f...2ce710` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x68143b...6ae846` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6a5c03...62ac16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6ab2a6...4b1412` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6bbb3d...7f8ebc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6d7ed5...c23d82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6e1b4f...58e033` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6e8cf2...3e6bb3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7463a4...cc9fee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x789b4e...6cf659` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x79dc1b...88ab09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7b7557...f6a19e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7ca73f...e8d214` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7ee504...ad9fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x83227e...9e0cac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8ab2b3...2c6047` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8b3cba...5f64a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9003af...e8e66f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x91e09b...4f9b9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x939842...4afa79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x93a6e4...ee5d5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x957206...f4d386` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x965b34...484208` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x96c49c...832f39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x985a24...093c44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9dcd76...292e27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9e2f95...d4d0b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa036d3...b5383d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa5cdcc...c7a0dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa72f18...da99b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa9c5f9...24de23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xad5d42...8e5688` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xad85b0...43ea20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb1c24a...87cbc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb32c0b...108909` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb3774f...0c1070` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb5b7fc...03aa28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb71718...6626db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb7ede3...3e04d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbdf7d4...360199` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc56377...247cd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc75e73...5435d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc84472...4ba6a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc99732...979229` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcb0d31...71b7f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcfa7ff...4e99ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd3183a...6b4dcd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd7b6d5...feda90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdb3d05...bfa60d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdb4014...2767d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdb5a77...331ce3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdba12f...64d6ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdd794c...b8cd5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xde676d...585669` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdea328...c8afe3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdfe5f9...e96c48` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe0b624...58fec1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe171e0...f499f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe1f0d4...cf00b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe50049...05fdc2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe53437...99f917` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe7c147...b38737` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe9361a...921cb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xeca80f...9137e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xed356d...b19be0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xee132a...1ba1ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf1129d...442b8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf31bfe...71e44b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf33538...757797` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf54a9d...b4625e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf625eb...80e53f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf6505a...144f29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf73005...622178` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf7c758...964c59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfe21dd...5a94f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x045f0f...f0b8f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x13036d...bd9cf7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x169ac5...4a0488` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x17a083...55bc82` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1e0333...fd5379` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2318bf...d651cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2806bb...d51ee3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x283f04...9a50a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4605b3...dfaccd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4646b4...3b1d3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x51c9ab...bb494f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x598e5d...2a720b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6094a1...e9d9f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6ab2a6...4b1412` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6fe944...ab8e97` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7696c8...1ee3cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7aa279...08e154` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8c14a9...3d3477` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x97fdd2...e87656` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9dcd76...292e27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa8731c...8e8bd8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb5bb19...0d907f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc7cac8...65e2e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd2b86a...3d87dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd79e96...46e5dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe8ef8a...fa02c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfe21dd...5a94f0` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x8867f4...91949d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6ab2a6...4b1412` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9dcd76...292e27` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfe21dd...5a94f0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5aa158...4a636f`](./contracts/ethereum-1/0x5aa158404fed6b4730c13f49d3a7f820e14a636f/) | ERC20Custom | token | $43,458.79 | Verified native implementation with $43,458.79 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 143 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
