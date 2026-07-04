# Agentic Audit Brief: Stream Finance

## Project Overview

- Project: Stream Finance (`stream-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.979Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 4 unique implementations (26 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 6 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (oft). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 26 (25 live, 1 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/3 (66.7%)
- Deployed-live implementations: 3 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 26
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 66.7% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StableWrapper | unknown | ethereum | n/a | 5 deployments: ethereum [`0x05f47d...2cabe0`](./contracts/ethereum-1/0x05f47d7cbb0f3d7f988e442e8c1401685d2cabe0/); ethereum `0x2ca440...1ab8cb`; ethereum `0x6eaf19...7dbb4c`; ethereum `0xdcfd98...76a427`; ethereum `0xf70f54...386a34` | ✅ Audited |
| StreamVault | core_logic | ethereum | n/a | 13 deployments: ethereum [`0x12fd50...8057d6`](./contracts/ethereum-1/0x12fd502e2052cafb41eccc5b596023d9978057d6/); ethereum `0x2a0a09...dfdee0`; ethereum `0x2a2f84...3892c2`; ethereum `0x350fa4...7a916a`; ethereum `0x6efa12...0ad48e`; ethereum `0x7e586f...723153`; ethereum `0x8a31d2...01c68b`; ethereum `0x9e0bbb...476984`; ethereum `0xa79108...d21920`; ethereum `0xae2e5f...c8d749`; ethereum `0xc15697...f64f13`; ethereum `0xe2fc85...f26f94`; ethereum `0xf3b466...8de3a7` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultKeeper | unknown | ethereum | n/a | 7 deployments: ethereum [`0x0735eb...d33bfc`](./contracts/ethereum-1/0x0735ebeec9dd125cce45c2f354883ed9e7d33bfc/); ethereum `0x642f0d...58f5e7`; ethereum `0x66b9ff...2e4e7c`; ethereum `0x7012da...d1b09e`; ethereum `0x80ca28...385d43`; ethereum `0x84acf9...4f0637`; ethereum `0xdffb08...52994c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x4d4874...20af5d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Zenith Audit Report - Stream Protocol.pdf](https://github.com/zenith-security/reports/blob/main/reports/Zenith%20Audit%20Report%20-%20Stream%20Protocol.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 2 | n/a |

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
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
