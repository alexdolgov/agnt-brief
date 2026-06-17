# Agentic Audit Brief: Switcheo Finance

## Project Overview

- Project: Switcheo Finance (`switcheo-finance`)
- Lifecycle: active (Tier 0, 76.4% below peak)
- Generated: 2026-06-17T07:00:36.929Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 18 unique implementations (21 raw deployments)
- DeFi Llama TVL: $1,005,520.76
- On-chain TVL (included contracts): $69,844,295.02
- TVL by chain: Ethereum $69,844,295.02

## Project Description

Switcheo Finance is a decentralized exchange protocol on Ethereum that facilitates token swaps and trading through exchange and broker-style settlement contracts. External ERC-20 token contracts traded or referenced by the exchange should not be described as Switcheo-owned protocol components or included in project-owned contract counts or protocol TVL calculations.

### Architecture

The BrokerV2 contract acts as the core execution engine, relying on the Utils library for shared logic. Various token contracts (e.g., BalancerGovernanceToken, CelsiusToken) are integrated as trading assets, while supporting contracts like EIP20 provide standard token interfaces.

## Contract Surface Quality

- Indexed contracts: 118; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 93 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 2/20.

## Audit Coverage Summary

- Verified implementations audited: 0/18 (0.0%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 21
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $69,844,295.02
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DuskToken | token | ethereum | n/a | [`0x940a2d...4aa551`](./contracts/ethereum-1/0x940a2db1b7008b6c776d4faaca729d6d4a4aa551/) | ⚠️ Unaudited |
| OneWorldOnlineToken | token | ethereum | n/a | [`0xfdbc1a...c22b23`](./contracts/ethereum-1/0xfdbc1adc26f0f8f8606a5d63b7d3a3cd21c22b23/) | ⚠️ Unaudited |
| CelsiusToken | token | ethereum | n/a | [`0xaaaebe...09d42d`](./contracts/ethereum-1/0xaaaebe6fe48e54f431b0c390cfaf0b017d09d42d/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0x6e109e...c07aef`](./contracts/ethereum-1/0x6e109e9dd7fa1a58bc3eff667e8e41fc3cc07aef/) | ⚠️ Unaudited |
| LUCToken | token | ethereum | n/a | [`0x5dbe29...a5c719`](./contracts/ethereum-1/0x5dbe296f97b23c4a6aa6183d73e574d02ba5c719/) | ⚠️ Unaudited |
| BalancerGovernanceToken | token | ethereum | n/a | [`0xba1000...424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| GigaWattToken | token | ethereum | n/a | [`0x84119c...494eda`](./contracts/ethereum-1/0x84119cb33e8f590d75c2d6ea4e6b0741a7494eda/) | ⚠️ Unaudited |
| AlephSync | unknown | ethereum | n/a | [`0x166fd4...2f8ad5`](./contracts/ethereum-1/0x166fd4299364b21c7567e163d85d78d2fb2f8ad5/) | ⚠️ Unaudited |
| EIP20 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27702a...4ef628`](./contracts/ethereum-1/0x27702a26126e0b3702af63ee09ac4d1a084ef628/); ethereum `0xc0134b...fbe03e` | ⚠️ Unaudited |
| INSToken | token | ethereum | n/a | [`0x5b2e4a...74a320`](./contracts/ethereum-1/0x5b2e4a700dfbc560061e957edec8f6eeeb74a320/) | ⚠️ Unaudited |
| KyberNetworkCrystal | unknown | ethereum | n/a | [`0xdd974d...6bd200`](./contracts/ethereum-1/0xdd974d5c2e2928dea5f71b9825b8b646686bd200/) | ⚠️ Unaudited |
| LEO | unknown | ethereum | n/a | [`0x2af5d2...912ca3`](./contracts/ethereum-1/0x2af5d2ad76741191d15dfe7bf6ac92d4bd912ca3/) | ⚠️ Unaudited |
| LogERC20 | token | ethereum | n/a | [`0x047f18...434a4b`](./contracts/ethereum-1/0x047f18e7f21aa714c6a5f4b346318eb384434a4b/) | ⚠️ Unaudited |
| SocialMediaMarketToken | token | ethereum | n/a | [`0x78eb8d...c4d237`](./contracts/ethereum-1/0x78eb8dc641077f049f910659b6d580e80dc4d237/) | ⚠️ Unaudited |
| StandardToken | token | ethereum | n/a | [`0x4a220e...254675`](./contracts/ethereum-1/0x4a220e6096b25eadb88358cb44068a3248254675/) | ⚠️ Unaudited |
| Wallet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3792d2...85f6ef`](./contracts/ethereum-1/0x3792d288d9f0993971f23e4758acb719f285f6ef/); ethereum `0xecf8db...89b534` | ⚠️ Unaudited |
| WrapperLock | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1a9b2d...eba26e`](./contracts/ethereum-1/0x1a9b2d827f26b7d7c18fec4c1b27c1e8deeba26e/); ethereum `0x38ae37...106a32` | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | n/a | [`0xaa7427...be1011`](./contracts/ethereum-1/0xaa7427d8f17d87a28f5e1ba3adbb270badbe1011/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3792d2...85f6ef`](./contracts/ethereum-1/0x3792d288d9f0993971f23e4758acb719f285f6ef/) | Wallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a9b2d...eba26e`](./contracts/ethereum-1/0x1a9b2d827f26b7d7c18fec4c1b27c1e8deeba26e/) | WrapperLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa7427...be1011`](./contracts/ethereum-1/0xaa7427d8f17d87a28f5e1ba3adbb270badbe1011/) | WrapperLockEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 11 |
| standard_library | 3 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
