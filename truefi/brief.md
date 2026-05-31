# Agentic Audit Brief: TrueFi

⚠️ Lifecycle status: DEAD - TVL dropped 4.2% over 90 days

## Project Overview

- Project: TrueFi (`truefi`)
- Website: [https://app.truefi.io/](https://app.truefi.io/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-31T11:16:44.411Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: arbitrum, ethereum
- Contract surface: 8 unique implementations (11 raw deployments)
- DeFi Llama TVL: $15,393,827.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

TrueFi is a protocol for uncollateralized lending, enabling borrowers to access credit without posting collateral. It uses on-chain credit assessments and a decentralized governance system to manage lending pools and credit lines.

### Architecture

The TrueFi family's AutomatedLineOfCreditFactory is governed by the Explore Lending Vaults family's GnosisSafeProxy, which controls protocol configuration. The ProxyWrapper acts as a registry and proxy for the factory, linking governance decisions to credit line deployment.

## Audit Coverage Summary

- Verified implementations audited: 3/8 (37.5%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 11
- Audits discovered: 29
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 18 stale, 11 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 3 | 37.5% | 2022-06 |
| unknown | Tier 2 | 3 | 37.5% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AutomatedLineOfCredit | unknown | arbitrum | 2 deployments: arbitrum [`0x45277f...a46d97`](./contracts/arbitrum-42161/0x45277f7d263c83f8223460621f31774c52a46d97/); arbitrum `0x8626a4...e95d98` | ✅ Audited |
| AutomatedLineOfCreditFactory | registry | arbitrum | 2 deployments: arbitrum [`0x24d00e...82cbb5`](./contracts/arbitrum-42161/0x24d00e171da01124052a4b13931631ba7482cbb5/); arbitrum `0xca1353...8f62e9` | ✅ Audited |
| ProtocolConfig | governance | arbitrum | 2 deployments: arbitrum [`0x5c6753...781dd0`](./contracts/arbitrum-42161/0x5c67531524201d0a774405827ba4c2de15781dd0/); arbitrum `0xbc70fe...823482` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AllowAllLenderVerifier | periphery | arbitrum | [`0x607ced...2fdd4f`](./contracts/arbitrum-42161/0x607cedb42442e206fae3e2cc12afddd7e12fdd4f/) | ⚠️ Unaudited |
| DepositController | governance | arbitrum | [`0xb4c8bf...0fe372`](./contracts/arbitrum-42161/0xb4c8bfd082a47c008ce95dd13314105f6c0fe372/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xdc0175...5d476a`](./contracts/ethereum-1/0xdc0175978ae72383bbfdbe56fed69d3acd5d476a/) | ⚠️ Unaudited |
| OpenTransferController | governance | arbitrum | [`0xa12590...ae177f`](./contracts/arbitrum-42161/0xa1259068ea5252a307ced730d758c2e8d7ae177f/) | ⚠️ Unaudited |
| WithdrawController | operational_periphery | arbitrum | [`0xee3f9a...3c25e6`](./contracts/arbitrum-42161/0xee3f9add26de00fcc02d4bc0e6d0dbee0e3c25e6/) | ⚠️ Unaudited |

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
| [2023-02-22 ChainSecurity Audit - PortfolioDebtToken.pdf](https://github.com/trusttoken/audits/blob/master/PortfolioDebtToken/2023-02-22%20ChainSecurity%20Audit%20-%20PortfolioDebtToken.pdf) | yAudit | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [true_currency_audit_august_24_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrueCurrency/true_currency_audit_august_24_2020.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [true_currency_audit_september_26_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrueCurrency/true_currency_audit_september_26_2020.pdf) | unknown | Audit | 2020-09 | stale | Direct | n/a | 0 | n/a |
| [2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/2021-12-21%20Chainsulting%20Audit%20--%20One-Click%20Borrowing%2C%20Lines%20of%20Credit%2C%20Rate%20Model%2C%20TRU%20Staking%2C%20Default%20Liquidation.pdf) | unknown | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [20211203 CertiK Audit Final Report.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/20211203%20CertiK%20Audit%20Final%20Report.pdf) | CertiK | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [REP-Trusttoken-#2-2021-09-13.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/REP-Trusttoken-%232-2021-09-13.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [truefi_2.0_audit_ben_cosman_2_17_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_2.0_audit_ben_cosman_2_17_2021.pdf) | unknown | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [truefi_2.0_audit_ethworks_2_17_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_2.0_audit_ethworks_2_17_2021.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [truefi_3.0_audit_ben_cosman_5_19_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_ben_cosman_5_19_2021.pdf) | unknown | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [truefi_3.0_audit_certik_5_12_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_certik_5_12_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [truefi_3.0_audit_certik_5_20_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_certik_5_20_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [truefi_audit_jakub_wojciechowski_november_22_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_audit_jakub_wojciechowski_november_22_2020.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [truefi_audit_slowmist_november_21_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_audit_slowmist_november_21_2020.pdf) | SlowMist | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-03%20Injected%20Bugs%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-20%20Chainsulting%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 3 | high |
| [1.md (also discovered via alternate URL)](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/1.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [3.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/3.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [4.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/4.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [5.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/5.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-22%20Internal%20Security%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-02-07%20Solidified%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 3 | high |
| [README.md (also discovered via alternate URL)](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/README.md) | unknown | Audit | 2022-02 | stale | Direct | contract_name|n/a | 2 | medium |
| [2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-05-26%20G0%20Group%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | 6 | high |
| [2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-06-07%20ABDK%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | ABDK | Audit | 2022-06 | stale | Direct | contract_name | 6 | high |
| [2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-08-10%20Solidified%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 6 | high |
| [trust_token_audit_august_24_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrustToken/trust_token_audit_august_24_2020.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [trust_token_audit_june_23_2020..pdf](https://github.com/trusttoken/audits/blob/master/TrustToken/trust_token_audit_june_23_2020..pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [trust_token_audit_november_11_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrustToken/trust_token_audit_november_11_2020.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x607ced...2fdd4f`](./contracts/arbitrum-42161/0x607cedb42442e206fae3e2cc12afddd7e12fdd4f/) | AllowAllLenderVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb4c8bf...0fe372`](./contracts/arbitrum-42161/0xb4c8bfd082a47c008ce95dd13314105f6c0fe372/) | DepositController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa12590...ae177f`](./contracts/arbitrum-42161/0xa1259068ea5252a307ced730d758c2e8d7ae177f/) | OpenTransferController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xee3f9a...3c25e6`](./contracts/arbitrum-42161/0xee3f9add26de00fcc02d4bc0e6d0dbee0e3c25e6/) | WithdrawController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 23
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5, medium=1
- Match method counts: extraction_exact=26

Zero-match audit list:

- [6665] 2023-02-22 ChainSecurity Audit - PortfolioDebtToken.pdf
- [6667] true_currency_audit_august_24_2020.pdf
- [6668] true_currency_audit_september_26_2020.pdf
- [6669] 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf
- [6670] 20211203 CertiK Audit Final Report.pdf
- [6671] REP-Trusttoken-#2-2021-09-13.pdf
- [6672] truefi_2.0_audit_ben_cosman_2_17_2021.pdf
- [6673] truefi_2.0_audit_ethworks_2_17_2021.pdf
- [6674] truefi_3.0_audit_ben_cosman_5_19_2021.pdf
- [6675] truefi_3.0_audit_certik_5_12_2021.pdf
- [6676] truefi_3.0_audit_certik_5_20_2021.pdf
- [6677] truefi_audit_jakub_wojciechowski_november_22_2020.pdf
- [6678] truefi_audit_slowmist_november_21_2020.pdf
- [6679] 2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf
- [6681] 1.md
- [6682] 2.md
- [6683] 3.md
- [6684] 4.md
- [6685] 5.md
- [6686] 2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf
- [6693] trust_token_audit_august_24_2020.pdf
- [6694] trust_token_audit_june_23_2020..pdf
- [6695] trust_token_audit_november_11_2020.pdf

Fork inheritance lineage and inherited audits are included when available.
