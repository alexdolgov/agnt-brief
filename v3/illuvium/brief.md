# Agentic Audit Brief: Illuvium

## Project Overview

- Project: Illuvium (`illuvium`)
- Website: [https://illuvium.io](https://illuvium.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:01.032Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum
- Contract surface: 12 unique implementations (17 raw deployments)
- DeFi Llama TVL: $6,112,695.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gaming. Structurally: 23 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 2 common project-authored base contract(s) (illuviumaware, timestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 13 (11 live, 2 unknown).
- Excluded by liveness: 25 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 12
- Raw deployments: 17
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EscrowedIlluvium2 | operational_periphery | ethereum | n/a | [`0x7e77dc...f1b068`](./contracts/ethereum-1/0x7e77dcb127f99ece88230a64db8d595f31f1b068/) | ⚠️ Unaudited |
| IlluviumCorePool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x25121e...4e2a36`](./contracts/ethereum-1/0x25121eddf746c884dde4619b573a7b10714e2a36/); ethereum `0x8b4d84...843f72` | ⚠️ Unaudited |
| IlluviumERC20 | token | ethereum | n/a | [`0x767fe9...d7ca0e`](./contracts/ethereum-1/0x767fe9edc9e0df98e07454847909b5e959d7ca0e/) | ⚠️ Unaudited |
| IlluviumIDOCollection | unknown | ethereum | n/a | [`0x4222b2...161e52`](./contracts/ethereum-1/0x4222b2a98daa443c6a0a761300d7d6bfd9161e52/) | ⚠️ Unaudited |
| IlluviumNFT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x384aa0...af9fdf`](./contracts/ethereum-1/0x384aa03d8b7cc6a818e7cb7a037ba0cd81af9fdf/); ethereum `0xb90161...cbf8b9` | ⚠️ Unaudited |
| ILVPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7f5f85...34291d`](./contracts/ethereum-1/0x7f5f854ffb6b7701540a00c69c4ab2de2b34291d/); ethereum `0xdb0a2a...f20cb3` | ⚠️ Unaudited |
| PoolFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x53aff3...56d6e1`](./contracts/ethereum-1/0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1/); ethereum `0x9dca38...94597c` | ⚠️ Unaudited |
| SushiLPPool | unknown | ethereum | n/a | [`0xe98477...571cc2`](./contracts/ethereum-1/0xe98477bdc16126bb0877c6e3882e3edd72571cc2/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | ethereum | n/a | [`0xd9e1ce...378b9f`](./contracts/ethereum-1/0xd9e1ce17f2641f24ae83637ab66a2cca9c378b9f/) | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x6bd281...57adc6`](./contracts/ethereum-1/0x6bd2814426f9a6abaa427d2ad3fc898d2a57adc6/); ethereum `0xc01e7d...08bfdb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x088823...cae7b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa305cd...a3dc70` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0xmacro.com/library/audits/illuvium-1](https://0xmacro.com/library/audits/illuvium-1) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20729] 0xmacro.com/library/audits/illuvium-1

Fork inheritance lineage and inherited audits are included when available.
