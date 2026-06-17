# Agentic Audit Brief: Kinza Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 12.8% over 90 days

## Project Overview

- Project: Kinza Finance (`kinza-finance`)
- Website: [https://app.kinza.finance](https://app.kinza.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:48.744Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum, mantle, opbnb
- Contract surface: 10 unique implementations (14 raw deployments)
- DeFi Llama TVL: $6,761,332.79
- On-chain TVL (included contracts): $0.01
- TVL by chain: Bsc $0.01

## Project Description

Kinza Finance is a multi-chain decentralized lending and money-market protocol deployed across Ethereum, BNB Chain/Binance, Mantle, and opBNB. It enables users to supply and borrow digital assets through pool-based markets with variable interest rates, liquidation mechanisms, oracle integrations, and governance controls.

### Architecture

The protocol is organized around a single lending family with two deployments (likely mainnet and testnet) sharing identical contract patterns. Core lending logic resides in Pool and PoolConfigurator, managed via PoolAddressesProvider, while governance and access control are handled by GnosisSafe multisigs and ACLManager.

## Contract Surface Quality

- Indexed contracts: 252; live-surface contracts included: 14 (11 live, 3 unknown).
- Excluded by liveness: 230 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 3/10 live.
- Detected codebases: aave-v2
- Unverified dependencies: 4/55.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 10
- Raw deployments: 14
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $0.01
- Latest audit: 2023-08 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $0.01 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Pool | core_logic | bsc | unit-29350 | [`0xcb0620...963c8c`](./contracts/bsc-56/0xcb0620b181140e57d1c0d8b724cde623ca963c8c/) | ⚠️ Unaudited |
| AaveOracle | operational_periphery | ethereum | n/a | [`0x39abed...754a39`](./contracts/ethereum-1/0x39abeda13579fbb4effb31b5f38bdc91ae754a39/) | ⚠️ Unaudited |
| ACLManager | governance | ethereum | n/a | [`0x9074fc...095fdb`](./contracts/ethereum-1/0x9074fca9c7a77c7078b5bbfec33f74191d095fdb/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-29345 (2 proxies) | 2 deployments: ethereum [`0x8c99b0...5baa58`](./contracts/ethereum-1/0x8c99b0141849d8097309c8ea78f86b7bb65baa58/); ethereum `0xa3ec77...edfd16` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | mantle | n/a | 3 deployments: opbnb `0x550330...9b1ed3`; mantle [`0x3cc8dc...561d68`](./contracts/mantle-5000/0x3cc8dc73aee77f787f3322e3ce61e14e58561d68/); mantle `0xb00083...12ee28` | ⚠️ Unaudited |
| kBTC | unknown | bsc | unit-29348 | [`0x9356f6...b48383`](./contracts/bsc-56/0x9356f6d95b8e109f4b7ce3e49d672967d3b48383/) | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | ethereum | n/a | 2 deployments: ethereum [`0xa4cd4b...781087`](./contracts/ethereum-1/0xa4cd4b5004ab42758bcb8893a10c5b3532781087/); bsc `0xcc650b...526739` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | opbnb | n/a | `0x7ad8c5...1006b3` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xec9582...9b9851` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa4f75b...33bd4b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [{% embed url="<>" %}](https://omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513) | Omniscia | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [Salus-Kinza-1.0.pdf](https://github.com/Kinza-Finance/KZA-1.0/blob/main/audits/Salus-Kinza-1.0.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xcb0620...963c8c`](./contracts/bsc-56/0xcb0620b181140e57d1c0d8b724cde623ca963c8c/) | Pool | core_logic | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9074fc...095fdb`](./contracts/ethereum-1/0x9074fca9c7a77c7078b5bbfec33f74191d095fdb/) | ACLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4cd4b...781087`](./contracts/ethereum-1/0xa4cd4b5004ab42758bcb8893a10c5b3532781087/) | WrappedTokenGatewayV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=1

Zero-match audit list:

- [2142] {% embed url="<>" %}
- [10238] Salus-Kinza-1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
