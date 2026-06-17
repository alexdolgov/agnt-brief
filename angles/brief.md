# Agentic Audit Brief: Angles

## Project Overview

- Project: Angles (`angles`)
- Website: [https://angles.fi/](https://angles.fi/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T23:31:53.581Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-9ddf
- Chains: sonic
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $672,839.00
- On-chain TVL (included contracts): $7.53
- TVL by chain: Sonic $7.53

## Project Description

Angles is primarily a Sonic liquid staking protocol centered on anS, enabling users to participate in Sonic staking while retaining a liquid staking token. Any vault, wanS, or capital-allocation components should be treated as secondary products or wrappers unless explicitly supported by protocol documentation.

### Architecture

Angles Stake vaults likely mint or interact with Angles Liquid's wanS token, creating a flow where staked assets are represented as liquid tokens. Both families share the Sonic chain infrastructure and may use common registries or proxy patterns for upgradeability.

## Contract Surface Quality

- Indexed contracts: 75; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 63 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 1/4 live.
- Detected codebases: none
- Unverified dependencies: 3/7.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $7.53
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolV2 | core_logic | sonic | n/a | [`0x033f4a...b3c722`](./contracts/sonic-146/0x033f4a109fc11a11d3afb92dca0ab6c30bb3c722/) | ⚠️ Unaudited |
| Aggregator | unknown | sonic | n/a | [`0x6d06b7...b0ac35`](./contracts/sonic-146/0x6d06b7fac4f6393672fd038083370d38f3b0ac35/) | ⚠️ Unaudited |
| AnglesSmartRouter | adapter | sonic | n/a | [`0x0af78f...189a00`](./contracts/sonic-146/0x0af78f0ccb7d1a042d13f3d4def51cec7c189a00/) | ⚠️ Unaudited |
| PoolToken | core_logic | sonic | n/a | [`0xa93c94...d48c4d`](./contracts/sonic-146/0xa93c9411f8fecf5e6acd81ecd99a71c165d48c4d/) | ⚠️ Unaudited |
| SFC | unknown | sonic | unit-33487 | [`0xfc00fa...000000`](./contracts/sonic-146/0xfc00face00000000000000000000000000000000/) | ⚠️ Unaudited |
| Vault | core_logic | sonic | n/a | [`0x15e96c...92e69d`](./contracts/sonic-146/0x15e96cdeca34b9de1b31586c1206206adb92e69d/) | ⚠️ Unaudited |

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
| [Audit](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FllPyhrg6nxGZCqiOX61A%2Fuploads%2FbSKwCaHEqGfKBo6FUXtL%2FSpearBit%20x%20Angles.pdf?alt=media) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x033f4a...b3c722`](./contracts/sonic-146/0x033f4a109fc11a11d3afb92dca0ab6c30bb3c722/) | PoolV2 | core_logic | $7.53 | Verified native implementation with $7.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6d06b7...b0ac35`](./contracts/sonic-146/0x6d06b7fac4f6393672fd038083370d38f3b0ac35/) | Aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0af78f...189a00`](./contracts/sonic-146/0x0af78f0ccb7d1a042d13f3d4def51cec7c189a00/) | AnglesSmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa93c94...d48c4d`](./contracts/sonic-146/0xa93c9411f8fecf5e6acd81ecd99a71c165d48c4d/) | PoolToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x15e96c...92e69d`](./contracts/sonic-146/0x15e96cdeca34b9de1b31586c1206206adb92e69d/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=2

Zero-match audit list:

- [3224] Audit

Fork inheritance lineage and inherited audits are included when available.
