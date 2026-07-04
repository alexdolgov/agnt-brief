# Agentic Audit Brief: edgeX

## Project Overview

- Project: edgeX (`edgex`)
- Website: [https://pro.edgex.exchange/referral/196451583](https://pro.edgex.exchange/referral/196451583)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:44.639Z
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

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 6 unknown
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
| EdgeToken | unknown | ethereum | n/a | [`0x9406dd...ab3161`](./contracts/ethereum-1/0x9406dd76452c172b3cc77092b42398e87dab3161/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xce3066...23d551`](./contracts/ethereum-1/0xce306644d20ab523636f2121952fc6222623d551/) | ⚠️ Unaudited |
| FinalizableCommittee | unknown | ethereum | n/a | [`0x23bf3d...3c946e`](./contracts/ethereum-1/0x23bf3dcc14680162b7f5355aabb56d31823c946e/) | ⚠️ Unaudited |
| FinalizableGpsFactAdapter | unknown | ethereum | n/a | [`0x4abbc1...5e8562`](./contracts/ethereum-1/0x4abbc1826389ac0feaa49e70c30a041b665e8562/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x238789...d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/) | ⚠️ Unaudited |
| MultiSigPoolV5WithPermit | unknown | ethereum | n/a | [`0x166b53...ae0eb6`](./contracts/ethereum-1/0x166b5369f043474412408c8aba0d084e9cae0eb6/) | ⚠️ Unaudited |
| SpotVault | unknown | ethereum | n/a | [`0x238e0e...841487`](./contracts/ethereum-1/0x238e0edeb0e217fecd9e1ca98efa1219fc841487/) | ⚠️ Unaudited |
| StarkPerpetual | unknown | ethereum | n/a | [`0xfaae29...7d83dd`](./contracts/ethereum-1/0xfaae2946e846133af314d1df13684c89fa7d83dd/) | ⚠️ Unaudited |
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
| [report-binenet-vault-cctp-integration.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-binenet-vault-cctp-integration.pdf) | Binenet | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [report-halborn-edgex-v2.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-halborn-edgex-v2.pdf) | Halborn | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [report-rigsec-edgex-v1.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-rigsec-edgex-v1.pdf) | RigSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [report-slowmist-edgedistributor.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-slowmist-edgedistributor.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [report-slowmist-edgetoken.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-slowmist-edgetoken.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [report-slowmist-edgex-v1.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-slowmist-edgex-v1.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [report-spearbit-edgex-v2.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-spearbit-edgex-v2.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19725] report-binenet-vault-cctp-integration.pdf
- [19726] report-halborn-edgex-v2.pdf
- [19727] report-rigsec-edgex-v1.pdf
- [19728] report-slowmist-edgedistributor.pdf
- [19729] report-slowmist-edgetoken.pdf
- [19730] report-slowmist-edgex-v1.pdf
- [19731] report-spearbit-edgex-v2.pdf

Fork inheritance lineage and inherited audits are included when available.
