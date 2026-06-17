# Agentic Audit Brief: Autofarm

⚠️ Lifecycle status: DECLINING - TVL changed 3.6% over 90 days

## Project Overview

- Project: Autofarm (`autofarm`)
- Lifecycle: declining (Tier 0, 99.7% below peak)
- Generated: 2026-06-17T07:00:58.207Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: boba, bsc, celo, cronos, fantom, harmony, heco, moonriver, polygon
- Contract surface: 11 unique implementations (13 raw deployments)
- DeFi Llama TVL: $5,596,017.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Autofarm is a DeFi suite best known for its multi-chain yield-vault and auto-compounding products, which aggregate user deposits across DeFi protocols to optimize yield farming strategies. Its broader ecosystem has also included AutoSwap/DEX aggregation functionality as tracked in DefiLlama metadata.

### Architecture

The Autofarm family consists of core vault contracts (AutoFarmV2_CrossChain) deployed across multiple chains, supported by unnamed infrastructure contracts. The AUTOv2 token likely serves as the governance and reward token, integrating with the vaults to incentivize participation.

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 13 (5 live, 8 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/6.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 11
- Raw deployments: 13
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AutoFarmV2 | unknown | bsc | n/a | [`0x089519...450452`](./contracts/bsc-56/0x0895196562c7868c5be92459fae7f877ed450452/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | polygon | n/a | 3 deployments: polygon [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/); moonriver `0xfada8c...d4680e`; celo `0xdd11b6...12303f` | ⚠️ Unaudited |
| AUTOv2 | unknown | bsc | n/a | [`0xa18408...78b827`](./contracts/bsc-56/0xa184088a740c695e156f91f5cc086a06bb78b827/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x96a29c...0d5d99` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9c30e4...ed894e` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x864a0b...23f213` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x864a0b...23f213` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbf19c3...de343a` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x9c5765...d13eea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/autofarm) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x089519...450452`](./contracts/bsc-56/0x0895196562c7868c5be92459fae7f877ed450452/) | AutoFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa18408...78b827`](./contracts/bsc-56/0xa184088a740c695e156f91f5cc086a06bb78b827/) | AUTOv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
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

- [2379] DL audit link

Fork inheritance lineage and inherited audits are included when available.
