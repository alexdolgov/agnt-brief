# Agentic Audit Brief: SMARDEX Ecosystem

⚠️ Lifecycle status: DECLINING - TVL dropped 32.3% over 90 days

## Project Overview

- Project: SMARDEX Ecosystem (`smardex-ecosystem`)
- Website: [https://smardex.io](https://smardex.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T04:29:09.397Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-bcf3
- Chains: arbitrum, base, bsc, ethereum, polygon
- Contract surface: 20 unique implementations (32 raw deployments)
- DeFi Llama TVL: $2,757,789.00
- On-chain TVL (included contracts): $20,056,668.07
- TVL by chain: Ethereum $19,806,097.52 | Bsc $105,266.40 | Arbitrum $59,051.79 | Base $51,124.83 | Polygon $35,127.53

## Project Description

SMARDEX Ecosystem is a multi-chain DeFi protocol combining an automated market maker (AMM) for decentralized trading, a synthetic USD token (USDN) with staking and farming, and cross-chain token bridging. It enables users to swap assets, earn yield through liquidity provision and staking, and access leveraged positions via its USDN protocol.

### Architecture

The AMM and USDN families share the SMARDEX token (SmardexToken) and staking infrastructure (Staking, FarmingRange) on Ethereum, while the Bridge family enables cross-chain movement of tokens to support AMM liquidity and USDN usage on other chains. The USDN protocol relies on oracles and rebalancers that may interact with AMM pools for price feeds and liquidity.

## Contract Surface Quality

- Indexed contracts: 106; live-surface contracts included: 32 (32 live, 0 unknown).
- Excluded by liveness: 72 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 5/6 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 13; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/20 (20.0%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 20
- Raw deployments: 32
- Audits discovered: 6
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $20,056,668.07
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 4 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $20,056,668.07 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BailSec | Tier 2 | 4 | 20.0% | 2025-03 |
| Guardian | Tier 2 | 2 | 10.0% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Rebalancer | adapter | ethereum | n/a | [`0xaebcc8...826e03`](./contracts/ethereum-1/0xaebcc85a5594e687f6b302405e6e92d616826e03/) | ✅ Audited |
| UniversalRouter | adapter | ethereum | n/a | [`0x49f66b...0983e1`](./contracts/ethereum-1/0x49f66b1616865b2a59caecb8352bbf2ac80983e1/) | ✅ Audited |
| Usdn | unknown | ethereum | n/a | [`0xde17a0...90dee2`](./contracts/ethereum-1/0xde17a000ba631c5d7c2bd9fb692efea52d90dee2/) | ✅ Audited |
| Wusdn | unknown | ethereum | n/a | [`0x999999...cb1af9`](./contracts/ethereum-1/0x99999999999999cc837c997b882957dafdcb1af9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SmardexToken | token | ethereum | n/a | 3 deployments: ethereum [`0x52e7b2...d8736e`](./contracts/ethereum-1/0x52e7b23e1faba6d83376725e2ccad75efbd8736e/); ethereum `0x5de8ab...61beef`; ethereum `0xa333c0...fa1f3f` | ⚠️ Unaudited |
| TokenImplementation | token | bsc | unit-34852 | [`0xfdc66a...cdd20f`](./contracts/bsc-56/0xfdc66a08b0d0dc44c17bbd471b88f49f50cdd20f/) | ⚠️ Unaudited |
| TokenImplementation | token | arbitrum | unit-34855 | [`0xabd587...29b074`](./contracts/arbitrum-42161/0xabd587f2607542723b17f14d00d99b987c29b074/) | ⚠️ Unaudited |
| TokenImplementation | token | base | unit-34854 | [`0xfd4330...ff2e3f`](./contracts/base-8453/0xfd4330b0312fdeec6d4225075b82e00493ff2e3f/) | ⚠️ Unaudited |
| TokenImplementation | token | polygon | unit-34853 | [`0x6899fa...06bfa6`](./contracts/polygon-137/0x6899face15c14348e1759371049ab64a3a06bfa6/) | ⚠️ Unaudited |
| AiWhitelister | unknown | ethereum | n/a | [`0xd9e0b1...3b737d`](./contracts/ethereum-1/0xd9e0b1b9156e27a55ea9d53e81380651443b737d/) | ⚠️ Unaudited |
| FarmingRange | unknown | ethereum | n/a | 4 deployments: ethereum [`0x7d85c0...a77523`](./contracts/ethereum-1/0x7d85c0905a6e1ab5837a0b57cd94a419d3a77523/); bsc `0xb891ae...25a0b9`; polygon `0x7db73a...a8e46b`; base `0xa5d378...51c5a3` | ⚠️ Unaudited |
| FarmingRangeL2Arbitrum | unknown | arbitrum | n/a | [`0x53d165...257f69`](./contracts/arbitrum-42161/0x53d165df0414bd02e91747775450934bf2257f69/) | ⚠️ Unaudited |
| SmarDexDegen | unknown | ethereum | n/a | [`0x85bcb7...ec16a5`](./contracts/ethereum-1/0x85bcb7da3cd1782489d5331bc24a4bc806ec16a5/) | ⚠️ Unaudited |
| SmardexPair | unknown | ethereum | n/a | [`0xf3a4b8...420179`](./contracts/ethereum-1/0xf3a4b8efe3e3049f6bc71b47ccb7ce6665420179/) | ⚠️ Unaudited |
| SmardexRouter | adapter | base | n/a | 8 deployments: ethereum `0x926c77...56f92a`; ethereum `0x9a5132...d9ea44`; ethereum `0xc33984...6c0c6f`; bsc `0xab3699...af545a`; polygon `0xedd758...eb7b7c`; base [`0x5c622d...94cbc9`](./contracts/base-8453/0x5c622dcc96b6d96ac6c154f99cf081815094cbc9/); base `0xf03d13...7b3020`; arbitrum `0xda3970...db7b3d` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x804970...eb1a31`](./contracts/ethereum-1/0x80497049b005fd236591c3cd431dbd6e06eb1a31/) | ⚠️ Unaudited |
| UsdnLongFarming | unknown | ethereum | n/a | [`0xf9d360...6bbe27`](./contracts/ethereum-1/0xf9d36078a248af249aa57ae1d5d0c1033d6bbe27/) | ⚠️ Unaudited |
| Usdnr | unknown | ethereum | n/a | [`0x82957d...49269b`](./contracts/ethereum-1/0x82957d600963ae0c529c3819ac7c349c4d49269b/) | ⚠️ Unaudited |
| VaultLib | core_logic | ethereum | unit-34851 | [`0xf67e2d...b1e886`](./contracts/ethereum-1/0xf67e2dc041b8a3c39d066037d29f500757b1e886/) | ⚠️ Unaudited |
| WusdnVault | core_logic | ethereum | n/a | [`0xa6d149...24d967`](./contracts/ethereum-1/0xa6d14921219a7be3660268495275937eb324d967/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [12-18-2024_Smardex_USDN.pdf](https://github.com/GuardianAudits/Audits/blob/main/Smardex/12-18-2024_Smardex_USDN.pdf) | Guardian | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [* USDN’s smart contracts have undergone multiple rigorous security audits conducted by [**Bailsec**]() and [**Guardian**](https://guardianaudits.com/) to ensure their reliability.](https://bailsec.io/) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20USDN%20-%20Final%20Report.pdf) | BailSec | Audit | 2024-05 | stale | Direct | contract_name | 3 | high |
| [{% embed url="<>" %}](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20Ecosystem%20-%20Final%20Report.pdf) | BailSec | Audit | 2025-01 | aging | Direct | contract_name | 1 | high |
| [{% embed url="<>" %}](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20-%20Router%20-%20Final%20Report.pdf) | BailSec | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |
| [Bailsec - SmarDex - P2P Lending - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20SmarDex%20-%20P2P%20Lending%20-%20Final%20Report.pdf) | Bailsec | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x52e7b2...d8736e`](./contracts/ethereum-1/0x52e7b23e1faba6d83376725e2ccad75efbd8736e/) | SmardexToken | token | $19,806,097.52 | Verified native implementation with $19,806,097.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfdc66a...cdd20f`](./contracts/bsc-56/0xfdc66a08b0d0dc44c17bbd471b88f49f50cdd20f/) | TokenImplementation | token | $105,266.40 | Verified native implementation with $105,266.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xabd587...29b074`](./contracts/arbitrum-42161/0xabd587f2607542723b17f14d00d99b987c29b074/) | TokenImplementation | token | $59,051.79 | Verified native implementation with $59,051.79 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfd4330...ff2e3f`](./contracts/base-8453/0xfd4330b0312fdeec6d4225075b82e00493ff2e3f/) | TokenImplementation | token | $51,124.83 | Verified native implementation with $51,124.83 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6899fa...06bfa6`](./contracts/polygon-137/0x6899face15c14348e1759371049ab64a3a06bfa6/) | TokenImplementation | token | $35,127.53 | Verified native implementation with $35,127.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9e0b1...3b737d`](./contracts/ethereum-1/0xd9e0b1b9156e27a55ea9d53e81380651443b737d/) | AiWhitelister | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d85c0...a77523`](./contracts/ethereum-1/0x7d85c0905a6e1ab5837a0b57cd94a419d3a77523/) | FarmingRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x53d165...257f69`](./contracts/arbitrum-42161/0x53d165df0414bd02e91747775450934bf2257f69/) | FarmingRangeL2Arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85bcb7...ec16a5`](./contracts/ethereum-1/0x85bcb7da3cd1782489d5331bc24a4bc806ec16a5/) | SmarDexDegen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3a4b8...420179`](./contracts/ethereum-1/0xf3a4b8efe3e3049f6bc71b47ccb7ce6665420179/) | SmardexPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5c622d...94cbc9`](./contracts/base-8453/0x5c622dcc96b6d96ac6c154f99cf081815094cbc9/) | SmardexRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x804970...eb1a31`](./contracts/ethereum-1/0x80497049b005fd236591c3cd431dbd6e06eb1a31/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9d360...6bbe27`](./contracts/ethereum-1/0xf9d36078a248af249aa57ae1d5d0c1033d6bbe27/) | UsdnLongFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82957d...49269b`](./contracts/ethereum-1/0x82957d600963ae0c529c3819ac7c349c4d49269b/) | Usdnr | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf67e2d...b1e886`](./contracts/ethereum-1/0xf67e2dc041b8a3c39d066037d29f500757b1e886/) | VaultLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6d149...24d967`](./contracts/ethereum-1/0xa6d14921219a7be3660268495275937eb324d967/) | WusdnVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=21

Zero-match audit list:

- [2565] * USDN’s smart contracts have undergone multiple rigorous security audits conducted by [**Bailsec**]() and [**Guardian**](https://guardianaudits.com/) to ensure their reliability.
- [2569] Bailsec - SmarDex - P2P Lending - Final Report.pdf

Fork inheritance lineage and inherited audits are included when available.
