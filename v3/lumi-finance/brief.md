# Agentic Audit Brief: Lumi Finance

## Project Overview

- Project: Lumi Finance (`lumi-finance`)
- Website: [https://app.lumi.finance](https://app.lumi.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.733Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $362,066.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Algo-Stables. Structurally: 3 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 3 contract(s).

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Multicall2 | unknown | arbitrum | n/a | [`0xc5cfad...39b023`](./contracts/arbitrum-42161/0xc5cfada84e902ad92dd40194f0883ad49639b023/) | ⚠️ Unaudited |
| Multicall2Arbitrum | unknown | arbitrum | n/a | [`0x5b5cfe...003858`](./contracts/arbitrum-42161/0x5b5cfe992adac0c9d48e05854b2d91c73a003858/) | ⚠️ Unaudited |
| UtilityToken | unknown | arbitrum | n/a | [`0x1dd6b5...24636c`](./contracts/arbitrum-42161/0x1dd6b5f9281c6b4f043c02a83a46c2772024636c/) | ⚠️ Unaudited |
| Vyper_contract | unknown | arbitrum | n/a | [`0x0100fb...44f5c9`](./contracts/arbitrum-42161/0x0100fbf414071977b19fc38e6fc7c32fe444f5c9/) | ⚠️ Unaudited |

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
| [SlowMist Audit Report - Lumiterra Community Contracts_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20Lumiterra%20Community%20Contracts_en-us.pdf) | SlowMist | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21397] SlowMist Audit Report - Lumiterra Community Contracts_en-us.pdf

Fork inheritance lineage and inherited audits are included when available.
