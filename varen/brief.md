# Agentic Audit Brief: varen

## Project Overview

- Project: varen (`varen`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.299Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 9 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 9 contract(s).

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 9
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

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LinkswapFactory | unknown | ethereum | n/a | [`0x696708db871b77355d6c2be7290b27cf0bb9b24b`](./contracts/ethereum-1/0x696708db871b77355d6c2be7290b27cf0bb9b24b/) | ⚠️ Unaudited |
| LinkswapPriceOracle | unknown | ethereum | n/a | [`0xdfa5e7989c98446ffea622266e18df563e859872`](./contracts/ethereum-1/0xdfa5e7989c98446ffea622266e18df563e859872/) | ⚠️ Unaudited |
| LinkswapRouter | unknown | ethereum | n/a | [`0x6c0899d124146256a382a9eeb7c8aca363bccf46`](./contracts/ethereum-1/0x6c0899d124146256a382a9eeb7c8aca363bccf46/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x25a25e2f0d2c211a96fa35e8c670ef6f5b3aba57`](./contracts/ethereum-1/0x25a25e2f0d2c211a96fa35e8c670ef6f5b3aba57/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | ethereum | n/a | [`0x22aebd24d0a9f74a84422ee6904e146d61dc3b70`](./contracts/ethereum-1/0x22aebd24d0a9f74a84422ee6904e146d61dc3b70/) | ⚠️ Unaudited |
| TokenMigrator | unknown | ethereum | n/a | [`0xf05336a9bcc1805fa6c9f9635300ad43ac1b57eb`](./contracts/ethereum-1/0xf05336a9bcc1805fa6c9f9635300ad43ac1b57eb/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x88024deacdc2e9eda02a3051377ed635381faa54`](./contracts/ethereum-1/0x88024deacdc2e9eda02a3051377ed635381faa54/) | ⚠️ Unaudited |
| Varen | unknown | ethereum | n/a | [`0x31a1a4f75539b515ef2f08b952dbe36941e0a98e`](./contracts/ethereum-1/0x31a1a4f75539b515ef2f08b952dbe36941e0a98e/) | ⚠️ Unaudited |
| yYFL | unknown | ethereum | n/a | [`0x59ec0c7465bcf39b28fab3baacd96a678f1aa0d5`](./contracts/ethereum-1/0x59ec0c7465bcf39b28fab3baacd96a678f1aa0d5/) | ⚠️ Unaudited |

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
| ethereum | [`0x696708db871b77355d6c2be7290b27cf0bb9b24b`](./contracts/ethereum-1/0x696708db871b77355d6c2be7290b27cf0bb9b24b/) | LinkswapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfa5e7989c98446ffea622266e18df563e859872`](./contracts/ethereum-1/0xdfa5e7989c98446ffea622266e18df563e859872/) | LinkswapPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c0899d124146256a382a9eeb7c8aca363bccf46`](./contracts/ethereum-1/0x6c0899d124146256a382a9eeb7c8aca363bccf46/) | LinkswapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25a25e2f0d2c211a96fa35e8c670ef6f5b3aba57`](./contracts/ethereum-1/0x25a25e2f0d2c211a96fa35e8c670ef6f5b3aba57/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22aebd24d0a9f74a84422ee6904e146d61dc3b70`](./contracts/ethereum-1/0x22aebd24d0a9f74a84422ee6904e146d61dc3b70/) | StakingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf05336a9bcc1805fa6c9f9635300ad43ac1b57eb`](./contracts/ethereum-1/0xf05336a9bcc1805fa6c9f9635300ad43ac1b57eb/) | TokenMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31a1a4f75539b515ef2f08b952dbe36941e0a98e`](./contracts/ethereum-1/0x31a1a4f75539b515ef2f08b952dbe36941e0a98e/) | Varen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59ec0c7465bcf39b28fab3baacd96a678f1aa0d5`](./contracts/ethereum-1/0x59ec0c7465bcf39b28fab3baacd96a678f1aa0d5/) | yYFL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
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
