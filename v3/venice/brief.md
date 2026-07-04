# Agentic Audit Brief: venice

## Project Overview

- Project: venice (`venice`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:10.320Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base
- Contract surface: 6 unique implementations (6 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 3 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | base | n/a | [`0x2bc7b8...a7930a`](./contracts/base-8453/0x2bc7b83536a5a3616772a0c93d04d7fd9aa7930a/) | ⚠️ Unaudited |
| Mike | unknown | base | n/a | [`0xa1168c...26bbef`](./contracts/base-8453/0xa1168c27daf7f21fe6c1d94272a65e6acc26bbef/) | ⚠️ Unaudited |
| Oracle | unknown | base | n/a | [`0x1a7105...153c59`](./contracts/base-8453/0x1a7105a38b016bce1ceee42af129757f5e153c59/) | ⚠️ Unaudited |
| Staking | unknown | base | n/a | [`0x14f4ae...c71070`](./contracts/base-8453/0x14f4ae4e4c5f017c0026fec7edc98e0bd7c71070/) | ⚠️ Unaudited |
| StakingV2 | unknown | base | n/a | [`0x321b7f...f340ff`](./contracts/base-8453/0x321b7ff75154472b18edb199033ff4d116f340ff/) | ⚠️ Unaudited |
| Venice | unknown | base | n/a | [`0x603458...38c108`](./contracts/base-8453/0x603458e5bfb26bafc5647e71deef60a47d38c108/) | ⚠️ Unaudited |

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
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
