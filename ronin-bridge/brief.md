# Agentic Audit Brief: Ronin Bridge

## Project Overview

- Project: Ronin Bridge (`ronin-bridge`)
- Website: [https://app.roninchain.com/bridge](https://app.roninchain.com/bridge)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:48.850Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $3,538,156.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 32 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 6 common project-authored base contract(s) (ocr2abstract, tokenpool, aggregateratelimiter). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **KEEP Network** (`keep-network`) in the CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN subsystem.
8 audits inherited from `keep-network`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (3 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 13 (5 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 6 fresh, 3 aging, 4 stale, 0 unknown
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
| Router | adapter | ethereum | n/a | [`0x80226fc0ee2b096224eeac085bb9a8cba1146f7d`](./contracts/ethereum-1/0x80226fc0ee2b096224eeac085bb9a8cba1146f7d/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | ethereum | n/a | [`0xb22764f98dd05c789929716d677382df22c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | ⚠️ Unaudited |
| TokenPoolFactory | registry | ethereum | n/a | [`0x17d8a409fe2cef2d3808bcb61f14abeffc28876e`](./contracts/ethereum-1/0x17d8a409fe2cef2d3808bcb61f14abeffc28876e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b44847b379578588920ca78fbf26c0b4956c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) | unknown | Audit | 2025-11 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 0 | n/a |
| [drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 0 | n/a |
| [drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view](https://drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 0 | n/a |
| [drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view](https://drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view?usp=sharing) | unknown | Audit | 2025-10 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 0 | n/a |
| [drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view](https://drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 0 | n/a |
| [drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view](https://drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 0 | n/a |
| [www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760](https://www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760?source=copy_link) | Code4rena | Contest | 2025-04 | aging | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 0 | n/a |
| [240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-04 | stale | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 0 | n/a |
| [Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf](https://docs.roninchain.com/assets/files/Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf) | Code4rena | Contest | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf](https://docs.roninchain.com/assets/files/Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf) | yAudit | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Beosin-Audit-Ronin-Bridge-August-24-cce7cef08749809d6353fe1443711e99.pdf](https://docs.roninchain.com/assets/files/Beosin-Audit-Ronin-Bridge-August-24-cce7cef08749809d6353fe1443711e99.pdf) | yAudit | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Verichains-Audit-Ronin-Bridge-August-24-cfabc8c3321442e4a84b25c22a08d20b.pdf](https://docs.roninchain.com/assets/files/Verichains-Audit-Ronin-Bridge-August-24-cfabc8c3321442e4a84b25c22a08d20b.pdf) | yAudit | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [CertiK-Audit-for-Ronin-DPoS-Contracts-6f67eca01db5b8756cd0a8aee93e8aa1.pdf](https://docs.roninchain.com/assets/files/CertiK-Audit-for-Ronin-DPoS-Contracts-6f67eca01db5b8756cd0a8aee93e8aa1.pdf) | CertiK | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x80226fc0ee2b096224eeac085bb9a8cba1146f7d`](./contracts/ethereum-1/0x80226fc0ee2b096224eeac085bb9a8cba1146f7d/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb22764f98dd05c789929716d677382df22c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | TokenAdminRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d8a409fe2cef2d3808bcb61f14abeffc28876e`](./contracts/ethereum-1/0x17d8a409fe2cef2d3808bcb61f14abeffc28876e/) | TokenPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=2160

Zero-match audit list:

- [19157] drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view
- [19158] drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view
- [19159] drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view
- [19160] drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view
- [19161] drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view
- [19162] drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view
- [19163] www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760
- [19164] 240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf
- [20989] Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf
- [20990] Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf
- [20991] Beosin-Audit-Ronin-Bridge-August-24-cce7cef08749809d6353fe1443711e99.pdf
- [20992] Verichains-Audit-Ronin-Bridge-August-24-cfabc8c3321442e4a84b25c22a08d20b.pdf
- [20993] CertiK-Audit-for-Ronin-DPoS-Contracts-6f67eca01db5b8756cd0a8aee93e8aa1.pdf

Fork inheritance lineage and inherited audits are included when available.
