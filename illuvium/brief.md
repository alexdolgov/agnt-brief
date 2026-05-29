# Agentic Audit Brief: Illuvium

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Illuvium (`illuvium`)
- Website: [https://illuvium.io](https://illuvium.io)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-29T19:30:59.939Z
- Pipeline run: v2-pipeline-2026-05-29-691c43-e9c3
- Chains: ethereum
- Contract surface: 17 unique implementations (29 raw deployments)
- DeFi Llama TVL: $9,071,695.89
- On-chain TVL (included contracts): $39,754,462.67
- TVL by chain: Ethereum $39,754,462.67

## Project Description

Illuvium is a gaming protocol that provides staking and liquidity pool contracts for its native ILV token, enabling users to earn rewards and participate in the Illuvium ecosystem.

### Architecture

The Illuvium family uses ERC1967Proxy contracts to upgrade ILVPool and SushiLPPool logic, while IlluviumCorePool interacts with the ILV token and UniswapV2Pair for staking and liquidity rewards.

## Audit Coverage Summary

- Verified implementations audited: 0/15 (0.0%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 17
- Raw deployments: 29
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $39,754,462.67
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $39,754,462.67 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| IlluviumERC20 | token | ethereum | [`0x767fe9...d7ca0e`](./contracts/ethereum-1/0x767fe9edc9e0df98e07454847909b5e959d7ca0e/) | ⚠️ Unaudited |
| IlluviumCorePool | core_logic | ethereum | [`0x8b4d84...843f72`](./contracts/ethereum-1/0x8b4d8443a0229349a9892d4f7cbe89ef5f843f72/) | ⚠️ Unaudited |
| EscrowedIlluvium2 | operational_periphery | ethereum | [`0x7e77dc...f1b068`](./contracts/ethereum-1/0x7e77dcb127f99ece88230a64db8d595f31f1b068/) | ⚠️ Unaudited |
| IlluvinatiCouncil | governance | ethereum | [`0xaebd9b...52dc69`](./contracts/ethereum-1/0xaebd9bd588f044cbdec8f3cf1e80277a7a52dc69/) | ⚠️ Unaudited |
| IlluviumIDOCollection | unknown | ethereum | [`0x4222b2...161e52`](./contracts/ethereum-1/0x4222b2a98daa443c6a0a761300d7d6bfd9161e52/) | ⚠️ Unaudited |
| IlluviumNFT | token | ethereum | 2 deployments: ethereum [`0x384aa0...af9fdf`](./contracts/ethereum-1/0x384aa03d8b7cc6a818e7cb7a037ba0cd81af9fdf/); ethereum `0xb90161...cbf8b9` | ⚠️ Unaudited |
| ILVPool | core_logic | ethereum | 3 deployments: ethereum [`0x6b7220...e201c6`](./contracts/ethereum-1/0x6b72209b2514940606910dd9ad309ee1e5e201c6/); ethereum `0x7f5f85...34291d`; ethereum `0xdb0a2a...f20cb3` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | [`0xa904f2...a8c79a`](./contracts/ethereum-1/0xa904f27b1de7e82ba587677ee1f5af0ad0a8c79a/) | ⚠️ Unaudited |
| NFTClaimManager | governance | ethereum | [`0x3fa9f4...aa9c4c`](./contracts/ethereum-1/0x3fa9f416955fb4a27f6f2bf617ecbe609baa9c4c/) | ⚠️ Unaudited |
| NFTDisperser | token | ethereum | [`0xf5df4f...b3233c`](./contracts/ethereum-1/0xf5df4f4bb2cc79949b37a0a7ea7ce09248b3233c/) | ⚠️ Unaudited |
| PoolFactory | registry | ethereum | 2 deployments: ethereum [`0x53aff3...56d6e1`](./contracts/ethereum-1/0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1/); ethereum `0x9dca38...94597c` | ⚠️ Unaudited |
| PreIlluvium | unknown | ethereum | [`0xabdef6...78f11f`](./contracts/ethereum-1/0xabdef64e297a6dd56e0efa3005972da47d78f11f/) | ⚠️ Unaudited |
| SushiLPPool | core_logic | ethereum | [`0xe98477...571cc2`](./contracts/ethereum-1/0xe98477bdc16126bb0877c6e3882e3edd72571cc2/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | [`0x6a091a...ac0eda`](./contracts/ethereum-1/0x6a091a3406e0073c3cd6340122143009adac0eda/) | ⚠️ Unaudited |
| VotingIlluvium | unknown | ethereum | 9 deployments: ethereum [`0x035dc7...b08207`](./contracts/ethereum-1/0x035dc7dd0e90de650bc8b94196a5419e33b08207/); ethereum `0x04da3f...21392c`; ethereum `0x19ac50...413945`; ethereum `0x2e15ea...14b71b`; ethereum `0x487e58...173032`; ethereum `0x5f04ca...436418`; ethereum `0x98c7c1...ca0c76`; ethereum `0xbf9a92...8ce17e`; ethereum `0xe8d3c5...73fb00` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x088823...cae7b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa305cd...a3dc70` | ❓ Unverified |

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
| ethereum | [`0x767fe9...d7ca0e`](./contracts/ethereum-1/0x767fe9edc9e0df98e07454847909b5e959d7ca0e/) | IlluviumERC20 | token | $39,754,372.43 | Verified native implementation with $39,754,372.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b4d84...843f72`](./contracts/ethereum-1/0x8b4d8443a0229349a9892d4f7cbe89ef5f843f72/) | IlluviumCorePool | core_logic | $90.25 | Verified native implementation with $90.25 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e77dc...f1b068`](./contracts/ethereum-1/0x7e77dcb127f99ece88230a64db8d595f31f1b068/) | EscrowedIlluvium2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaebd9b...52dc69`](./contracts/ethereum-1/0xaebd9bd588f044cbdec8f3cf1e80277a7a52dc69/) | IlluvinatiCouncil | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4222b2...161e52`](./contracts/ethereum-1/0x4222b2a98daa443c6a0a761300d7d6bfd9161e52/) | IlluviumIDOCollection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b7220...e201c6`](./contracts/ethereum-1/0x6b72209b2514940606910dd9ad309ee1e5e201c6/) | ILVPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa904f2...a8c79a`](./contracts/ethereum-1/0xa904f27b1de7e82ba587677ee1f5af0ad0a8c79a/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fa9f4...aa9c4c`](./contracts/ethereum-1/0x3fa9f416955fb4a27f6f2bf617ecbe609baa9c4c/) | NFTClaimManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5df4f...b3233c`](./contracts/ethereum-1/0xf5df4f4bb2cc79949b37a0a7ea7ce09248b3233c/) | NFTDisperser | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53aff3...56d6e1`](./contracts/ethereum-1/0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1/) | PoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabdef6...78f11f`](./contracts/ethereum-1/0xabdef64e297a6dd56e0efa3005972da47d78f11f/) | PreIlluvium | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x035dc7...b08207`](./contracts/ethereum-1/0x035dc7dd0e90de650bc8b94196a5419e33b08207/) | VotingIlluvium | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 1 |
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

- [7511] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [7512] 0002-metadata-manifest-and-pull-command.md
- [7513] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
