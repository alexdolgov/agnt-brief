# Agentic Audit Brief: Stakehouse

## Project Overview

- Project: Stakehouse (`stakehouse`)
- Website: [https://blockswap.network/](https://blockswap.network/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.783Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $101,495.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | ethereum | n/a | [`0x0ff7e2...001a33`](./contracts/ethereum-1/0x0ff7e21be837c2a952a2bbbf10da074fca001a33/) | ⚠️ Unaudited |
| SimpleMerkleVesting | unknown | ethereum | n/a | [`0x09fda7...e3f4ce`](./contracts/ethereum-1/0x09fda7c05da37aebc00d7bed5d6518e62ae3f4ce/) | ⚠️ Unaudited |
| Token | unknown | ethereum | n/a | [`0x534d1f...776a5e`](./contracts/ethereum-1/0x534d1f5e617e0f72a6b06a04aa599839af776a5e/) | ⚠️ Unaudited |

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
| [Solidified - Audit 1 - Stakehouse - Nov 2021](https://github.com/stakehouse-dev/Audits/blob/main/Solidified_Stakehouse_Smart_Contracts_Audit_Report.pdf) | Solidified | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [Halborn - Audit 2 - Stakehouse - Dec 2021](https://github.com/stakehouse-dev/Audits/blob/main/Halborn_Stakehouse_Smart_Contract_Security_Audit_Report.pdf) | Halborn | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [Runtime Verification - Formal Audit - Stakehouse - Apr 2022](https://github.com/stakehouse-dev/Audits/blob/main/Runtime_Verification_Stakehouse_Smart_Contracts_Audit_Report.pdf) | Runtime Verification | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022](https://github.com/stakehouse-dev/Audits/blob/main/Runtime_Verification_Stakehouse_Smart_Contracts_2nd_Audit_Report.pdf) | Runtime Verification | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Runtime Verification - Formal Audit - dETH Gateway - Oct 2022](https://github.com/stakehouse-dev/Audits/blob/main/Runtime_Verification_dETH_Gateway_Smart_Contracts_Audit_Report.pdf) | Runtime Verification | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [code4rena - LSD Network Audit Contest - Nov 2022](https://github.com/stakehouse-dev/Audits/blob/main/code4rena%20-%20LSD%20Network%20Audit%20Contest.pdf) | Code4rena | Contest | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [Contract properties - LSD - Jul 2023](https://github.com/stakehouse-dev/Audits/blob/main/Contract%20properties-LSD.pdf) | unknown | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [Stakehouse withdrawal - Stakehouse - Jul 2023](https://github.com/stakehouse-dev/Audits/blob/main/Stakehouse%20_Withdrawal_Audit_Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [Protocol properties - kETH - Oct 2023](https://github.com/stakehouse-dev/Audits/blob/main/Protocol%20properties-kETH.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Contract properties - LSD withdrawals - Oct 2023](https://github.com/stakehouse-dev/Audits/blob/main/Contract%20properties-LSD%20withdrawals.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Certora_Stakehouse_Report.pdf](https://github.com/stakehouse-dev/Audits/blob/main/Certora_Stakehouse_Report.pdf) | Certora | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [Formal Verification - LSD syndicate](https://github.com/stakehouse-dev/Audits/blob/main/Formal%20Verification%20-%20LSD%20syndicate.pdf) | unknown | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x09fda7...e3f4ce`](./contracts/ethereum-1/0x09fda7c05da37aebc00d7bed5d6518e62ae3f4ce/) | SimpleMerkleVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x534d1f...776a5e`](./contracts/ethereum-1/0x534d1f5e617e0f72a6b06a04aa599839af776a5e/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24500] Solidified - Audit 1 - Stakehouse - Nov 2021
- [24501] Halborn - Audit 2 - Stakehouse - Dec 2021
- [24502] Runtime Verification - Formal Audit - Stakehouse - Apr 2022
- [24503] Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022
- [24504] Runtime Verification - Formal Audit - dETH Gateway - Oct 2022
- [24505] code4rena - LSD Network Audit Contest - Nov 2022
- [24506] Contract properties - LSD - Jul 2023
- [24507] Stakehouse withdrawal - Stakehouse - Jul 2023
- [24508] Protocol properties - kETH - Oct 2023
- [24509] Contract properties - LSD withdrawals - Oct 2023
- [24510] Certora_Stakehouse_Report.pdf
- [24511] Formal Verification - LSD syndicate

Fork inheritance lineage and inherited audits are included when available.
