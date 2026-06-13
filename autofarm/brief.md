# Agentic Audit Brief: Autofarm

⚠️ Lifecycle status: DECLINING - TVL changed 3.6% over 90 days

## Project Overview

- Project: Autofarm (`autofarm`)
- Lifecycle: declining (Tier 0, 99.7% below peak)
- Generated: 2026-06-13T03:45:43.829Z
- Pipeline run: v2-pipeline-2026-06-13-546062-8c0a
- Chains: arbitrum, aurora, avalanche, boba, bsc, celo, cronos, fantom, gnosis, harmony, heco, moonbeam, moonriver, polygon
- Contract surface: 17 unique implementations (27 raw deployments)
- DeFi Llama TVL: $5,596,017.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Autofarm is a DeFi suite best known for its multi-chain yield-vault and auto-compounding products, which aggregate user deposits across DeFi protocols to optimize yield farming strategies. Its broader ecosystem has also included AutoSwap/DEX aggregation functionality as tracked in DefiLlama metadata.

### Architecture

The Autofarm family consists of core vault contracts (AutoFarmV2_CrossChain) deployed across multiple chains, supported by unnamed infrastructure contracts. The AUTOv2 token likely serves as the governance and reward token, integrating with the vaults to incentivize participation.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 17
- Raw deployments: 27
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

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AutoFarmV2 | unknown | bsc | 2 deployments: bsc [`0x089519...450452`](./contracts/bsc-56/0x0895196562c7868c5be92459fae7f877ed450452/); bsc `0xf6c361...07cde2` | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | aurora | 8 deployments: gnosis `0xfada8c...d4680e`; polygon `0x89d065...eb0b76`; moonbeam `0x77286f...8573a6`; moonriver `0xfada8c...d4680e`; arbitrum `0x76b8c3...34cbaa`; celo `0xdd11b6...12303f`; avalanche `0x864a0b...23f213`; aurora [`0x625374...71a700`](./contracts/aurora-1313161554/0x62537419c8327ab66165bae205da8fcb6871a700/) | ⚠️ Unaudited |
| AutoSwap_02 | unknown | polygon | 3 deployments: bsc `0xbd6ed3...eed55d`; polygon [`0x7c5a66...5c2c75`](./contracts/polygon-137/0x7c5a661069a25e94a71e03c75a58d7cf765c2c75/); avalanche `0xa749d9...ffd981` | ⚠️ Unaudited |
| AUTOv2 | unknown | bsc | [`0xa18408...78b827`](./contracts/bsc-56/0xa184088a740c695e156f91f5cc086a06bb78b827/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | [`0xbbdce2...3fac6d`](./contracts/bsc-56/0xbbdce2b8a83819af5e8db4f74e0bef75a43fac6d/) | ⚠️ Unaudited |
| StratVLEV | unknown | bsc | [`0x89e150...fbe9a1`](./contracts/bsc-56/0x89e1509810378f73b4bc0c1decb87fcca6fbe9a1/) | ⚠️ Unaudited |
| StratX | unknown | bsc | [`0x5f9302...a8ca5c`](./contracts/bsc-56/0x5f93026bcf9120ccf719882fcde147a52da8ca5c/) | ⚠️ Unaudited |
| StratX2_AUTO | unknown | bsc | [`0xb27150...568be2`](./contracts/bsc-56/0xb27150dc6ee59ad4464cc7a89229b5870e568be2/) | ⚠️ Unaudited |
| TimelockController | governance | bsc | [`0x28579e...876a04`](./contracts/bsc-56/0x28579eca0a326e53340edd93e18698d379876a04/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | cronos | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x96a29c...0d5d99` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x9c30e4...ed894e` | ❓ Unverified |
| UnnamedContract | unknown | boba | `0x864a0b...23f213` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x864a0b...23f213` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xbf19c3...de343a` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0x9c5765...d13eea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/autofarm) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x089519...450452`](./contracts/bsc-56/0x0895196562c7868c5be92459fae7f877ed450452/) | AutoFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x625374...71a700`](./contracts/aurora-1313161554/0x62537419c8327ab66165bae205da8fcb6871a700/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7c5a66...5c2c75`](./contracts/polygon-137/0x7c5a661069a25e94a71e03c75a58d7cf765c2c75/) | AutoSwap_02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa18408...78b827`](./contracts/bsc-56/0xa184088a740c695e156f91f5cc086a06bb78b827/) | AUTOv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x89e150...fbe9a1`](./contracts/bsc-56/0x89e1509810378f73b4bc0c1decb87fcca6fbe9a1/) | StratVLEV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5f9302...a8ca5c`](./contracts/bsc-56/0x5f93026bcf9120ccf719882fcde147a52da8ca5c/) | StratX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb27150...568be2`](./contracts/bsc-56/0xb27150dc6ee59ad4464cc7a89229b5870e568be2/) | StratX2_AUTO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 2 |
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
