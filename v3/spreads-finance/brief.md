# Agentic Audit Brief: spreads-finance

## Project Overview

- Project: spreads-finance (`spreads-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.517Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 10 unique implementations (10 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 10 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (basecontract). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | unknown | ethereum | n/a | [`0x188b32...70d62f`](./contracts/ethereum-1/0x188b32c336c017d8cf0a5d7aa9ab1fb55470d62f/) | ⚠️ Unaudited |
| AirdropVault | unknown | ethereum | n/a | [`0x51c222...eac6f4`](./contracts/ethereum-1/0x51c2226b38e1a901b26e71c0fbc933773deac6f4/) | ⚠️ Unaudited |
| Beacon | unknown | ethereum | n/a | [`0x172074...067a6a`](./contracts/ethereum-1/0x1720742e6195f1d7cb791b6e1116f2e7ea067a6a/) | ⚠️ Unaudited |
| DataStore | unknown | ethereum | n/a | [`0x0dac7b...34e9af`](./contracts/ethereum-1/0x0dac7bb2fd301ddb8875ba4f912801863d34e9af/) | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | [`0x085546...8ed478`](./contracts/ethereum-1/0x085546675239820f0eb897857209868c0c8ed478/) | ⚠️ Unaudited |
| SprBTCVault | unknown | ethereum | n/a | [`0x1174de...930c9c`](./contracts/ethereum-1/0x1174defdd6bea8179fdf193013bf9bd74b930c9c/) | ⚠️ Unaudited |
| SprBTCVaultRepository | unknown | ethereum | n/a | [`0x55842f...ff65a8`](./contracts/ethereum-1/0x55842f78594f976549e15fac597381930aff65a8/) | ⚠️ Unaudited |
| SPRVault | unknown | ethereum | n/a | [`0x0e8953...5bf6cd`](./contracts/ethereum-1/0x0e89538ab556ca69e2f1d4884029128d6c5bf6cd/) | ⚠️ Unaudited |
| VaultToken | unknown | ethereum | n/a | [`0x0b4c10...5a7ed1`](./contracts/ethereum-1/0x0b4c1077a1b1014322fcb9cedf3b824e255a7ed1/) | ⚠️ Unaudited |
| YieldVault | unknown | ethereum | n/a | [`0x2d2680...7085ac`](./contracts/ethereum-1/0x2d2680708aa4a99021474486f99b2f39e27085ac/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
