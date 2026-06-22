# Agentic Audit Brief: Molecular

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Molecular (`molecular`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T09:12:19.475Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: arbitrum
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Molecular is a leveraged farming protocol on Arbitrum One that enables users to amplify yield from liquidity provision and staking positions. It uses a system of vaults and strategies to manage leveraged positions, likely involving borrowing and automated rebalancing.

### Architecture

The Molecular family consists of two proxy contracts pointing to a shared implementation contract, indicating a pattern of multiple vault instances using the same logic. The unnamed implementation contract serves as the core logic for both proxies, suggesting a modular design where each proxy represents a distinct leveraged farming strategy or asset pool.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 37 singleton, 0 uninitialized.
- Deployment units: 0/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MolecularToken | token | arbitrum | n/a | [`0x19d089...542f9a`](./contracts/arbitrum-42161/0x19d0899464dea847ad0a5b7d42f3ce0592542f9a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x00bcb6...8464d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0c89a0...a8ccca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x416c71...7e0737` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x56436f...6e872e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x577454...906136` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6bf044...4213c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x852bc0...e3cab5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8cc729...f8dbaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x96cf1e...624b91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b6e63...157390` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb204ba...6698b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb86382...7b619b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbedce...de0fa9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb7c67...ee31e1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://beosin.com/audits/Molecular-Protocol_202509161103.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x19d089...542f9a`](./contracts/arbitrum-42161/0x19d0899464dea847ad0a5b7d42f3ce0592542f9a/) | MolecularToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13509] DL audit link

Fork inheritance lineage and inherited audits are included when available.
