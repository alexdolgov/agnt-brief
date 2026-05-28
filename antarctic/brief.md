# Agentic Audit Brief: Antarctic

## Project Overview

- Project: Antarctic (`antarctic`)
- Website: [https://www.antarctic.exchange/](https://www.antarctic.exchange/)
- Lifecycle: active (Tier 0, 22.7% below peak)
- Generated: 2026-05-28T15:21:20.063Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-06de
- Chains: arbitrum
- Contract surface: 11 unique implementations (14 raw deployments)
- DeFi Llama TVL: $9,578,553.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Antarctic is a derivatives protocol on Arbitrum One that allows users to stake liquidity provider tokens (AHLP and AMLP) to earn rewards. It provides staking contracts for these LP tokens, enabling yield generation from liquidity provision.

### Architecture

The Antarctic family consists of two staking contracts (AhlpStaker and AmlpStaker) that are accessed via ERC1967Proxy proxies. These stakers interact with the AHLP and AMLP token contracts, which represent liquidity provider positions, forming a unified staking system.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 11
- Raw deployments: 14
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AHLP | unknown | arbitrum | [`0x5fd22d...34c2c4`](./contracts/arbitrum-42161/0x5fd22da8315992dbbd82d5ac1087803ff134c2c4/) | ⚠️ Unaudited |
| AhlpStaker | core_logic | arbitrum | 2 deployments: arbitrum [`0x1ba274...408d85`](./contracts/arbitrum-42161/0x1ba274ebbb07353657ed8c76a87acf362e408d85/); arbitrum `0x237455...175600` | ⚠️ Unaudited |
| AMLP | unknown | arbitrum | [`0x152f5e...993a4b`](./contracts/arbitrum-42161/0x152f5e6142db867f905a68617dbb6408d7993a4b/) | ⚠️ Unaudited |
| AmlpManager | governance | arbitrum | [`0x98a6ae...bcf8dd`](./contracts/arbitrum-42161/0x98a6aee58699e4f4e13d8d8d0800e4e9cbbcf8dd/) | ⚠️ Unaudited |
| AmlpStaker | core_logic | arbitrum | 2 deployments: arbitrum [`0x3a66b8...a50999`](./contracts/arbitrum-42161/0x3a66b81be26f2d799c5a96a011e1e3fb2ba50999/); arbitrum `0x88ff0b...d52038` | ⚠️ Unaudited |
| FundingVault | core_logic | arbitrum | [`0x07f169...df043f`](./contracts/arbitrum-42161/0x07f169d388c56cf8517b249e845502a14ddf043f/) | ⚠️ Unaudited |
| sAHLP | unknown | arbitrum | [`0x50c30f...685ea9`](./contracts/arbitrum-42161/0x50c30f24b957b1ac9e31558e55bf7dc4ab685ea9/) | ⚠️ Unaudited |
| sAMLP | unknown | arbitrum | 2 deployments: arbitrum [`0x4f2b37...24b6a7`](./contracts/arbitrum-42161/0x4f2b3767616ee3523534910176d61ff35224b6a7/); arbitrum `0xbc08f3...edb9db` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | `0x169dac...30378d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x734ec6...3597b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc5f9d4...40bd9f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x5fd22d...34c2c4`](./contracts/arbitrum-42161/0x5fd22da8315992dbbd82d5ac1087803ff134c2c4/) | AHLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x152f5e...993a4b`](./contracts/arbitrum-42161/0x152f5e6142db867f905a68617dbb6408d7993a4b/) | AMLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x98a6ae...bcf8dd`](./contracts/arbitrum-42161/0x98a6aee58699e4f4e13d8d8d0800e4e9cbbcf8dd/) | AmlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07f169...df043f`](./contracts/arbitrum-42161/0x07f169d388c56cf8517b249e845502a14ddf043f/) | FundingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x50c30f...685ea9`](./contracts/arbitrum-42161/0x50c30f24b957b1ac9e31558e55bf7dc4ab685ea9/) | sAHLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4f2b37...24b6a7`](./contracts/arbitrum-42161/0x4f2b3767616ee3523534910176d61ff35224b6a7/) | sAMLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [7308] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [7309] 0002-metadata-manifest-and-pull-command.md
- [7310] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
