# Agentic Audit Brief: ChadFinance

## Project Overview

- Project: ChadFinance (`chadfinance`)
- Website: [https://chadfinance.xyz](https://chadfinance.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.194Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: bsc
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $74.60
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 12 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 1 ERC20 token, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 6 common project-authored base contract(s) (peripheryimmutablestate, multicall, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 4 (3 live, 1 unknown).
- Excluded by liveness: 9 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/3 (66.7%)
- Deployed-live implementations: 3 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 66.7% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Conjurer | unknown | bsc | n/a | [`0x3204d41f2f9773076594f93705072da1a5346ee4`](./contracts/bsc-56/0x3204d41f2f9773076594f93705072da1a5346ee4/) | ✅ Audited |
| Oracle | unknown | bsc | n/a | [`0x94bd0f3e591adf234f82b55acf8e37beb7081071`](./contracts/bsc-56/0x94bd0f3e591adf234f82b55acf8e37beb7081071/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SwapRouter | adapter | bsc | n/a | [`0xa8eea1eae8f7483f7ad0555783a18f730da1affd`](./contracts/bsc-56/0xa8eea1eae8f7483f7ad0555783a18f730da1affd/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x26c6e529487a19e4098c8803612de4877e1c2fc9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChadFinanceAudit.pdf](https://github.com/ch4dfinance/Chad-Finance/blob/main/ChadFinanceAudit.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 2 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xa8eea1eae8f7483f7ad0555783a18f730da1affd`](./contracts/bsc-56/0xa8eea1eae8f7483f7ad0555783a18f730da1affd/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
