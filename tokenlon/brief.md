# Agentic Audit Brief: Tokenlon

⚠️ Lifecycle status: DECLINING - TVL dropped 52.2% over 90 days

## Project Overview

- Project: Tokenlon (`tokenlon`)
- Website: [https://tokenlon.im](https://tokenlon.im)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T18:22:13.023Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-748f
- Chains: arbitrum, ethereum
- Contract surface: 12 unique implementations (16 raw deployments)
- DeFi Llama TVL: $32,018,224.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Tokenlon is a decentralized exchange and payment settlement protocol for trustless token-to-token swaps. It provides quote-based routing and execution, including RFQ/market-maker liquidity and integrations with external AMM or swap sources to seek best-price trades. It should not be described as a Tokenlon-native AMM family based on upstream UniswapV2Pair contracts.

### Architecture

The Tokenlon AMM family relies on the LON token as the core asset, with LONStaking and xLON managing staking and governance power. Multiple StakingRewards contracts distribute incentives to liquidity providers, while UniswapV2Pair contracts facilitate token swaps. Governance is managed via a GnosisSafeProxy, and a TransparentUpgradeableProxy provides permanent storage for protocol parameters.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 30 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 3/7 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 3/47.

## Audit Coverage Summary

- Verified implementations audited: 5/12 (41.7%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 16
- Audits discovered: 9
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Staleness: 0 fresh, 0 aging, 9 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 41.7% | 2022-07 |
| Decurity | Tier 2 | 1 | 8.3% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Lon | unknown | ethereum | n/a | [`0x000000...71c952`](./contracts/ethereum-1/0x0000000000095413afc295d19edeb1ad7b71c952/) | ✅ Audited |
| PMM | unknown | ethereum | n/a | [`0x8d9011...5913c6`](./contracts/ethereum-1/0x8d90113a1e286a5ab3e496fbd1853f265e5913c6/) | ✅ Audited |
| RewardDistributor | operational_periphery | ethereum | n/a | [`0xbf1c2c...02ab07`](./contracts/ethereum-1/0xbf1c2c17cc77e7dec3466b96f46f93c09f02ab07/) | ✅ Audited |
| StakingRewards | unknown | ethereum | n/a | 4 deployments: ethereum [`0x74379c...a278e4`](./contracts/ethereum-1/0x74379cec6a2c9fde0537e9d9346222a724a278e4/); ethereum `0x929cf6...21bc6a`; ethereum `0xb6bc1a...8fabfd`; ethereum `0xc34831...2d69f4` | ✅ Audited |
| UserProxy | unknown | ethereum | unit-38640 | [`0x03f34b...d59659`](./contracts/ethereum-1/0x03f34be1bf910116595db1b11e9d1b2ca5d59659/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AMMWrapperWithPath | unknown | ethereum | n/a | [`0x4a1434...c3650d`](./contracts/ethereum-1/0x4a14347083b80e5216ca31350a2d21702ac3650d/) | ⚠️ Unaudited |
| DelayedMultiSig | governance | ethereum | n/a | [`0x9afc22...874465`](./contracts/ethereum-1/0x9afc226dc049b99342ad6774eeb08bfa2f874465/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-38641 | [`0x3557bd...c20a46`](./contracts/ethereum-1/0x3557bd3d422300198719710cc3f00194e1c20a46/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-38646 | [`0xbf03bc...0af355`](./contracts/arbitrum-42161/0xbf03bcb67333610b7f90df58c7e435691b0af355/) | ⚠️ Unaudited |
| MerkleRedeem | operational_periphery | ethereum | n/a | [`0x000000...9023db`](./contracts/ethereum-1/0x0000000006a0403952389b70d8ee4e45479023db/) | ⚠️ Unaudited |
| MiningTreasury | operational_periphery | ethereum | n/a | [`0x292a69...1045e4`](./contracts/ethereum-1/0x292a6921efc261070a0d5c96911c102cbf1045e4/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 2 deployments: ethereum [`0x55d31f...233c2f`](./contracts/ethereum-1/0x55d31f68975e446a40a2d02ffa4b0e1bfb233c2f/); ethereum `0x7924a8...54f31f` | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-TokenlonV5-v1.0.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-TokenlonV5-v1.0.pdf) | PeckShield | Audit | 2020-12 | stale | Direct | contract_name | 7 | high |
| [PeckShield-Audit-TokenlonV5-v1.0rc.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-TokenlonV5-v1.0rc.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 8 | high |
| [Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-07 | stale | Direct | contract_name | 0 | n/a |
| [Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/v5/audits/Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-01 | stale | Direct | contract_name | 1 | high |
| [Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/v5/audits/Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/v5/audits/Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4a1434...c3650d`](./contracts/ethereum-1/0x4a14347083b80e5216ca31350a2d21702ac3650d/) | AMMWrapperWithPath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9afc22...874465`](./contracts/ethereum-1/0x9afc226dc049b99342ad6774eeb08bfa2f874465/) | DelayedMultiSig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000...9023db`](./contracts/ethereum-1/0x0000000006a0403952389b70d8ee4e45479023db/) | MerkleRedeem | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x292a69...1045e4`](./contracts/ethereum-1/0x292a6921efc261070a0d5c96911c102cbf1045e4/) | MiningTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=145

Zero-match audit list:

- [5899] Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf
- [15517] Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf
- [15518] Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf

Fork inheritance lineage and inherited audits are included when available.
