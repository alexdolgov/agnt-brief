# Agentic Audit Brief: Guru Network DAO

## Project Overview

- Project: Guru Network DAO (`guru-network-dao`)
- Website: [https://ftm.guru/](https://ftm.guru/)
- Lifecycle: active (Tier 0, 83% below peak)
- Generated: 2026-06-17T07:00:52.132Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, fantom, kava, metis, polygon, sonic
- Contract surface: 55 unique implementations (71 raw deployments)
- DeFi Llama TVL: $1,934,828.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Guru Network DAO is a multi-chain DeFi protocol described by DefiLlama as operating across multiple chains, with observed contract surface including liquidity-book routing and quoting components such as LBRouter and LBQuoter deployments. Its exact product scope should be treated cautiously unless supported by current documentation or verified contract source; lending, liquid staking, yield optimization, liquidity aggregation, or automated yield strategies should not be asserted without further verification.

### Architecture

The families share a common deployer cluster and proxy infrastructure, indicating a unified development team. Yield strategies from Guru Network Classic may utilize liquidity from E3 and assets from eLOCKS or ELMA, creating integrated DeFi workflows.

## Contract Surface Quality

- Indexed contracts: 78; live-surface contracts included: 71 (4 live, 67 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 15; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/21 (0.0%)
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 55
- Raw deployments: 71
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

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| aera_farm | unknown | metis | n/a | [`0x6c39ff...b93264`](./contracts/metis-1088/0x6c39ff982ac0a696978f66ef632d9f86dfb93264/) | ⚠️ Unaudited |
| AERA_Layer1 | unknown | metis | n/a | [`0x63d73d...28f88c`](./contracts/metis-1088/0x63d73d848b7f5142f11974188e9fe3f5de28f88c/) | ⚠️ Unaudited |
| AerariumMasterChef | unknown | metis | n/a | [`0x5c652a...ecf1fc`](./contracts/metis-1088/0x5c652a94c672f8f6d021417bb5ee75c322ecf1fc/) | ⚠️ Unaudited |
| ContractChecker | unknown | arbitrum | n/a | [`0x869c20...c56c36`](./contracts/arbitrum-42161/0x869c20286e6c71178669ef7fe0851bc1dbc56c36/) | ⚠️ Unaudited |
| elCHR | unknown | arbitrum | n/a | [`0xd600ec...eaa134`](./contracts/arbitrum-42161/0xd600ec98cf6418c50ee051ace53219d95aeaa134/) | ⚠️ Unaudited |
| elCHR_Depositor | unknown | arbitrum | n/a | [`0x88c321...be7db1`](./contracts/arbitrum-42161/0x88c3211ed3220c08376a28a3ba7c67d7d4be7db1/) | ⚠️ Unaudited |
| ElitenessERC20 | token | polygon | n/a | 2 deployments: polygon [`0x7898a0...0ceb08`](./contracts/polygon-137/0x7898a099b61fdecd83a26f4006812ef04e0ceb08/); polygon `0xcc1eff...5fee93` | ⚠️ Unaudited |
| eLOCKS | unknown | sonic | unit-31377 | [`0xc6b515...d5abc0`](./contracts/sonic-146/0xc6b515328f970ec25228a716bf91774e5bd5abc0/) | ⚠️ Unaudited |
| elToken | token | polygon | n/a | [`0xfab311...fa888b`](./contracts/polygon-137/0xfab311fe3e3be4bb3fed77257ee294fb22fa888b/) | ⚠️ Unaudited |
| elToken_Depositor | token | polygon | n/a | 4 deployments: polygon [`0x2696f9...4b9ce7`](./contracts/polygon-137/0x2696f94f11dff0d77875e2652fcdb537274b9ce7/); polygon `0xcc835d...2b8fca`; polygon `0xd600ec...eaa134`; polygon `0xdf4869...1be136` | ⚠️ Unaudited |
| elTokenManager | governance | polygon | n/a | 4 deployments: polygon [`0x30e118...2f480c`](./contracts/polygon-137/0x30e118c1a6f1c83b4fab64f6a6c9150f0b2f480c/); polygon `0x4046c4...0a40c4`; arbitrum `0x7be024...101eab`; arbitrum `0x861fe2...5811c7` | ⚠️ Unaudited |
| elTokenRedeemVault | core_logic | arbitrum | n/a | [`0x39cc81...b1d91c`](./contracts/arbitrum-42161/0x39cc812e698a61f1883f7b9dba54159aa7b1d91c/) | ⚠️ Unaudited |
| Granary | unknown | metis | n/a | [`0xf060c8...3b8069`](./contracts/metis-1088/0xf060c8c86e17bf64fa3cfc6bbb2cb829c33b8069/) | ⚠️ Unaudited |
| GuruMultiRewardFarmland | unknown | arbitrum | n/a | 7 deployments: polygon `0xc4c807...1362b4`; metis `0xa0edd9...0350e9`; arbitrum [`0x2696f9...4b9ce7`](./contracts/arbitrum-42161/0x2696f94f11dff0d77875e2652fcdb537274b9ce7/); arbitrum `0x64532e...285d08`; arbitrum `0xcc835d...2b8fca`; arbitrum `0xdf4869...1be136`; avalanche `0xdf4869...1be136` | ⚠️ Unaudited |
| LBFactory | registry | base | n/a | 2 deployments: base [`0x8597db...a0e57b`](./contracts/base-8453/0x8597db3ba8de6baadeda8cba4dac653e24a0e57b/); arbitrum [`0x8597db...a0e57b`](./contracts/arbitrum-42161/0x8597db3ba8de6baadeda8cba4dac653e24a0e57b/) | ⚠️ Unaudited |
| MultiRewards | unknown | metis | n/a | [`0xafbe3b...492295`](./contracts/metis-1088/0xafbe3b8b0939a5538de32f7752a78e08c8492295/) | ⚠️ Unaudited |
| oTokenToElToken | token | polygon | n/a | [`0x3979d8...f55b97`](./contracts/polygon-137/0x3979d8149099b98cde35e08722f05dc477f55b97/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0x7b7faf...8ebd27`](./contracts/arbitrum-42161/0x7b7faf5f614f8c13f80a8775b61d1c22f48ebd27/) | ⚠️ Unaudited |
| pvl | unknown | arbitrum | n/a | [`0xb264c9...b2e198`](./contracts/arbitrum-42161/0xb264c9ece4c1f9ebff85e580b068a82fcdb2e198/) | ⚠️ Unaudited |
| tvlGuru | unknown | polygon | n/a | 3 deployments: polygon [`0x18c7ad...68845a`](./contracts/polygon-137/0x18c7ad880a07d363f2d034a8523ae34b8068845a/); metis `0x50dcc6...6be895`; arbitrum `0xfab311...fa888b` | ⚠️ Unaudited |
| TvlGuru_v21 | unknown | sonic | unit-31376 | [`0x52ce71...18546b`](./contracts/sonic-146/0x52ce715ca439a031fc3cc103f08a378bad18546b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x05bf8a...6a1c7e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x123136...6d16c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x345551...e0cd6d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x37c140...220423` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3df3e6...c036bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x41c4d6...89a7e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5c00ba...c9bf1b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x702e5d...f033b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b7faf...8ebd27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb264c9...b2e198` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc5687a...287761` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc8207c...2716d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcd1430...ec6680` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd32353...0170a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdfae2e...08cb65` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x0786c3...c6dcad` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x0a558d...215b3c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x2f20a6...a907ad` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x35402c...21de08` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x426a4a...17eaa9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x8597db...a0e57b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xa254bf...a4f14b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb6633c...656b1e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe345a5...a9c117` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf43cc2...3a1882` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xfaa22e...287b27` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x86e4d9...2a7300` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x9d9682...4663fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb62f60...510fc4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd9751a...8c11f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x18c7ad...68845a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4c807...1362b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9751a...8c11f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc295f6...197250` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | [`0x6c39ff...b93264`](./contracts/metis-1088/0x6c39ff982ac0a696978f66ef632d9f86dfb93264/) | aera_farm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x63d73d...28f88c`](./contracts/metis-1088/0x63d73d848b7f5142f11974188e9fe3f5de28f88c/) | AERA_Layer1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x5c652a...ecf1fc`](./contracts/metis-1088/0x5c652a94c672f8f6d021417bb5ee75c322ecf1fc/) | AerariumMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x869c20...c56c36`](./contracts/arbitrum-42161/0x869c20286e6c71178669ef7fe0851bc1dbc56c36/) | ContractChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd600ec...eaa134`](./contracts/arbitrum-42161/0xd600ec98cf6418c50ee051ace53219d95aeaa134/) | elCHR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x88c321...be7db1`](./contracts/arbitrum-42161/0x88c3211ed3220c08376a28a3ba7c67d7d4be7db1/) | elCHR_Depositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7898a0...0ceb08`](./contracts/polygon-137/0x7898a099b61fdecd83a26f4006812ef04e0ceb08/) | ElitenessERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfab311...fa888b`](./contracts/polygon-137/0xfab311fe3e3be4bb3fed77257ee294fb22fa888b/) | elToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2696f9...4b9ce7`](./contracts/polygon-137/0x2696f94f11dff0d77875e2652fcdb537274b9ce7/) | elToken_Depositor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x30e118...2f480c`](./contracts/polygon-137/0x30e118c1a6f1c83b4fab64f6a6c9150f0b2f480c/) | elTokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39cc81...b1d91c`](./contracts/arbitrum-42161/0x39cc812e698a61f1883f7b9dba54159aa7b1d91c/) | elTokenRedeemVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xf060c8...3b8069`](./contracts/metis-1088/0xf060c8c86e17bf64fa3cfc6bbb2cb829c33b8069/) | Granary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2696f9...4b9ce7`](./contracts/arbitrum-42161/0x2696f94f11dff0d77875e2652fcdb537274b9ce7/) | GuruMultiRewardFarmland | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xafbe3b...492295`](./contracts/metis-1088/0xafbe3b8b0939a5538de32f7752a78e08c8492295/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3979d8...f55b97`](./contracts/polygon-137/0x3979d8149099b98cde35e08722f05dc477f55b97/) | oTokenToElToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb264c9...b2e198`](./contracts/arbitrum-42161/0xb264c9ece4c1f9ebff85e580b068a82fcdb2e198/) | pvl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x18c7ad...68845a`](./contracts/polygon-137/0x18c7ad880a07d363f2d034a8523ae34b8068845a/) | tvlGuru | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
