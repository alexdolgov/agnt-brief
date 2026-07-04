# Agentic Audit Brief: Sophon Bridge

## Project Overview

- Project: Sophon Bridge (`sophon-bridge`)
- Website: [https://sophon.xyz/](https://sophon.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:57.710Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: ethereum
- Contract surface: 11 unique implementations (12 raw deployments)
- DeFi Llama TVL: $19,893,650.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 10 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 12
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AethirWrapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ecb43...33a13c`](./contracts/ethereum-1/0x1ecb43e02d6573119eaf0e6509a4725b8633a13c/); ethereum `0x3f69bb...3f7fee` | ⚠️ Unaudited |
| Bridgehub | operational_periphery | ethereum | n/a | [`0x303a46...eb5213`](./contracts/ethereum-1/0x303a465b659cbb0ab36ee643ea362c509eeb5213/) | ⚠️ Unaudited |
| ChainAdmin | unknown | ethereum | n/a | [`0xe1eea4...ac2ad3`](./contracts/ethereum-1/0xe1eea4d6443b19d373fe99de838b930ef0ac2ad3/) | ⚠️ Unaudited |
| ChainAssetHandler | unknown | ethereum | n/a | [`0xdd5cb8...b61076`](./contracts/ethereum-1/0xdd5cb8b9037357b4cd37391a073798f8aab61076/) | ⚠️ Unaudited |
| DiamondProxy | unknown | ethereum | n/a | [`0x05ede6...7241e3`](./contracts/ethereum-1/0x05ede6ad1f39b7a16c949d5c33a0658c9c7241e3/) | ⚠️ Unaudited |
| L1NativeTokenVault | core_logic | ethereum | n/a | [`0xbed1eb...1111f6`](./contracts/ethereum-1/0xbed1eb542f9a5aa6419ff3deb921a372681111f6/) | ⚠️ Unaudited |
| L1Nullifier | unknown | ethereum | n/a | [`0xd7f9f5...8cb2cb`](./contracts/ethereum-1/0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb/) | ⚠️ Unaudited |
| LensRewardV2 | periphery | ethereum | n/a | [`0xdf4aa3...8124ff`](./contracts/ethereum-1/0xdf4aa37a2927deb886f3dc3d070c55b5088124ff/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0xe4644b...f052d1`](./contracts/ethereum-1/0xe4644b6d106a18062344c0a853666bc0b8f052d1/) | ⚠️ Unaudited |
| StAethir | unknown | ethereum | n/a | [`0xc96aa6...19e59c`](./contracts/ethereum-1/0xc96aa65f31e41b4ca6924b86d93e25686019e59c/) | ⚠️ Unaudited |
| VeAethir | unknown | ethereum | n/a | [`0x1b49f5...1b7490`](./contracts/ethereum-1/0x1b49f587feca530a7bf7cf2bd3fbda780e1b7490/) | ⚠️ Unaudited |

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
| [Quantstamp - Sophon Farming Final Report.pdf](https://github.com/sophon-org/audits/blob/main/Quantstamp%20-%20Sophon%20Farming%20Final%20Report.pdf) | Quantstamp | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Sherlock - sophon-farming-contracts-audit-report-1718619027.pdf](https://github.com/sophon-org/audits/blob/main/Sherlock%20-%20sophon-farming-contracts-audit-report-1718619027.pdf) | Sherlock | Contest | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Omniscia - Security Review - 11_20_2024.pdf](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%2011_20_2024.pdf) | Omniscia | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Omniscia - Security Review - 11_01_2024.pdf](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%2011_01_2024.pdf) | Guardian | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Omniscia - Security Review - Farming - 01_08_2025.pdf](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%20Farming%20-%2001_08_2025.pdf) | Omniscia | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Quantstamp - Sophon tokens & BridgeHubWrappe.pdf](https://github.com/sophon-org/audits/blob/main/Quantstamp%20-%20Sophon%20tokens%20%26%20BridgeHubWrappe.pdf) | Quantstamp | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Nethermind - NM0482_FINAL_SOPHON.pdf](https://github.com/sophon-org/audits/blob/main/Nethermind%20-%20NM0482_FINAL_SOPHON.pdf) | Nethermind | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%2004_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf) | yAudit | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1ecb43...33a13c`](./contracts/ethereum-1/0x1ecb43e02d6573119eaf0e6509a4725b8633a13c/) | AethirWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x303a46...eb5213`](./contracts/ethereum-1/0x303a465b659cbb0ab36ee643ea362c509eeb5213/) | Bridgehub | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1eea4...ac2ad3`](./contracts/ethereum-1/0xe1eea4d6443b19d373fe99de838b930ef0ac2ad3/) | ChainAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd5cb8...b61076`](./contracts/ethereum-1/0xdd5cb8b9037357b4cd37391a073798f8aab61076/) | ChainAssetHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05ede6...7241e3`](./contracts/ethereum-1/0x05ede6ad1f39b7a16c949d5c33a0658c9c7241e3/) | DiamondProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbed1eb...1111f6`](./contracts/ethereum-1/0xbed1eb542f9a5aa6419ff3deb921a372681111f6/) | L1NativeTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd7f9f5...8cb2cb`](./contracts/ethereum-1/0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb/) | L1Nullifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf4aa3...8124ff`](./contracts/ethereum-1/0xdf4aa37a2927deb886f3dc3d070c55b5088124ff/) | LensRewardV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc96aa6...19e59c`](./contracts/ethereum-1/0xc96aa65f31e41b4ca6924b86d93e25686019e59c/) | StAethir | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b49f5...1b7490`](./contracts/ethereum-1/0x1b49f587feca530a7bf7cf2bd3fbda780e1b7490/) | VeAethir | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4608] Quantstamp - Sophon Farming Final Report.pdf
- [4609] Sherlock - sophon-farming-contracts-audit-report-1718619027.pdf
- [4610] Omniscia - Security Review - 11_20_2024.pdf
- [4611] Omniscia - Security Review - 11_01_2024.pdf
- [4612] Omniscia - Security Review - Farming - 01_08_2025.pdf
- [4613] Quantstamp - Sophon tokens & BridgeHubWrappe.pdf
- [4614] Nethermind - NM0482_FINAL_SOPHON.pdf
- [4615] Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf

Fork inheritance lineage and inherited audits are included when available.
