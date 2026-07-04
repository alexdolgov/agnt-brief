# Agentic Audit Brief: Frankencoin

## Project Overview

- Project: Frankencoin (`frankencoin`)
- Website: [https://frankencoin.com](https://frankencoin.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:52.854Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: ethereum
- Contract surface: 23 unique implementations (38 raw deployments)
- DeFi Llama TVL: $66,912,071.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 42 project-authored contract(s) across 1 chain(s); 2 ERC4626 vaults, 9 ERC20 tokens, 3 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 3 common project-authored base contract(s) (erc20permitlight, mathutil, ccipsender). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 65; live-surface contracts included: 38 (34 live, 4 unknown).
- Excluded by liveness: 27 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/19 (42.1%)
- Deployed-live implementations: 19 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/19
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 23
- Raw deployments: 38
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 4 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 42.1% (ChainSecurity, Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 8 | 42.1% | 2024-11 |
| Code4rena | Tier 1 | 5 | 26.3% | 2023-04 |
| Blockbite | Tier 2 | 4 | 21.1% | 2023-02 |
| unknown | Tier 2 | 4 | 21.1% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Equity | unknown | ethereum | n/a | [`0x1ba267...e341b2`](./contracts/ethereum-1/0x1ba26788dfde592fec8bcb0eaff472a42be341b2/) | ✅ Audited |
| FPSWrapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5052d3...80b182`](./contracts/ethereum-1/0x5052d3cc819f53116641e89b96ff4cd1ee80b182/); ethereum `0x54e556...e0fa16` | ✅ Audited |
| Frankencoin | unknown | ethereum | n/a | 3 deployments: ethereum [`0x422d17...86bf4e`](./contracts/ethereum-1/0x422d17ccc1442501d039595ffcaaa71b4686bf4e/); ethereum `0x7a7870...09b0d8`; ethereum `0xb58e61...0921cb` | ✅ Audited |
| MintingHub | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0e5dfe...fcb9ea`](./contracts/ethereum-1/0x0e5dfe570e5637f7b6b43f515b30dd08fbfcb9ea/); ethereum `0x4539b0...0a4e7a`; ethereum `0x754676...265219`; ethereum `0xde12b6...653557` | ✅ Audited |
| Position | unknown | ethereum | n/a | [`0x44bfc2...3467b9`](./contracts/ethereum-1/0x44bfc2a260f091f8365ba8b240cd9491903467b9/) | ✅ Audited |
| PositionRoller | unknown | ethereum | n/a | [`0xad0107...9ea6b6`](./contracts/ethereum-1/0xad0107d3da540fd54b1931735b65110c909ea6b6/) | ✅ Audited |
| Savings | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27d9ad...a17b38`](./contracts/ethereum-1/0x27d9ad987bde08a0d083ef7e0e4043c857a17b38/); ethereum `0x3bf301...dfb2ae` | ✅ Audited |
| StablecoinBridge | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x3b71ba...340403`](./contracts/ethereum-1/0x3b71ba73299f925a837836160c3e1fec74340403/); ethereum `0x3e445f...64f6c1`; ethereum `0x4125cd...d8402b`; ethereum `0x7bbe8f...e346df`; ethereum `0x8d8b5d...0fa020` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Autobidder | unknown | ethereum | n/a | 2 deployments: ethereum [`0x761ebe...50a168`](./contracts/ethereum-1/0x761ebe1a53d65dcd629965cd89c2d5218250a168/); ethereum `0x795075...17b39a` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | ethereum | n/a | [`0x9359cd...be4b79`](./contracts/ethereum-1/0x9359cd75549dae00cdd8d22297bc9b13fbbe4b79/) | ⚠️ Unaudited |
| CCIPAdmin | unknown | ethereum | n/a | [`0x2527ec...5dfef8`](./contracts/ethereum-1/0x2527ec458c863073a303cf0a362bf78add5dfef8/) | ⚠️ Unaudited |
| CloneHelper | periphery | ethereum | n/a | [`0x55cd28...5f8bee`](./contracts/ethereum-1/0x55cd2820735db56ca0965be224d71994265f8bee/) | ⚠️ Unaudited |
| Folio | unknown | ethereum | n/a | [`0xe4a109...db1f94`](./contracts/ethereum-1/0xe4a10951f962e6cb93cb843a4ef05d2f99db1f94/) | ⚠️ Unaudited |
| GovernanceSender | unknown | ethereum | n/a | [`0xfd2327...f876eb`](./contracts/ethereum-1/0xfd23272dfcb13dc3fabd8db851fcd4827af876eb/) | ⚠️ Unaudited |
| LeadrateSender | unknown | ethereum | n/a | [`0x4d4337...8ef28d`](./contracts/ethereum-1/0x4d433780a16d425c5db1f725a6d104233a8ef28d/) | ⚠️ Unaudited |
| PositionFactory | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0cde50...486392`](./contracts/ethereum-1/0x0cde500e6940931ed190ded77bb48640c9486392/); ethereum `0x63cf7c...706b7e`; ethereum `0x728310...8472ba`; ethereum `0xcfa9b5...be2080` | ⚠️ Unaudited |
| SavingsVaultZCHF_2 | core_logic | ethereum | n/a | [`0xe5f130...abf6b0`](./contracts/ethereum-1/0xe5f130253ff137f9917c0107659a4c5262abf6b0/) | ⚠️ Unaudited |
| TransferReference | unknown | ethereum | n/a | [`0xf98c22...8a1916`](./contracts/ethereum-1/0xf98c221661f51578f5e5236b189a493e2a8a1916/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | ethereum | n/a | [`0x8e4318...c78cef`](./contracts/ethereum-1/0x8e4318e2cb1ae291254b187001a59a1f8ac78cef/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x56d22e...074615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2ca8b...ebed57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3c0dc...a026e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecaea1...db11da` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [code4rena.com/reports/2023-04-frankencoin](https://code4rena.com/reports/2023-04-frankencoin) | Code4rena | Contest | 2023-04 | stale | Direct | contract_name | 2 | n/a |
| [ChainSecurity-audit.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/ChainSecurity-audit.pdf) | ChainSecurity | Audit | 2023-10 | stale | Direct | contract_name | 5 | n/a |
| [blockbite-audit.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/blockbite-audit.pdf) | Blockbite | Audit | 2023-02 | stale | Direct | contract_name | 4 | n/a |
| [ChainSecurity_Frankencoin_Frankencoin_v2024.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V2/ChainSecurity_Frankencoin_Frankencoin_v2024.pdf) | ChainSecurity | Audit | 2024-11 | aging | Direct | contract_name | 6 | n/a |
| [frankencoin-audit-report-2024-1.1.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V2/frankencoin-audit-report-2024-1.1.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | 4 | n/a |
| [blockbite-audit.md](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/blockbite-audit.md) | Blockbite | Audit | n/a | unknown | Direct | contract_name | 1 | n/a |
| [code4rena-audit.md](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/code4rena-audit.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.chainsecurity.com/security-audit/frankencoin-smart-contracts](https://www.chainsecurity.com/security-audit/frankencoin-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 1 | n/a |
| [www.chainsecurity.com/security-audit/frankencoin-v2024](https://www.chainsecurity.com/security-audit/frankencoin-v2024) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 4 | n/a |
| [www.chainsecurity.com/security-audit/frankencoin-ccip-bridge](https://www.chainsecurity.com/security-audit/frankencoin-ccip-bridge) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AuditReport-Frankencoin.pdf](https://frankencoin.com/AuditReport-Frankencoin.pdf) | Code4rena | Contest | 2023-02 | stale | Direct | contract_name | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=32

Zero-match audit list:

- [15627] code4rena-audit.md
- [15632] www.chainsecurity.com/security-audit/frankencoin-ccip-bridge

Fork inheritance lineage and inherited audits are included when available.
