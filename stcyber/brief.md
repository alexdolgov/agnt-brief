# Agentic Audit Brief: stCYBER

⚠️ Lifecycle status: DECLINING - TVL dropped 16.6% over 90 days

## Project Overview

- Project: stCYBER (`stcyber`)
- Website: [https://cyber.co/stake](https://cyber.co/stake)
- Lifecycle: declining (Tier 0, 85.8% below peak)
- Generated: 2026-06-17T07:00:36.205Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, bsc, ethereum, optimism
- Contract surface: 19 unique implementations (27 raw deployments)
- DeFi Llama TVL: $1,143,893.97
- On-chain TVL (included contracts): $51,356,497.64
- TVL by chain: Ethereum $46,608,269.54 | Optimism $3,887,002.28 | Bsc $861,225.83

## Project Description

stCYBER is a Cyber Mainnet staking/liquid staking product for CYBER, enabling users to stake CYBER and receive a liquid staking derivative while earning staking rewards. Cyber token bridges, LayerZero transfer infrastructure, and Cyber/OP Stack rollup infrastructure are separate Cyber ecosystem surfaces and should not be treated as part of the stCYBER staking protocol unless explicit evidence links them to the stCYBER product.

### Architecture

The CYBER token is the core asset used across all families: it is staked in the Liquid Staking family, bridged via the Cross-Chain Bridge family, and utilized within the OP Stack Infrastructure family for L2 operations. The OP Stack contracts provide the rollup environment that supports the staking and bridging activities, with governance shared through multisig and timelock mechanisms.

## Contract Surface Quality

- Indexed contracts: 47; live-surface contracts included: 27 (18 live, 9 unknown).
- Excluded by liveness: 9 inactive, 11 singleton, 0 uninitialized.
- Deployment units: 2/15 live.
- Detected codebases: none
- Unverified dependencies: 58/76.

## Audit Coverage Summary

- Verified implementations audited: 1/17 (5.9%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 19
- Raw deployments: 27
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $51,356,497.64
- Latest audit: 2024-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: 5.9% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $51,356,497.64 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 1 | 5.9% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CyberStakingPool | core_logic | ethereum | n/a | [`0x18eed2...4134c0`](./contracts/ethereum-1/0x18eed20f71bef84b605253c89a7576e3634134c0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CyberToken | token | ethereum | n/a | 4 deployments: ethereum [`0x147788...fb88a9`](./contracts/ethereum-1/0x14778860e937f509e651192a90589de711fb88a9/); optimism [`0x147788...fb88a9`](./contracts/optimism-10/0x14778860e937f509e651192a90589de711fb88a9/); bsc [`0x147788...fb88a9`](./contracts/bsc-56/0x14778860e937f509e651192a90589de711fb88a9/); base [`0x147788...fb88a9`](./contracts/base-8453/0x14778860e937f509e651192a90589de711fb88a9/) | ⚠️ Unaudited |
| CyberTokenAdapter | adapter | ethereum | n/a | [`0xcb0799...43b052`](./contracts/ethereum-1/0xcb07992de144bdee56fdb66fff2454b43243b052/) | ⚠️ Unaudited |
| CyberTokenController | governance | optimism | n/a | 3 deployments: optimism [`0x9a9d5a...f63921`](./contracts/optimism-10/0x9a9d5a29206dde4f70825032df32333de5f63921/); bsc [`0x9a9d5a...f63921`](./contracts/bsc-56/0x9a9d5a29206dde4f70825032df32333de5f63921/); base [`0x9a9d5a...f63921`](./contracts/base-8453/0x9a9d5a29206dde4f70825032df32333de5f63921/) | ⚠️ Unaudited |
| CyberVesting | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0xb2bbfc...ef57d0`](./contracts/ethereum-1/0xb2bbfc07948fedeb5935316203c33ce70bef57d0/); ethereum `0xc0af6b...5922c9`; ethereum `0xcc30bb...f3b2c9`; ethereum `0xdb67d7...26f794` | ⚠️ Unaudited |
| ExecutorFeeLib | unknown | ethereum | n/a | [`0x8d6023...34c461`](./contracts/ethereum-1/0x8d6023c0d13f2c527818177a913fe7632434c461/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | ethereum | n/a | [`0xa6b71e...896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x849d08...f7aa56`](./contracts/ethereum-1/0x849d0821b1d313b65f6ff152176f4b6a0af7aa56/) | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | n/a | [`0x1234c7...e2afb1`](./contracts/ethereum-1/0x1234c7a75f40551fce5aff1d58efd72f2ee2afb1/) | ⚠️ Unaudited |
| L1StandardBridge | operational_periphery | ethereum | n/a | [`0x01b46e...d87997`](./contracts/ethereum-1/0x01b46e02fce5fc0731076711affe73beecd87997/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | unit-22120 | [`0x12a580...55b255`](./contracts/ethereum-1/0x12a580c05466eefb2c467c6b115844cdaf55b255/) | ⚠️ Unaudited |
| MIPS | unknown | ethereum | n/a | [`0x0048de...3e4143`](./contracts/ethereum-1/0x0048defca9f0da952cfd1ae9f8e962937d3e4143/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | n/a | [`0x985f18...6e4b46`](./contracts/ethereum-1/0x985f187489954435ddf9571d45500184566e4b46/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0xacfd93...339142`](./contracts/ethereum-1/0xacfd93b4887cef4f05cf3440d150d2ce97339142/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x544dbf...6c9680`](./contracts/ethereum-1/0x544dbfe87c3c308502371468b23386a9486c9680/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | [`0x0747ef...6a8dde`](./contracts/ethereum-1/0x0747ef2570e3dbf65f0a12b371f19ca4a66a8dde/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | n/a | [`0x726c6a...f0df0e`](./contracts/ethereum-1/0x726c6ac8a53061e56afb2c890545348ba6f0df0e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x090fce...0c2352` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ed128...49d65f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SlowMist Audit Report - Cyber Token Bridges.pdf](https://github.com/cyberconnecthq/cyber-token-bridges/blob/main/audit/SlowMist%20Audit%20Report%20-%20Cyber%20Token%20Bridges.pdf) | SlowMist | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x147788...fb88a9`](./contracts/ethereum-1/0x14778860e937f509e651192a90589de711fb88a9/) | CyberToken | token | $51,356,497.64 | Verified native implementation with $51,356,497.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2bbfc...ef57d0`](./contracts/ethereum-1/0xb2bbfc07948fedeb5935316203c33ce70bef57d0/) | CyberVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d6023...34c461`](./contracts/ethereum-1/0x8d6023c0d13f2c527818177a913fe7632434c461/) | ExecutorFeeLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 12 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
