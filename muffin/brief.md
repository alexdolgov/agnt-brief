# Agentic Audit Brief: Muffin

## Project Overview

- Project: Muffin (`muffin`)
- Website: [https://muffin.fi/](https://muffin.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:36.977Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $106,215.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 4 project-authored contract(s) across 1 chain(s); 1 ERC721 NFT; built on solmate.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (muffinhubbase). Dominant framework: solmate.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/4 (75.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/4
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 3 | 75.0% | 2022-05 |
| Dedaub | Tier 2 | 3 | 75.0% | 2022-02 |
| PeckShield | Tier 2 | 2 | 50.0% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Lens | unknown | ethereum | n/a | [`0xaa7d5b...7de935`](./contracts/ethereum-1/0xaa7d5bdf76f6143f200f6f2d831bb049a37de935/) | ✅ Audited |
| Manager | unknown | ethereum | n/a | [`0xa9a03f...f35077`](./contracts/ethereum-1/0xa9a03ff1bac0f600cbb4e1e788fd924a43f35077/) | ✅ Audited |
| MuffinHubPositions | unknown | ethereum | n/a | [`0x5dd244...32a858`](./contracts/ethereum-1/0x5dd2444a17edc079210077924906d5bdf432a858/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MuffinMigrator | unknown | ethereum | n/a | [`0xa74cc5...cee785`](./contracts/ethereum-1/0xa74cc5c431531bf2601250c52825dc7b3dcee785/) | ⚠️ Unaudited |

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
| [ABDK (Core contracts)](https://resources.muffin.fi/files/audits/ABDK_Muffin_Core_v_2_0.pdf) | ABDK | Audit | 2022-05 | stale | Direct | contract_name | 2 | high |
| [ABDK (Periphery contracts)](https://resources.muffin.fi/files/audits/ABDK_Muffin_Periphery_v_1_0.pdf) | ABDK | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |
| [Dedaub (Core + periphery contracts)](https://resources.muffin.fi/files/audits/Deduab-Muffin-Audit-Report.pdf) | Dedaub | Audit | 2022-02 | stale | Direct | contract_name | 3 | high |
| [PeckShield (Core + periphery contracts)](https://resources.muffin.fi/files/audits/PeckShield-Audit-Report-Muffin-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa74cc5...cee785`](./contracts/ethereum-1/0xa74cc5c431531bf2601250c52825dc7b3dcee785/) | MuffinMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=8

Fork inheritance lineage and inherited audits are included when available.
