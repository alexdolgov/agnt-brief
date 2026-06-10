# Agentic Audit Brief: Fomo3D

## Project Overview

- Project: Fomo3D (`fomo3d`)
- Lifecycle: active (Tier 0, 59.6% below peak)
- Generated: 2026-06-10T23:23:07.079Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-22cc
- Chains: ethereum
- Contract surface: 23 unique implementations (26 raw deployments)
- DeFi Llama TVL: $2,517,012.49
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Fomo3D is a gamified lottery and investment protocol centered on the FoMo3Dlong and FoMo3DSoon game variants, where players buy keys to earn dividends from subsequent purchases and the last buyer can win a jackpot if no one buys before the timer expires. The broader contract surface also includes associated support or adjacent contracts such as Divies deployments and other Fomo3D-related contracts/libraries; shared infrastructure or implementation equivalence should only be asserted where verified by call relationships or exact bytecode/source matching.

### Architecture

The two contracts, FoMo3Dlong and FoMo3DSoon, are variants of the same game logic deployed by the same deployer, likely representing different round lengths or parameters, and share no explicit infrastructure beyond their common deployer.

## Audit Coverage Summary

- Verified implementations audited: 0/10 (0.0%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 23
- Raw deployments: 26
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Divies | unknown | ethereum | 3 deployments: ethereum [`0x1a294b...177f45`](./contracts/ethereum-1/0x1a294b212bb37f790aef81b91321a1111a177f45/); ethereum `0xc0c001...929ad0`; ethereum `0xc7029e...c7af48` | ⚠️ Unaudited |
| FoMo3Dlong | unknown | ethereum | 2 deployments: ethereum [`0x56bbe9...6049d7`](./contracts/ethereum-1/0x56bbe9e9d360e94e6bd14c55e5713da7576049d7/); ethereum `0xa62142...389da1` | ⚠️ Unaudited |
| FoMo3DSoon | unknown | ethereum | [`0x4e8ecf...bf00b8`](./contracts/ethereum-1/0x4e8ecf79ade5e2c49b9e30d795517a81e0bf00b8/) | ⚠️ Unaudited |
| JIincForwarder | unknown | ethereum | [`0xdd4950...b444ee`](./contracts/ethereum-1/0xdd4950f977ee28d2c132f1353d1595035db444ee/) | ⚠️ Unaudited |
| MSFun | unknown | ethereum | [`0x197485...5f4120`](./contracts/ethereum-1/0x1974850db14d6b75322b56fc5febc2698d5f4120/) | ⚠️ Unaudited |
| NameFilter | unknown | ethereum | [`0x4b7ac9...deecbc`](./contracts/ethereum-1/0x4b7ac91b53545ae20a4990f9b5f6a14682deecbc/) | ⚠️ Unaudited |
| PlayerBook | unknown | ethereum | [`0xd60d35...7b6e4c`](./contracts/ethereum-1/0xd60d353610d9a5ca478769d371b53cefaa7b6e4c/) | ⚠️ Unaudited |
| SafeMath | unknown | ethereum | [`0xd4b555...412180`](./contracts/ethereum-1/0xd4b5556dad4a0affc0eef0da56a928712e412180/) | ⚠️ Unaudited |
| TeamJust | unknown | ethereum | [`0x464904...b66928`](./contracts/ethereum-1/0x464904238b5cdbdce12722a7e6014ec1c0b66928/) | ⚠️ Unaudited |
| UintCompressor | operational_periphery | ethereum | [`0xfe86a1...f2c9fb`](./contracts/ethereum-1/0xfe86a14626854f846457c2879f31b25076f2c9fb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x1fb546...ea51d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x27afcb...8adccb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x32967d...37d590` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c7b85...4420f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7e58d5...52d8ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x902d1a...d1aef4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbf5772...91f5b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc25d03...69570b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6ffc9...17716f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd14f5d...58c708` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7da96...93152d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf820cf...898277` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf9ba09...e48d7d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1a294b...177f45`](./contracts/ethereum-1/0x1a294b212bb37f790aef81b91321a1111a177f45/) | Divies | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56bbe9...6049d7`](./contracts/ethereum-1/0x56bbe9e9d360e94e6bd14c55e5713da7576049d7/) | FoMo3Dlong | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e8ecf...bf00b8`](./contracts/ethereum-1/0x4e8ecf79ade5e2c49b9e30d795517a81e0bf00b8/) | FoMo3DSoon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd4950...b444ee`](./contracts/ethereum-1/0xdd4950f977ee28d2c132f1353d1595035db444ee/) | JIincForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x197485...5f4120`](./contracts/ethereum-1/0x1974850db14d6b75322b56fc5febc2698d5f4120/) | MSFun | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b7ac9...deecbc`](./contracts/ethereum-1/0x4b7ac91b53545ae20a4990f9b5f6a14682deecbc/) | NameFilter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd60d35...7b6e4c`](./contracts/ethereum-1/0xd60d353610d9a5ca478769d371b53cefaa7b6e4c/) | PlayerBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x464904...b66928`](./contracts/ethereum-1/0x464904238b5cdbdce12722a7e6014ec1c0b66928/) | TeamJust | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe86a1...f2c9fb`](./contracts/ethereum-1/0xfe86a14626854f846457c2879f31b25076f2c9fb/) | UintCompressor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
