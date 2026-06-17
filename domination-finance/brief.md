# Agentic Audit Brief: Domination Finance

## Project Overview

- Project: Domination Finance (`domination-finance`)
- Website: [https://domination.finance](https://domination.finance)
- Lifecycle: active (Tier 0, 54.9% below peak)
- Generated: 2026-06-17T07:00:46.713Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, boba, polygon
- Contract surface: 17 unique implementations (37 raw deployments)
- DeFi Llama TVL: $1,285,125.19
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Domination Finance is a decentralized derivatives protocol that enables users to trade long/short pairs on asset dominance metrics. It provides vaults for liquidity, price oracles, and automated trading infrastructure across multiple chains.

### Architecture

The 'Contract Addresses' family provides the core trading engine and vaults, which rely on the 'Smart Contract Architecture' family for governance, registries, and oracle services. The 'Domination Finance' family consists of individual market pairs that are created and managed by the core trading contracts.

## Contract Surface Quality

- Indexed contracts: 112; live-surface contracts included: 37 (28 live, 9 unknown).
- Excluded by liveness: 3 inactive, 72 singleton, 0 uninitialized.
- Deployment units: 0/36 live.
- Detected codebases: none
- Unverified dependencies: 4/10.

## Audit Coverage Summary

- Verified implementations audited: 6/10 (60.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 17
- Raw deployments: 37
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 6 | 60.0% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DomfiLockedDepositNft | token | base | n/a | 4 deployments: base [`0x117651...ecbf85`](./contracts/base-8453/0x11765119ec66fb434447fd56e9041746c8ecbf85/); base `0x1b50c9...9d7d52`; base `0x63d7f6...0514da`; base `0xe2ea29...425adf` | ✅ Audited |
| DomfiOracle | operational_periphery | base | n/a | 4 deployments: base [`0x1ab9c3...3b8d4d`](./contracts/base-8453/0x1ab9c3a2e1a09f2d06bf4a75d1721c7e113b8d4d/); base `0x953ee2...096a09`; base `0xa371d5...78b9cc`; base `0xaffc3b...fb8379` | ✅ Audited |
| DomfiRegistry | registry | base | n/a | 4 deployments: base [`0x6641bb...efd3d1`](./contracts/base-8453/0x6641bb66e9e3d158d12b18f7a684b37232efd3d1/); base `0xe43836...881103`; base `0xf44ebe...d4c483`; base `0xfa4209...f59d45` | ✅ Audited |
| DomfiTimelockOwner | governance | base | n/a | 4 deployments: base [`0x0d3c94...668235`](./contracts/base-8453/0x0d3c9454837c9e7ab60c34084fb502371d668235/); base `0x9986b8...3b3044`; base `0xf29541...72b796`; base `0xfcad85...556097` | ✅ Audited |
| DomfiVault | core_logic | base | n/a | [`0x19954e...4ca0c2`](./contracts/base-8453/0x19954ec2363ef593354ebec10e553ca45c4ca0c2/) | ✅ Audited |
| DomfiVerifier | periphery | base | n/a | 4 deployments: base [`0x0c6a46...722d0c`](./contracts/base-8453/0x0c6a461aadbf4fc4e245fb1ea05eacd4c7722d0c/); base `0x350bf8...1da27e`; base `0x49d577...c1d1df`; base `0xdf2b2f...832188` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Distributor | operational_periphery | base | n/a | [`0x74fded...7b89da`](./contracts/base-8453/0x74fdedbd9792adcea1af9be840a840b6cc7b89da/) | ⚠️ Unaudited |
| IncentiveToken | token | base | n/a | [`0x7a0d8c...a2d4e8`](./contracts/base-8453/0x7a0d8c95d52d27b9d581275300e56a7dc8a2d4e8/) | ⚠️ Unaudited |
| LongShortPair | unknown | polygon | n/a | 3 deployments: polygon [`0x12cce4...0be116`](./contracts/polygon-137/0x12cce472430f7f5071375cc0a1aab717310be116/); polygon `0x277132...644100`; polygon `0x514b3c...20c9ee` | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | 4 deployments: base [`0x24c087...9d28b2`](./contracts/base-8453/0x24c0871d7aac057c6c9190f60e48f3b9fa9d28b2/); base `0x6b82fc...46d34b`; base `0x7cc253...ad21af`; base `0xa758f0...95c478` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | boba | n/a | `0x156a45...f30bec` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x3c77d0...961c03` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x5b9f3b...c67589` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x6caffb...3ce20f` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0xcab14a...17a18e` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0xf123b6...a102d6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x899716...7a9d97` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Download full report (PDF)](https://docs.domination.finance/assets/DomFi-security-review_2025-12-07.pdf) | Pashov Audit Group | Audit | 2025-12 | fresh | Direct | contract_name | 21 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x74fded...7b89da`](./contracts/base-8453/0x74fdedbd9792adcea1af9be840a840b6cc7b89da/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7a0d8c...a2d4e8`](./contracts/base-8453/0x7a0d8c95d52d27b9d581275300e56a7dc8a2d4e8/) | IncentiveToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x12cce4...0be116`](./contracts/polygon-137/0x12cce472430f7f5071375cc0a1aab717310be116/) | LongShortPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=87

Fork inheritance lineage and inherited audits are included when available.
