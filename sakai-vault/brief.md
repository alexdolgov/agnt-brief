# Agentic Audit Brief: sakai-vault

## Project Overview

- Project: sakai-vault (`sakai-vault`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:53.874Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: bsc
- Contract surface: 8 unique implementations (8 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 8 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 8 contract(s).

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/8 (12.5%)
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/8
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 12.5% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SakaiDAO | unknown | bsc | n/a | [`0x0b5e462b4308e837f540b5bd212b34ee8fe64f85`](./contracts/bsc-56/0x0b5e462b4308e837f540b5bd212b34ee8fe64f85/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SAKAI | unknown | bsc | n/a | [`0x43b35e89d15b91162dea1c51133c4c93bdd1c4af`](./contracts/bsc-56/0x43b35e89d15b91162dea1c51133c4c93bdd1c4af/) | ⚠️ Unaudited |
| SakaiDistributor | unknown | bsc | n/a | [`0xf17e28cb23849dd0db75f7e130e15c55a1cd3f20`](./contracts/bsc-56/0xf17e28cb23849dd0db75f7e130e15c55a1cd3f20/) | ⚠️ Unaudited |
| SakaiProposal | unknown | bsc | n/a | [`0x3999eca025e34a044ed5c56b2fef74a893ea5f78`](./contracts/bsc-56/0x3999eca025e34a044ed5c56b2fef74a893ea5f78/) | ⚠️ Unaudited |
| SakaiStaking | unknown | bsc | n/a | [`0x44b3eb3cc015653ef4dc013b889feda3be9c2957`](./contracts/bsc-56/0x44b3eb3cc015653ef4dc013b889feda3be9c2957/) | ⚠️ Unaudited |
| SakaiVaultProtocol | unknown | bsc | n/a | [`0x1e8c9814745e51f27ab47733d36ff5280bdf9324`](./contracts/bsc-56/0x1e8c9814745e51f27ab47733d36ff5280bdf9324/) | ⚠️ Unaudited |
| SUSD | unknown | bsc | n/a | [`0x5e4faf13a3d66e741f1e9b8743b8d26f6afe9ce7`](./contracts/bsc-56/0x5e4faf13a3d66e741f1e9b8743b8d26f6afe9ce7/) | ⚠️ Unaudited |
| TheVaultTicker | unknown | bsc | n/a | [`0x439596ccb842f2a556677ab62f9d985e00128fea`](./contracts/bsc-56/0x439596ccb842f2a556677ab62f9d985e00128fea/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/sakai-vault](https://skynet.certik.com/projects/sakai-vault) | CertiK | Audit | 2024-07 | stale | Direct | contract_name | 1 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x43b35e89d15b91162dea1c51133c4c93bdd1c4af`](./contracts/bsc-56/0x43b35e89d15b91162dea1c51133c4c93bdd1c4af/) | SAKAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf17e28cb23849dd0db75f7e130e15c55a1cd3f20`](./contracts/bsc-56/0xf17e28cb23849dd0db75f7e130e15c55a1cd3f20/) | SakaiDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3999eca025e34a044ed5c56b2fef74a893ea5f78`](./contracts/bsc-56/0x3999eca025e34a044ed5c56b2fef74a893ea5f78/) | SakaiProposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x44b3eb3cc015653ef4dc013b889feda3be9c2957`](./contracts/bsc-56/0x44b3eb3cc015653ef4dc013b889feda3be9c2957/) | SakaiStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e8c9814745e51f27ab47733d36ff5280bdf9324`](./contracts/bsc-56/0x1e8c9814745e51f27ab47733d36ff5280bdf9324/) | SakaiVaultProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e4faf13a3d66e741f1e9b8743b8d26f6afe9ce7`](./contracts/bsc-56/0x5e4faf13a3d66e741f1e9b8743b8d26f6afe9ce7/) | SUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x439596ccb842f2a556677ab62f9d985e00128fea`](./contracts/bsc-56/0x439596ccb842f2a556677ab62f9d985e00128fea/) | TheVaultTicker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
