# Agentic Audit Brief: Aevo

## Project Overview

- Project: Aevo (`aevo`)
- Website: [https://app.aevo.xyz/r/defillama](https://app.aevo.xyz/r/defillama)
- Lifecycle: active (Tier 0, 84.3% below peak)
- Generated: 2026-06-18T04:35:37.227Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-bcf3
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 21 unique implementations (44 raw deployments)
- DeFi Llama TVL: $18,890,733.00
- On-chain TVL (included contracts): $77,986,880.03
- TVL by chain: Ethereum $54,208,683.81 | Arbitrum $23,636,704.02 | Optimism $141,492.19

## Project Description

Aevo is a decentralized crypto derivatives exchange focused on options and perpetual futures trading. Current protocol characterization should be tied to verified Aevo deployments and DefiLlama's Aevo Perps derivatives tracking, while legacy Ribbon/Aevo Options components and inherited Ribbon Finance contracts or audits should be labeled separately unless current production use and bytecode/version equivalence are verified.

### Architecture

The Deposit contracts family provides the bridging infrastructure that feeds into both Aevo Options and Aevo Perps vaults. Aevo Options and Aevo Perps share the same deposit and withdrawal pathways but operate separate vaults for their respective derivative products.

## Contract Surface Quality

- Indexed contracts: 600; live-surface contracts included: 44 (44 live, 0 unknown).
- Excluded by liveness: 518 inactive, 38 singleton, 0 uninitialized.
- Deployment units: 4/29 live.
- Detected codebases: none
- Unverified dependencies: 1/2.

## Audit Coverage Summary

- Verified implementations audited: 6/15 (40.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 1
- Unverified implementations: 6
- Unique implementations: 21
- Raw deployments: 44
- Audits discovered: 17
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $2,214,072.77
- Latest audit: 2024-01 (stale)
- Staleness: 0 fresh, 0 aging, 16 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 2 | 13.3% | 2021-05 |
| Ribbon | Tier 2 | 2 | 13.3% | 2024-01 |
| PeckShield | Tier 2 | 1 | 6.7% | 2022-03 |
| Unknown | Tier 2 | 1 | 6.7% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AevoToken | token | ethereum | n/a | [`0xb528ed...13b997`](./contracts/ethereum-1/0xb528edbef013aff855ac3c50b381f253af13b997/) | ✅ Audited |
| RibbonToken | token | ethereum | n/a | [`0x6123b0...21fa6b`](./contracts/ethereum-1/0x6123b0049f904d730db3c36a31167d9d4121fa6b/) | ✅ Audited |
| Vault | core_logic | arbitrum | n/a | 13 deployments: optimism `0x44343a...241b02`; optimism `0x780962...3a28ef`; optimism `0x923960...3590b6`; optimism `0xad7bdd...2c1bae`; optimism `0xcbecd6...19b608`; arbitrum [`0x11b3a7...8524a8`](./contracts/arbitrum-42161/0x11b3a7e08eb2fdea2745e4cb64648b10b28524a8/); arbitrum `0x3d20c6...60896f`; arbitrum `0x4ed9ed...743553`; arbitrum `0x5e027a...e32882`; arbitrum `0x80d40e...4d137c`; arbitrum `0xa0e9b6...0fde77`; arbitrum `0xb2cb9a...1a60a6`; arbitrum `0xd7bbe2...d13047` | ✅ Audited |
| AevoStaking | unknown | ethereum | n/a | [`0x389130...46ad81`](./contracts/ethereum-1/0x38913051e01d4f6910cb66bb9ac3cb77d746ad81/) | ✅ Audited |
| L2OutputOracle | operational_periphery | ethereum | unit-35164 | [`0x909e51...ae3770`](./contracts/ethereum-1/0x909e51211e959339efb14b36f5a50955a8ae3770/) | ✅ Audited |
| OptimismPortal2 | unknown | ethereum | unit-35161 | [`0x787a0a...01e320`](./contracts/ethereum-1/0x787a0acab02437c60aafb1a29167a3609801e320/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RibbonThetaVaultWithSwap | core_logic | ethereum | unit-35150 (2 proxies) | 2 deployments: ethereum [`0x257518...89644b`](./contracts/ethereum-1/0x25751853eab4d0eb3652b5eb6ecb102a2789644b/); ethereum `0x65a833...b13b2f` | ⚠️ Unaudited |
| RibbonThetaYearnVault | core_logic | ethereum | unit-35169 | [`0xcc3235...cc9624`](./contracts/ethereum-1/0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624/) | ⚠️ Unaudited |
| ArbitrumL2Switchboard | unknown | arbitrum | n/a | [`0xdff78a...2a75f7`](./contracts/arbitrum-42161/0xdff78a949e47c1e90f3dd6dd7fe2fa72b42a75f7/) | ⚠️ Unaudited |
| L1DepositHelper | periphery | ethereum | n/a | [`0xc3bb52...7c4c7f`](./contracts/ethereum-1/0xc3bb52e6118f05dd8ad4e1c1a1398281cd7c4c7f/) | ⚠️ Unaudited |
| L1SocketDepositHelper | periphery | base | n/a | [`0x6ea58e...744e56`](./contracts/base-8453/0x6ea58e68d37e523a80a461672e2d32e4ab744e56/) | ⚠️ Unaudited |
| MerkleDistributorAdjustable | operational_periphery | ethereum | n/a | [`0x778046...f21591`](./contracts/ethereum-1/0x778046fec7de9905edee161de4b4b4d8a6f21591/) | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | operational_periphery | ethereum | n/a | [`0xd4b812...2a2483`](./contracts/ethereum-1/0xd4b812dd7134f632c947ca11a2fb0f49082a2483/) | ⚠️ Unaudited |
| Socket | unknown | arbitrum | n/a | [`0x37cc67...55f6ba`](./contracts/arbitrum-42161/0x37cc674582049b579571e2ffd890a4d99355f6ba/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MultiSigWrapper | governance | base | n/a | 11 deployments: base [`0x0c98cb...3b6540`](./contracts/base-8453/0x0c98cb76b36a5b5f723cb11b3a031350583b6540/); base `0x1fc216...b40633`; base `0x2db2d1...c15522`; base `0x4bd265...046306`; base `0x65df4c...a623b5`; base `0x6ec8cc...db5827`; base `0x7f3163...40f8eb`; base `0xa3a855...fd0a6b`; base `0xb6f2ac...70c37d`; base `0xc3213d...66b1ec`; base `0xc47d1c...2ee3fe` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x38d1ff...f83ab9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43f3dd...68d063` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4dc25d...947ff5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ab138...db9421` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xab46c3...3ea6f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd134ea...81e840` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Ribbon-report.pdf (also discovered via alternate URL)](https://github.com/ribbon-finance/aevo-audit/blob/master/Ribbon-report.pdf) | Ribbon | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [VAR-AEVO230918.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR-AEVO230918.pdf) | VAR | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [VAR_Ribbon.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR_Ribbon.pdf) | VAR | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [VAR_Ribbon_OTC.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR_Ribbon_OTC.pdf) | VAR | Audit | 2023-03 | stale | Direct | contract_name | 0 | n/a |
| [Chainsafe-Ribbon-Audit_April-2021.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Chainsafe-Ribbon-Audit_April-2021.pdf) | Chainsafe | Audit | 2021 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-RVOL-v1.0rc.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RVOL-v1.0rc.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Ribbon-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-RibbonSwap.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonSwap.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-RibbonTreasuryVault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonTreasuryVault.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Quantstamp Theta Vault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Quantstamp%20Theta%20Vault.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | 2 | high |
| [RibbonThetaVault V2 Smart Contract Review And Verification.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | Unknown | Audit | 2021-07 | stale | Direct | contract_name | 13 | high |
| [RibbonThetaYearn-18june.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaYearn-18june.pdf) | Unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VAR-Ribbon230918.pdf](https://github.com/aevoxyz/audit/blob/main/VAR-Ribbon230918.pdf) | Ribbon | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [VAR_Ribbon.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon.pdf) | Ribbon | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [VAR_Ribbon_230604.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon_230604.pdf) | Ribbon | Audit | 2023-06 | stale | Direct | contract_name | 1 | high |
| [VAR_Ribbon_240116_aevo_governance_2-V1.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon_240116_aevo_governance_2-V1.pdf) | Ribbon | Audit | 2024-01 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x257518...89644b`](./contracts/ethereum-1/0x25751853eab4d0eb3652b5eb6ecb102a2789644b/) | RibbonThetaVaultWithSwap | core_logic | $1,891,486.85 | Verified native implementation with $1,891,486.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdff78a...2a75f7`](./contracts/arbitrum-42161/0xdff78a949e47c1e90f3dd6dd7fe2fa72b42a75f7/) | ArbitrumL2Switchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3bb52...7c4c7f`](./contracts/ethereum-1/0xc3bb52e6118f05dd8ad4e1c1a1398281cd7c4c7f/) | L1DepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6ea58e...744e56`](./contracts/base-8453/0x6ea58e68d37e523a80a461672e2d32e4ab744e56/) | L1SocketDepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x778046...f21591`](./contracts/ethereum-1/0x778046fec7de9905edee161de4b4b4d8a6f21591/) | MerkleDistributorAdjustable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd4b812...2a2483`](./contracts/ethereum-1/0xd4b812dd7134f632c947ca11a2fb0f49082a2483/) | MerkleDistributorWithDeadline | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c98cb...3b6540`](./contracts/base-8453/0x0c98cb76b36a5b5f723cb11b3a031350583b6540/) | MultiSigWrapper | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x37cc67...55f6ba`](./contracts/arbitrum-42161/0x37cc674582049b579571e2ffd890a4d99355f6ba/) | Socket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=87

Zero-match audit list:

- [1895] Ribbon-report.pdf
- [1896] VAR-AEVO230918.pdf
- [1897] VAR_Ribbon.pdf
- [1898] VAR_Ribbon_OTC.pdf
- [1899] Chainsafe-Ribbon-Audit_April-2021.pdf
- [1901] PeckShield-Audit-Report-RVOL-v1.0rc.pdf
- [1902] PeckShield-Audit-Report-Ribbon-v1.0.pdf
- [1903] PeckShield-Audit-Report-RibbonSwap.pdf
- [1904] PeckShield-Audit-Report-RibbonTreasuryVault.pdf
- [1907] RibbonThetaYearn-18june.pdf
- [14929] VAR-Ribbon230918.pdf
- [14930] VAR_Ribbon.pdf

Fork inheritance lineage and inherited audits are included when available.
