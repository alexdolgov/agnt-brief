# Agentic Audit Brief: Libero Financial

## Project Overview

- Project: Libero Financial (`libero-financial`)
- Website: [https://libero.financial/app?lang=en](https://libero.financial/app?lang=en)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.468Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc
- Contract surface: 25 unique implementations (25 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 7 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (auth). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 37; live-surface contracts included: 25 (1 live, 24 unknown).
- Excluded by liveness: 12 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 1 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiberoToken | token | bsc | n/a | [`0x0dfcb4...414d78`](./contracts/bsc-56/0x0dfcb45eae071b3b846e220560bbcdd958414d78/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x138d71...8c06ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1420c8...52ac27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x170c8f...1bb6b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d8140...48f676` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30c196...9960a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f645b...c82d5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42e6e0...8e683d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x434c02...9adebd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46d941...8f1cd4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b81fa...20c11d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5eb196...b898eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b9936...b8c547` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e03f9...826c14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa78b00...192fe1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaaf0f1...757dbe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf44d6...4505e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2b11d...83040e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbaf482...f80c93` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc30ba6...145862` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6d0e9...852da3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd0aee...d0d49f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1df1f...f81f5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb3a2a...a4008d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc1f59...7ec193` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Libero Financial Token.pdf](https://github.com/Rugfreecoins/Smart-Contract-Audits/blob/main/Libero%20Financial%20Token.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
