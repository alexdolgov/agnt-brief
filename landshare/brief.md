# Agentic Audit Brief: Landshare

## Project Overview

- Project: Landshare (`landshare`)
- Website: [https://landshare.io](https://landshare.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.399Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $646,020.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 8 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 3 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AutoLandVaultV3 | unknown | bsc | n/a | [`0x6233ffeef97d08db2c763f389eebd9d738e4d4a3`](./contracts/bsc-56/0x6233ffeef97d08db2c763f389eebd9d738e4d4a3/) | ⚠️ Unaudited |
| DSSwap_Pair | unknown | bsc | n/a | [`0x89bad177367736c186f7b41a9fba7b23474a1b35`](./contracts/bsc-56/0x89bad177367736c186f7b41a9fba7b23474a1b35/) | ⚠️ Unaudited |
| LandMigrator | unknown | bsc | n/a | [`0x0c4e4492e0ed41e41cffa59bd5e3189f92faca43`](./contracts/bsc-56/0x0c4e4492e0ed41e41cffa59bd5e3189f92faca43/) | ⚠️ Unaudited |
| LandshareAPIConsumer | unknown | bsc | n/a | [`0x61f8c9fe835e4ca722db3a81a2746260b0d77735`](./contracts/bsc-56/0x61f8c9fe835e4ca722db3a81a2746260b0d77735/) | ⚠️ Unaudited |
| LandshareSale | unknown | bsc | n/a | [`0x3e8127fe9f832b22a179ed294009357d3fdce833`](./contracts/bsc-56/0x3e8127fe9f832b22a179ed294009357d3fdce833/) | ⚠️ Unaudited |
| LandshareToken | unknown | bsc | n/a | [`0xa73164db271931cf952cbaeff9e8f5817b42fa5c`](./contracts/bsc-56/0xa73164db271931cf952cbaeff9e8f5817b42fa5c/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0x3f9458892fb114328bc675e11e71ff10c847f93b`](./contracts/bsc-56/0x3f9458892fb114328bc675e11e71ff10c847f93b/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x13f80c53b837622e899e1ac0021ed3d1775caefa`](./contracts/bsc-56/0x13f80c53b837622e899e1ac0021ed3d1775caefa/) | ⚠️ Unaudited |

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
| bsc | [`0x6233ffeef97d08db2c763f389eebd9d738e4d4a3`](./contracts/bsc-56/0x6233ffeef97d08db2c763f389eebd9d738e4d4a3/) | AutoLandVaultV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x89bad177367736c186f7b41a9fba7b23474a1b35`](./contracts/bsc-56/0x89bad177367736c186f7b41a9fba7b23474a1b35/) | DSSwap_Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0c4e4492e0ed41e41cffa59bd5e3189f92faca43`](./contracts/bsc-56/0x0c4e4492e0ed41e41cffa59bd5e3189f92faca43/) | LandMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x61f8c9fe835e4ca722db3a81a2746260b0d77735`](./contracts/bsc-56/0x61f8c9fe835e4ca722db3a81a2746260b0d77735/) | LandshareAPIConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e8127fe9f832b22a179ed294009357d3fdce833`](./contracts/bsc-56/0x3e8127fe9f832b22a179ed294009357d3fdce833/) | LandshareSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa73164db271931cf952cbaeff9e8f5817b42fa5c`](./contracts/bsc-56/0xa73164db271931cf952cbaeff9e8f5817b42fa5c/) | LandshareToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3f9458892fb114328bc675e11e71ff10c847f93b`](./contracts/bsc-56/0x3f9458892fb114328bc675e11e71ff10c847f93b/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13f80c53b837622e899e1ac0021ed3d1775caefa`](./contracts/bsc-56/0x13f80c53b837622e899e1ac0021ed3d1775caefa/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
