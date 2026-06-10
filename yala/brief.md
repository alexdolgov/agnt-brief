# Agentic Audit Brief: Yala

## Project Overview

- Project: Yala (`yala`)
- Website: [https://www.yala.org](https://www.yala.org)
- Lifecycle: active (Tier 1, dead)
- Generated: 2026-06-10T20:59:19.400Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 30 unique implementations (30 raw deployments)
- DeFi Llama TVL: $2,196,263.11
- On-chain TVL (included contracts): $4,617,109.60
- TVL by chain: Ethereum $4,617,109.60

## Project Description

Yala should be described with a caveat: the legacy/DefiLlama DeFi protocol was a CDP/stablecoin system that allowed users to lock collateral and mint a DebtToken, with BridgeToken-related cross-chain components. However, the current public homepage presents Yala as an AI fair-value/prediction product, so the legacy CDP/stablecoin system should not be stated as the current project purpose without distinguishing it from the current/pivoted product.

### Architecture

The Yala family consists of a core DebtToken for CDP operations and a supporting BridgeToken for cross-chain transfers, both deployed by the same deployer cluster.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 30
- Raw deployments: 30
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,617,109.60
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DebtToken | token | ethereum | [`0xe86808...9463f7`](./contracts/ethereum-1/0xe868084cf08f3c3db11f4b73a95473762d9463f7/) | ⚠️ Unaudited |
| AssetWrapper | unknown | ethereum | [`0xd5d027...fc21b9`](./contracts/ethereum-1/0xd5d027108264000f3670a623dceb8d14ecfc21b9/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | ethereum | [`0x4fb4c4...d923a0`](./contracts/ethereum-1/0x4fb4c4ade2a7ffe765d8193610779ff01dd923a0/) | ⚠️ Unaudited |
| BridgeToken | operational_periphery | ethereum | [`0x27a70b...0ba589`](./contracts/ethereum-1/0x27a70b9f8073efe5a02998d5cc64acdc9e0ba589/) | ⚠️ Unaudited |
| Factory | registry | ethereum | [`0xca61a7...02e66c`](./contracts/ethereum-1/0xca61a7be20d361b21c0ad7fa61e241c56202e66c/) | ⚠️ Unaudited |
| GasPool | core_logic | ethereum | [`0x306698...268784`](./contracts/ethereum-1/0x306698f58c0670ea2be3d325e61582ae61268784/) | ⚠️ Unaudited |
| PriceFeed | operational_periphery | ethereum | [`0xf6fe54...4f7b6e`](./contracts/ethereum-1/0xf6fe5413361d8fa7df08c50a9211167ecd4f7b6e/) | ⚠️ Unaudited |
| PSM | unknown | ethereum | [`0x4171e2...6e6a12`](./contracts/ethereum-1/0x4171e25e35fa13e98fb970d919b055c1866e6a12/) | ⚠️ Unaudited |
| StabilityPool | core_logic | ethereum | [`0x959380...b1e7fe`](./contracts/ethereum-1/0x9593807414124328e9033756309a985799b1e7fe/) | ⚠️ Unaudited |
| TroveManager | governance | ethereum | [`0xdcd922...6622f2`](./contracts/ethereum-1/0xdcd922cba657b7c07fd114bf6734069bd66622f2/) | ⚠️ Unaudited |
| YalaCore | unknown | ethereum | [`0xd5eeaf...c20c8b`](./contracts/ethereum-1/0xd5eeaf2eeb9e1c7b88acfad3f41401925fc20c8b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0c229b...995829` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d2ebf...e95978` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0eedc0...48fb2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x14b515...8206ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ee7e1...d7cdd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x356123...511950` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3bce66...532431` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3cae6f...54d0b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x546007...8a4288` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x599d9c...807e8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7066e3...a67748` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7aa1d5...8de749` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x80010d...326e18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x86df4c...c4fc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9767f4...e5927d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa96a92...9a9a4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb977a8...9e2d33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbf4c0b...64239f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef2352...7867d6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Yala - Zenith Audit Report.pdf](https://github.com/yalaorg/yala-protocol-contracts/blob/main/audits/Yala%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe86808...9463f7`](./contracts/ethereum-1/0xe868084cf08f3c3db11f4b73a95473762d9463f7/) | DebtToken | token | $4,617,109.60 | Verified native implementation with $4,617,109.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5d027...fc21b9`](./contracts/ethereum-1/0xd5d027108264000f3670a623dceb8d14ecfc21b9/) | AssetWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fb4c4...d923a0`](./contracts/ethereum-1/0x4fb4c4ade2a7ffe765d8193610779ff01dd923a0/) | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27a70b...0ba589`](./contracts/ethereum-1/0x27a70b9f8073efe5a02998d5cc64acdc9e0ba589/) | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca61a7...02e66c`](./contracts/ethereum-1/0xca61a7be20d361b21c0ad7fa61e241c56202e66c/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x306698...268784`](./contracts/ethereum-1/0x306698f58c0670ea2be3d325e61582ae61268784/) | GasPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4171e2...6e6a12`](./contracts/ethereum-1/0x4171e25e35fa13e98fb970d919b055c1866e6a12/) | PSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x959380...b1e7fe`](./contracts/ethereum-1/0x9593807414124328e9033756309a985799b1e7fe/) | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdcd922...6622f2`](./contracts/ethereum-1/0xdcd922cba657b7c07fd114bf6734069bd66622f2/) | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5eeaf...c20c8b`](./contracts/ethereum-1/0xd5eeaf2eeb9e1c7b88acfad3f41401925fc20c8b/) | YalaCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [9159] Yala - Zenith Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
