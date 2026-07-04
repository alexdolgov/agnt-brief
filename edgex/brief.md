# Agentic Audit Brief: edgeX

## Project Overview

- Project: edgeX (`edgex`)
- Website: [https://pro.edgex.exchange/referral/196451583](https://pro.edgex.exchange/referral/196451583)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.339Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, ethereum
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $94,542,388.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 8 project-authored contract(s) across 2 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/6 (66.7%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/10
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 5 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 50.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 3 | 30.0% | 2026-03 |
| Binenet | Tier 2 | 1 | 10.0% | 2026-04 |
| RigSec | Tier 2 | 1 | 10.0% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EdgeToken | unknown | ethereum | n/a | [`0x9406dd...ab3161`](./contracts/ethereum-1/0x9406dd76452c172b3cc77092b42398e87dab3161/) | ✅ Audited |
| MultiSigPoolV5WithPermit | unknown | ethereum | n/a | [`0x166b53...ae0eb6`](./contracts/ethereum-1/0x166b5369f043474412408c8aba0d084e9cae0eb6/) | ✅ Audited |
| SpotVault | unknown | ethereum | n/a | [`0x238e0e...841487`](./contracts/ethereum-1/0x238e0edeb0e217fecd9e1ca98efa1219fc841487/) | ✅ Audited |
| StarkPerpetual | unknown | ethereum | n/a | [`0xfaae29...7d83dd`](./contracts/ethereum-1/0xfaae2946e846133af314d1df13684c89fa7d83dd/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | ethereum | n/a | [`0xce3066...23d551`](./contracts/ethereum-1/0xce306644d20ab523636f2121952fc6222623d551/) | ⚠️ Unaudited |
| FinalizableCommittee | unknown | ethereum | n/a | [`0x23bf3d...3c946e`](./contracts/ethereum-1/0x23bf3dcc14680162b7f5355aabb56d31823c946e/) | ⚠️ Unaudited |
| FinalizableGpsFactAdapter | unknown | ethereum | n/a | [`0x4abbc1...5e8562`](./contracts/ethereum-1/0x4abbc1826389ac0feaa49e70c30a041b665e8562/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x238789...d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x107695...e211bb`](./contracts/arbitrum-42161/0x107695630130919cb040b095b9b20511d6e211bb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x6f4836...c198d0`](./contracts/arbitrum-42161/0x6f4836afd5e21edcee9b838c5a4125829ec198d0/) | ⚠️ Unaudited |

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
| [report-binenet-vault-cctp-integration.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-binenet-vault-cctp-integration.pdf) | Binenet | Audit | 2026-04 | fresh | Direct | contract_name | 1 | high |
| [report-halborn-edgex-v2.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-halborn-edgex-v2.pdf) | Halborn | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [report-rigsec-edgex-v1.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-rigsec-edgex-v1.pdf) | RigSec | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [report-slowmist-edgedistributor.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-slowmist-edgedistributor.pdf) | SlowMist | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [report-slowmist-edgetoken.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-slowmist-edgetoken.pdf) | SlowMist | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [report-slowmist-edgex-v1.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-slowmist-edgex-v1.pdf) | SlowMist | Audit | 2025-06 | aging | Direct | contract_name | 2 | high |
| [report-spearbit-edgex-v2.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-spearbit-edgex-v2.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x23bf3d...3c946e`](./contracts/ethereum-1/0x23bf3dcc14680162b7f5355aabb56d31823c946e/) | FinalizableCommittee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4abbc1...5e8562`](./contracts/ethereum-1/0x4abbc1826389ac0feaa49e70c30a041b665e8562/) | FinalizableGpsFactAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=5

Zero-match audit list:

- [19726] report-halborn-edgex-v2.pdf
- [19728] report-slowmist-edgedistributor.pdf
- [19731] report-spearbit-edgex-v2.pdf

Fork inheritance lineage and inherited audits are included when available.
