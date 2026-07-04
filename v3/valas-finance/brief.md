# Agentic Audit Brief: Valas Finance

## Project Overview

- Project: Valas Finance (`valas-finance`)
- Website: [https://valasfinance.com/](https://valasfinance.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:04.952Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: bsc
- Contract surface: 8 unique implementations (9 raw deployments)
- DeFi Llama TVL: $20,231.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 23 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 4 common project-authored base contract(s) (versionedinitializable, lendingpoolstorage, debttokenbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 9 (6 live, 3 unknown).
- Excluded by liveness: 26 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/5 (60.0%)
- Deployed-live implementations: 5 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/5
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 8
- Raw deployments: 9
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 60.0% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChefIncentivesController | governance | bsc | n/a | [`0xb7c1d9...e7ecbf`](./contracts/bsc-56/0xb7c1d99069a4eb582fc04e7e1124794000e7ecbf/) | ✅ Audited |
| MultiFeeDistribution | unknown | bsc | n/a | [`0x685d3b...15a3b3`](./contracts/bsc-56/0x685d3b02b9b0f044a3c01dbb95408fc2eb15a3b3/) | ✅ Audited |
| ValasToken | token | bsc | n/a | [`0xb1ebdd...42ea6f`](./contracts/bsc-56/0xb1ebdd56729940089ecc3ad0bbeeb12b6842ea6f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IncentiveEarner | unknown | bsc | n/a | 2 deployments: bsc [`0x45db28...c304a7`](./contracts/bsc-56/0x45db28f16c21d441006069a269c0442e4cc304a7/); bsc `0xa6e85e...dd09d2` | ⚠️ Unaudited |
| WETHGateway | token | bsc | n/a | [`0x3025d9...c28a29`](./contracts/bsc-56/0x3025d9f822d399fd7fb6275b5164bbde6dc28a29/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x1dbb30...42694c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec4aaa...18d1df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1670e...9cb067` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-ValasFinance-v1.0.pdf](https://github.com/valas-finance/valas-protocol/blob/main/audits/PeckShield-Audit-Report-ValasFinance-v1.0.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
