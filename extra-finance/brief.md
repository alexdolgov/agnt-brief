# Agentic Audit Brief: Extra Finance

## Project Overview

- Project: Extra Finance (`extra-finance`)
- Website: [https://extrafi.io/](https://extrafi.io/)
- Lifecycle: active (Tier 0, 82.7% below peak)
- Generated: 2026-06-17T07:00:38.369Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, berachain, optimism
- Contract surface: 14 unique implementations (22 raw deployments)
- DeFi Llama TVL: $26,710,180.00
- On-chain TVL (included contracts): $99.99
- TVL by chain: Base $99.99

## Project Description

Extra Finance is primarily a DeFi lending and leveraged yield farming protocol deployed on Optimism and Base. It enables users to lend assets and use leverage in yield farming strategies. Berachain/Bera contracts should be treated as an additional deployment with negligible current TVL unless documentation supports otherwise; any vault products should be described as related or curated vaults rather than the primary native protocol architecture.

### Architecture

The LendingPool supplies liquidity for leveraged farming positions managed by BeraPositionManager and deployed via BeraFarmingVaultFactory. EXTRA token and VeToken govern the protocol through GnosisSafe multisigs, while vaults operate independently to optimize yields.

## Contract Surface Quality

- Indexed contracts: 290; live-surface contracts included: 22 (21 live, 1 unknown).
- Excluded by liveness: 258 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 1/6 live.
- Detected codebases: none
- Dependencies extracted: 5; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/9 (11.1%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 14
- Raw deployments: 22
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/extrafinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: 11.1% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 1 | 11.1% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LendingPool | core_logic | optimism | n/a | 3 deployments: optimism [`0xbb505c...c71cbd`](./contracts/optimism-10/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd/); base [`0xbb505c...c71cbd`](./contracts/base-8453/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd/); berachain [`0xbb505c...c71cbd`](./contracts/berachain-80094/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EXTRA | unknown | optimism | n/a | [`0x2dad3a...7938f8`](./contracts/optimism-10/0x2dad3a13ef0c6366220f989157009e501e7938f8/) | ⚠️ Unaudited |
| EXTRAoft | unknown | base | n/a | [`0x2dad3a...7938f8`](./contracts/base-8453/0x2dad3a13ef0c6366220f989157009e501e7938f8/) | ⚠️ Unaudited |
| EXTRAoftProxy | unknown | optimism | n/a | [`0x0c9d44...616ef4`](./contracts/optimism-10/0x0c9d44f5a573f6cfc9e8264a5ca72a1184616ef4/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | optimism | unit-24166 (3 proxies) | 3 deployments: optimism [`0x4059e1...927a8c`](./contracts/optimism-10/0x4059e170d325163e2ec96cf8ca489c40b6927a8c/); optimism `0x750f71...9bd40a`; optimism `0x89f088...715c83` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | optimism | n/a | 3 deployments: optimism [`0x48f12d...85f703`](./contracts/optimism-10/0x48f12df639322e43ce83bb6e12bba46c8e85f703/); optimism `0x94440d...b2a38d`; optimism `0xc918a6...07babf` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | n/a | 2 deployments: base [`0x234792...753b5e`](./contracts/base-8453/0x23479229e52ab6aad312d0b03df9f33b46753b5e/); base `0x5a3209...f87a8c` | ⚠️ Unaudited |
| VeloPositionManager | governance | optimism | n/a | 2 deployments: optimism [`0xf9cfb8...957055`](./contracts/optimism-10/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055/); base [`0xf9cfb8...957055`](./contracts/base-8453/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055/) | ⚠️ Unaudited |
| VeToken | token | optimism | n/a | [`0xe0bec4...e91466`](./contracts/optimism-10/0xe0bec4f45aef64cec9dcb9010d4beffb13e91466/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x9ac8ad...70f602` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf39f1a...76b87e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x101b48...3f33ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ca5c4...5e3f6f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x2dad3a...7938f8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/extrafinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Source](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ExtraFi-v1.0.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [3. <>](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x2dad3a...7938f8`](./contracts/optimism-10/0x2dad3a13ef0c6366220f989157009e501e7938f8/) | EXTRA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2dad3a...7938f8`](./contracts/base-8453/0x2dad3a13ef0c6366220f989157009e501e7938f8/) | EXTRAoft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0c9d44...616ef4`](./contracts/optimism-10/0x0c9d44f5a573f6cfc9e8264a5ca72a1184616ef4/) | EXTRAoftProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf9cfb8...957055`](./contracts/optimism-10/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055/) | VeloPositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe0bec4...e91466`](./contracts/optimism-10/0xe0bec4f45aef64cec9dcb9010d4beffb13e91466/) | VeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Zero-match audit list:

- [4257] Source

Fork inheritance lineage and inherited audits are included when available.
