# Agentic Audit Brief: Privacy Cash

## Project Overview

- Project: Privacy Cash (`privacy-cash`)
- Website: [https://privacycash.org/](https://privacycash.org/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:59:09.374Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: base
- Contract surface: 6 unique implementations (12 raw deployments)
- DeFi Llama TVL: $2,482,541.16
- On-chain TVL (included contracts): $48,088.21
- TVL by chain: Base $48,088.21

## Project Description

Privacy Cash is a privacy-focused protocol spanning Solana and Base that enables users to deposit supported assets including SOL, ETH, and USDC into privacy pools to obfuscate transaction trails, using zero-knowledge proofs or similar techniques to preserve anonymity.

### Architecture

The protocol consists of a single product family with two core pool contracts (EtherPool and ERCPool) that share the same proxy pattern via ERC1967Proxy, indicating a unified upgradeable infrastructure for managing deposits and withdrawals.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 6
- Raw deployments: 12
- Audits discovered: 10
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $48,088.21
- Latest audit: 2026-02 (fresh)
- Staleness: 7 fresh, 1 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERCPool | core_logic | base | 2 deployments: base [`0x6b5365...447c9a`](./contracts/base-8453/0x6b5365cf6118bceabe41b5acff0b20e8f4447c9a/); base `0xe91dd4...5a905b` | ⚠️ Unaudited |
| EtherPool | core_logic | base | 4 deployments: base [`0x7f6737...b081ec`](./contracts/base-8453/0x7f673790c08ddf27c0aa6fa9526ccc8daab081ec/); base `0xa9cefe...99ecdd`; base `0xbcffce...982c98`; base `0xfee24c...c832a1` | ⚠️ Unaudited |
| Verifier2 | periphery | base | 3 deployments: base [`0x41187a...ff7c6f`](./contracts/base-8453/0x41187a79c57e9143b1f6c4aa7e16bf0e07ff7c6f/); base `0x870755...6dabd0`; base `0xe24f4c...225b7c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | base | `0x045596...88d2e3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbb0c7f...c9013f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf48b36...24e9ac` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Accretion Audit Report (USDC).pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/Accretion%20Audit%20Report%20(USDC).pdf) | Accretion | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [HashCloak Audit Report (SOL+SPL).pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/HashCloak%20Audit%20Report%20(SOL%2BSPL).pdf) | HashCloak | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Kriko Audit Report (SPL).pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/Kriko%20Audit%20Report%20(SPL).pdf) | Kriko | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sherlock Audit Report (USDC + SOL).pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/Sherlock%20Audit%20Report%20(USDC%20%2B%20SOL).pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Veridise Audit Report (USDC+SOL).pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/Veridise%20Audit%20Report%20(USDC%2BSOL).pdf) | Veridise | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Zigtur Audit Report (USDC + SPL).pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/Zigtur%20Audit%20Report%20(USDC%20%2B%20SPL).pdf) | Zigtur | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [accretion_audit_report_v1.pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/accretion_audit_report_v1.pdf) | Accretion | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [hashcloak_audit_v1.pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/hashcloak_audit_v1.pdf) | HashCloak | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [kriko_audit_v1.pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/kriko_audit_v1.pdf) | Kriko | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [zigtur_audit_v1.pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/zigtur_audit_v1.pdf) | Zigtur | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x6b5365...447c9a`](./contracts/base-8453/0x6b5365cf6118bceabe41b5acff0b20e8f4447c9a/) | ERCPool | core_logic | $29,414.23 | Verified native implementation with $29,414.23 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x41187a...ff7c6f`](./contracts/base-8453/0x41187a79c57e9143b1f6c4aa7e16bf0e07ff7c6f/) | Verifier2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2798] Accretion Audit Report (USDC).pdf
- [2799] HashCloak Audit Report (SOL+SPL).pdf
- [2800] Kriko Audit Report (SPL).pdf
- [2801] Sherlock Audit Report (USDC + SOL).pdf
- [2802] Veridise Audit Report (USDC+SOL).pdf
- [2803] Zigtur Audit Report (USDC + SPL).pdf
- [2804] accretion_audit_report_v1.pdf
- [2805] hashcloak_audit_v1.pdf
- [2806] kriko_audit_v1.pdf
- [2807] zigtur_audit_v1.pdf

Fork inheritance lineage and inherited audits are included when available.
