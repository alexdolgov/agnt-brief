# Agentic Audit Brief: Sovryn

## Project Overview

- Project: Sovryn (`sovryn`)
- Website: [https://sovryn.com/](https://sovryn.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:57.735Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: base, ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $29,850,114.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Sovryn is a non-custodial Bitcoin DeFi protocol offering trading, margin trading, lending and borrowing on Bitcoin sidechain ecosystems. Its broader product and ecosystem surface includes staking and governance, the Zero/Sovryn Dollar stablecoin system, and Origins/BitcoinOS-related initiatives.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (0 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x5a0d867e0d70fcc6ade25c3f1b89d618b5b4eaa7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5684a06cab22db16d901fee2a5c081b4c91ea40e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xba20a5e63eeefffa6fd365e7e540628f8fc61474` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc17c6462ceafe9a8819258c6ba168bef5544fc21` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe5bc234a484a912a61aa74501960cfc202e773da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xefc78fc7d48b64958315949279ba181c2114abbd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Least Authority - Sovryn Bi-directional FastBTC Final Audit Report.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Least%20Authority%20-%20Sovryn%20Bi-directional%20FastBTC%20Final%20Audit%20Report.pdf) | Least Authority | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Smart Contract Audit_ Zero.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Smart%20Contract%20Audit_%20Zero.pdf) | Unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [Smart Contract Audit_Origins.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Smart%20Contract%20Audit_Origins.pdf) | Unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [Sovryn Governance Security Audit v210115.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn%20Governance%20Security%20Audit%20v210115.pdf) | yAudit | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [Sovryn Security Audit Smart Contracts v201218.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn%20Security%20Audit%20Smart%20Contracts%20v201218.pdf) | yAudit | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [Sovryn Security Recheck.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn%20Security%20Recheck.pdf) | Unknown | Audit | 2020-01 | stale | Direct | n/a | 0 | n/a |
| [Sovryn_CSOV_Token_Contract_Audit.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_CSOV_Token_Contract_Audit.pdf) | Unknown | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [Sovryn_Genesis_Sale_Contract_Audit.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_Genesis_Sale_Contract_Audit.pdf) | Unknown | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [Sovryn_Governance_Smart_Contract_Audit.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_Governance_Smart_Contract_Audit.pdf) | Unknown | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [Sovryn_Staking_Smart_Contract_Audit.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_Staking_Smart_Contract_Audit.pdf) | Unknown | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [certik-pre-sovryn-2021-10-11.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/certik-pre-sovryn-2021-10-11.pdf) | CertiK | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3926] Least Authority - Sovryn Bi-directional FastBTC Final Audit Report.pdf
- [3927] Smart Contract Audit_ Zero.pdf
- [3928] Smart Contract Audit_Origins.pdf
- [3929] Sovryn Governance Security Audit v210115.pdf
- [3930] Sovryn Security Audit Smart Contracts v201218.pdf
- [3931] Sovryn Security Recheck.pdf
- [3932] Sovryn_CSOV_Token_Contract_Audit.pdf
- [3933] Sovryn_Genesis_Sale_Contract_Audit.pdf
- [3934] Sovryn_Governance_Smart_Contract_Audit.pdf
- [3935] Sovryn_Staking_Smart_Contract_Audit.pdf
- [3936] certik-pre-sovryn-2021-10-11.pdf

Fork inheritance lineage and inherited audits are included when available.
