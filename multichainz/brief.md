# Agentic Audit Brief: multichainz

## Project Overview

- Project: multichainz (`multichainz`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:36.997Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: arbitrum, base
- Contract surface: 12 unique implementations (12 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 10 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (11 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/10 (10.0%)
- Deployed-live implementations: 11 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/12
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 8.3% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MtzPool | unknown | arbitrum | n/a | [`0x0a01b006c471032b3ec816ede297c05c4459d6c7`](./contracts/arbitrum-42161/0x0a01b006c471032b3ec816ede297c05c4459d6c7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChainzMerkleDistributor | unknown | base | n/a | [`0x1154ec49474e22d0f3d0ca3e863aadd1bc3c5d2b`](./contracts/base-8453/0x1154ec49474e22d0f3d0ca3e863aadd1bc3c5d2b/) | ⚠️ Unaudited |
| ChainzPointsDistributor | unknown | base | n/a | [`0x41ab36b0825e6045ee1a8a4a8d009127634cbf4f`](./contracts/base-8453/0x41ab36b0825e6045ee1a8a4a8d009127634cbf4f/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | [`0x8d0d4891842566dc0016741b98c1155dee15bd6c`](./contracts/base-8453/0x8d0d4891842566dc0016741b98c1155dee15bd6c/) | ⚠️ Unaudited |
| LendRouter | unknown | base | n/a | [`0x52410b7ba13cefa3d0bd2e8bac687c00a2ed658a`](./contracts/base-8453/0x52410b7ba13cefa3d0bd2e8bac687c00a2ed658a/) | ⚠️ Unaudited |
| MtzPriceOracle | unknown | base | n/a | [`0x30d96e0c312098c8a40db596b95326ba8e2726f8`](./contracts/base-8453/0x30d96e0c312098c8a40db596b95326ba8e2726f8/) | ⚠️ Unaudited |
| MtzStorkOracle | unknown | base | n/a | [`0x0ef756281445ea439a10b6597a699ce1e37d0a8e`](./contracts/base-8453/0x0ef756281445ea439a10b6597a699ce1e37d0a8e/) | ⚠️ Unaudited |
| MtzV3Oracle | unknown | base | n/a | [`0x4aefc0145b802bc81fa82eb3fc858f20b7f4e101`](./contracts/base-8453/0x4aefc0145b802bc81fa82eb3fc858f20b7f4e101/) | ⚠️ Unaudited |
| PoolToken | unknown | base | n/a | [`0x8bd47bc14f38840820d1dc7ed5eb57b85d2c7808`](./contracts/base-8453/0x8bd47bc14f38840820d1dc7ed5eb57b85d2c7808/) | ⚠️ Unaudited |
| StakeRouter | unknown | base | n/a | [`0x6088b0312c286d793a422760221384c4d6be75c3`](./contracts/base-8453/0x6088b0312c286d793a422760221384c4d6be75c3/) | ⚠️ Unaudited |
| SwyptPool | unknown | base | n/a | [`0x10a6d497a9a2afeeb3da9ce8f367e85b668f6591`](./contracts/base-8453/0x10a6d497a9a2afeeb3da9ce8f367e85b668f6591/) | ⚠️ Unaudited |
| Vault | unknown | base | n/a | [`0x2479589036676a4678b0cc3b4b01fef77b796dd5`](./contracts/base-8453/0x2479589036676a4678b0cc3b4b01fef77b796dd5/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/multichainz](https://skynet.certik.com/projects/multichainz) | CertiK | Audit | 2025-01 | aging | Direct | contract_name | 1 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x1154ec49474e22d0f3d0ca3e863aadd1bc3c5d2b`](./contracts/base-8453/0x1154ec49474e22d0f3d0ca3e863aadd1bc3c5d2b/) | ChainzMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x41ab36b0825e6045ee1a8a4a8d009127634cbf4f`](./contracts/base-8453/0x41ab36b0825e6045ee1a8a4a8d009127634cbf4f/) | ChainzPointsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x52410b7ba13cefa3d0bd2e8bac687c00a2ed658a`](./contracts/base-8453/0x52410b7ba13cefa3d0bd2e8bac687c00a2ed658a/) | LendRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x30d96e0c312098c8a40db596b95326ba8e2726f8`](./contracts/base-8453/0x30d96e0c312098c8a40db596b95326ba8e2726f8/) | MtzPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ef756281445ea439a10b6597a699ce1e37d0a8e`](./contracts/base-8453/0x0ef756281445ea439a10b6597a699ce1e37d0a8e/) | MtzStorkOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4aefc0145b802bc81fa82eb3fc858f20b7f4e101`](./contracts/base-8453/0x4aefc0145b802bc81fa82eb3fc858f20b7f4e101/) | MtzV3Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8bd47bc14f38840820d1dc7ed5eb57b85d2c7808`](./contracts/base-8453/0x8bd47bc14f38840820d1dc7ed5eb57b85d2c7808/) | PoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6088b0312c286d793a422760221384c4d6be75c3`](./contracts/base-8453/0x6088b0312c286d793a422760221384c4d6be75c3/) | StakeRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x10a6d497a9a2afeeb3da9ce8f367e85b668f6591`](./contracts/base-8453/0x10a6d497a9a2afeeb3da9ce8f367e85b668f6591/) | SwyptPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2479589036676a4678b0cc3b4b01fef77b796dd5`](./contracts/base-8453/0x2479589036676a4678b0cc3b4b01fef77b796dd5/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
