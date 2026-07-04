# Agentic Audit Brief: Trust Wallet

## Project Overview

- Project: Trust Wallet (`trust-wallet`)
- Website: [https://trustwallet.com/](https://trustwallet.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:02.127Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: bsc
- Contract surface: 11 unique implementations (19 raw deployments)
- DeFi Llama TVL: $28,902,678.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 11 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 7 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (uupshelper). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 19 (17 live, 2 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 9 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 11
- Raw deployments: 19
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| bscSUNDOG | unknown | bsc | n/a | [`0xdc419c...1936a7`](./contracts/bsc-56/0xdc419cfe5454bf58001f131e98cf2065e11936a7/) | ⚠️ Unaudited |
| DistributionCreator | unknown | bsc | n/a | 3 deployments: bsc [`0x46a9e9...c57829`](./contracts/bsc-56/0x46a9e9434dac9baa1f95a5129f04aef6c8c57829/); bsc `0x99fe85...924012`; bsc `0xc42b7a...3229d5` | ⚠️ Unaudited |
| Distributor | unknown | bsc | n/a | 4 deployments: bsc [`0x04a7d1...65c199`](./contracts/bsc-56/0x04a7d169c5b14d2e29a3ba8b5071dda5e365c199/); bsc `0x4195fa...a6a9a7`; bsc `0x44e3d3...628819`; bsc `0xa0e088...f53de4` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | bsc | n/a | 2 deployments: bsc [`0x147f41...54c52d`](./contracts/bsc-56/0x147f4163756db2eee9092bb848603a9e7054c52d/); bsc `0xedbebe...8c24ba` | ⚠️ Unaudited |
| PointToken | token | bsc | n/a | [`0x1276d6...7932db`](./contracts/bsc-56/0x1276d63baef24d316383be594b8f978a507932db/) | ⚠️ Unaudited |
| PullTokenWrapperAllow | token | bsc | n/a | [`0xc9dfd5...e0c45b`](./contracts/bsc-56/0xc9dfd5c18f12a3ba6293001700810602efe0c45b/) | ⚠️ Unaudited |
| Token | token | bsc | n/a | [`0x799a29...7a872b`](./contracts/bsc-56/0x799a290f9cc4085a0ce5b42b5f2c30193a7a872b/) | ⚠️ Unaudited |
| TokenLocker | token | bsc | n/a | 3 deployments: bsc [`0x0e7dd5...002c25`](./contracts/bsc-56/0x0e7dd56f7d2cadc066b992cec58253190f002c25/); bsc `0x3bffd2...0146b9`; bsc `0x5029f4...bfc2ed` | ⚠️ Unaudited |
| TrustWalletToken | token | bsc | n/a | [`0x4b0f18...508003`](./contracts/bsc-56/0x4b0f1812e5df2a09796481ff14017e6005508003/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x22b0ac...c47f5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0e2a2...0a32e3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Kudelski_Trust_Wallet_Audit_efeddfb567.pdf](https://strapi-cdn.trustwallet.com/Kudelski_Trust_Wallet_Audit_efeddfb567.pdf) | Kudelski | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Certik_Trustwallet_barz_Audit_ec38067a76.pdf](https://strapi-cdn.trustwallet.com/Certik_Trustwallet_barz_Audit_ec38067a76.pdf) | CertiK | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf](https://strapi-cdn.trustwallet.com/Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf) | Halborn | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [cure53_tw_browser_extension_04.2023.pdf](https://trustwallet.com/assets/files/cure53_tw_browser_extension_04.2023.pdf) | yAudit | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [Certik-browser-extension_Feb24.pdf](https://assets-cdn.trustwallet.com/audits/Certik-browser-extension_Feb24.pdf) | CertiK | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [Penetration_Testing_Report_for_Trust_Wallet_5638499b01.pdf](https://strapi-cdn.trustwallet.com/Penetration_Testing_Report_for_Trust_Wallet_5638499b01.pdf) | Salus | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf](https://strapi-cdn.trustwallet.com/Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf) | Halborn | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Quantstamp_TW_Paymaster_Report_a9082864b6.pdf](https://strapi-cdn.trustwallet.com/Quantstamp_TW_Paymaster_Report_a9082864b6.pdf) | Quantstamp | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Quantstamp_TW_Smart_Account_Short_version_no_findings_f57d9e0837.pdf](https://strapi-cdn.trustwallet.com/Quantstamp_TW_Smart_Account_Short_version_no_findings_f57d9e0837.pdf) | Quantstamp | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [202503_TW_Smart_Account_Smart_Contract_Publiciation_b9b9fab1dc.pdf](https://strapi-cdn.trustwallet.com/202503_TW_Smart_Account_Smart_Contract_Publiciation_b9b9fab1dc.pdf) | Halborn | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21136] Kudelski_Trust_Wallet_Audit_efeddfb567.pdf
- [21137] Certik_Trustwallet_barz_Audit_ec38067a76.pdf
- [21138] Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf
- [21139] cure53_tw_browser_extension_04.2023.pdf
- [21140] Certik-browser-extension_Feb24.pdf
- [21141] Penetration_Testing_Report_for_Trust_Wallet_5638499b01.pdf
- [21142] Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf
- [21143] Quantstamp_TW_Paymaster_Report_a9082864b6.pdf
- [21144] Quantstamp_TW_Smart_Account_Short_version_no_findings_f57d9e0837.pdf
- [21145] 202503_TW_Smart_Account_Smart_Contract_Publiciation_b9b9fab1dc.pdf

Fork inheritance lineage and inherited audits are included when available.
