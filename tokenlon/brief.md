# Agentic Audit Brief: Tokenlon

## Project Overview

- Project: Tokenlon (`tokenlon`)
- Website: [https://tokenlon.im](https://tokenlon.im)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.529Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: arbitrum, ethereum
- Contract surface: 12 unique implementations (16 raw deployments)
- DeFi Llama TVL: $29,972,190.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DEX Aggregator. Structurally: 12 project-authored contract(s) across 2 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (multisiglibeip712). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/9 (55.6%)
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/12
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 16
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 41.7% | 2022-07 |
| Decurity | Tier 2 | 1 | 8.3% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Lon | unknown | ethereum | n/a | [`0x0000000000095413afc295d19edeb1ad7b71c952`](./contracts/ethereum-1/0x0000000000095413afc295d19edeb1ad7b71c952/) | ✅ Audited |
| PMM | unknown | ethereum | n/a | [`0x8d90113a1e286a5ab3e496fbd1853f265e5913c6`](./contracts/ethereum-1/0x8d90113a1e286a5ab3e496fbd1853f265e5913c6/) | ✅ Audited |
| RewardDistributor | operational_periphery | ethereum | n/a | [`0xbf1c2c17cc77e7dec3466b96f46f93c09f02ab07`](./contracts/ethereum-1/0xbf1c2c17cc77e7dec3466b96f46f93c09f02ab07/) | ✅ Audited |
| StakingRewards | unknown | ethereum | n/a | 4 deployments: ethereum [`0x74379cec6a2c9fde0537e9d9346222a724a278e4`](./contracts/ethereum-1/0x74379cec6a2c9fde0537e9d9346222a724a278e4/); ethereum `0x929cf614c917944dd278bc2134714eaa4121bc6a`; ethereum `0xb6bc1a713e4b11fa31480d31c825dcfd7e8fabfd`; ethereum `0xc348314f74b043ff79396e14116b6f19122d69f4` | ✅ Audited |
| UserProxy | unknown | ethereum | n/a | [`0x03f34be1bf910116595db1b11e9d1b2ca5d59659`](./contracts/ethereum-1/0x03f34be1bf910116595db1b11e9d1b2ca5d59659/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AMMWrapperWithPath | unknown | ethereum | n/a | [`0x4a14347083b80e5216ca31350a2d21702ac3650d`](./contracts/ethereum-1/0x4a14347083b80e5216ca31350a2d21702ac3650d/) | ⚠️ Unaudited |
| DelayedMultiSig | governance | ethereum | n/a | [`0x9afc226dc049b99342ad6774eeb08bfa2f874465`](./contracts/ethereum-1/0x9afc226dc049b99342ad6774eeb08bfa2f874465/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x3557bd3d422300198719710cc3f00194e1c20a46`](./contracts/ethereum-1/0x3557bd3d422300198719710cc3f00194e1c20a46/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | [`0xbf03bcb67333610b7f90df58c7e435691b0af355`](./contracts/arbitrum-42161/0xbf03bcb67333610b7f90df58c7e435691b0af355/) | ⚠️ Unaudited |
| MerkleRedeem | operational_periphery | ethereum | n/a | [`0x0000000006a0403952389b70d8ee4e45479023db`](./contracts/ethereum-1/0x0000000006a0403952389b70d8ee4e45479023db/) | ⚠️ Unaudited |
| MiningTreasury | operational_periphery | ethereum | n/a | [`0x292a6921efc261070a0d5c96911c102cbf1045e4`](./contracts/ethereum-1/0x292a6921efc261070a0d5c96911c102cbf1045e4/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 2 deployments: ethereum [`0x55d31f68975e446a40a2d02ffa4b0e1bfb233c2f`](./contracts/ethereum-1/0x55d31f68975e446a40a2d02ffa4b0e1bfb233c2f/); ethereum `0x7924a818013f39cf800f5589ff1f1f0def54f31f` | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-TokenlonV5-v1.0.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-TokenlonV5-v1.0.pdf) | PeckShield | Audit | 2020-12 | stale | Direct | contract_name | 4 | n/a |
| [PeckShield-Audit-TokenlonV5-v1.0rc.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-TokenlonV5-v1.0rc.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 5 | n/a |
| [Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/v5/audits/Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-01 | stale | Direct | contract_name | 1 | n/a |
| [Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/v5/audits/Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/v5/audits/Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4a14347083b80e5216ca31350a2d21702ac3650d`](./contracts/ethereum-1/0x4a14347083b80e5216ca31350a2d21702ac3650d/) | AMMWrapperWithPath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9afc226dc049b99342ad6774eeb08bfa2f874465`](./contracts/ethereum-1/0x9afc226dc049b99342ad6774eeb08bfa2f874465/) | DelayedMultiSig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0000000006a0403952389b70d8ee4e45479023db`](./contracts/ethereum-1/0x0000000006a0403952389b70d8ee4e45479023db/) | MerkleRedeem | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x292a6921efc261070a0d5c96911c102cbf1045e4`](./contracts/ethereum-1/0x292a6921efc261070a0d5c96911c102cbf1045e4/) | MiningTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=13

Zero-match audit list:

- [5899] Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf
- [15517] Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf
- [15518] Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf

Fork inheritance lineage and inherited audits are included when available.
