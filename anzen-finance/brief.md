# Agentic Audit Brief: Anzen Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 92.0% over 90 days

## Project Overview

- Project: Anzen Finance (`anzen-finance`)
- Website: [https://anzen.finance/](https://anzen.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:49.014Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, blast, ethereum, manta
- Contract surface: 25 unique implementations (38 raw deployments)
- DeFi Llama TVL: $7,906,246.00
- On-chain TVL (included contracts): $0.00
- TVL by chain: Base $0.00

## Project Description

Anzen Finance is the issuer of USDz, an omnichain real-world-asset-backed digital dollar, with associated staking/rewards and LayerZero-based cross-chain bridging. sUSDz and governance-related mechanics should be treated as associated protocol components only where verified by Anzen documentation or audits.

### Architecture

The Mainnet family serves as the hub with SPCTPool, USDz, and sUSDz, while L2 families (Arbitrum, Base, Blast, Manta) use Vaults and Child tokens to extend stablecoin functionality cross-chain via LayerZero adapters. Governance and staking are unified through AnzenToken and Treasury multisigs.

## Contract Surface Quality

- Indexed contracts: 121; live-surface contracts included: 38 (26 live, 12 unknown).
- Excluded by liveness: 67 inactive, 16 singleton, 0 uninitialized.
- Deployment units: 0/12 live.
- Detected codebases: none
- Unverified dependencies: 5/38.

## Audit Coverage Summary

- Verified implementations audited: 6/22 (27.3%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 25
- Raw deployments: 38
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $0.00
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 1 aging, 3 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $0.00 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 6 | 27.3% | 2024-12 |
| Halborn | Tier 2 | 4 | 18.2% | 2024-05 |
| PeckShield | Tier 2 | 2 | 9.1% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChildUSDz | unknown | base | n/a | [`0x04d5dd...7f1938`](./contracts/base-8453/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/) | ✅ Audited |
| MainnetUSDzMarket | unknown | ethereum | n/a | [`0x81784b...d36266`](./contracts/ethereum-1/0x81784bd147b141c85ab3a36a38c5d4ff56d36266/) | ✅ Audited |
| SUSDz | unknown | ethereum | n/a | [`0x547213...a27fd7`](./contracts/ethereum-1/0x547213367cfb08ab418e7b54d7883b2c2aa27fd7/) | ✅ Audited |
| USDz | unknown | ethereum | n/a | [`0xa469b7...a10067`](./contracts/ethereum-1/0xa469b7ee9ee773642b3e93e842e5d9b5baa10067/) | ✅ Audited |
| Vault | core_logic | manta | n/a | [`0x5a1b8c...6ea129`](./contracts/manta-169/0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129/) | ✅ Audited |
| VotingEscrowAnzenMainchain | operational_periphery | base | n/a | [`0xa90ed3...d11ba2`](./contracts/base-8453/0xa90ed3ec34e78fd26d59f43ed67a7cbff4d11ba2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| USDzVault | core_logic | base | n/a | [`0xa87c98...1f6f4d`](./contracts/base-8453/0xa87c9808c0ebe20a1427b5c769623c77201f6f4d/) | ⚠️ Unaudited |
| AnzenGenericOFTAdapter | adapter | base | n/a | [`0xdfdc54...877c88`](./contracts/base-8453/0xdfdc54f14a4783fe8e8ef7de7159744725877c88/) | ⚠️ Unaudited |
| AnzenLayerZeroAdapter | adapter | manta | n/a | 6 deployments: manta [`0x04d5dd...7f1938`](./contracts/manta-169/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/); manta `0xe31ee1...cbf0cf`; base `0x547213...a27fd7`; arbitrum `0xdd2161...30d58e`; blast [`0x04d5dd...7f1938`](./contracts/blast-81457/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/); blast `0x5a1b8c...6ea129` | ⚠️ Unaudited |
| ChildsUSDzV2 | unknown | arbitrum | n/a | 4 deployments: manta `0x8f08a3...a91758`; base `0xe31ee1...cbf0cf`; arbitrum [`0x1b2c29...5c879d`](./contracts/arbitrum-42161/0x1b2c29e3897b8f9170c98440a483e90e715c879d/); blast `0x73d23f...f2a7e4` | ⚠️ Unaudited |
| ChildUSDzV2 | unknown | arbitrum | n/a | 3 deployments: manta `0x73d23f...f2a7e4`; arbitrum [`0x501860...a4b94f`](./contracts/arbitrum-42161/0x5018609ab477cc502e170a5accf5312b86a4b94f/); blast `0x52056e...46e8c6` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | base | n/a | [`0x64c911...bd848f`](./contracts/base-8453/0x64c911996d3c6ac71f9b455b1e8e7266bcbd848f/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | manta | n/a | 3 deployments: manta [`0x13649b...147210`](./contracts/manta-169/0x13649b6c7e177ffa373eeeeef485952843147210/); manta `0x18b7d4...2ad582`; base `0x18b7d4...2ad582` | ⚠️ Unaudited |
| MerkleRewardDistributor | operational_periphery | base | n/a | 2 deployments: base [`0xe1068b...10ca21`](./contracts/base-8453/0xe1068bc0a5197540108eade33ed4cc394510ca21/); base `0xea4b3e...68573c` | ⚠️ Unaudited |
| PCTPool | core_logic | ethereum | n/a | [`0xe16f2e...4e5c15`](./contracts/ethereum-1/0xe16f2ec94e8a0819eb93022c45e05d582f4e5c15/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | ethereum | n/a | [`0x663de5...452170`](./contracts/ethereum-1/0x663de54432a1d74912c99e7929d2d58a75452170/) | ⚠️ Unaudited |
| SafeProxy | unknown | blast | n/a | [`0x08fccc...32b354`](./contracts/blast-81457/0x08fccc6213cb3843f8d270c4eefc7a09eb32b354/) | ⚠️ Unaudited |
| sUSDzOFTAdapter | adapter | ethereum | n/a | [`0x0c0dff...daf1b7`](./contracts/ethereum-1/0x0c0dfff29e449b0a84f78cc7cdbbe0e31fdaf1b7/) | ⚠️ Unaudited |
| TokenManager | governance | ethereum | unit-18771 | [`0xf6f0a0...e40a5c`](./contracts/ethereum-1/0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c/) | ⚠️ Unaudited |
| TokenManager | governance | base | unit-18780 | [`0xf6f0a0...e40a5c`](./contracts/base-8453/0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c/) | ⚠️ Unaudited |
| UsdzMarket | unknown | base | n/a | [`0x8e7884...efeea5`](./contracts/base-8453/0x8e788484cab6359e65fece14a4d6e510e2efeea5/) | ⚠️ Unaudited |
| wPCT | unknown | ethereum | n/a | [`0x414ac1...f3b750`](./contracts/ethereum-1/0x414ac1853329b3704df0caf7749cd296c7f3b750/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenManager | governance | blast | unit-18781 | `0xf6f0a0...e40a5c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x08fccc...32b354` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x20b15e...71eb3b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Anzen - Halborn Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20Halborn%20Audit%20Report.pdf) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | 4 | high |
| [Anzen - PeckShield Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20PeckShield%20Audit%20Report.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | 2 | high |
| [Anzen - Zellic Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-05 | stale | Direct | contract_name | 4 | high |
| [{% embed url="<>" %}](https://github.com/Zellic/publications/blob/master/Anzen%20and%20protocol-v2%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [<>\](https://drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xa87c98...1f6f4d`](./contracts/base-8453/0xa87c9808c0ebe20a1427b5c769623c77201f6f4d/) | USDzVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdfdc54...877c88`](./contracts/base-8453/0xdfdc54f14a4783fe8e8ef7de7159744725877c88/) | AnzenGenericOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x04d5dd...7f1938`](./contracts/manta-169/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/) | AnzenLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b2c29...5c879d`](./contracts/arbitrum-42161/0x1b2c29e3897b8f9170c98440a483e90e715c879d/) | ChildsUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x501860...a4b94f`](./contracts/arbitrum-42161/0x5018609ab477cc502e170a5accf5312b86a4b94f/) | ChildUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe1068b...10ca21`](./contracts/base-8453/0xe1068bc0a5197540108eade33ed4cc394510ca21/) | MerkleRewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe16f2e...4e5c15`](./contracts/ethereum-1/0xe16f2ec94e8a0819eb93022c45e05d582f4e5c15/) | PCTPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x663de5...452170`](./contracts/ethereum-1/0x663de54432a1d74912c99e7929d2d58a75452170/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c0dff...daf1b7`](./contracts/ethereum-1/0x0c0dfff29e449b0a84f78cc7cdbbe0e31fdaf1b7/) | sUSDzOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6f0a0...e40a5c`](./contracts/ethereum-1/0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c/) | TokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8e7884...efeea5`](./contracts/base-8453/0x8e788484cab6359e65fece14a4d6e510e2efeea5/) | UsdzMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x414ac1...f3b750`](./contracts/ethereum-1/0x414ac1853329b3704df0caf7749cd296c7f3b750/) | wPCT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=35

Zero-match audit list:

- [2166] <>\

Fork inheritance lineage and inherited audits are included when available.
