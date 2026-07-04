# Agentic Audit Brief: Mendi Finance

## Project Overview

- Project: Mendi Finance (`mendi-finance`)
- Website: [https://malda.xyz/](https://malda.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:22.919Z
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

- Indexed contracts: 116; live-surface contracts included: 23 (12 live, 11 unknown).
- Excluded by liveness: 93 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/6 (33.3%)
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
| JumpRateModelV4 | unknown | linea | n/a | 3 deployments: linea [`0x23b9cb...780cb7`](./contracts/linea-59144/0x23b9cb6f49100c54fa2a13ba0f85832b38780cb7/); linea `0x62c31a...5c02d0`; linea `0x85a58a...93ea19` | ✅ Audited |
| RewardDistributor | unknown | linea | n/a | 2 deployments: linea [`0x052932...8b7ca5`](./contracts/linea-59144/0x052932456a8fd199cd33be91312638a35c8b7ca5/); linea `0x3b9b93...013d40` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafeL2 | governance | linea | n/a | [`0xe3cda0...aee9ee`](./contracts/linea-59144/0xe3cda0a0896b70f0ebc6a1848096529aa7aee9ee/) | ⚠️ Unaudited |
| Mendi | unknown | linea | n/a | [`0x43e880...44065f`](./contracts/linea-59144/0x43e8809ea748eff3204ee01f08872f063e44065f/) | ⚠️ Unaudited |
| MendiLoyaltyPoint | unknown | linea | n/a | 2 deployments: linea [`0x688ff5...26dea1`](./contracts/linea-59144/0x688ff5acedd3295ae4b60cc613a9a3fa5326dea1/); linea `0xea5747...b7eb52` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | linea | n/a | 3 deployments: linea [`0x5df210...2bc434`](./contracts/linea-59144/0x5df2107a5b5e7b0b19dd7ded7470e8d9792bc434/); linea `0x5f9668...c38d61`; linea `0x716f2d...1053f5` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | linea | n/a | `0x23c603...34b2b1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2b2b78...1699c6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7fab16...532492` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8208dd...9d242d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x87f99c...a99788` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xacf19d...871e5f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xaef45c...596835` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb1c144...cf1fe1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb20b9a...8ba9a5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc21b80...b18173` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf40175...edc271` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025_10_06_Sherlock_Competition.pdf](https://github.com/malda-protocol/malda-lending/blob/main/audit/2025_10_06_Sherlock_Competition.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [VAR_Malda_250120_malda_lending_V5.pdf](https://github.com/malda-protocol/malda-lending/blob/main/audit/VAR_Malda_250120_malda_lending_V5.pdf) | Veridise | Audit | 2025-04 | aging | Direct | contract_name | 5 | high |
| [audit-reports.md](https://ionian.gitbook.io/malda/malda-protocol/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VAR_Malda_250120_malda_zkcoprocessor.pdf](https://github.com/malda-protocol/malda-zk-coprocessor/blob/main/audit/VAR_Malda_250120_malda_zkcoprocessor.pdf) | Veridise | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [veridise.com/audits-archive/company/malda/malda-lending-2025-05-20](https://veridise.com/audits-archive/company/malda/malda-lending-2025-05-20) | Veridise | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [veridise.com/audits-archive/company/malda/malda-zk-coprocessor-2025-05-20](https://veridise.com/audits-archive/company/malda/malda-zk-coprocessor-2025-05-20) | Veridise | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=5

Zero-match audit list:

- [2930] 2025_10_06_Sherlock_Competition.pdf
- [2932] audit-reports.md
- [2933] VAR_Malda_250120_malda_zkcoprocessor.pdf
- [14778] veridise.com/audits-archive/company/malda/malda-lending-2025-05-20
- [14779] veridise.com/audits-archive/company/malda/malda-zk-coprocessor-2025-05-20

Fork inheritance lineage and inherited audits are included when available.
