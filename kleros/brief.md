# Agentic Audit Brief: Kleros

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Kleros (`kleros`)
- Website: [https://kleros.io](https://kleros.io)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T06:14:26.679Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, ethereum, gnosis, polygon
- Contract surface: 23 unique implementations (50 raw deployments)
- DeFi Llama TVL: $5,808,359.43
- On-chain TVL (included contracts): $10,692,979.91
- TVL by chain: Ethereum $10,370,322.62 | Arbitrum $322,657.29

## Project Description

Kleros is a decentralized arbitration protocol that resolves disputes in a fast, affordable, and transparent manner using crowdsourced jurors and game-theoretic incentives. It provides smart contract–based arbitration services for a wide range of use cases, including token-curated registries, prediction markets, and general smart contract disputes.

### Architecture

The Core family on Ethereum mainnet provides the foundational PNK token, governance, and arbitration logic, which is extended to Gnosis Chain via wrapped PNK and bridged Reality.eth proxies. The Arbitrum One family represents a modular, next-generation architecture that shares the same dispute resolution principles but uses upgraded components, while Polygon and RABd are lightweight integrations relying on the same arbitrator contracts.

## Contract Surface Quality

- Indexed contracts: 647; live-surface contracts included: 50 (50 live, 0 unknown).
- Excluded by liveness: 513 inactive, 84 singleton, 0 uninitialized.
- Deployment units: 1/39 live.
- Detected codebases: none
- Unverified dependencies: 6/56.

## Audit Coverage Summary

- Verified implementations audited: 0/22 (0.0%)
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 23
- Raw deployments: 50
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $10,692,979.91
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $10,692,979.91 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MiniMeToken | token | ethereum | n/a | [`0x93ed3f...3bc04d`](./contracts/ethereum-1/0x93ed3fbe21207ec2e8f2d3c3de6e058cb73bc04d/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-39166 | [`0x330bd7...6dcae5`](./contracts/arbitrum-42161/0x330bd769382cfc6d50175903434ccc8d206dcae5/) | ⚠️ Unaudited |
| AmbGreeterReceiver | unknown | ethereum | n/a | [`0x800643...b7225e`](./contracts/ethereum-1/0x800643d341068e60c29c3d0fea2a2a6642b7225e/) | ⚠️ Unaudited |
| DisputeKitGated | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xcc811d...6c3078`](./contracts/arbitrum-42161/0xcc811de3fbeee3a34b765804cf9ff339c26c3078/); arbitrum `0xea7863...b7790a` | ⚠️ Unaudited |
| DisputeResolver | unknown | arbitrum | n/a | [`0xb5526d...1f4323`](./contracts/arbitrum-42161/0xb5526d022962a1fff6ed32c93e8b714c901f4323/) | ⚠️ Unaudited |
| EscrowUniversal | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x5d64cb...3a2402`](./contracts/arbitrum-42161/0x5d64cb92c351e46615ce427015a2f1e0823a2402/); arbitrum `0x79530e...1f2f6c` | ⚠️ Unaudited |
| EscrowView | operational_periphery | arbitrum | n/a | [`0xaf36da...77330d`](./contracts/arbitrum-42161/0xaf36da891c03b8a3a675f08f59355c8ff877330d/) | ⚠️ Unaudited |
| Kleros | unknown | ethereum | n/a | [`0x211f01...2ce82c`](./contracts/ethereum-1/0x211f01e59b425253c0a0e9a7bf612605b42ce82c/) | ⚠️ Unaudited |
| KlerosGovernor | governance | ethereum | n/a | 2 deployments: ethereum [`0x327a29...eccfdf`](./contracts/ethereum-1/0x327a29fce0a6490e4236240be176daa282eccfdf/); ethereum `0xe5bcea...0e5cf4` | ⚠️ Unaudited |
| LightGeneralizedTCR | unknown | gnosis | n/a | 2 deployments: gnosis [`0x66260c...4c59f2`](./contracts/gnosis-100/0x66260c69d03837016d88c9877e61e08ef74c59f2/); gnosis `0x957a53...52d6e1` | ⚠️ Unaudited |
| MarketFactory | registry | gnosis | n/a | [`0x67d367...7eb48b`](./contracts/gnosis-100/0x67d3673cf19a6b0ad70d76b4e9c6f715177eb48b/) | ⚠️ Unaudited |
| MultipleArbitrableTransaction | unknown | ethereum | n/a | [`0x0d6744...1e2522`](./contracts/ethereum-1/0x0d67440946949fe293b45c52efd8a9b3d51e2522/) | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | n/a | [`0x67a575...e5b1b4`](./contracts/ethereum-1/0x67a57535b11445506a9e340662cd0c9755e5b1b4/) | ⚠️ Unaudited |
| ProofOfHumanity | unknown | ethereum | n/a | [`0xc5e9dd...7c9bdb`](./contracts/ethereum-1/0xc5e9ddebb09cd64dfacab4011a0d5cedaf7c9bdb/) | ⚠️ Unaudited |
| Realitio_v2_1_ArbitratorWithAppeals | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1c2811...d5fc0d`](./contracts/ethereum-1/0x1c2811550551d84030cd1b608e6fe3fd6fd5fc0d/); ethereum `0x783763...58d517`; ethereum `0xf72cfd...30adca` | ⚠️ Unaudited |
| RealitioForeignArbitrationProxyWithAppeals | unknown | ethereum | n/a | [`0xfe0eb5...c0aa68`](./contracts/ethereum-1/0xfe0eb5fc686f929eb26d541d75bb59f816c0aa68/) | ⚠️ Unaudited |
| RealitioForeignProxyArbitrum | unknown | ethereum | n/a | [`0x4fa89d...9779e9`](./contracts/ethereum-1/0x4fa89d1e6dbe4eb05cf542da841d5778629779e9/) | ⚠️ Unaudited |
| RealitioForeignProxyOptimism | unknown | ethereum | n/a | 7 deployments: ethereum [`0x46bf68...7f09bb`](./contracts/ethereum-1/0x46bf687bb3eb392d2667ee37b4ad96addb7f09bb/); ethereum `0x54811e...fe627f`; ethereum `0x890deb...d6770e`; ethereum `0xa353a7...11681a`; ethereum `0xd8b33e...0cd928`; ethereum `0xeafb9c...239a2d`; ethereum `0xf0b37f...9f2044` | ⚠️ Unaudited |
| RealitioForeignProxyPolygon | unknown | ethereum | n/a | 3 deployments: ethereum [`0x412c06...692ba7`](./contracts/ethereum-1/0x412c0617f357e640406ff0b4ee55f547c3692ba7/); ethereum `0xbbb9a4...f60d36`; ethereum `0xd6bf90...0c6046` | ⚠️ Unaudited |
| RealitioHomeProxyPolygon | unknown | polygon | n/a | 4 deployments: polygon [`0x6116e6...e58812`](./contracts/polygon-137/0x6116e64366a1d70a270235f31c8ff29012e58812/); polygon `0xb4fc64...82b2ef`; polygon `0xbc9664...080799`; polygon `0xe69a35...e0d7f6` | ⚠️ Unaudited |
| SBT | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x091ba2...2cb1bc`](./contracts/arbitrum-42161/0x091ba21a03aab5b4cfee5a770667cc53ef2cb1bc/); arbitrum `0x0d41cb...e85e48`; arbitrum `0x2a2f1f...81850b`; arbitrum `0x424956...a5e9b4`; arbitrum `0x650ed9...cf7922`; arbitrum `0xb80fb6...6adf43`; arbitrum `0xbcf80c...2b59ed`; arbitrum `0xcf468c...c78b0b` | ⚠️ Unaudited |
| TransactionBatcher | periphery | gnosis | n/a | 4 deployments: ethereum `0x82458d...9aa8cb`; gnosis [`0x642680...794d46`](./contracts/gnosis-100/0x6426800f8508b15aed271337498fa5e7d0794d46/); gnosis `0xa73a87...a259d6`; arbitrum `0xbc5ef8...dea4ef` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x903b03...04fe21` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xcc811d...6c3078`](./contracts/arbitrum-42161/0xcc811de3fbeee3a34b765804cf9ff339c26c3078/) | DisputeKitGated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb5526d...1f4323`](./contracts/arbitrum-42161/0xb5526d022962a1fff6ed32c93e8b714c901f4323/) | DisputeResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d64cb...3a2402`](./contracts/arbitrum-42161/0x5d64cb92c351e46615ce427015a2f1e0823a2402/) | EscrowUniversal | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaf36da...77330d`](./contracts/arbitrum-42161/0xaf36da891c03b8a3a675f08f59355c8ff877330d/) | EscrowView | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x211f01...2ce82c`](./contracts/ethereum-1/0x211f01e59b425253c0a0e9a7bf612605b42ce82c/) | Kleros | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x327a29...eccfdf`](./contracts/ethereum-1/0x327a29fce0a6490e4236240be176daa282eccfdf/) | KlerosGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x66260c...4c59f2`](./contracts/gnosis-100/0x66260c69d03837016d88c9877e61e08ef74c59f2/) | LightGeneralizedTCR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x67d367...7eb48b`](./contracts/gnosis-100/0x67d3673cf19a6b0ad70d76b4e9c6f715177eb48b/) | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d6744...1e2522`](./contracts/ethereum-1/0x0d67440946949fe293b45c52efd8a9b3d51e2522/) | MultipleArbitrableTransaction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67a575...e5b1b4`](./contracts/ethereum-1/0x67a57535b11445506a9e340662cd0c9755e5b1b4/) | MultiSigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x091ba2...2cb1bc`](./contracts/arbitrum-42161/0x091ba21a03aab5b4cfee5a770667cc53ef2cb1bc/) | SBT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x642680...794d46`](./contracts/gnosis-100/0x6426800f8508b15aed271337498fa5e7d0794d46/) | TransactionBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 8 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
