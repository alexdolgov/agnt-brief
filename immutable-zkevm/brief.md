# Agentic Audit Brief: Immutable zkEVM

## Project Overview

- Project: Immutable zkEVM (`immutable-zkevm`)
- Website: [https://www.immutable.com/](https://www.immutable.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.888Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $21,345,034.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Chain. Structurally: 3 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 3 contract(s).

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 9 (2 live, 7 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 2 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AxelarGasService | unknown | ethereum | n/a | [`0x2d5d7d...082712`](./contracts/ethereum-1/0x2d5d7d31f671f86c782533cc367f14109a082712/) | ⚠️ Unaudited |
| AxelarGateway | unknown | ethereum | n/a | [`0x4f4495...8d56a5`](./contracts/ethereum-1/0x4f4495243837681061c4743b74b3eedf548d56a5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x3bd586...e946df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50b5a9...b1d523` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59c38b...609c28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5be3f2...b9f12d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ef80c...4f8edc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e6b93...34f157` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc34e97...7f2516` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Perimeter-Fuzzing-2024-09-10.pdf](https://github.com/immutable/zkevm-bridge-contracts/blob/main/audits/Perimeter-Fuzzing-2024-09-10.pdf) | Perimeter | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [202309_Halborn_Final.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/202309_Halborn_Final.pdf) | Halborn | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [Quantstamp_Arcadeum_Report_Final.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/Quantstamp_Arcadeum_Report_Final.pdf) | Quantstamp | Audit | 2020-06 | stale | Direct | n/a | 0 | n/a |
| [sequence_quantstamp_audit_feb_2021.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/sequence_quantstamp_audit_feb_2021.pdf) | Quantstamp | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [202309_audit_background.md](https://github.com/immutable/wallet-contracts/blob/main/audits/202309_audit_background.md) | Unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4f4495...8d56a5`](./contracts/ethereum-1/0x4f4495243837681061c4743b74b3eedf548d56a5/) | AxelarGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1814] Perimeter-Fuzzing-2024-09-10.pdf
- [1815] 202309_Halborn_Final.pdf
- [1817] Quantstamp_Arcadeum_Report_Final.pdf
- [1818] sequence_quantstamp_audit_feb_2021.pdf
- [15117] 202309_audit_background.md

Fork inheritance lineage and inherited audits are included when available.
