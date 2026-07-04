# Agentic Audit Brief: MEV Protocol

## Project Overview

- Project: MEV Protocol (`mev-protocol`)
- Website: [https://mev.io/](https://mev.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:26.018Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: ethereum
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $77,691.60
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 8 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault; built on solmate.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (owned, auth). Dominant framework: solmate.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 4 (3 live, 1 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafe | governance | ethereum | n/a | [`0x617c8d...38f582`](./contracts/ethereum-1/0x617c8de5bde54ffbb8d92716cc947858ca38f582/) | ⚠️ Unaudited |
| MevEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x24ae2d...e4f27e`](./contracts/ethereum-1/0x24ae2da0f361aa4be46b48eb19c91e02c5e4f27e/); ethereum `0x9d7981...8160cd` | ⚠️ Unaudited |
| MevEthRouter | adapter | ethereum | n/a | [`0xb60598...7b4a93`](./contracts/ethereum-1/0xb60598cd27fb881b92a34afce93aa1ee647b4a93/) | ⚠️ Unaudited |

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
| [manifoldfinance.slack.com](https://manifoldfinance.slack.com/?redir=%2Ffiles%2FU058FSRGPLM%2FF060DJ8NJ2C%2Fmanifold_finance_july23_public__liquid_staking_.pdf%3Fu%3DU058FSRGPLM%26file_id%3DF060DJ8NJ2C%26name%3Dmanifold_finance_july23_public__liquid_staking_.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [kebabsec.xyz/audits/manifold_finance_meveth2_audit](https://kebabsec.xyz/audits/manifold_finance_meveth2_audit) | Kebabsec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13489] manifoldfinance.slack.com
- [13490] kebabsec.xyz/audits/manifold_finance_meveth2_audit

Fork inheritance lineage and inherited audits are included when available.
