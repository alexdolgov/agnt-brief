# Agentic Audit Brief: Prime Staking

## Project Overview

- Project: Prime Staking (`prime-staking`)
- Website: [https://primestaking.xyz/](https://primestaking.xyz/)
- Lifecycle: active (Tier 0, 66.4% below peak)
- Generated: 2026-06-19T06:14:34.846Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: base
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $2,467,609.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prime Staking is an XDC staking/liquid staking protocol. Its public TVL-bearing product is associated with XDC staking and liquid staking; Base PRFI/ONFT/vesting contracts should be treated only as ancillary or unverified infrastructure unless independently documented as part of the Prime Staking staking system.

### Architecture

The ONFTDiamond token contract is the primary liquid staking derivative, while PRFI is a related token. The PRFIVestingV2Proxy manages vesting of PRFI tokens, indicating a shared token economy where staking rewards or allocations are distributed through vesting.

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 2 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PRFI | unknown | base | n/a | [`0x7bbcf1...de3255`](./contracts/base-8453/0x7bbcf1b600565ae023a1806ef637af4739de3255/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | base | n/a | `0x3d5154...563bca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x793db5...bad98b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d8f06...c68494` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x86ceb2...936f95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf3206...22151a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Read the full report (PDF)](https://github.com/PrimeNumbersLabs/primestaking-gitbook/blob/main/NM_0843_xdc_prime_stake_FINAL_updated_tests.pdf) | yAudit | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [**XDC Staking Contract (V1 / liquid staking)**](https://www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-staking-contract) | QuillAudits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x7bbcf1...de3255`](./contracts/base-8453/0x7bbcf1b600565ae023a1806ef637af4739de3255/) | PRFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2515] Read the full report (PDF)
- [2516] **XDC Staking Contract (V1 / liquid staking)**

Fork inheritance lineage and inherited audits are included when available.
