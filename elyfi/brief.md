# Agentic Audit Brief: ELYFI

⚠️ Lifecycle status: DEAD - TVL dropped 2.5% over 90 days

## Project Overview

- Project: ELYFI (`elyfi`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-05-24T11:49:31.994Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum, klaytn
- Contract surface: 30 unique implementations (41 raw deployments)
- DeFi Llama TVL: $2,385,807.21
- On-chain TVL (included contracts): $434,809.87
- TVL by chain: Ethereum $434,809.87

## Project Description

ELYFI is a decentralized protocol that bridges real-world assets (RWA) into DeFi by tokenizing them into on-chain assets. It enables users to deposit tokenized RWAs as collateral to borrow stablecoins or earn yield through lending pools.

### Architecture

The ELYFI family shares the MoneyPool proxy, which uses the Validation implementation for core logic. The ElyfiToken likely serves as a governance or incentive token across the LToken lending pools, while the unnamed contracts provide infrastructure such as access control or pool management.

## Audit Coverage Summary

- Verified implementations audited: 1/17 (5.9%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 30
- Raw deployments: 41
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $175.94
- Latest audit: 2022-04 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $175.94 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Haechi Audit | Tier 2 | 1 | 5.9% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ElyfiToken | token | ethereum | [`0x4da34f...1116f4`](./contracts/ethereum-1/0x4da34f8264cb33a5c9f17081b9ef5ff6091116f4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| IncentivePool | core_logic | ethereum | 3 deployments: ethereum [`0xd1e55b...ba7628`](./contracts/ethereum-1/0xd1e55bff66da2dc0290269b8e4b843531eba7628/); ethereum `0xda2376...68e6d3`; ethereum `0xfb9e32...e08e90` | ⚠️ Unaudited |
| StakingPoolV2 | core_logic | ethereum | 2 deployments: ethereum [`0x1d1ffd...510b21`](./contracts/ethereum-1/0x1d1ffdf717a9a0d53523c56dbe58614ca4510b21/); ethereum `0xcd668b...8f2750` | ⚠️ Unaudited |
| AssetBond | unknown | ethereum | [`0xa13984...00ca9e`](./contracts/ethereum-1/0xa139841e0d43bab85ddd00469eed93a5a000ca9e/) | ⚠️ Unaudited |
| Connector | unknown | ethereum | [`0x5c2ce4...0ae607`](./contracts/ethereum-1/0x5c2ce44ff70ef0bd898e2bf37e7da7605d0ae607/) | ⚠️ Unaudited |
| DataPipeline | unknown | ethereum | [`0x128af7...b4d817`](./contracts/ethereum-1/0x128af7e290eccde0050f33a1b5a4bc8b2bb4d817/) | ⚠️ Unaudited |
| DToken | token | ethereum | 3 deployments: ethereum [`0x62324c...c83d1b`](./contracts/ethereum-1/0x62324ce2e14bb94512ec26c9ff0be2cad8c83d1b/); ethereum `0xf421be...342a5e`; ethereum `0xf91714...ae29b6` | ⚠️ Unaudited |
| ElyfiGovernanceCore | unknown | ethereum | [`0x0c5462...3866c3`](./contracts/ethereum-1/0x0c54629266d7fa40b4bfaf1640ebc2cd093866c3/) | ⚠️ Unaudited |
| Executor | unknown | ethereum | 2 deployments: ethereum [`0x1e08d4...8df3d4`](./contracts/ethereum-1/0x1e08d452eefc6489448a33fb1e1b35b04f8df3d4/); ethereum `0xaac98c...c1757a` | ⚠️ Unaudited |
| Index | unknown | ethereum | [`0x9eb704...87aa79`](./contracts/ethereum-1/0x9eb704b380e6cae794af479796866a264f87aa79/) | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | ethereum | 3 deployments: ethereum [`0x3047df...a4d0ca`](./contracts/ethereum-1/0x3047dfb0dc3f21670bbb61311e9fa18037a4d0ca/); ethereum `0x579564...045003`; ethereum `0xd037fe...306b62` | ⚠️ Unaudited |
| LToken | token | ethereum | 3 deployments: ethereum [`0x3fea4c...034d71`](./contracts/ethereum-1/0x3fea4cc5a03e372ac9cded96bd07795ac9034d71/); ethereum `0x527c90...f9f173`; ethereum `0xe0bda8...3ee79c` | ⚠️ Unaudited |
| Rate | unknown | ethereum | [`0x625b4a...bed6bf`](./contracts/ethereum-1/0x625b4afcf08a5f4f85fc45e56387376ff4bed6bf/) | ⚠️ Unaudited |
| RewardAsset | unknown | ethereum | [`0xabdff1...775527`](./contracts/ethereum-1/0xabdff187eb8d29469e90624f6386567fb3775527/) | ⚠️ Unaudited |
| StakingAsset | unknown | ethereum | [`0x5d2074...d55983`](./contracts/ethereum-1/0x5d2074f9454032076d7aeed0ef44820c12d55983/) | ⚠️ Unaudited |
| TimeConverter | unknown | ethereum | [`0x01d07c...d137e4`](./contracts/ethereum-1/0x01d07c9fd2e3fbc493e0a2de588ce1c1ead137e4/) | ⚠️ Unaudited |
| Validation | unknown | ethereum | 2 deployments: ethereum [`0x08f7e6...49f9cc`](./contracts/ethereum-1/0x08f7e687a90bba01e8613827fd0d67e41949f9cc/); ethereum `0xa93008...da9e8c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x2e7f7f...43fee6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3fed75...46de06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x68f69a...d92616` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6a93e2...d302eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x94aa0e...402f71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb41bcd...0dacb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc3e45e...96f494` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6701e...141aaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd804e1...c972d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd86f51...ae9b23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe58158...7d79b3` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x60961c...760a3b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x7f97f9...7b4dbd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/elyfi) | CertiK | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [[HAECHI AUDIT] ElyfiToken smart contract audit report.pdf](https://github.com/elysia-dev/elyfi-token/blob/main/audit/%5BHAECHI%20AUDIT%5D%20ElyfiToken%20smart%20contract%20audit%20report.pdf) | Haechi Audit | Audit | 2021-07 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd1e55b...ba7628`](./contracts/ethereum-1/0xd1e55bff66da2dc0290269b8e4b843531eba7628/) | IncentivePool | core_logic | $97.27 | Verified native implementation with $97.27 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d1ffd...510b21`](./contracts/ethereum-1/0x1d1ffdf717a9a0d53523c56dbe58614ca4510b21/) | StakingPoolV2 | core_logic | $78.67 | Verified native implementation with $78.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa13984...00ca9e`](./contracts/ethereum-1/0xa139841e0d43bab85ddd00469eed93a5a000ca9e/) | AssetBond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c2ce4...0ae607`](./contracts/ethereum-1/0x5c2ce44ff70ef0bd898e2bf37e7da7605d0ae607/) | Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x128af7...b4d817`](./contracts/ethereum-1/0x128af7e290eccde0050f33a1b5a4bc8b2bb4d817/) | DataPipeline | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62324c...c83d1b`](./contracts/ethereum-1/0x62324ce2e14bb94512ec26c9ff0be2cad8c83d1b/) | DToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c5462...3866c3`](./contracts/ethereum-1/0x0c54629266d7fa40b4bfaf1640ebc2cd093866c3/) | ElyfiGovernanceCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e08d4...8df3d4`](./contracts/ethereum-1/0x1e08d452eefc6489448a33fb1e1b35b04f8df3d4/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9eb704...87aa79`](./contracts/ethereum-1/0x9eb704b380e6cae794af479796866a264f87aa79/) | Index | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3047df...a4d0ca`](./contracts/ethereum-1/0x3047dfb0dc3f21670bbb61311e9fa18037a4d0ca/) | InterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fea4c...034d71`](./contracts/ethereum-1/0x3fea4cc5a03e372ac9cded96bd07795ac9034d71/) | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x625b4a...bed6bf`](./contracts/ethereum-1/0x625b4afcf08a5f4f85fc45e56387376ff4bed6bf/) | Rate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabdff1...775527`](./contracts/ethereum-1/0xabdff187eb8d29469e90624f6386567fb3775527/) | RewardAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d2074...d55983`](./contracts/ethereum-1/0x5d2074f9454032076d7aeed0ef44820c12d55983/) | StakingAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d07c...d137e4`](./contracts/ethereum-1/0x01d07c9fd2e3fbc493e0a2de588ce1c1ead137e4/) | TimeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08f7e6...49f9cc`](./contracts/ethereum-1/0x08f7e687a90bba01e8613827fd0d67e41949f9cc/) | Validation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [2834] DL audit link

Fork inheritance lineage and inherited audits are included when available.
