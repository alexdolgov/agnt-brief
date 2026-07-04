# Agentic Audit Brief: Wildcat Protocol

## Project Overview

- Project: Wildcat Protocol (`wildcat-protocol`)
- Website: [https://wildcat.finance](https://wildcat.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.235Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum, plasma
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $362,387,205.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Uncollateralized Lending. Structurally: 12 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 1 ERC20 token; role-gated via AccessControl; built on solady.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (spherexconfig, spherexprotectedregisteredbase). Dominant framework: solady.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/12 (41.7%)
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/12
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 41.7% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 4naly3er | Tier 2 | 5 | 41.7% | n/a |
| Code4rena | Tier 1 | 5 | 41.7% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HooksFactory | unknown | plasma | n/a | [`0xb46bae...42e517`](./contracts/plasma-9745/0xb46bae25ac6d23148531ed1853a8881fd842e517/) | ✅ Audited |
| MarketLens | unknown | ethereum | n/a | [`0x3556d0...586862`](./contracts/ethereum-1/0x3556d0497180afb37e6eaebd5d17309159586862/) | ✅ Audited |
| WildcatArchController | unknown | plasma | n/a | [`0xdb2e0d...f348ae`](./contracts/plasma-9745/0xdb2e0de97d6d96aa56754635704a4273e0f348ae/) | ✅ Audited |
| WildcatMarketControllerFactory | unknown | ethereum | n/a | [`0xa1a18e...d6aa4f`](./contracts/ethereum-1/0xa1a18eea2a9e81bf84c131282a4b99867dd6aa4f/) | ✅ Audited |
| WildcatSanctionsSentinel | unknown | plasma | n/a | [`0x370648...903f5b`](./contracts/plasma-9745/0x37064895ba2c1e269eaf7ff32564818d08903f5b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChainalysisProxy | unknown | plasma | n/a | [`0x38056f...5f3f46`](./contracts/plasma-9745/0x38056f7fe6396417b191bf7dc6a3aa04235f3f46/) | ⚠️ Unaudited |
| OpenAccessRoleProvider | unknown | ethereum | n/a | [`0x562055...373101`](./contracts/ethereum-1/0x5620553d8881335f74ad19259daacd1d9b373101/) | ⚠️ Unaudited |
| SphereXEngine | unknown | ethereum | n/a | [`0x4f90c0...a1766a`](./contracts/ethereum-1/0x4f90c0a26cc2ad22ee98398dcc02bbe314a1766a/) | ⚠️ Unaudited |
| Wildcat4626WrapperFactory | unknown | ethereum | n/a | [`0xea6de1...bb148a`](./contracts/ethereum-1/0xea6de11f8f3f83c79bd9d8db5517fcfdf2bb148a/) | ⚠️ Unaudited |
| WildcatCopyOfChainalysisList | unknown | plasma | n/a | [`0xfeb516...945ee4`](./contracts/plasma-9745/0xfeb516d9d946dd487a9346f6fee11f40c6945ee4/) | ⚠️ Unaudited |
| WildcatFeeRecipient | unknown | ethereum | n/a | [`0x35a5d1...708554`](./contracts/ethereum-1/0x35a5d1bd68f3139971027b92c1ee9384a0708554/) | ⚠️ Unaudited |
| WildcatMarketCollateralFactory | unknown | ethereum | n/a | [`0xbbf84a...403e7c`](./contracts/ethereum-1/0xbbf84ab8b232a467511772af4ab8a4190f403e7c/) | ⚠️ Unaudited |

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
| [hackmd.io/@geistermeister/BJk4Ekt90](https://hackmd.io/@geistermeister/BJk4Ekt90) | alpeh_v | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [hackmd.io/@geistermeister/r15gj_y1p](https://hackmd.io/@geistermeister/r15gj_y1p) | alpeh_v | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [4naly3er-report.md](https://github.com/code-423n4/2024-08-wildcat/blob/main/4naly3er-report.md) | 4naly3er | Audit | n/a | unknown | Direct | contract_name | 5 | medium |
| [code4rena.com/reports/2024-08-wildcat](https://code4rena.com/reports/2024-08-wildcat) | Code4rena | Contest | 2024-08 | aging | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | [`0x38056f...5f3f46`](./contracts/plasma-9745/0x38056f7fe6396417b191bf7dc6a3aa04235f3f46/) | ChainalysisProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x562055...373101`](./contracts/ethereum-1/0x5620553d8881335f74ad19259daacd1d9b373101/) | OpenAccessRoleProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f90c0...a1766a`](./contracts/ethereum-1/0x4f90c0a26cc2ad22ee98398dcc02bbe314a1766a/) | SphereXEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea6de1...bb148a`](./contracts/ethereum-1/0xea6de11f8f3f83c79bd9d8db5517fcfdf2bb148a/) | Wildcat4626WrapperFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0xfeb516...945ee4`](./contracts/plasma-9745/0xfeb516d9d946dd487a9346f6fee11f40c6945ee4/) | WildcatCopyOfChainalysisList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35a5d1...708554`](./contracts/ethereum-1/0x35a5d1bd68f3139971027b92c1ee9384a0708554/) | WildcatFeeRecipient | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbf84a...403e7c`](./contracts/ethereum-1/0xbbf84ab8b232a467511772af4ab8a4190f403e7c/) | WildcatMarketCollateralFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=10

Zero-match audit list:

- [21199] hackmd.io/@geistermeister/BJk4Ekt90
- [21200] hackmd.io/@geistermeister/r15gj_y1p

Fork inheritance lineage and inherited audits are included when available.
