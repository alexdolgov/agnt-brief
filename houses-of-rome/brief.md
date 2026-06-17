# Agentic Audit Brief: Houses of Rome

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Houses of Rome (`houses-of-rome`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-17T16:36:43.022Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-a893
- Chains: moonriver
- Contract surface: 13 unique implementations (14 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Houses of Rome is a reserve-currency protocol on Moonriver that issues the ROME token, using bonding and staking mechanics inspired by OlympusDAO to build a treasury-backed currency.

### Architecture

The Rome token is staked in RomeStaking to earn rewards, while RomeTreasury holds reserves and mints ROME for bond sales. Cross-chain tokens like AnyswapV5ERC20 and CrossChainCanonicalFRAX serve as reserve assets, and SolarPair provides liquidity for trading.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 36 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 11; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/13 (0.0%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 14
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV5ERC20 | token | moonriver | n/a | 2 deployments: moonriver [`0x0cae51...de3adb`](./contracts/moonriver-1285/0x0cae51e1032e8461f4806e26332c030e34de3adb/); moonriver `0x80a160...f0f844` | ⚠️ Unaudited |
| aRome | unknown | moonriver | n/a | [`0x3d2d04...d902be`](./contracts/moonriver-1285/0x3d2d044e8c6dad46b4f7896418d3d4dfaad902be/) | ⚠️ Unaudited |
| CrossChainBridgeBacker_MOON_AnySwap | operational_periphery | moonriver | n/a | [`0xc7f48f...dc44ac`](./contracts/moonriver-1285/0xc7f48fb6dbb6f8a3eed90553017cdf5725dc44ac/) | ⚠️ Unaudited |
| CrossChainCanonicalFRAX | unknown | moonriver | n/a | [`0x1a93b2...16197d`](./contracts/moonriver-1285/0x1a93b23281cc1cde4c4741353f3064709a16197d/) | ⚠️ Unaudited |
| CrossChainOracle | operational_periphery | moonriver | n/a | [`0xbce6f8...b71be4`](./contracts/moonriver-1285/0xbce6f81b8d154b8df09d287d05826f2b34b71be4/) | ⚠️ Unaudited |
| CrossChainOracleSingleAsset | operational_periphery | moonriver | n/a | [`0xcbd0d3...feba9a`](./contracts/moonriver-1285/0xcbd0d3c8bb0edd9a542d22b4a0de3228affeba9a/) | ⚠️ Unaudited |
| DaiRomePresale | unknown | moonriver | n/a | [`0x093973...9bc824`](./contracts/moonriver-1285/0x093973dca8f8dab14398b7e472e69f75869bc824/) | ⚠️ Unaudited |
| Rome | unknown | moonriver | n/a | [`0x4a4360...73d9d6`](./contracts/moonriver-1285/0x4a436073552044d5f2f49b176853ad3ad473d9d6/) | ⚠️ Unaudited |
| RomeConscription | unknown | moonriver | n/a | [`0x3718bc...c8f685`](./contracts/moonriver-1285/0x3718bc4389cc4d960cedf9ff68e96c731bc8f685/) | ⚠️ Unaudited |
| ROMEFRAXBondDepository | unknown | moonriver | n/a | [`0x065588...51ad8a`](./contracts/moonriver-1285/0x065588602bd7206b15f9630fdb2e81e4ca51ad8a/) | ⚠️ Unaudited |
| RomeStaking | unknown | moonriver | n/a | [`0x6f7d01...b759f1`](./contracts/moonriver-1285/0x6f7d019502e17f1ef24ac67a260c65dd23b759f1/) | ⚠️ Unaudited |
| SolarPair | unknown | moonriver | n/a | [`0x069c20...c05894`](./contracts/moonriver-1285/0x069c2065100b4d3d982383f7ef3ecd1b95c05894/) | ⚠️ Unaudited |
| sRome | unknown | moonriver | n/a | [`0x89f520...8ce12a`](./contracts/moonriver-1285/0x89f52002e544585b42f8c7cf557609ca4c8ce12a/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonriver | [`0x3d2d04...d902be`](./contracts/moonriver-1285/0x3d2d044e8c6dad46b4f7896418d3d4dfaad902be/) | aRome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xbce6f8...b71be4`](./contracts/moonriver-1285/0xbce6f81b8d154b8df09d287d05826f2b34b71be4/) | CrossChainOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xcbd0d3...feba9a`](./contracts/moonriver-1285/0xcbd0d3c8bb0edd9a542d22b4a0de3228affeba9a/) | CrossChainOracleSingleAsset | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x093973...9bc824`](./contracts/moonriver-1285/0x093973dca8f8dab14398b7e472e69f75869bc824/) | DaiRomePresale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x4a4360...73d9d6`](./contracts/moonriver-1285/0x4a436073552044d5f2f49b176853ad3ad473d9d6/) | Rome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x3718bc...c8f685`](./contracts/moonriver-1285/0x3718bc4389cc4d960cedf9ff68e96c731bc8f685/) | RomeConscription | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x065588...51ad8a`](./contracts/moonriver-1285/0x065588602bd7206b15f9630fdb2e81e4ca51ad8a/) | ROMEFRAXBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x6f7d01...b759f1`](./contracts/moonriver-1285/0x6f7d019502e17f1ef24ac67a260c65dd23b759f1/) | RomeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x89f520...8ce12a`](./contracts/moonriver-1285/0x89f52002e544585b42f8c7cf557609ca4c8ce12a/) | sRome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
