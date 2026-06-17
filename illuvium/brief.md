# Agentic Audit Brief: Illuvium

## Project Overview

- Project: Illuvium (`illuvium`)
- Website: [https://illuvium.io](https://illuvium.io)
- Lifecycle: active (Tier 1, dead)
- Generated: 2026-06-17T07:00:32.597Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 6 unique implementations (7 raw deployments)
- DeFi Llama TVL: $6,878,526.45
- On-chain TVL (included contracts): $39,759,562.67
- TVL by chain: Ethereum $39,759,562.67

## Project Description

Illuvium is a gaming ecosystem centered on a decentralized NFT collection and auto-battler game, with Ethereum-based ILV staking and pool2/liquidity contracts supporting participation in the broader Illuvium ecosystem.

### Architecture

The Illuvium family uses ERC1967Proxy contracts to upgrade ILVPool and SushiLPPool logic, while IlluviumCorePool interacts with the ILV token and UniswapV2Pair for staking and liquidity rewards.

## Contract Surface Quality

- Indexed contracts: 36; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 21 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 10; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 7
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $39,759,562.67
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IlluviumERC20 | token | ethereum | n/a | [`0x767fe9...d7ca0e`](./contracts/ethereum-1/0x767fe9edc9e0df98e07454847909b5e959d7ca0e/) | ⚠️ Unaudited |
| IlluviumCorePool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x25121e...4e2a36`](./contracts/ethereum-1/0x25121eddf746c884dde4619b573a7b10714e2a36/); ethereum `0x8b4d84...843f72` | ⚠️ Unaudited |
| EscrowedIlluvium2 | operational_periphery | ethereum | n/a | [`0x7e77dc...f1b068`](./contracts/ethereum-1/0x7e77dcb127f99ece88230a64db8d595f31f1b068/) | ⚠️ Unaudited |
| IlluviumIDOCollection | unknown | ethereum | n/a | [`0x4222b2...161e52`](./contracts/ethereum-1/0x4222b2a98daa443c6a0a761300d7d6bfd9161e52/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | ethereum | n/a | [`0xd9e1ce...378b9f`](./contracts/ethereum-1/0xd9e1ce17f2641f24ae83637ab66a2cca9c378b9f/) | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | unit-20338 | [`0x6bd281...57adc6`](./contracts/ethereum-1/0x6bd2814426f9a6abaa427d2ad3fc898d2a57adc6/) | ⚠️ Unaudited |

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
| ethereum | [`0x767fe9...d7ca0e`](./contracts/ethereum-1/0x767fe9edc9e0df98e07454847909b5e959d7ca0e/) | IlluviumERC20 | token | $39,754,372.43 | Verified native implementation with $39,754,372.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25121e...4e2a36`](./contracts/ethereum-1/0x25121eddf746c884dde4619b573a7b10714e2a36/) | IlluviumCorePool | core_logic | $5,190.25 | Verified native implementation with $5,190.25 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e77dc...f1b068`](./contracts/ethereum-1/0x7e77dcb127f99ece88230a64db8d595f31f1b068/) | EscrowedIlluvium2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4222b2...161e52`](./contracts/ethereum-1/0x4222b2a98daa443c6a0a761300d7d6bfd9161e52/) | IlluviumIDOCollection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 1 |
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
