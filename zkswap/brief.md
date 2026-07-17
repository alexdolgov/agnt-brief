# Agentic Audit Brief: ZKSwap

## Project Overview

- Project: ZKSwap (`zkswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.958Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $126,286.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
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
- Raw deployments: 3
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
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
| Governance | unknown | ethereum | n/a | [`0x02ecef526f806f06357659ffd14834fe82ef4b04`](./contracts/ethereum-1/0x02ecef526f806f06357659ffd14834fe82ef4b04/) | ⚠️ Unaudited |
| ZksToken | unknown | ethereum | n/a | [`0xe4815ae53b124e7263f08dcdbbb757d41ed658c6`](./contracts/ethereum-1/0xe4815ae53b124e7263f08dcdbbb757d41ed658c6/) | ⚠️ Unaudited |
| ZkSync | unknown | ethereum | n/a | [`0x6de5bdc580f55bc9dacafcb67b91674040a247e3`](./contracts/ethereum-1/0x6de5bdc580f55bc9dacafcb67b91674040a247e3/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x02ecef526f806f06357659ffd14834fe82ef4b04`](./contracts/ethereum-1/0x02ecef526f806f06357659ffd14834fe82ef4b04/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4815ae53b124e7263f08dcdbbb757d41ed658c6`](./contracts/ethereum-1/0xe4815ae53b124e7263f08dcdbbb757d41ed658c6/) | ZksToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6de5bdc580f55bc9dacafcb67b91674040a247e3`](./contracts/ethereum-1/0x6de5bdc580f55bc9dacafcb67b91674040a247e3/) | ZkSync | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
