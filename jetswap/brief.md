# Agentic Audit Brief: JetSwap

⚠️ Lifecycle status: DEAD - TVL dropped 12.3% over 90 days

## Project Overview

- Project: JetSwap (`jetswap`)
- Lifecycle: dead (Tier 0, 99.3% below peak)
- Generated: 2026-06-21T11:47:13.493Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc
- Contract surface: 32 unique implementations (33 raw deployments)
- DeFi Llama TVL: $323,092.63
- On-chain TVL (included contracts): $897,907.08
- TVL by chain: Bsc $897,907.08

## Project Description

JetSwap is a decentralized exchange (DEX) on BSC that enables users to swap tokens, provide liquidity, and earn rewards. It uses an automated market maker (AMM) model with a factory to create liquidity pools and a native WingsToken for incentives.

### Architecture

The JetswapFactory creates and manages liquidity pools, while WingsToken serves as the protocol's incentive token. The unnamed supporting contracts likely include pool pair implementations and routers that interact with the factory and token.

## Contract Surface Quality

- Indexed contracts: 266; live-surface contracts included: 33 (33 live, 0 unknown).
- Excluded by liveness: 233 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 9; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 30
- Unique implementations: 32
- Raw deployments: 33
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $897,907.08
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $897,907.08 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WingsToken | token | bsc | n/a | [`0x0487b8...498446`](./contracts/bsc-56/0x0487b824c8261462f88940f97053e65bdb498446/) | ⚠️ Unaudited |
| JetfuelVault | core_logic | bsc | n/a | 2 deployments: bsc [`0x184ba4...30b7ba`](./contracts/bsc-56/0x184ba48939c49f54b0aa31f76177eba40130b7ba/); bsc `0x1ae8f4...e722ae` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (30)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x29c12b...a78433` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d6d41...73dc20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x414953...6b4f1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x465a5e...c826a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58b8b3...8c506d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d9ebd...707ad8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f1363...e64c66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63d6ec...b6f9f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x647db6...3e22d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70ed48...9d8a30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x755aac...99ae90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76fe14...a7d973` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c3397...4771f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94babb...1b26ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa22dbb...f2e0b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6d550...4474ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad74c8...7cbae8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe65b8...714800` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc573b7...2169ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd07947...d61b47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd0b1dc...fa31b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd13bbd...2fe227` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1c249...cd3104` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc012e...964e1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe54572...0de789` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7b83b...a54354` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed2097...976fb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf150fd...24e06f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2f113...17e664` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf64882...4ee3dd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://jetswap.finance/audit-by-etherauthority.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://jetswap.finance/audit-by-hash0x.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0487b8...498446`](./contracts/bsc-56/0x0487b824c8261462f88940f97053e65bdb498446/) | WingsToken | token | $884,022.13 | Verified native implementation with $884,022.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x184ba4...30b7ba`](./contracts/bsc-56/0x184ba48939c49f54b0aa31f76177eba40130b7ba/) | JetfuelVault | core_logic | $13,884.95 | Verified native implementation with $13,884.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13302] DL audit link
- [13303] DL audit link

Fork inheritance lineage and inherited audits are included when available.
