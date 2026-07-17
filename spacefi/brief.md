# Agentic Audit Brief: SpaceFi

## Project Overview

- Project: SpaceFi (`spacefi`)
- Website: [https://spacefi.io](https://spacefi.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.368Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16bc
- Chains: scroll, zksync-era
- Contract surface: 29 unique implementations (29 raw deployments)
- DeFi Llama TVL: $826,938.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SpaceFi is a cross-chain Web3 and DeFi platform with products including DEX/token swapping, liquidity provision, yield farming, NFTs, Starter, and Spacebase. Current contract and chain coverage should be treated cautiously until deployments are re-resolved and matched to audited scopes; no unified cross-chain architecture should be inferred without supporting evidence.

### Architecture

The product families represent chain-specific deployments of the same SpaceFi DEX protocol, sharing a common architecture but operating independently on Evmos, Scroll, and zkSync Era. No cross-chain infrastructure or shared contracts are evident from the provided data.

## Contract Surface Quality

- Indexed contracts: 29; live-surface contracts included: 29 (0 live, 29 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 29 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 29
- Raw deployments: 29
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | zksync-era | n/a | `0x0209290050d9a2e3dda4dc7d963122f1314a998d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x09bd441fdca0bd7d71a0726d2ceeb1be5b811cd5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x28ef6eaf956d52d614eaa414fbf1896ede20669c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x307baa142ba2bfa4a3059efb631899c992a193ee` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x310cba9e2f8652fca80dfa99ae66d01cabdd0281` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x32c8e6e1ad9d356f1b010cca8de00c11510e8470` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x47260090ce5e83454d5f05a0abbb2c953835f777` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4c64ddc11ed99856338c7b21d7bbb2b20fc8d129` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x525e3011f77019595bfb954a11876c02c0929b10` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x55ca894c51cd38f1da032619d3779ab5ad34dad2` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x55d35a3b04554432f7137def906ee774a78cdfcd` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x60beb316e4834d6ffd9ae9e767b9bfca0448fd98` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6146ad866b4a9a68d36a728b4a71e5ae8f9cfda6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6567a946d10a83d65ea7caab3a2a22a1fa48e6b6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6af43486cb84be0e3eddcef93d3c43ef0c5f63b1` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x7cf85f98c0339559eab22deea1e018721e800add` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x8228f3c18b7b6277cefdeefbb0490908146f126b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x838a66f841dd5148475a8918db0732c239499a03` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x868a71ebfc46b86a676768c7b7ad65055cc293ee` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xacf5a67f2fcfeda3946ccb1ad9d16d2eb65c3c96` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xb376fceacd9fef24a342645cbf72a4c439ea0614` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbe7d1fd1f6748bbdefc4fbacafbb11c6fc506d1d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xcb5dc30b7824a6378a5f5c2921e58809c5c0f5d5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xd0ce094412898760c2a5e37abec39b0e785b45ae` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xd283a28619d25596995cf23b13c304171b582b7c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xdb101b25b4305d0398f33a15bdd6d495c4935460` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe82da1ad1d31bb6ec9bd45fcfeb3c0b8ac405a87` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf25fd31c869ce1238b4e30e3c8745bfe570e40e1` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x18b71386418a9fca5ae7165e31c385a5130011b6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SpaceFi Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [zksync-contract-v2-Final-Audit-Report.pdf](https://scalebit.xyz/reports/zksync-contract-v2-Final-Audit-Report.pdf) | ScaleBit | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [SpaceFi Swap Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_smart_contract_audit_Reports/blob/master/SpaceFi%20Swap%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [SpaceFi Farm Smart Contract Final Audit Report - QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_smart_contract_audit_Reports/blob/master/SpaceFi%20Farm%20Smart%20Contract%20Final%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [xEVMToken_by_SpaceFi_Smart_Contract_Audit_Report_QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_smart_contract_audit_Reports/blob/master/xEVMToken_by_SpaceFi_Smart_Contract_Audit_Report_QuillAudits.pdf) | QuillAudits | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3049] SpaceFi Smart Contract Audit Report - QuillAudits.pdf
- [3050] zksync-contract-v2-Final-Audit-Report.pdf
- [3052] SpaceFi Swap Smart Contract Audit Report - QuillAudits.pdf
- [3053] SpaceFi Farm Smart Contract Final Audit Report - QuillAudits.pdf
- [3054] xEVMToken_by_SpaceFi_Smart_Contract_Audit_Report_QuillAudits.pdf

Fork inheritance lineage and inherited audits are included when available.
