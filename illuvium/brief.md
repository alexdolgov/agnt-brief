# Agentic Audit Brief: Illuvium

## Project Overview

- Project: Illuvium (`illuvium`)
- Website: [https://illuvium.io](https://illuvium.io)
- Lifecycle: active (Tier 1, dead)
- Generated: 2026-06-13T01:51:08.005Z
- Pipeline run: v2-pipeline-2026-06-13-546062-d5d2
- Chains: ethereum
- Contract surface: 21 unique implementations (36 raw deployments)
- DeFi Llama TVL: $6,878,526.45
- On-chain TVL (included contracts): $39,759,562.67
- TVL by chain: Ethereum $39,759,562.67

## Project Description

Illuvium is a gaming ecosystem centered on a decentralized NFT collection and auto-battler game, with Ethereum-based ILV staking and pool2/liquidity contracts supporting participation in the broader Illuvium ecosystem.

### Architecture

The Illuvium family uses ERC1967Proxy contracts to upgrade ILVPool and SushiLPPool logic, while IlluviumCorePool interacts with the ILV token and UniswapV2Pair for staking and liquidity rewards.

## Audit Coverage Summary

- Verified implementations audited: 0/19 (0.0%)
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 21
- Raw deployments: 36
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

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| IlluviumERC20 | token | ethereum | [`0x767fe9...d7ca0e`](./contracts/ethereum-1/0x767fe9edc9e0df98e07454847909b5e959d7ca0e/) | ⚠️ Unaudited |
| IlluviumCorePool | core_logic | ethereum | 2 deployments: ethereum [`0x25121e...4e2a36`](./contracts/ethereum-1/0x25121eddf746c884dde4619b573a7b10714e2a36/); ethereum `0x8b4d84...843f72` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | [`0xaa2e72...e8e778`](./contracts/ethereum-1/0xaa2e727ba59b4fea24d0db4e49a392fdc3e8e778/) | ⚠️ Unaudited |
| EscrowedIlluvium2 | operational_periphery | ethereum | [`0x7e77dc...f1b068`](./contracts/ethereum-1/0x7e77dcb127f99ece88230a64db8d595f31f1b068/) | ⚠️ Unaudited |
| IlluvinatiCouncil | governance | ethereum | [`0xaebd9b...52dc69`](./contracts/ethereum-1/0xaebd9bd588f044cbdec8f3cf1e80277a7a52dc69/) | ⚠️ Unaudited |
| IlluviumIDOCollection | unknown | ethereum | [`0x4222b2...161e52`](./contracts/ethereum-1/0x4222b2a98daa443c6a0a761300d7d6bfd9161e52/) | ⚠️ Unaudited |
| IlluviumNFT | token | ethereum | 2 deployments: ethereum [`0x384aa0...af9fdf`](./contracts/ethereum-1/0x384aa03d8b7cc6a818e7cb7a037ba0cd81af9fdf/); ethereum `0xb90161...cbf8b9` | ⚠️ Unaudited |
| IlluviumPoolFactory | registry | ethereum | [`0x299622...7f03c7`](./contracts/ethereum-1/0x2996222cb2bf3675e5f5f88a5f211736197f03c7/) | ⚠️ Unaudited |
| ILVPool | core_logic | ethereum | 3 deployments: ethereum [`0x6b7220...e201c6`](./contracts/ethereum-1/0x6b72209b2514940606910dd9ad309ee1e5e201c6/); ethereum `0x7f5f85...34291d`; ethereum `0xdb0a2a...f20cb3` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x800e48...ad83cb`](./contracts/ethereum-1/0x800e48366b3dc4d93114246d52b98adb48ad83cb/); ethereum `0xa904f2...a8c79a` | ⚠️ Unaudited |
| MockedPool | core_logic | ethereum | [`0xa1b1c0...e5a8c6`](./contracts/ethereum-1/0xa1b1c05b3d00e5803c1c502d9175f3e39fe5a8c6/) | ⚠️ Unaudited |
| NFTClaimManager | governance | ethereum | [`0x3fa9f4...aa9c4c`](./contracts/ethereum-1/0x3fa9f416955fb4a27f6f2bf617ecbe609baa9c4c/) | ⚠️ Unaudited |
| NFTDisperser | token | ethereum | [`0xf5df4f...b3233c`](./contracts/ethereum-1/0xf5df4f4bb2cc79949b37a0a7ea7ce09248b3233c/) | ⚠️ Unaudited |
| PoolFactory | registry | ethereum | 2 deployments: ethereum [`0x53aff3...56d6e1`](./contracts/ethereum-1/0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1/); ethereum `0x9dca38...94597c` | ⚠️ Unaudited |
| PreIlluvium | unknown | ethereum | [`0xabdef6...78f11f`](./contracts/ethereum-1/0xabdef64e297a6dd56e0efa3005972da47d78f11f/) | ⚠️ Unaudited |
| SushiLPPool | unknown | ethereum | 2 deployments: ethereum [`0x34c267...77e1e0`](./contracts/ethereum-1/0x34c267694ed0829f777ab830841f6664ff77e1e0/); ethereum `0xe98477...571cc2` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | ethereum | [`0xd9e1ce...378b9f`](./contracts/ethereum-1/0xd9e1ce17f2641f24ae83637ab66a2cca9c378b9f/) | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | [`0x6bd281...57adc6`](./contracts/ethereum-1/0x6bd2814426f9a6abaa427d2ad3fc898d2a57adc6/) | ⚠️ Unaudited |
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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x767fe9...d7ca0e`](./contracts/ethereum-1/0x767fe9edc9e0df98e07454847909b5e959d7ca0e/) | IlluviumERC20 | token | $39,754,372.43 | Verified native implementation with $39,754,372.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25121e...4e2a36`](./contracts/ethereum-1/0x25121eddf746c884dde4619b573a7b10714e2a36/) | IlluviumCorePool | core_logic | $5,190.25 | Verified native implementation with $5,190.25 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa2e72...e8e778`](./contracts/ethereum-1/0xaa2e727ba59b4fea24d0db4e49a392fdc3e8e778/) | Vault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e77dc...f1b068`](./contracts/ethereum-1/0x7e77dcb127f99ece88230a64db8d595f31f1b068/) | EscrowedIlluvium2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaebd9b...52dc69`](./contracts/ethereum-1/0xaebd9bd588f044cbdec8f3cf1e80277a7a52dc69/) | IlluvinatiCouncil | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4222b2...161e52`](./contracts/ethereum-1/0x4222b2a98daa443c6a0a761300d7d6bfd9161e52/) | IlluviumIDOCollection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x299622...7f03c7`](./contracts/ethereum-1/0x2996222cb2bf3675e5f5f88a5f211736197f03c7/) | IlluviumPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b7220...e201c6`](./contracts/ethereum-1/0x6b72209b2514940606910dd9ad309ee1e5e201c6/) | ILVPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x800e48...ad83cb`](./contracts/ethereum-1/0x800e48366b3dc4d93114246d52b98adb48ad83cb/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1b1c0...e5a8c6`](./contracts/ethereum-1/0xa1b1c05b3d00e5803c1c502d9175f3e39fe5a8c6/) | MockedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fa9f4...aa9c4c`](./contracts/ethereum-1/0x3fa9f416955fb4a27f6f2bf617ecbe609baa9c4c/) | NFTClaimManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5df4f...b3233c`](./contracts/ethereum-1/0xf5df4f4bb2cc79949b37a0a7ea7ce09248b3233c/) | NFTDisperser | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53aff3...56d6e1`](./contracts/ethereum-1/0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1/) | PoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabdef6...78f11f`](./contracts/ethereum-1/0xabdef64e297a6dd56e0efa3005972da47d78f11f/) | PreIlluvium | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x035dc7...b08207`](./contracts/ethereum-1/0x035dc7dd0e90de650bc8b94196a5419e33b08207/) | VotingIlluvium | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
