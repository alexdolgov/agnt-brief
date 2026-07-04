# Agentic Audit Brief: Privacy Cash

## Project Overview

- Project: Privacy Cash (`privacy-cash`)
- Website: [https://privacycash.org/](https://privacycash.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.184Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: base, ethereum
- Contract surface: 8 unique implementations (16 raw deployments)
- DeFi Llama TVL: $1,273,358.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Privacy. Structurally: 2 project-authored contract(s) across 2 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 16 (11 live, 5 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 8
- Raw deployments: 16
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 8 fresh, 0 aging, 0 stale, 2 unknown
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
| ERCPool | unknown | base | n/a | 2 deployments: ethereum `0x803db1...583958`; base [`0x6b5365...447c9a`](./contracts/base-8453/0x6b5365cf6118bceabe41b5acff0b20e8f4447c9a/) | ⚠️ Unaudited |
| EtherPool | unknown | base | n/a | 3 deployments: ethereum `0xec5266...f3b738`; base [`0xa9cefe...99ecdd`](./contracts/base-8453/0xa9cefead8d2f343b2c8c561e903378ede899ecdd/); base `0xfee24c...c832a1` | ⚠️ Unaudited |
| Verifier2 | periphery | base | n/a | 6 deployments: ethereum `0x9926a4...d56313`; ethereum `0xbcffce...982c98`; ethereum `0xfee24c...c832a1`; base [`0x41187a...ff7c6f`](./contracts/base-8453/0x41187a79c57e9143b1f6c4aa7e16bf0e07ff7c6f/); base `0x870755...6dabd0`; base `0xe24f4c...225b7c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1d4fe6...d3106d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22d850...391f77` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x045596...88d2e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb0c7f...c9013f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf48b36...24e9ac` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Accretion Audit Report (USDC).pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/Accretion%20Audit%20Report%20(USDC).pdf) | Accretion | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [HashCloak Audit Report (SOL+SPL).pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/HashCloak%20Audit%20Report%20(SOL%2BSPL).pdf) | HashCloak | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
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
| base | [`0x6b5365...447c9a`](./contracts/base-8453/0x6b5365cf6118bceabe41b5acff0b20e8f4447c9a/) | ERCPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa9cefe...99ecdd`](./contracts/base-8453/0xa9cefead8d2f343b2c8c561e903378ede899ecdd/) | EtherPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x41187a...ff7c6f`](./contracts/base-8453/0x41187a79c57e9143b1f6c4aa7e16bf0e07ff7c6f/) | Verifier2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14293] Accretion Audit Report (USDC).pdf
- [14294] HashCloak Audit Report (SOL+SPL).pdf
- [14295] Kriko Audit Report (SPL).pdf
- [14296] Sherlock Audit Report (USDC + SOL).pdf
- [14297] Veridise Audit Report (USDC+SOL).pdf
- [14298] Zigtur Audit Report (USDC + SPL).pdf
- [14299] accretion_audit_report_v1.pdf
- [14300] hashcloak_audit_v1.pdf
- [14301] kriko_audit_v1.pdf
- [14302] zigtur_audit_v1.pdf

Fork inheritance lineage and inherited audits are included when available.
