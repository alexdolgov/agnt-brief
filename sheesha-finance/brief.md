# Agentic Audit Brief: sheesha-finance

## Project Overview

- Project: sheesha-finance (`sheesha-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.044Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 4 unique implementations (4 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 4 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 4 contract(s).

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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LGE | unknown | bsc | n/a | [`0x232fb065d9d24c34708eedbf03724f2e95abe768`](./contracts/bsc-56/0x232fb065d9d24c34708eedbf03724f2e95abe768/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0xb31ecb43645eb273210838e710f2692cc6b30a11`](./contracts/bsc-56/0xb31ecb43645eb273210838e710f2692cc6b30a11/) | ⚠️ Unaudited |
| SHEESHAVault | unknown | bsc | n/a | [`0x8fc627a3e352ead0b705d81fb660588d7ac0b6c4`](./contracts/bsc-56/0x8fc627a3e352ead0b705d81fb660588d7ac0b6c4/) | ⚠️ Unaudited |
| SHEESHAVaultLP | unknown | bsc | n/a | [`0x5d350f07c1d9245c1ecb7c622c67edd49c6a0a35`](./contracts/bsc-56/0x5d350f07c1d9245c1ecb7c622c67edd49c6a0a35/) | ⚠️ Unaudited |

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
| bsc | [`0x232fb065d9d24c34708eedbf03724f2e95abe768`](./contracts/bsc-56/0x232fb065d9d24c34708eedbf03724f2e95abe768/) | LGE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb31ecb43645eb273210838e710f2692cc6b30a11`](./contracts/bsc-56/0xb31ecb43645eb273210838e710f2692cc6b30a11/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8fc627a3e352ead0b705d81fb660588d7ac0b6c4`](./contracts/bsc-56/0x8fc627a3e352ead0b705d81fb660588d7ac0b6c4/) | SHEESHAVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5d350f07c1d9245c1ecb7c622c67edd49c6a0a35`](./contracts/bsc-56/0x5d350f07c1d9245c1ecb7c622c67edd49c6a0a35/) | SHEESHAVaultLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
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
