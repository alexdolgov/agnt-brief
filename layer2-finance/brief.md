# Agentic Audit Brief: Layer2 Finance

## Project Overview

- Project: Layer2 Finance (`layer2-finance`)
- Website: [https://layer2.finance](https://layer2.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.418Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $208,573.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 5 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 4 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/5 (80.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/5
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| REP | Tier 2 | 4 | 80.0% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Registry | unknown | ethereum | n/a | [`0x11808dd312fcdf6455b2de6ed197981fa9e30836`](./contracts/ethereum-1/0x11808dd312fcdf6455b2de6ed197981fa9e30836/) | ✅ Audited |
| RollupChain | unknown | ethereum | n/a | [`0xcf665943b6bc32be29a3e2eaab1afed2880a1f2e`](./contracts/ethereum-1/0xcf665943b6bc32be29a3e2eaab1afed2880a1f2e/) | ✅ Audited |
| TransitionDisputer | unknown | ethereum | n/a | [`0x5d3c0f4ca5ee99f8e8f59ff9a5fab04f6a7e007f`](./contracts/ethereum-1/0x5d3c0f4ca5ee99f8e8f59ff9a5fab04f6a7e007f/) | ✅ Audited |
| TransitionEvaluator | unknown | ethereum | n/a | [`0x0762d31185b1675a441008aba3eea22e1b381cb5`](./contracts/ethereum-1/0x0762d31185b1675a441008aba3eea22e1b381cb5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StrategyCompoundEthLendingPool | unknown | ethereum | n/a | [`0x61fc4d40d313eb01483f537a6db2b29fb38aea8d`](./contracts/ethereum-1/0x61fc4d40d313eb01483f537a6db2b29fb38aea8d/) | ⚠️ Unaudited |

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
| [REP-Celer Layer2 Finance v2-2021-06-25.pdf](https://github.com/celer-network/layer2-finance-v2-contracts/blob/main/audit/REP-Celer%20Layer2%20Finance%20v2-2021-06-25.pdf) | REP | Audit | 2021-06 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x61fc4d40d313eb01483f537a6db2b29fb38aea8d`](./contracts/ethereum-1/0x61fc4d40d313eb01483f537a6db2b29fb38aea8d/) | StrategyCompoundEthLendingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
