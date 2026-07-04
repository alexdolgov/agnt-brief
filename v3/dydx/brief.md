# Agentic Audit Brief: dYdX

## Project Overview

- Project: dYdX (`dydx`)
- Website: [https://dydx.trade?ref=LoneHull0UN](https://dydx.trade?ref=LoneHull0UN)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:44.164Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 19 unique implementations (19 raw deployments)
- DeFi Llama TVL: $130,451,940.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 19 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (baseupgradeabilityproxy, proxy, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/19 (0.0%)
- Deployed-live implementations: 19 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/19
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 19
- Raw deployments: 19
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ClaimsProxy | unknown | ethereum | n/a | [`0x0fd829...d3199e`](./contracts/ethereum-1/0x0fd829c3365a225fb9226e75c97c3a114bd3199e/) | ⚠️ Unaudited |
| DydxGovernor | unknown | ethereum | n/a | [`0x0cb3b5...0ba812`](./contracts/ethereum-1/0x0cb3b545adbe9dbc601eda8ff36f1c866d0ba812/) | ⚠️ Unaudited |
| DydxToken | unknown | ethereum | n/a | [`0x92d6c1...6beff5`](./contracts/ethereum-1/0x92d6c1e31e14520e676a687f0a93788b716beff5/) | ⚠️ Unaudited |
| Executor | unknown | ethereum | n/a | [`0x64c7d4...95c6dc`](./contracts/ethereum-1/0x64c7d40c07efabec2aafdc243bf59eaf2195c6dc/) | ⚠️ Unaudited |
| GovernanceStrategy | unknown | ethereum | n/a | [`0x90dfd3...3475d9`](./contracts/ethereum-1/0x90dfd35f4a0bb2d30cdf66508085e33c353475d9/) | ⚠️ Unaudited |
| LiquidityStakingV1 | unknown | ethereum | n/a | [`0x5aa653...d91941`](./contracts/ethereum-1/0x5aa653a076c1dbb47cec8c1b4d152444cad91941/) | ⚠️ Unaudited |
| MerkleDistributorV1 | unknown | ethereum | n/a | [`0x01d334...35a588`](./contracts/ethereum-1/0x01d3348601968ab85b4bb028979006eac235a588/) | ⚠️ Unaudited |
| PriorityExecutor | unknown | ethereum | n/a | [`0xa30698...8e3cae`](./contracts/ethereum-1/0xa306989ba6bcacdeccf3c0614fff2b8c668e3cae/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x15774d...afcc13`](./contracts/ethereum-1/0x15774d4555fefd57c9fc8b11c8beba993eafcc13/) | ⚠️ Unaudited |
| SafetyModuleV1 | unknown | ethereum | n/a | [`0xd249ad...897c55`](./contracts/ethereum-1/0xd249ad8fa4646c303028a8d29cf8568a38897c55/) | ⚠️ Unaudited |
| SafetyModuleV2 | unknown | ethereum | n/a | [`0x65f7ba...0fb8ec`](./contracts/ethereum-1/0x65f7ba4ec257af7c55fd5854e5f6356bbd0fb8ec/) | ⚠️ Unaudited |
| StarkExHelperGovernor | unknown | ethereum | n/a | [`0x0db9b3...9e694a`](./contracts/ethereum-1/0x0db9b3f7dd83e29c9bece8e5e1089ba4369e694a/) | ⚠️ Unaudited |
| StarkExRemoverGovernorV2 | unknown | ethereum | n/a | [`0xfcaac0...ad5ec0`](./contracts/ethereum-1/0xfcaac0f14dea11ede11afcb875f29130e1ad5ec0/) | ⚠️ Unaudited |
| StarkProxyV1 | unknown | ethereum | n/a | [`0x820ced...e2be34`](./contracts/ethereum-1/0x820ced132f703a53c72c0e78641509c68fe2be34/) | ⚠️ Unaudited |
| StarkProxyV2 | unknown | ethereum | n/a | [`0x0b2b08...e0fbb6`](./contracts/ethereum-1/0x0b2b08ac98a1568a34208121c26f4f41a9e0fbb6/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0x0ada60...3995ce`](./contracts/ethereum-1/0x0ada60e07717ab19e4a466f5f0ac68a66e3995ce/) | ⚠️ Unaudited |
| TreasuryBridge | unknown | ethereum | n/a | [`0x639192...d0e871`](./contracts/ethereum-1/0x639192d54431f8c816368d3fb4107bc168d0e871/) | ⚠️ Unaudited |
| TreasuryMerkleClaimProxy | unknown | ethereum | n/a | [`0x95eabb...140b54`](./contracts/ethereum-1/0x95eabb0248d013b9f59c5d5256ce11b0a8140b54/) | ⚠️ Unaudited |
| TreasuryVester | unknown | ethereum | n/a | [`0x08a90f...5767d8`](./contracts/ethereum-1/0x08a90fe0741b7def03fb290cc7b273f1855767d8/) | ⚠️ Unaudited |

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
| [Informal-Systems-Audit-Report-2023-Q4.pdf](https://github.com/dydxprotocol/v4-chain/blob/main/audits/Informal-Systems-Audit-Report-2023-Q4.pdf) | Informal Systems | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [Informal-Systems-Audit-Report-2024-Q1.pdf](https://github.com/dydxprotocol/v4-chain/blob/main/audits/Informal-Systems-Audit-Report-2024-Q1.pdf) | Informal Systems | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Informal-Systems-Audit-Report-2024-Q2+.pdf](https://github.com/dydxprotocol/v4-chain/blob/main/audits/Informal-Systems-Audit-Report-2024-Q2%2B.pdf) | Informal Systems | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Informal-Systems-Audit-Report-2024-Q2.pdf](https://github.com/dydxprotocol/v4-chain/blob/main/audits/Informal-Systems-Audit-Report-2024-Q2.pdf) | Informal Systems | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Informal-Systems-Audit-Report-Phase-I-II.pdf](https://github.com/dydxprotocol/v4-chain/blob/main/audits/Informal-Systems-Audit-Report-Phase-I-II.pdf) | Informal Systems | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Informal-Systems-Audit-Report-Phase-III.pdf](https://github.com/dydxprotocol/v4-chain/blob/main/audits/Informal-Systems-Audit-Report-Phase-III.pdf) | Informal Systems | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20681] Informal-Systems-Audit-Report-2023-Q4.pdf
- [20682] Informal-Systems-Audit-Report-2024-Q1.pdf
- [20683] Informal-Systems-Audit-Report-2024-Q2+.pdf
- [20684] Informal-Systems-Audit-Report-2024-Q2.pdf
- [20685] Informal-Systems-Audit-Report-Phase-I-II.pdf
- [20686] Informal-Systems-Audit-Report-Phase-III.pdf

Fork inheritance lineage and inherited audits are included when available.
