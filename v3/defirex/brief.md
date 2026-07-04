# Agentic Audit Brief: Defirex

## Project Overview

- Project: Defirex (`defirex`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.653Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: bsc, ethereum
- Contract surface: 7 unique implementations (16 raw deployments)
- DeFi Llama TVL: $4,559.74
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 14 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 8 common project-authored base contract(s) (ctoken, exponential, carefulmath). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/7 (0.0%)
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 16
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20 | unknown | ethereum | n/a | 7 deployments: ethereum [`0x158079...ac95c1`](./contracts/ethereum-1/0x158079ee67fce2f58472a96584a73c7ab9ac95c1/); ethereum `0x39aa39...5e7563`; ethereum `0x6c8c6b...d90e4e`; ethereum `0xa4c993...eecd47`; ethereum `0xb3319f...66d407`; ethereum `0xc11b12...a3a7f4`; ethereum `0xf5dce5...c444dc` | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | n/a | [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | ⚠️ Unaudited |
| CErc20Delegate | unknown | ethereum | n/a | [`0x99ee77...d521ec`](./contracts/ethereum-1/0x99ee778b9a6205657dd03b2b91415c8646d521ec/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | 4 deployments: ethereum [`0x178053...63df29`](./contracts/ethereum-1/0x178053c06006e67e09879c09ff012ff9d263df29/); ethereum `0x62f18c...bb8fcc`; ethereum `0xf592ef...56132c`; ethereum `0xf88c7e...6b0be0` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x3d9819...c9cd3b`](./contracts/ethereum-1/0x3d9819210a31b4961b30ef54be2aed79b9c9cd3b/) | ⚠️ Unaudited |
| PermittableToken | token | bsc | n/a | [`0x74b3ab...b2aacf`](./contracts/bsc-56/0x74b3abb94e9e1ecc25bd77d6872949b4a9b2aacf/) | ⚠️ Unaudited |

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
| [DeFireX Security Audit by Pessimistic Public.pdf](https://github.com/pessimistic-io/audits/blob/main/DeFireX%20Security%20Audit%20by%20Pessimistic%20Public.pdf) | yAudit | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13003] DeFireX Security Audit by Pessimistic Public.pdf

Fork inheritance lineage and inherited audits are included when available.
