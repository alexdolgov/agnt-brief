# Agentic Audit Brief: Onyx

## Project Overview

- Project: Onyx (`onyx`)
- Website: [https://app.onyx.org/](https://app.onyx.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.008Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $48,123,511.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 17 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 9 common project-authored base contract(s) (chngovernancestorage, otokeninterface, otokenstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 36; live-surface contracts included: 7 (5 live, 2 unknown).
- Excluded by liveness: 29 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CHNGovernance | unknown | ethereum | n/a | [`0xdec2f31c3984f3440540dc78ef21b1369d4ef767`](./contracts/ethereum-1/0xdec2f31c3984f3440540dc78ef21b1369d4ef767/) | ⚠️ Unaudited |
| CHNReward | unknown | ethereum | n/a | [`0x28ca9caae31602d0312ebf6466c9dd57fca5da93`](./contracts/ethereum-1/0x28ca9caae31602d0312ebf6466c9dd57fca5da93/) | ⚠️ Unaudited |
| CHNStaking | unknown | ethereum | n/a | [`0x23445c63feef8d85956dc0f19ade87606d0e19a9`](./contracts/ethereum-1/0x23445c63feef8d85956dc0f19ade87606d0e19a9/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0x3fa642c0bbad64569eb8424af35f518347249216`](./contracts/ethereum-1/0x3fa642c0bbad64569eb8424af35f518347249216/) | ⚠️ Unaudited |
| OnyxDAORegistry | registry | ethereum | n/a | [`0xadb90c593e0bc8395a53087d8c558f5563df3b31`](./contracts/ethereum-1/0xadb90c593e0bc8395a53087d8c558f5563df3b31/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x36f0c2f474766a8c79d1228a1b5dd28a82f41067` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58e9a7e38fd7094ae086b134b74ac7b9b8ffebba` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [XCN-token-Certik-Audit-2022-03-06.pdf](https://github.com/chain/chain-token/blob/main/XCN-token-Certik-Audit-2022-03-06.pdf) | CertiK | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdec2f31c3984f3440540dc78ef21b1369d4ef767`](./contracts/ethereum-1/0xdec2f31c3984f3440540dc78ef21b1369d4ef767/) | CHNGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28ca9caae31602d0312ebf6466c9dd57fca5da93`](./contracts/ethereum-1/0x28ca9caae31602d0312ebf6466c9dd57fca5da93/) | CHNReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23445c63feef8d85956dc0f19ade87606d0e19a9`](./contracts/ethereum-1/0x23445c63feef8d85956dc0f19ade87606d0e19a9/) | CHNStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fa642c0bbad64569eb8424af35f518347249216`](./contracts/ethereum-1/0x3fa642c0bbad64569eb8424af35f518347249216/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadb90c593e0bc8395a53087d8c558f5563df3b31`](./contracts/ethereum-1/0xadb90c593e0bc8395a53087d8c558f5563df3b31/) | OnyxDAORegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11640] XCN-token-Certik-Audit-2022-03-06.pdf

Fork inheritance lineage and inherited audits are included when available.
