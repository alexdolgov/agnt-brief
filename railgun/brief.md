# Agentic Audit Brief: Railgun

## Project Overview

- Project: Railgun (`railgun`)
- Website: [https://railgun.org](https://railgun.org)
- Lifecycle: active (Tier 0, 40.2% below peak)
- Generated: 2026-06-21T19:04:18.116Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, bsc, ethereum, polygon
- Contract surface: 32 unique implementations (43 raw deployments)
- DeFi Llama TVL: $312,541,021.34
- On-chain TVL (included contracts): $237,288,511.98
- TVL by chain: Ethereum $133,448,942.07 | Bsc $103,386,468.36 | Polygon $453,101.55

## Project Description

Railgun is a privacy protocol that enables users to shield and transact tokens confidentially using zero-knowledge proofs. It provides private transfers, swaps, and interactions with DeFi while maintaining user anonymity.

### Architecture

All contracts are deployed under a single product family, sharing the PausableUpgradableProxy pattern for upgradeability. The RailgunSmartWallet proxies serve as user-facing entry points, while RailgunLogic, GovernorRewards, and Treasury provide backend logic, governance, and fund management, respectively.

## Contract Surface Quality

- Indexed contracts: 202; live-surface contracts included: 43 (17 live, 26 unknown).
- Excluded by liveness: 131 inactive, 28 singleton, 0 uninitialized.
- Deployment units: 4/18 live.
- Detected codebases: none
- Unverified dependencies: 3/14.

## Audit Coverage Summary

- Verified implementations audited: 14/23 (60.9%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 32
- Raw deployments: 43
- Audits discovered: 10
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): $237,288,511.98
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 10 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zokyo | Tier 2 | 13 | 56.5% | 2023-02 |
| Hacken | Tier 2 | 8 | 34.8% | 2021-11 |
| HashCloak | Tier 2 | 3 | 13.0% | 2022-08 |
| ABDK | Tier 2 | 1 | 4.3% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Delegator | unknown | ethereum | n/a | [`0xb6d513...3fb53b`](./contracts/ethereum-1/0xb6d513f6222ee92fff975e901bd792e2513fb53b/) | ✅ Audited |
| Distributor | operational_periphery | ethereum | n/a | [`0x3bb38c...81c5d2`](./contracts/ethereum-1/0x3bb38cd4c801cb0bed481bc3fc4b14b06d81c5d2/) | ✅ Audited |
| GovernorRewards | governance | ethereum | n/a | [`0x9cfa13...08f465`](./contracts/ethereum-1/0x9cfa13a191cc37ee5f76c2f070bfab8a3208f465/) | ✅ Audited |
| Multisend | unknown | ethereum | n/a | [`0x92a9c9...1a714f`](./contracts/ethereum-1/0x92a9c92c215092720c731c96d4ff508c831a714f/) | ✅ Audited |
| ProxyAdmin | governance | ethereum | n/a | [`0xed0e97...f07a08`](./contracts/ethereum-1/0xed0e97ca39973dc97416460b113f161be6f07a08/) | ✅ Audited |
| RailgunLogic | unknown | ethereum | n/a | [`0xbcfa4d...7c541a`](./contracts/ethereum-1/0xbcfa4de73afb071c9ff18a20a22f818e657c541a/) | ✅ Audited |
| RailgunSmartWallet | unknown | ethereum | n/a | [`0xc0bef2...f209cc`](./contracts/ethereum-1/0xc0bef2d373a1efade8b952f33c1370e486f209cc/) | ✅ Audited |
| RailgunSmartWallet | unknown | ethereum | unit-43759 | [`0xfa7093...1fa4b9`](./contracts/ethereum-1/0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9/) | ✅ Audited |
| RailgunSmartWallet | unknown | bsc | unit-43760 | [`0x590162...178a10`](./contracts/bsc-56/0x590162bf4b50f6576a459b75309ee21d92178a10/) | ✅ Audited |
| RailgunSmartWallet | unknown | polygon | unit-43764 | [`0x19b620...ef8c71`](./contracts/polygon-137/0x19b620929f97b7b990801496c3b361ca5def8c71/) | ✅ Audited |
| RailgunSmartWallet | unknown | arbitrum | unit-43772 | [`0xfa7093...1fa4b9`](./contracts/arbitrum-42161/0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9/) | ✅ Audited |
| Staking | unknown | bsc | n/a | 3 deployments: ethereum `0xee6a64...b2ee20`; bsc [`0x753f0f...e441dc`](./contracts/bsc-56/0x753f0f9ba003dda95eb9284533cf5b0f19e441dc/); polygon `0x9ac2ba...71ddc1` | ✅ Audited |
| Treasury | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xc851fb...e74d6c`](./contracts/ethereum-1/0xc851fbe0f07a326ce0326ccc70c2a62732e74d6c/); polygon `0xfa7093...1fa4b9` | ✅ Audited |
| Voting | unknown | bsc | n/a | 5 deployments: ethereum `0xc480f6...1da3cc`; ethereum `0xf27131...9d77fb`; ethereum `0xfc4b58...660cf9`; bsc [`0xc3f2c8...11ac88`](./contracts/bsc-56/0xc3f2c8f9d5f0705de706b1302b7a039e1e11ac88/); polygon [`0xc3f2c8...11ac88`](./contracts/polygon-137/0xc3f2c8f9d5f0705de706b1302b7a039e1e11ac88/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RailToken | token | ethereum | n/a | [`0xe76c6c...a7a33d`](./contracts/ethereum-1/0xe76c6c83af64e4c60245d8c7de953df673a7a33d/) | ⚠️ Unaudited |
| RailTokenFixedSupply | token | bsc | n/a | 2 deployments: bsc [`0x3f847b...cd737f`](./contracts/bsc-56/0x3f847b01d4d498a293e3197b186356039ecd737f/); polygon `0x92a9c9...1a714f` | ⚠️ Unaudited |
| ArbitrumExecutor | unknown | arbitrum | n/a | [`0xc480f6...1da3cc`](./contracts/arbitrum-42161/0xc480f68a3dcc3edd82134fab45c14a0fcf1da3cc/) | ⚠️ Unaudited |
| ArbitrumSender | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8c2bac...0b8482`](./contracts/ethereum-1/0x8c2bac19a9f06d41a11646a7c21379fcc50b8482/); ethereum `0xf62748...16345a` | ⚠️ Unaudited |
| Getters | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbef5f5...ab020f`](./contracts/ethereum-1/0xbef5f5f176d1b313c26eed887f2124c9bfab020f/); ethereum `0xe90275...7beb0e` | ⚠️ Unaudited |
| OnlyAddress | unknown | ethereum | n/a | [`0xd071ed...545da7`](./contracts/ethereum-1/0xd071eddff4728f7a33bafd2759db6543b6545da7/) | ⚠️ Unaudited |
| PausableUpgradableProxy | unknown | ethereum | n/a | [`0xf94325...6197af`](./contracts/ethereum-1/0xf943253b4c53fcf69ce92b936666da26916197af/) | ⚠️ Unaudited |
| RelayAdapt | unknown | arbitrum | n/a | 2 deployments: ethereum `0xc3f2c8...11ac88`; arbitrum [`0x5ad95c...1497aa`](./contracts/arbitrum-42161/0x5ad95c537b002770a39dea342c4bb2b68b1497aa/) | ⚠️ Unaudited |
| VKeySetter | unknown | ethereum | n/a | [`0x9086af...903b46`](./contracts/ethereum-1/0x9086afc6fc88667d4031cabd556afdd0e3903b46/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x4025ee...f6be8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e5689...a68ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb00a75...a4d527` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb7d93...74ccfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc20871...9079cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0198d...e8f59b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf035ce...42ca2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x741936...8d9e12` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc7ffa5...486968` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ZokyoAudit Report](https://assets.railgun.org/docs/audits/2023-02-03%20Zokyo.pdf) | Zokyo | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [ZokyoAudit Report](https://assets.railgun.org/docs/audits/2022-12-21%20Zokyo.pdf) | Zokyo | Audit | 2022-12 | stale | Direct | contract_name | 6 | high |
| [ZokyoAudit Report](https://assets.railgun.org/docs/audits/2022-09-14%20Zokyo.pdf) | Zokyo | Audit | 2022-09 | stale | Direct | contract_name | 6 | high |
| [HashCloakAudit Report](https://assets.railgun.org/docs/audits/2022-08-29%20Hashcloak.pdf) | HashCloak | Audit | 2022-08 | stale | Direct | contract_name | 8 | high |
| [ZokyoAudit Report](https://assets.railgun.org/docs/audits/2022-04-21%20Zokyo.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [ZokyoAudit Report](https://assets.railgun.org/docs/audits/2022-04-20%20Zokyo.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |
| [ZokyoAudit Report](https://assets.railgun.org/docs/audits/2021-11-23%20Zokyo.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [ZokyoAudit Report](https://assets.railgun.org/docs/audits/2021-11-03%20Zokyo.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | contract_name | 15 | high |
| [HackenAudit Report](https://assets.railgun.org/docs/audits/2021-11-02%20Hacken.pdf) | Hacken | Audit | 2021-11 | stale | Direct | contract_name | 15 | high |
| [ABDKAudit Report](https://assets.railgun.org/docs/audits/2021-04-01%20ABDK.pdf) | ABDK | Audit | 2021-04 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe76c6c...a7a33d`](./contracts/ethereum-1/0xe76c6c83af64e4c60245d8c7de953df673a7a33d/) | RailToken | token | $133,448,942.07 | Verified native implementation with $133,448,942.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3f847b...cd737f`](./contracts/bsc-56/0x3f847b01d4d498a293e3197b186356039ecd737f/) | RailTokenFixedSupply | token | $103,839,569.91 | Verified native implementation with $103,839,569.91 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc480f6...1da3cc`](./contracts/arbitrum-42161/0xc480f68a3dcc3edd82134fab45c14a0fcf1da3cc/) | ArbitrumExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c2bac...0b8482`](./contracts/ethereum-1/0x8c2bac19a9f06d41a11646a7c21379fcc50b8482/) | ArbitrumSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbef5f5...ab020f`](./contracts/ethereum-1/0xbef5f5f176d1b313c26eed887f2124c9bfab020f/) | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd071ed...545da7`](./contracts/ethereum-1/0xd071eddff4728f7a33bafd2759db6543b6545da7/) | OnlyAddress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf94325...6197af`](./contracts/ethereum-1/0xf943253b4c53fcf69ce92b936666da26916197af/) | PausableUpgradableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5ad95c...1497aa`](./contracts/arbitrum-42161/0x5ad95c537b002770a39dea342c4bb2b68b1497aa/) | RelayAdapt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9086af...903b46`](./contracts/ethereum-1/0x9086afc6fc88667d4031cabd556afdd0e3903b46/) | VKeySetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8
- Match method counts: extraction_exact=225

Zero-match audit list:

- [13741] ZokyoAudit Report
- [13745] ZokyoAudit Report

Fork inheritance lineage and inherited audits are included when available.
