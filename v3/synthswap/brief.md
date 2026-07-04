# Agentic Audit Brief: Synthswap

## Project Overview

- Project: Synthswap (`synthswap`)
- Website: [https://synthswap.io](https://synthswap.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:58.455Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: base
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $14,810.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 44 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 2 common project-authored base contract(s) (basepositionmanager, governable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 15 (10 live, 5 unknown).
- Excluded by liveness: 13 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/10 (40.0%)
- Deployed-live implementations: 10 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/10
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 40.0% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dividends | unknown | base | n/a | [`0xb8b0e1...10508f`](./contracts/base-8453/0xb8b0e1ebd2266a0dff7da4ebee8daaaa6810508f/) | ✅ Audited |
| SynthChef | unknown | base | n/a | [`0xef153c...0098b9`](./contracts/base-8453/0xef153cb7bfc04c657cb7f582c7411556320098b9/) | ✅ Audited |
| SynthToken | token | base | n/a | [`0xbd2dbb...fe5ed2`](./contracts/base-8453/0xbd2dbb8ecea9743ca5b16423b4eaa26bdcfe5ed2/) | ✅ Audited |
| XSynthToken | token | base | n/a | [`0x01cc6b...2d05ea`](./contracts/base-8453/0x01cc6b33c63cee896521d63451896c14d42d05ea/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SLP | unknown | base | n/a | [`0x67599b...b8291d`](./contracts/base-8453/0x67599b62d6864621704b2a124857fcfa39b8291d/) | ⚠️ Unaudited |
| SynthFactory | unknown | base | n/a | [`0x4bd16d...7d720d`](./contracts/base-8453/0x4bd16d59a5e1e0db903f724aa9d721a31d7d720d/) | ⚠️ Unaudited |
| SynthPair | unknown | base | n/a | [`0xac5af1...7ecb28`](./contracts/base-8453/0xac5af1706cc42a7c398c274c3b8ecf735e7ecb28/) | ⚠️ Unaudited |
| SynthRouter | adapter | base | n/a | [`0x8734b3...abeff0`](./contracts/base-8453/0x8734b3264dbd22f899bcef4e92d442d538abeff0/) | ⚠️ Unaudited |
| Vesting | operational_periphery | base | n/a | [`0x253f74...735a05`](./contracts/base-8453/0x253f744e6faf9c7a452a819bb9e07314ca735a05/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x2b1df2...ce9778` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x41206c...407981` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x651c84...0e548c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c0af1...a9f811` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe41dc6...f21cfe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-SynthSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SynthSwap-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Fork inheritance lineage and inherited audits are included when available.
