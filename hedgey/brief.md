# Agentic Audit Brief: hedgey

## Project Overview

- Project: hedgey (`hedgey`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.347Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: base, mode
- Contract surface: 8 unique implementations (8 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 8 project-authored contract(s) across 2 chain(s); 6 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 3 common project-authored base contract(s) (erc721delegate, lockupstorage, vestingstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/8 (100.0%)
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/8
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 13 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 8 | 100.0% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchPlanner | unknown | base | n/a | [`0x3466eb008edd8d5052446293d1a7d212cb65c646`](./contracts/base-8453/0x3466eb008edd8d5052446293d1a7d212cb65c646/) | ✅ Audited |
| ClaimCampaigns | unknown | base | n/a | [`0x1e9ffaa25d5f8206c697c92bcdee9fa16455cf94`](./contracts/base-8453/0x1e9ffaa25d5f8206c697c92bcdee9fa16455cf94/) | ✅ Audited |
| TokenLockupPlans | unknown | base | n/a | [`0x1961a23409ca59eedca6a99c97e4087dad752486`](./contracts/base-8453/0x1961a23409ca59eedca6a99c97e4087dad752486/) | ✅ Audited |
| TokenLockupPlans_Bound | unknown | base | n/a | [`0x040a92f07b65e6c2c10fffaf91ddc50f3d7b4319`](./contracts/base-8453/0x040a92f07b65e6c2c10fffaf91ddc50f3d7b4319/) | ✅ Audited |
| TokenVestingPlans | unknown | base | n/a | [`0x2cde9919e81b20b4b33dd562a48a84b54c48f00c`](./contracts/base-8453/0x2cde9919e81b20b4b33dd562a48a84b54c48f00c/) | ✅ Audited |
| VotingTokenLockupPlans | unknown | base | n/a | [`0x73cd8626b3cd47b009e68380720cfe6679a3ec3d`](./contracts/base-8453/0x73cd8626b3cd47b009e68380720cfe6679a3ec3d/) | ✅ Audited |
| VotingTokenLockupPlans_Bound | unknown | mode | n/a | [`0x38e74a3da3bd27dd581d5948ba19f0f684a5272f`](./contracts/mode-34443/0x38e74a3da3bd27dd581d5948ba19f0f684a5272f/) | ✅ Audited |
| VotingTokenVestingPlans | unknown | base | n/a | [`0x1b03d75094884714973f22867359de4b81af2f00`](./contracts/base-8453/0x1b03d75094884714973f22867359de4b81af2f00/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [Hacken Audit](https://github.com/hedgey-finance/StreamVestingNFT/blob/master/audit/Hedgey_SC%20Audit%20Report_06042023_%5BSA-1070%5D.pdf) | Hacken | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [Hacken Audit_2](https://github.com/hedgey-finance/HedgeyDAOSwap/blob/main/Hedgey_24082022_SCAudit_Report.pdf) | Hacken | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Audit_Report_HDGY-LKP_FINAL_20.pdf](https://github.com/hedgey-finance/Locked_VestingTokenPlans/blob/master/audits/Audit_Report_HDGY-LKP_FINAL_20.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 7 | high |
| [Core Contract Hedgey Finance audit report.pdf](https://github.com/hedgey-finance/Locked_VestingTokenPlans/blob/master/audits/Core%20Contract%20Hedgey%20Finance%20audit%20report.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 6 | high |
| [Hedgey-Locked-vesting-tokenPlans_audit_report_2024-05-17.pdf](https://github.com/hedgey-finance/Locked_VestingTokenPlans/blob/master/audits/Hedgey-Locked-vesting-tokenPlans_audit_report_2024-05-17.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 8 | high |
| [hedgey-token-plans-audit-2023-06.pdf](https://github.com/hedgey-finance/Locked_VestingTokenPlans/blob/master/audits/hedgey-token-plans-audit-2023-06.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 8 | high |
| [Audit_Report_HDGY-DLG_FINAL_20.pdf](https://github.com/hedgey-finance/ClaimCampaigns/blob/Freeze/audits/Audit_Report_HDGY-DLG_FINAL_20.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 1 | high |
| [Audit_Report_HDGY-LKP_FINAL_21.pdf](https://github.com/hedgey-finance/ClaimCampaigns/blob/Freeze/audits/Audit_Report_HDGY-LKP_FINAL_21.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 7 | high |
| [Claims Contract Hedgey Finance audit report.pdf](https://github.com/hedgey-finance/ClaimCampaigns/blob/Freeze/audits/Claims%20Contract%20Hedgey%20Finance%20audit%20report.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [hedgey-delegatetokenclaims-audit-2024-04.pdf (also discovered via alternate URL)](https://github.com/hedgey-finance/ClaimCampaigns/blob/Freeze/audits/hedgey-delegatetokenclaims-audit-2024-04.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Vesting Locks Hedgey Finance audit report.pdf](https://github.com/hedgey-finance/VestingLockups/blob/master/audits/Vesting%20Locks%20Hedgey%20Finance%20audit%20report.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Hedgey_31032022_SCAudit_Report_2.pdf](https://github.com/hedgey-finance/NFT_OTC_Core/blob/main/audits/Hedgey_31032022_SCAudit_Report_2.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Hedgey_SC Audit Report_31012023_[SA-909].pdf](https://github.com/hedgey-finance/NFT_OTC_Core/blob/main/audits/Hedgey_SC%20Audit%20Report_31012023_%5BSA-909%5D.pdf) | unknown | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [Hedgey_SCAudit_Report.pdf](https://github.com/hedgey-finance/NFT_OTC_Core/blob/main/audits/Hedgey_SCAudit_Report.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [- [Audits](): Below are all of the audits for Hedgeys various contracts.](https://hedgey.gitbook.io/hedgey-community-docs/for-developers/audits.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7
- Match method counts: extraction_exact=45

Zero-match audit list:

- [20496] Hacken Audit
- [20497] Hacken Audit_2
- [20504] Claims Contract Hedgey Finance audit report.pdf
- [20505] hedgey-delegatetokenclaims-audit-2024-04.pdf
- [20506] Vesting Locks Hedgey Finance audit report.pdf
- [20508] Hedgey_31032022_SCAudit_Report_2.pdf
- [20509] Hedgey_SC Audit Report_31012023_[SA-909].pdf
- [20510] Hedgey_SCAudit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
