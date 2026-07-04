# Agentic Audit Brief: OTSea

## Project Overview

- Project: OTSea (`otsea`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.182Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: base, ethereum
- Contract surface: 20 unique implementations (21 raw deployments)
- DeFi Llama TVL: $372,435.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 2 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (signaturehelper, whitelisthelper). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 21 (7 live, 14 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/6 (33.3%)
- Deployed-live implementations: 6 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/6
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 20
- Raw deployments: 21
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 33.3% | 2024-01 |
| Dedaub | Tier 2 | 1 | 16.7% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OTSea | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6e8b67...5353b4`](./contracts/ethereum-1/0x6e8b67b315b44519f8c2befdbbe11097c45353b4/); base `0xa836af...8c5fd5` | ✅ Audited |
| OTSeaERC20 | token | ethereum | n/a | [`0x5da151...09cb09`](./contracts/ethereum-1/0x5da151b95657e788076d04d56234bd93e409cb09/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OTSeaMigration | unknown | ethereum | n/a | [`0xe4eacc...fe50e9`](./contracts/ethereum-1/0xe4eacc41aa1a8208d57c1b4766b6b69e1cfe50e9/) | ⚠️ Unaudited |
| OTSeaRevenueDistributor | unknown | ethereum | n/a | [`0x34bccf...cca7ff`](./contracts/ethereum-1/0x34bccf4af03870265fe99cec262524f343cca7ff/) | ⚠️ Unaudited |
| OTSeaStable | unknown | ethereum | n/a | [`0x1c3c44...1885b8`](./contracts/ethereum-1/0x1c3c442c0ece529e6a8d7815b33c014e641885b8/) | ⚠️ Unaudited |
| OTSeaStaking | unknown | ethereum | n/a | [`0xf2c8e8...f30916`](./contracts/ethereum-1/0xf2c8e860ca12cde3f3195423ecf54427a4f30916/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x14d727...4f73f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20662e...23343d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ef116...33c0ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40e0c6...2aa0ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56a3c6...dd70e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81077a...fffec2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x902f26...0c4ea8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92cd50...b77a0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0aa24...be2ad7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1f4bf...8e3fbe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2f99e...052505` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8119b...0d02d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb0429...28c1f9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34bccf...cca7ff` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [dedaub.com/audits/otsea/otsea-dec-18-2023](https://dedaub.com/audits/otsea/otsea-dec-18-2023) | Dedaub | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |
| [dedaub.com/audits/otsea](https://dedaub.com/audits/otsea) | Dedaub | Audit | 2018-12 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-OTSea-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-OTSea-v1.0.pdf) | PeckShield | Audit | 2024-01 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe4eacc...fe50e9`](./contracts/ethereum-1/0xe4eacc41aa1a8208d57c1b4766b6b69e1cfe50e9/) | OTSeaMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34bccf...cca7ff`](./contracts/ethereum-1/0x34bccf4af03870265fe99cec262524f343cca7ff/) | OTSeaRevenueDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c3c44...1885b8`](./contracts/ethereum-1/0x1c3c442c0ece529e6a8d7815b33c014e641885b8/) | OTSeaStable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2c8e8...f30916`](./contracts/ethereum-1/0xf2c8e860ca12cde3f3195423ecf54427a4f30916/) | OTSeaStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Zero-match audit list:

- [13643] dedaub.com/audits/otsea

Fork inheritance lineage and inherited audits are included when available.
