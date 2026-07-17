# Agentic Audit Brief: Goldsand by InshAllah

## Project Overview

- Project: Goldsand by InshAllah (`goldsand-by-inshallah`)
- Website: [https://goldsand.fi/](https://goldsand.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.871Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $218,365.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Goldsand by InshAllah is a liquid staking protocol on Ethereum that allows users to stake assets and receive a liquid derivative token, while earning staking rewards. It provides a withdrawal mechanism through a dedicated vault to manage user redemptions.

### Architecture

The Goldsand contract serves as the main liquid staking token, while the WithdrawalVault handles user redemptions, likely interacting with the Goldsand contract to burn or transfer tokens upon withdrawal.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (0 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Goldsand | unknown | ethereum | n/a | `0x6659423929e1a00119fc3f79c8e4f443cc6fd36f` | ❓ Unverified |
| WithdrawalVault | operational_periphery | ethereum | n/a | `0x22b35d437b3999f5c357c176adeec1b8b0f35c13` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spearbit.pdf](https://github.com/inshallah-network/goldsand-v1/blob/master/audit/spearbit.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13186] spearbit.pdf

Fork inheritance lineage and inherited audits are included when available.
