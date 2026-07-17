# Agentic Audit Brief: Trust Wallet

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 3 audit(s)
- Eligible audit results: 10 (3 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Trust Wallet (`trust-wallet`)
- Website: [https://trustwallet.com/](https://trustwallet.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 24 unique implementations (35 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $28,902,678.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Trust Wallet in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0b9504140771c3688ff041917192277d2f52e1e0`, chain 1)
- UnnamedContract (`0x2e7f1dae1f3799d20f5c31befdc7a620f664728d`, chain 1)
- UnnamedContract (`0x3143e1c0af0cdc153423863923cf4e3818e34daa`, chain 1)
- UnnamedContract (`0x729c310186a57833f622630a16d13f710b83272a`, chain 1)
- UnnamedContract (`0xafcb70e6e9514e2a15b23a01d2a9b9f7a34f2c33`, chain 1)
- UnnamedContract (`0xcbe266adbfd7cb32988128e7f37b7c8b3c5521a8`, chain 1)
- UnnamedContract (`0xce36b85d12d81cd619c745c7717f3396e184ac7c`, chain 1)
- UnnamedContract (`0xee1af8e967ec04c84711842796a5e714d2fd33e6`, chain 1)
- UnnamedContract (`0xfde53272dcd7938d16e031a6989753c321728332`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 9 of 24 unique; 15 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 24
- Raw deployments: 35
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AgTokenSideChainMultiBridgeNameable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9169817edbfe5fcf629ed8b3c2a34e2a50ec84c` | ⚠️ Unaudited |
| bscSUNDOG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc419cfe5454bf58001f131e98cf2065e11936a7` | ⚠️ Unaudited |
| DistributionCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x46a9e9434dac9baa1f95a5129f04aef6c8c57829`; bsc `0x99fe8557a8f322525262720c52b7d57c56924012`; bsc `0xc42b7a34cb37ee450cc8059b10d839e4753229d5` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x04a7d169c5b14d2e29a3ba8b5071dda5e365c199`; bsc `0x4195faaba1cbad584fe2fec711d788cdb9a6a9a7`; bsc `0x44e3d3bba34e16a67c633daf86114284fc628819`; bsc `0xa0e088fb02a8d5a71d337b88b7629b0413f53de4` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x147f4163756db2eee9092bb848603a9e7054c52d`; bsc `0xedbebe204ef070b6880e07a28b55edc7748c24ba` | ⚠️ Unaudited |
| PointToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1276d63baef24d316383be594b8f978a507932db` | ⚠️ Unaudited |
| PullTokenWrapperAllow | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9dfd5c18f12a3ba6293001700810602efe0c45b` | ⚠️ Unaudited |
| RadiantMerklTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1c6f6e2b226d99af2c34d875a03e055492914442`; bsc `0x954ec713a3915b504a6f288563e5218f597e1895` | ⚠️ Unaudited |
| RadiantMerklTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xc3ef7ed4f97450ae8da2473068375788bdeb5c5c`; bsc `0xe04db2ba949a9e65b4bf52b11a0f9f221cf5fd21` | ⚠️ Unaudited |
| SavingsNameable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5ecaa1a867feccd6d87604bc16a2b6b53d706bf` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x799a290f9cc4085a0ce5b42b5f2c30193a7a872b` | ⚠️ Unaudited |
| TokenLocker | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x0e7dd56f7d2cadc066b992cec58253190f002c25`; bsc `0x3bffd2ee930c506e91453b74e7c0214da60146b9`; bsc `0x5029f49585d57ed770d2194841b5a0be06bfc2ed`; bsc `0x63dc02bb25e7bf7eaa0e42e71d785a388acd740b` | ⚠️ Unaudited |
| TrustWalletToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b0f1812e5df2a09796481ff14017e6005508003` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394353 | `0x0b9504140771c3688ff041917192277d2f52e1e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394356 | `0x2e7f1dae1f3799d20f5c31befdc7a620f664728d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394358 | `0x3143e1c0af0cdc153423863923cf4e3818e34daa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394360 | `0x729c310186a57833f622630a16d13f710b83272a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394361 | `0xafcb70e6e9514e2a15b23a01d2a9b9f7a34f2c33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394362 | `0xcbe266adbfd7cb32988128e7f37b7c8b3c5521a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394363 | `0xce36b85d12d81cd619c745c7717f3396e184ac7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394365 | `0xee1af8e967ec04c84711842796a5e714d2fd33e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394367 | `0xfde53272dcd7938d16e031a6989753c321728332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22b0ac22d5d58f05873e470bca5db7ceb5c47f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0e2a29b69e6600e37000d1bdbccbe523f0a32e3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Kudelski_Trust_Wallet_Audit_efeddfb567.pdf](https://strapi-cdn.trustwallet.com/Kudelski_Trust_Wallet_Audit_efeddfb567.pdf) | Kudelski | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Certik_Trustwallet_barz_Audit_ec38067a76.pdf](https://strapi-cdn.trustwallet.com/Certik_Trustwallet_barz_Audit_ec38067a76.pdf) | CertiK | Audit | 2023-06 | stale | Direct | contract_name | matched | 8 | 0 | 0 | 39 | high |
| [Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf](https://strapi-cdn.trustwallet.com/Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf) | Halborn | Audit | 2023-06 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 10 | high |
| [cure53_tw_browser_extension_04.2023.pdf](https://trustwallet.com/assets/files/cure53_tw_browser_extension_04.2023.pdf) | yAudit | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Certik-browser-extension_Feb24.pdf](https://assets-cdn.trustwallet.com/audits/Certik-browser-extension_Feb24.pdf) | CertiK | Audit | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Penetration_Testing_Report_for_Trust_Wallet_5638499b01.pdf](https://strapi-cdn.trustwallet.com/Penetration_Testing_Report_for_Trust_Wallet_5638499b01.pdf) | Salus | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf](https://strapi-cdn.trustwallet.com/Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 19 | high |
| [Quantstamp_TW_Paymaster_Report_a9082864b6.pdf](https://strapi-cdn.trustwallet.com/Quantstamp_TW_Paymaster_Report_a9082864b6.pdf) | Quantstamp | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Quantstamp_TW_Smart_Account_Short_version_no_findings_f57d9e0837.pdf](https://strapi-cdn.trustwallet.com/Quantstamp_TW_Smart_Account_Short_version_no_findings_f57d9e0837.pdf) | Quantstamp | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [202503_TW_Smart_Account_Smart_Contract_Publiciation_b9b9fab1dc.pdf](https://strapi-cdn.trustwallet.com/202503_TW_Smart_Account_Smart_Contract_Publiciation_b9b9fab1dc.pdf) | Halborn | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21136] Kudelski_Trust_Wallet_Audit_efeddfb567.pdf — no match: Scope table lists crates and file; audit date from cover page.
- [21137] Certik_Trustwallet_barz_Audit_ec38067a76.pdf — matched: All 47 files listed in the Audit Scope table are extracted as contract names. The audit date is explicitly stated as 'Assessed on Jun 23rd, 2023'.
- [21138] Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf — matched: Scope section lists specific .sol files and wildcard directories (infrastructure, base, verification, restrictions, interfaces) but only named files are extracted. Audit end date is June 12, 2023.
- [21139] cure53_tw_browser_extension_04.2023.pdf — no match: The audit report is for a browser extension (Trust Wallet Browser Extension), not for smart contracts. No smart contracts are mentioned in the scope.
- [21140] Certik-browser-extension_Feb24.pdf — no match: The audit is for a browser extension (Trust Wallet Extension), not smart contracts. No smart contract names were found in scope.
- [21141] Penetration_Testing_Report_for_Trust_Wallet_5638499b01.pdf — no match: The report is a penetration test for TrustWallet, focusing on web assets like trustwallet.com, not smart contracts. No smart contract names were found.
- [21142] Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf — matched: Extracted 21 contract names from the scope section. Audit date is the end date of engagement (May 17, 2024).
- [21143] Quantstamp_TW_Paymaster_Report_a9082864b6.pdf — no match: Scope section lists files under src/v0.6/ and src/v0.7/ including Paymaster.sol, PostOpGasEstimator.sol, and interfaces/IPaymaster.sol. Audit date from changelog: 2025-03-19 initial report.
- [21144] Quantstamp_TW_Smart_Account_Short_version_no_findings_f57d9e0837.pdf — no match: Scope explicitly lists Biz.sol and BizGuard.sol. Audit date from final report date (2025-04-16).
- [21145] 202503_TW_Smart_Account_Smart_Contract_Publiciation_b9b9fab1dc.pdf — no match: Scope section explicitly lists three contracts: Biz.sol, BizGuard.sol, BizHandler.sol. Audit date is the end date of engagement (April 1st, 2025).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Kudelski_Trust_Wallet_Audit_efeddfb567.pdf | starknet-crypto | unmatched — not counted | — | listed in scope table | no |
| Kudelski_Trust_Wallet_Audit_efeddfb567.pdf | starknet-curve | unmatched — not counted | — | listed in scope table | no |
| Kudelski_Trust_Wallet_Audit_efeddfb567.pdf | starknet-ff | unmatched — not counted | — | listed in scope table | no |
| Kudelski_Trust_Wallet_Audit_efeddfb567.pdf | key_pairs.rs | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | DiamondCutFacet | own contract | 0x0b9504… (selected) `0x0b9504140771c3688ff041917192277d2f52e1e0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | LibDiamond | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | DiamondLoupeFacet | own contract | 0xce36b8… (selected) `0xce36b85d12d81cd619c745c7717f3396e184ac7c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | Secp256k1VerificationFacet | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | LibSecp256r1 | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | AccountFacet | own contract | 0xfde532… (selected) `0xfde53272dcd7938d16e031a6989753c321728332` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | AccountRecoveryFacet | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | GuardianFacet | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | LockFacet | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | RestrictionsFacet | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | SignatureMigrationFacet | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | LibAppStorage | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | LibRecoverSpender | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IDiamondCut | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IDiamondLoupe | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IAccountFacet | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IAccountRecoveryFacet | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IGuardianFacet | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | ILockFacet | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IRestrictionsFacet | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | ISignatureMigrationFacet | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IVerificationFacet | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | Base64 | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | Secp256r1VerificationFacet | own contract | 0xee1af8… (selected) `0xee1af8e967ec04c84711842796a5e714d2fd33e6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | Modifiers | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IFacetRegistry | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IGuardianStorage | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | ISecurityManager | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | FacetRegistry | own contract | 0xafcb70… (selected) `0xafcb70e6e9514e2a15b23a01d2a9b9f7a34f2c33` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | RemoteStorage | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | SecurityManager | own contract | 0xcbe266… (selected) `0xcbe266adbfd7cb32988128e7f37b7c8b3c5521a8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | WhitelistStorage | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IERC1155 | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IERC20 | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IERC721 | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IERC1271 | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IERC165 | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IERC173 | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IBarzFactory | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | LibFacetStorage | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | LibGuardian | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | IRestriction | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | WhitelistRestriction | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | DiamondInit | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | Barz | unmatched — not counted | — | listed in scope table | no |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | BarzFactory | own contract | 0x729c31… (selected) `0x729c310186a57833f622630a16d13f710b83272a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik_Trustwallet_barz_Audit_ec38067a76.pdf | TokenReceiverFacet | own contract | 0x3143e1… (selected) `0x3143e1c0af0cdc153423863923cf4e3818e34daa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf | AccountFacet | own contract | 0xfde532… (selected) `0xfde53272dcd7938d16e031a6989753c321728332` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf | AccountRecoveryFacet | unmatched — not counted | — | listed in scope | no |
| Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf | GuardianFacet | unmatched — not counted | — | listed in scope | no |
| Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf | LockFacet | unmatched — not counted | — | listed in scope | no |
| Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf | RestrictionsFacet | unmatched — not counted | — | listed in scope | no |
| Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf | SignatureMigrationFacet | unmatched — not counted | — | listed in scope | no |
| Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf | Barz | unmatched — not counted | — | listed in scope | no |
| Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf | BarzFactory | own contract | 0x729c31… (selected) `0x729c310186a57833f622630a16d13f710b83272a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf | LibAppStorage | unmatched — not counted | — | listed in scope | no |
| Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf | LibDiamond | unmatched — not counted | — | listed in scope | no |
| Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf | LibFacetStorage | unmatched — not counted | — | listed in scope | no |
| Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf | LibRecoverSpender | unmatched — not counted | — | listed in scope | no |
| Halborn_Trustwallet_barz_Audit_1ef8a1f069.pdf | TokenReceiverFacet | own contract | 0x3143e1… (selected) `0x3143e1c0af0cdc153423863923cf4e3818e34daa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | AmberGateway | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | StargateReceiver | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | LibDiamond | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | Core | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | ReentrancyGuardian | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | AssetManagerFacet | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | DiamondCutFacet | own contract | 0x0b9504… (selected) `0x0b9504140771c3688ff041917192277d2f52e1e0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | DiamondLoupeFacet | own contract | 0xce36b8… (selected) `0xce36b85d12d81cd619c745c7717f3396e184ac7c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | OwnershipFacet | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | BaseDex | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | KyberSwapFacet | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | MimicSwapperFacet | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | OneInchFacet | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | ZeroExFacet | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | AcrossV3Facet | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | AllbridgeCoreFacet | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | BaseBridge | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | CCTPFacet | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | SquidFacet | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | StargateFacet | unmatched — not counted | — | listed in scope | no |
| Trust_Wallet_Amber_Halborn_Executive_Summary_af658170eb.pdf | SynapseBridgeFacet | unmatched — not counted | — | listed in scope | no |
| Quantstamp_TW_Paymaster_Report_a9082864b6.pdf | Paymaster | unmatched — not counted | — | listed in scope | no |
| Quantstamp_TW_Paymaster_Report_a9082864b6.pdf | PostOpGasEstimator | unmatched — not counted | — | listed in scope | no |
| Quantstamp_TW_Paymaster_Report_a9082864b6.pdf | IPaymaster | unmatched — not counted | — | listed in scope | no |
| Quantstamp_TW_Smart_Account_Short_version_no_findings_f57d9e0837.pdf | Biz | unmatched — not counted | — | listed in scope | no |
| Quantstamp_TW_Smart_Account_Short_version_no_findings_f57d9e0837.pdf | BizGuard | unmatched — not counted | — | listed in scope | no |
| 202503_TW_Smart_Account_Smart_Contract_Publiciation_b9b9fab1dc.pdf | Biz | unmatched — not counted | — | listed in scope | no |
| 202503_TW_Smart_Account_Smart_Contract_Publiciation_b9b9fab1dc.pdf | BizGuard | unmatched — not counted | — | listed in scope | no |
| 202503_TW_Smart_Account_Smart_Contract_Publiciation_b9b9fab1dc.pdf | BizHandler | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 80 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=3
- Match method counts: unique_name=13

Zero-match audit list:

- [21136] Kudelski_Trust_Wallet_Audit_efeddfb567.pdf
- [21139] cure53_tw_browser_extension_04.2023.pdf
- [21140] Certik-browser-extension_Feb24.pdf
- [21141] Penetration_Testing_Report_for_Trust_Wallet_5638499b01.pdf
- [21143] Quantstamp_TW_Paymaster_Report_a9082864b6.pdf
- [21144] Quantstamp_TW_Smart_Account_Short_version_no_findings_f57d9e0837.pdf
- [21145] 202503_TW_Smart_Account_Smart_Contract_Publiciation_b9b9fab1dc.pdf

Fork inheritance lineage and inherited audits are included when available.
