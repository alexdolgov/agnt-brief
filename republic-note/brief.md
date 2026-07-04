# Agentic Audit Brief: Republic Note

## Project Overview

- Project: Republic Note (`republic-note`)
- Website: [https://republic.com/note](https://republic.com/note)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.675Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: avalanche
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $11,659,729.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 5 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (easyaccesscontrol). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dividends | unknown | avalanche | n/a | [`0x790e11...4df7e4`](./contracts/avalanche-43114/0x790e115a36c158908716934082cce8fc194df7e4/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | avalanche | n/a | [`0x386f94...ef18f4`](./contracts/avalanche-43114/0x386f942cbc11be2dae9de41cbb44f18b6fef18f4/) | ⚠️ Unaudited |
| RestrictedLockupToken | token | avalanche | n/a | [`0x7c6a93...a8f7a7`](./contracts/avalanche-43114/0x7c6a937943f135283a2561938de2200994a8f7a7/) | ⚠️ Unaudited |
| RestrictedSwap | unknown | avalanche | n/a | [`0x97af8f...d33576`](./contracts/avalanche-43114/0x97af8f20ad2e7c5cae81682180011ffb16d33576/) | ⚠️ Unaudited |
| TransferRules | unknown | avalanche | n/a | [`0xfb2310...cb81e7`](./contracts/avalanche-43114/0xfb23108ebefcb2079a98aa7b2480307f47cb81e7/) | ⚠️ Unaudited |

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
| avalanche | [`0x790e11...4df7e4`](./contracts/avalanche-43114/0x790e115a36c158908716934082cce8fc194df7e4/) | Dividends | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7c6a93...a8f7a7`](./contracts/avalanche-43114/0x7c6a937943f135283a2561938de2200994a8f7a7/) | RestrictedLockupToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x97af8f...d33576`](./contracts/avalanche-43114/0x97af8f20ad2e7c5cae81682180011ffb16d33576/) | RestrictedSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xfb2310...cb81e7`](./contracts/avalanche-43114/0xfb23108ebefcb2079a98aa7b2480307f47cb81e7/) | TransferRules | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
