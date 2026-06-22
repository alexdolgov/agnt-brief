# Agentic Audit Brief: Enjoyoors

⚠️ Lifecycle status: UNKNOWN - TVL dropped 20.6% over 90 days

## Project Overview

- Project: Enjoyoors (`enjoyoors`)
- Website: [http://enjoyoors.xyz](http://enjoyoors.xyz)
- Lifecycle: unknown (Tier 0, 78.3% below peak)
- Generated: 2026-06-19T22:24:43.857Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $11,256.96
- On-chain TVL (included contracts): $5,427.91
- TVL by chain: Ethereum $5,427.91

## Project Description

Enjoyoors is a Collateralized Debt Position (CDP) protocol on Ethereum that allows users to deposit collateral and mint a stablecoin against it. The protocol manages vaults to maintain collateralization ratios and facilitate liquidations if needed.

### Architecture

The protocol consists of a single product family with one core vault contract. No shared infrastructure or cross-family relationships are present.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/3 (66.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 2 | 66.7% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EnjoyoorsVault | core_logic | ethereum | n/a | [`0x59660c...046409`](./contracts/ethereum-1/0x59660cb83da31ec23f9d992c11f80fc527046409/) | ✅ Audited |
| EnjoyoorsWithdrawalApprover | operational_periphery | ethereum | n/a | [`0x8a4e79...8b7c17`](./contracts/ethereum-1/0x8a4e79d2e12d253f6cefec473439b4b0e98b7c17/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenLister | token | ethereum | n/a | [`0x8b3f27...ff7b04`](./contracts/ethereum-1/0x8b3f27ae96c43a301067c77dc445af2299ff7b04/) | ⚠️ Unaudited |

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
| [Enjoyoors Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_Reports/blob/master/Enjoyoors%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [DL audit link](https://movebit.xyz/reports/Enjoyoors-Audit-Report.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Enjoyoors EVM Vaults Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Enjoyoors/EVM%20Vaults/Enjoyoors%20EVM%20Vaults%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-03 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8b3f27...ff7b04`](./contracts/ethereum-1/0x8b3f27ae96c43a301067c77dc445af2299ff7b04/) | TokenLister | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [13084] Enjoyoors Smart Contract Audit Report - QuillAudits.pdf
- [13085] DL audit link

Fork inheritance lineage and inherited audits are included when available.
