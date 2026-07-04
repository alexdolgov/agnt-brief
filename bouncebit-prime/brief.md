# Agentic Audit Brief: BounceBit Prime

## Project Overview

- Project: BounceBit Prime (`bouncebit-prime`)
- Website: [https://prime.bouncebit.io/](https://prime.bouncebit.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:08.534Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: bsc, ethereum
- Contract surface: 16 unique implementations (26 raw deployments)
- DeFi Llama TVL: $11,436,609.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 3 project-authored contract(s) across 2 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 26 (12 live, 14 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 7 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 16
- Raw deployments: 26
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
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
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x576238...6aba1d`](./contracts/ethereum-1/0x5762385b22f72e6cc620c1cb44782fd8a36aba1d/); bsc [`0x576238...6aba1d`](./contracts/bsc-56/0x5762385b22f72e6cc620c1cb44782fd8a36aba1d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x33072b...97b9e1`](./contracts/ethereum-1/0x33072b5eef4f7afd1a5beb3ee2e70efc9597b9e1/); ethereum `0x539f1d...b32484`; ethereum `0xcb7ad2...24726f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e9041...6596f4`](./contracts/ethereum-1/0x4e90419a5ead3b94bda952f92ff268408d6596f4/); ethereum `0x95917f...3bb90c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6f776d...95c580`](./contracts/ethereum-1/0x6f776d791612a22a70e206602cff96185695c580/); ethereum `0xf17c30...934208` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7cd93d...c26712`](./contracts/ethereum-1/0x7cd93d2af6750f36f107cc02360ea622b3c26712/); ethereum `0xa6b612...1630ba` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 4 deployments: bsc [`0x539f1d...b32484`](./contracts/bsc-56/0x539f1d37983e31c70ce29c9384ac67f367b32484/); bsc `0x95917f...3bb90c`; bsc `0xa6b612...1630ba`; bsc `0xcb7ad2...24726f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 2 deployments: bsc [`0x6f776d...95c580`](./contracts/bsc-56/0x6f776d791612a22a70e206602cff96185695c580/); bsc `0x9250f7...eacd8e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x235519...b9a19f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26fbb1...4fad1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98d1fd...d749d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e42b8...fdd619` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26fbb1...4fad1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33072b...97b9e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e9041...6596f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7cd93d...c26712` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98d1fd...d749d3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/aNWumH92fd1205exOOBs/uploads/KFpCcHfuzqSvO1yGpUJL/BounceBit-Vault_audit_report_2024-02-09.pdf](https://1316604192-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaNWumH92fd1205exOOBs%2Fuploads%2FKFpCcHfuzqSvO1yGpUJL%2FBounceBit-Vault_audit_report_2024-02-09.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20669] spaces/aNWumH92fd1205exOOBs/uploads/KFpCcHfuzqSvO1yGpUJL/BounceBit-Vault_audit_report_2024-02-09.pdf

Fork inheritance lineage and inherited audits are included when available.
