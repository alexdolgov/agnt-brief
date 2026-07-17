# Agentic Audit Brief: Mendi Finance

## Project Overview

- Project: Mendi Finance (`mendi-finance`)
- Website: [https://malda.xyz/](https://malda.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.591Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: linea
- Contract surface: 17 unique implementations (23 raw deployments)
- DeFi Llama TVL: $1,546,416.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 29 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 7 common project-authored base contract(s) (exponentialnoerror, proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 117; live-surface contracts included: 23 (12 live, 11 unknown).
- Excluded by liveness: 94 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/5 (40.0%)
- Deployed-live implementations: 6 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/6
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 17
- Raw deployments: 23
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Veridise | Tier 2 | 2 | 33.3% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| JumpRateModelV4 | unknown | linea | n/a | 3 deployments: linea [`0x23b9cb6f49100c54fa2a13ba0f85832b38780cb7`](./contracts/linea-59144/0x23b9cb6f49100c54fa2a13ba0f85832b38780cb7/); linea `0x62c31a75334e566aa049ab24a2ff13ac3a5c02d0`; linea `0x85a58adc34401e0792037d0e512f7e9b0b93ea19` | ✅ Audited |
| RewardDistributor | unknown | linea | n/a | 2 deployments: linea [`0x052932456a8fd199cd33be91312638a35c8b7ca5`](./contracts/linea-59144/0x052932456a8fd199cd33be91312638a35c8b7ca5/); linea `0x3b9b9364bf69761d308145371c38d9b558013d40` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafeL2 | governance | linea | n/a | [`0xe3cda0a0896b70f0ebc6a1848096529aa7aee9ee`](./contracts/linea-59144/0xe3cda0a0896b70f0ebc6a1848096529aa7aee9ee/) | ⚠️ Unaudited |
| Mendi | unknown | linea | n/a | [`0x43e8809ea748eff3204ee01f08872f063e44065f`](./contracts/linea-59144/0x43e8809ea748eff3204ee01f08872f063e44065f/) | ⚠️ Unaudited |
| MendiLoyaltyPoint | unknown | linea | n/a | 2 deployments: linea [`0x688ff5acedd3295ae4b60cc613a9a3fa5326dea1`](./contracts/linea-59144/0x688ff5acedd3295ae4b60cc613a9a3fa5326dea1/); linea `0xea57474c20c4bb3f0fea4a5d2996c1e636b7eb52` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | linea | n/a | 3 deployments: linea [`0x5df2107a5b5e7b0b19dd7ded7470e8d9792bc434`](./contracts/linea-59144/0x5df2107a5b5e7b0b19dd7ded7470e8d9792bc434/); linea `0x5f9668b84c469b6c2791b1e77ca2fac832c38d61`; linea `0x716f2de8a4de036ffe2b806a2948060a6f1053f5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | linea | n/a | `0x23c6035ebc88e35f3846d3b9f494a9996334b2b1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2b2b780f9fefb65d8e60ff986e04be062f1699c6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7fab165a9f9c02dbced3c319936f2b19f3532492` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8208dd4e40c97469091e2af4862659e2f59d242d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x87f99ccb9bb8c12c0c5ca8b100610e3ba9a99788` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xacf19d5eeb42baf7e7089380e8a3867f3c871e5f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xaef45cedf76ca61df495646c25b1a2015a596835` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb1c144bfe8eeb509c4d5dcf598f0af3626cf1fe1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb20b9a1ec924320f2c7d21f532b2b8d1ce8ba9a5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc21b8077262d68f4d7cdea25a6654dee8ab18173` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf40175e87baee76ec774ce860ccb0b382fedc271` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025_10_06_Sherlock_Competition.pdf](https://github.com/malda-protocol/malda-lending/blob/main/audit/2025_10_06_Sherlock_Competition.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | contract_name | 0 | n/a |
| [VAR_Malda_250120_malda_lending_V5.pdf](https://github.com/malda-protocol/malda-lending/blob/main/audit/VAR_Malda_250120_malda_lending_V5.pdf) | Veridise | Audit | 2025-04 | aging | Direct | contract_name | 5 | high |
| [audit-reports.md](https://ionian.gitbook.io/malda/malda-protocol/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VAR_Malda_250120_malda_zkcoprocessor.pdf](https://github.com/malda-protocol/malda-zk-coprocessor/blob/main/audit/VAR_Malda_250120_malda_zkcoprocessor.pdf) | Veridise | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [veridise.com/audits-archive/company/malda/malda-lending-2025-05-20](https://veridise.com/audits-archive/company/malda/malda-lending-2025-05-20) | Veridise | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [veridise.com/audits-archive/company/malda/malda-zk-coprocessor-2025-05-20](https://veridise.com/audits-archive/company/malda/malda-zk-coprocessor-2025-05-20) | Veridise | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x43e8809ea748eff3204ee01f08872f063e44065f`](./contracts/linea-59144/0x43e8809ea748eff3204ee01f08872f063e44065f/) | Mendi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x688ff5acedd3295ae4b60cc613a9a3fa5326dea1`](./contracts/linea-59144/0x688ff5acedd3295ae4b60cc613a9a3fa5326dea1/) | MendiLoyaltyPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5df2107a5b5e7b0b19dd7ded7470e8d9792bc434`](./contracts/linea-59144/0x5df2107a5b5e7b0b19dd7ded7470e8d9792bc434/) | OwnedDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=6

Zero-match audit list:

- [2930] 2025_10_06_Sherlock_Competition.pdf
- [2932] audit-reports.md
- [2933] VAR_Malda_250120_malda_zkcoprocessor.pdf
- [14778] veridise.com/audits-archive/company/malda/malda-lending-2025-05-20
- [14779] veridise.com/audits-archive/company/malda/malda-zk-coprocessor-2025-05-20

Fork inheritance lineage and inherited audits are included when available.
