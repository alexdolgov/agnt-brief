# Agentic Audit Brief: Blueshift

## Project Overview

- Project: Blueshift (`blueshift`)
- Website: [https://blueshift.fi/](https://blueshift.fi/)
- Lifecycle: active (Tier 0, 67.1% below peak)
- Generated: 2026-05-25T16:38:50.674Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: kava, polygon
- Contract surface: 24 unique implementations (29 raw deployments)
- DeFi Llama TVL: $4,377,263.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Blueshift is a decentralized exchange (DEX) protocol operating on Polygon and Kava, enabling users to swap tokens and provide liquidity. It uses upgradeable proxy contracts for core logic and integrates with wrapped native tokens like WMATIC.

### Architecture

The protocol consists of a single product family where the TransparentUpgradeableProxy serves as the main entry point, delegating to implementation contracts. WMATIC is used as the wrapped native token for operations on Polygon.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 24
- Raw deployments: 29
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProxyAdmin | governance | polygon | 2 deployments: polygon [`0xdc05ba...2a3186`](./contracts/polygon-137/0xdc05bacc1f97f874d9d09860a8a93365372a3186/); polygon `0xf8c717...8065f5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | 5 deployments: polygon [`0x2080a3...4edc83`](./contracts/polygon-137/0x2080a319a4b11d097050722b6b65d09f754edc83/); polygon `0x9b44b2...97f251`; polygon `0xb6b3b5...13c9cb`; polygon `0xeb7b35...3e9550`; polygon `0xf79900...37a4e1` | ⚠️ Unaudited |
| WMATIC | unknown | polygon | [`0x0d500b...df1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | polygon | `0x0e4245...755310` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x12fd7e...c3789b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x27e552...1faa2e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x35701f...c96f3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3abd79...367b20` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7b8343...ca2bca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x800618...a6653c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x96c95d...7e7242` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa5eddb...34959a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa7555b...b44f73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xac6e4f...7c9c43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xadbd83...4e8fb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb470e9...adf2c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbabbed...cc44f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbeb942...ddb49c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xce1083...ef743b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcfbf08...8b861f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe03d83...2a2a5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf5399b...323a4d` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x493996...2577b1` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x7a6091...6a77e1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/blueshift) | CertiK | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x2080a3...4edc83`](./contracts/polygon-137/0x2080a319a4b11d097050722b6b65d09f754edc83/) | TransparentUpgradeableProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2594] DL audit link

Fork inheritance lineage and inherited audits are included when available.
