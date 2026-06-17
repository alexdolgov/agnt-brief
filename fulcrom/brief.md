# Agentic Audit Brief: Fulcrom

## Project Overview

- Project: Fulcrom (`fulcrom`)
- Website: [https://fulcrom.finance](https://fulcrom.finance)
- Lifecycle: active (Tier 0, 53.4% below peak)
- Generated: 2026-06-17T07:00:52.442Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: cronos, zksync-era
- Contract surface: 56 unique implementations (56 raw deployments)
- DeFi Llama TVL: $10,941,272.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Fulcrom is a decentralized perpetual/leverage trading protocol with FUL and FLP staking and liquidity products. Its current chain presence includes Cronos, zkSync Era, and Cronos zkEVM; the indexed contract surface should be understood as covering only the listed contracts unless Cronos zkEVM contracts are added separately. Unsupported claims that Fulcrom provides general spot trading through a Fulcrom-owned AMM should be removed unless independently verified contracts and documentation are added.

### Architecture

The Fulcrom AMM and Perps families rely on the shared Fulcrom Core infrastructure for vaults, tokens, and oracles. The Cronos and zkSync Era families provide chain-specific adapters that integrate the core protocol with each blockchain.

## Contract Surface Quality

- Indexed contracts: 79; live-surface contracts included: 56 (17 live, 39 unknown).
- Excluded by liveness: 23 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 56
- Unique implementations: 56
- Raw deployments: 56
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

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (56)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x09d7c9...dfe20f` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x115497...135e4c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x133b7f...657ae1` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x1c29ae...3b0045` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x1db915...876af7` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x2275b5...f0691c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x257147...26ce8b` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x27e51d...f023f6` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x27fb69...c3f940` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x2a6289...816652` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x2c2e10...ee1bda` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x3881df...2de177` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x390340...51e0ef` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x54a16d...c74e6e` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x614810...83891f` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x629a8d...22baaa` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x68f8a5...3c9d40` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x6fcfd3...52507e` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x725c5a...3abccb` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x8268fe...f77022` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x83afb1...f0013a` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x880a34...daf3ae` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x8c7ef3...876098` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x8fbd95...a7f6f7` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x963c77...588c2e` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xa461fa...98f2b0` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xa8bea4...cd0446` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xcc46b7...2e0c9a` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xd2985b...ae13fd` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xd565cb...069934` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xd8ddc6...51bc4d` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xd996be...63148a` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xe00370...690567` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xe006ab...59fa15` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xe789d5...7ef92d` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xf5027e...924050` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xfc399d...60db16` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xff7bba...4981f4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x022b94...a17e3e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x0cf436...105992` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x1886df...44b982` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x2fb401...6ef561` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4bb06e...8382ef` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4bc463...781e3f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4d9193...118a33` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x76df63...524c16` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x850fe8...5e3926` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x873534...38e89f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x88ca1f...19761b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x93140f...51b325` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x99819f...0243d6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xc1088d...698464` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xdddf22...162075` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe59385...097a6e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe6c1d5...d31e15` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf2220a...f2491f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
