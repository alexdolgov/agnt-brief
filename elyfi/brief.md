# Agentic Audit Brief: ELYFI

⚠️ Lifecycle status: DEAD - TVL dropped 2.5% over 90 days

## Project Overview

- Project: ELYFI (`elyfi`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-17T07:00:46.718Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum, klaytn
- Contract surface: 11 unique implementations (12 raw deployments)
- DeFi Llama TVL: $2,146,453.66
- On-chain TVL (included contracts): $535,262.17
- TVL by chain: Ethereum $535,262.17

## Project Description

ELYFI is a decentralized protocol that bridges real-world assets (RWA) into DeFi by tokenizing them into on-chain assets. It enables users to deposit tokenized RWAs as collateral to borrow stablecoins or earn yield through lending pools.

### Architecture

The ELYFI family shares the MoneyPool proxy, which uses the Validation implementation for core logic. The ElyfiToken likely serves as a governance or incentive token across the LToken lending pools, while the unnamed contracts provide infrastructure such as access control or pool management.

## Contract Surface Quality

- Indexed contracts: 55; live-surface contracts included: 12 (9 live, 3 unknown).
- Excluded by liveness: 41 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Unverified dependencies: 2/11.

## Audit Coverage Summary

- Verified implementations audited: 1/9 (11.1%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 11
- Raw deployments: 12
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $100,628.24
- Latest audit: 2022-04 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $100,628.24 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Haechi Audit | Tier 2 | 1 | 11.1% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ElyfiToken | token | ethereum | n/a | [`0x4da34f...1116f4`](./contracts/ethereum-1/0x4da34f8264cb33a5c9f17081b9ef5ff6091116f4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingPoolV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x24a7fb...a8803f`](./contracts/ethereum-1/0x24a7fb55e4ac2cb40944bc560423b496dfa8803f/); ethereum `0x3f0c3e...8b2c9d` | ⚠️ Unaudited |
| AssetReserve | unknown | ethereum | n/a | [`0x221cb1...6913bc`](./contracts/ethereum-1/0x221cb17e95aa6594cd57e2c4b2f875d4236913bc/) | ⚠️ Unaudited |
| MoneyPool | core_logic | bsc | n/a | [`0x0bdfef...93da24`](./contracts/bsc-56/0x0bdfef5f8b75741d33a22d85022244cbe793da24/) | ⚠️ Unaudited |
| Redeemer | unknown | ethereum | n/a | [`0x39f704...fce0d1`](./contracts/ethereum-1/0x39f70473ce443529c93589f116ddbb0f7ffce0d1/) | ⚠️ Unaudited |
| Router | adapter | ethereum | n/a | [`0x3d4926...da3f0e`](./contracts/ethereum-1/0x3d4926c0d5811b1d31dab8358e0317aa7fda3f0e/) | ⚠️ Unaudited |
| sELUSD | unknown | ethereum | n/a | [`0x2cd7dc...6e255a`](./contracts/ethereum-1/0x2cd7dc2e7446e3db781900218b90d7bb856e255a/) | ⚠️ Unaudited |
| Silo | unknown | ethereum | n/a | [`0x1e992f...abc775`](./contracts/ethereum-1/0x1e992f7b99dc6db863f3e32fcfe1c33c2babc775/) | ⚠️ Unaudited |
| StableMinter | unknown | ethereum | n/a | [`0x9bf7d3...7f4606`](./contracts/ethereum-1/0x9bf7d3e803c596e0fb6c5064711fe89c297f4606/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | klaytn | n/a | `0x60961c...760a3b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x7f97f9...7b4dbd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/elyfi) | CertiK | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [[HAECHI AUDIT] ElyfiToken smart contract audit report.pdf](https://github.com/elysia-dev/elyfi-token/blob/main/audit/%5BHAECHI%20AUDIT%5D%20ElyfiToken%20smart%20contract%20audit%20report.pdf) | Haechi Audit | Audit | 2021-07 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x24a7fb...a8803f`](./contracts/ethereum-1/0x24a7fb55e4ac2cb40944bc560423b496dfa8803f/) | StakingPoolV2 | core_logic | $100,628.24 | Verified native implementation with $100,628.24 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x221cb1...6913bc`](./contracts/ethereum-1/0x221cb17e95aa6594cd57e2c4b2f875d4236913bc/) | AssetReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0bdfef...93da24`](./contracts/bsc-56/0x0bdfef5f8b75741d33a22d85022244cbe793da24/) | MoneyPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39f704...fce0d1`](./contracts/ethereum-1/0x39f70473ce443529c93589f116ddbb0f7ffce0d1/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d4926...da3f0e`](./contracts/ethereum-1/0x3d4926c0d5811b1d31dab8358e0317aa7fda3f0e/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cd7dc...6e255a`](./contracts/ethereum-1/0x2cd7dc2e7446e3db781900218b90d7bb856e255a/) | sELUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e992f...abc775`](./contracts/ethereum-1/0x1e992f7b99dc6db863f3e32fcfe1c33c2babc775/) | Silo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bf7d3...7f4606`](./contracts/ethereum-1/0x9bf7d3e803c596e0fb6c5064711fe89c297f4606/) | StableMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

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
