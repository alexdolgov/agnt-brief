# Agentic Audit Brief: stCYBER

⚠️ Lifecycle status: DECLINING - TVL dropped 16.6% over 90 days

## Project Overview

- Project: stCYBER (`stcyber`)
- Website: [https://cyber.co/stake](https://cyber.co/stake)
- Lifecycle: declining (Tier 0, 85.8% below peak)
- Generated: 2026-06-10T20:59:16.658Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: base, bsc, ethereum, optimism
- Contract surface: 31 unique implementations (44 raw deployments)
- DeFi Llama TVL: $1,538,238.34
- On-chain TVL (included contracts): $51,356,497.64
- TVL by chain: Ethereum $46,608,269.54 | Optimism $3,887,002.28 | Bsc $861,225.83

## Project Description

stCYBER is a Cyber Mainnet staking/liquid staking product for CYBER, enabling users to stake CYBER and receive a liquid staking derivative while earning staking rewards. Cyber token bridges, LayerZero transfer infrastructure, and Cyber/OP Stack rollup infrastructure are separate Cyber ecosystem surfaces and should not be treated as part of the stCYBER staking protocol unless explicit evidence links them to the stCYBER product.

### Architecture

The CYBER token is the core asset used across all families: it is staked in the Liquid Staking family, bridged via the Cross-Chain Bridge family, and utilized within the OP Stack Infrastructure family for L2 operations. The OP Stack contracts provide the rollup environment that supports the staking and bridging activities, with governance shared through multisig and timelock mechanisms.

## Audit Coverage Summary

- Verified implementations audited: 0/26 (0.0%)
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 31
- Raw deployments: 44
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $51,356,497.64
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $51,356,497.64 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CyberToken | token | ethereum | 5 deployments: ethereum [`0x147788...fb88a9`](./contracts/ethereum-1/0x14778860e937f509e651192a90589de711fb88a9/); ethereum `0x61c1ed...2dbd58`; optimism [`0x147788...fb88a9`](./contracts/optimism-10/0x14778860e937f509e651192a90589de711fb88a9/); bsc [`0x147788...fb88a9`](./contracts/bsc-56/0x14778860e937f509e651192a90589de711fb88a9/); base [`0x147788...fb88a9`](./contracts/base-8453/0x14778860e937f509e651192a90589de711fb88a9/) | ⚠️ Unaudited |
| AddressManager | governance | ethereum | [`0x19b580...09853a`](./contracts/ethereum-1/0x19b5804b88f10262a55ac731f28a3bbc4209853a/) | ⚠️ Unaudited |
| Create2Deployer | unknown | base | [`0x9b2092...c67798`](./contracts/base-8453/0x9b20927a5dbf71d0539d48173c5f5b342bc67798/) | ⚠️ Unaudited |
| CyberTokenAdapter | adapter | ethereum | [`0xcb0799...43b052`](./contracts/ethereum-1/0xcb07992de144bdee56fdb66fff2454b43243b052/) | ⚠️ Unaudited |
| CyberTokenController | governance | optimism | 3 deployments: optimism [`0x9a9d5a...f63921`](./contracts/optimism-10/0x9a9d5a29206dde4f70825032df32333de5f63921/); bsc [`0x9a9d5a...f63921`](./contracts/bsc-56/0x9a9d5a29206dde4f70825032df32333de5f63921/); base [`0x9a9d5a...f63921`](./contracts/base-8453/0x9a9d5a29206dde4f70825032df32333de5f63921/) | ⚠️ Unaudited |
| CyberVesting | operational_periphery | ethereum | 4 deployments: ethereum [`0xb2bbfc...ef57d0`](./contracts/ethereum-1/0xb2bbfc07948fedeb5935316203c33ce70bef57d0/); ethereum `0xc0af6b...5922c9`; ethereum `0xcc30bb...f3b2c9`; ethereum `0xdb67d7...26f794` | ⚠️ Unaudited |
| DataAvailabilityChallenge | unknown | ethereum | [`0x0d93ea...b05c51`](./contracts/ethereum-1/0x0d93eaa86eb6948b977857750a5512bef6b05c51/) | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | [`0x6daf22...007e6d`](./contracts/ethereum-1/0x6daf222ad565522bfc1d9ef3cc78751f6c007e6d/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | [`0xb79cf1...3649a3`](./contracts/ethereum-1/0xb79cf113e524043b3ef9bf7861a05900bb3649a3/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 2 deployments: ethereum [`0xc2259e...d75398`](./contracts/ethereum-1/0xc2259e7fb719411f97abdcdf449f6ba3b9d75398/); ethereum `0xd9db27...709552` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | ethereum | [`0xa6b71e...896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | 2 deployments: ethereum [`0x3c01eb...08dfc9`](./contracts/ethereum-1/0x3c01ebf22e9c111528c1e027d68944edab08dfc9/); ethereum `0x849d08...f7aa56` | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | [`0x1234c7...e2afb1`](./contracts/ethereum-1/0x1234c7a75f40551fce5aff1d58efd72f2ee2afb1/) | ⚠️ Unaudited |
| L1StandardBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x01b46e...d87997`](./contracts/ethereum-1/0x01b46e02fce5fc0731076711affe73beecd87997/); ethereum `0x12a580...55b255` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | [`0x93e1c0...c32f85`](./contracts/ethereum-1/0x93e1c0d8ef27930130fb809ce18ca681a8c32f85/) | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | operational_periphery | optimism | [`0xb2bbfc...ef57d0`](./contracts/optimism-10/0xb2bbfc07948fedeb5935316203c33ce70bef57d0/) | ⚠️ Unaudited |
| MIPS | unknown | ethereum | [`0x0048de...3e4143`](./contracts/ethereum-1/0x0048defca9f0da952cfd1ae9f8e962937d3e4143/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | [`0x985f18...6e4b46`](./contracts/ethereum-1/0x985f187489954435ddf9571d45500184566e4b46/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | [`0xacfd93...339142`](./contracts/ethereum-1/0xacfd93b4887cef4f05cf3440d150d2ce97339142/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | [`0x544dbf...6c9680`](./contracts/ethereum-1/0x544dbfe87c3c308502371468b23386a9486c9680/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | [`0x0747ef...6a8dde`](./contracts/ethereum-1/0x0747ef2570e3dbf65f0a12b371f19ca4a66a8dde/) | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | [`0xc2e2d8...5458c7`](./contracts/ethereum-1/0xc2e2d8150ae64367cadc3d47e98253e54b5458c7/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x7e5410...036e03`](./contracts/ethereum-1/0x7e54107731ec43e78da678dfa5fb6222ad036e03/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | [`0x579f8d...2b28a6`](./contracts/ethereum-1/0x579f8dfdaf8f180050c67b5d41342d686f2b28a6/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | [`0x726c6a...f0df0e`](./contracts/ethereum-1/0x726c6ac8a53061e56afb2c890545348ba6f0df0e/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | 2 deployments: ethereum [`0x81759a...d3337b`](./contracts/ethereum-1/0x81759adbf5520ad94da10991dfa29ff147d3337b/); ethereum `0xfe98ba...17b723` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x414066...cb6366` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8ed128...49d65f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b2092...c67798` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9b2092...c67798` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9b2092...c67798` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x147788...fb88a9`](./contracts/ethereum-1/0x14778860e937f509e651192a90589de711fb88a9/) | CyberToken | token | $51,356,497.64 | Verified native implementation with $51,356,497.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19b580...09853a`](./contracts/ethereum-1/0x19b5804b88f10262a55ac731f28a3bbc4209853a/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb0799...43b052`](./contracts/ethereum-1/0xcb07992de144bdee56fdb66fff2454b43243b052/) | CyberTokenAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9a9d5a...f63921`](./contracts/optimism-10/0x9a9d5a29206dde4f70825032df32333de5f63921/) | CyberTokenController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2bbfc...ef57d0`](./contracts/ethereum-1/0xb2bbfc07948fedeb5935316203c33ce70bef57d0/) | CyberVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c01eb...08dfc9`](./contracts/ethereum-1/0x3c01ebf22e9c111528c1e027d68944edab08dfc9/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 14 |
| standard_library | 6 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
