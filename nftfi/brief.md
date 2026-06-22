# Agentic Audit Brief: NFTfi

⚠️ Lifecycle status: DEAD - TVL dropped 18.2% over 90 days

## Project Overview

- Project: NFTfi (`nftfi`)
- Website: [https://www.nftfi.com/](https://www.nftfi.com/)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T22:11:33.167Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum
- Contract surface: 12 unique implementations (18 raw deployments)
- DeFi Llama TVL: $10,103.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFTfi is a peer-to-peer lending protocol that enables borrowers to use their NFTs as collateral to obtain cryptocurrency loans from lenders. It supports various loan types including asset-specific loans, collection-based offers, and refinancing, all managed through a set of smart contracts that handle escrow, loan terms, and repayments.

### Architecture

The NFTfi family serves as the core infrastructure, with LoanCoordinator orchestrating loan lifecycles and Escrow holding collateral. Asset Loan and Standing Collection Offer Loan families are specific loan types that rely on the core's LoanChecksAndCalculations and ERC20TransferManager for validation and token transfers. The Supporting Contracts family provides bundling capabilities that can be used across different loan types.

## Contract Surface Quality

- Indexed contracts: 70; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 50 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Dependencies extracted: 21; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 6/12 (50.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 18
- Audits discovered: 7
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 6 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 6 | 50.0% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DirectLoanFixedCollectionOffer | unknown | ethereum | n/a | [`0xe52cec...1f7934`](./contracts/ethereum-1/0xe52cec0e90115abeb3304baa36bc2655731f7934/) | ✅ Audited |
| DirectLoanFixedOffer | unknown | ethereum | n/a | [`0xd0a40e...e22207`](./contracts/ethereum-1/0xd0a40eb7fd94ee97102ba8e9342243a2b2e22207/) | ✅ Audited |
| DirectLoanFixedOfferRedeploy | unknown | ethereum | n/a | [`0x8252df...152bc8`](./contracts/ethereum-1/0x8252df1d8b29057d1afe3062bf5a64d503152bc8/) | ✅ Audited |
| ImmutableBundle | unknown | ethereum | n/a | 3 deployments: ethereum [`0x46c9cf...7e7847`](./contracts/ethereum-1/0x46c9cfb32627b74f91e0b5ad575c247aec7e7847/); ethereum `0x9a1290...4a2fbe`; ethereum `0xb9f551...ebfef2` | ✅ Audited |
| NftfiBundler | token | ethereum | n/a | [`0x025911...4925f3`](./contracts/ethereum-1/0x0259119359bf053ebf42c9807752de6bbb4925f3/) | ✅ Audited |
| SmartNft | token | ethereum | n/a | 5 deployments: ethereum [`0x48ed99...16b934`](./contracts/ethereum-1/0x48ed998e778ab2663b6c49bd09dfff8efd16b934/); ethereum `0x5660e2...5e9b23`; ethereum `0x77b53b...ff7f4c`; ethereum `0xaabd3e...1a7708`; ethereum `0xe73ece...9fc481` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetOfferLoan | unknown | ethereum | n/a | [`0x9f10d7...75c0a6`](./contracts/ethereum-1/0x9f10d706d789e4c76a1a6434cd1a9841c875c0a6/) | ⚠️ Unaudited |
| CollectionOfferLoan | unknown | ethereum | n/a | [`0xb6adec...bbad0d`](./contracts/ethereum-1/0xb6adec2acc851d30d5fb64f3137234bcdcbbad0d/) | ⚠️ Unaudited |
| LoanCoordinator | unknown | ethereum | n/a | [`0xa6d93a...4fd2e6`](./contracts/ethereum-1/0xa6d93abc54268cf849a93e867c129786f04fd2e6/) | ⚠️ Unaudited |
| MigrateBundle | unknown | ethereum | n/a | [`0xa2cb0d...1bec2f`](./contracts/ethereum-1/0xa2cb0de6006eff2b5b20719152231bcd651bec2f/) | ⚠️ Unaudited |
| Miladys | unknown | ethereum | n/a | [`0x5af0d9...a425a5`](./contracts/ethereum-1/0x5af0d9827e0c53e4799bb226655a1de152a425a5/) | ⚠️ Unaudited |
| Refinancing | unknown | ethereum | n/a | [`0x6701b1...57dd0c`](./contracts/ethereum-1/0x6701b1d2e6d34727c0c37cdbd0cf421d3357dd0c/) | ⚠️ Unaudited |

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
| [DL audit link](https://www.chainsecurity.com/security-audit/nftfi) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [download report](https://reports.chainsecurity.com/POANetwork/ChainSecurity_POANetwork_SBCDeposit_Audit.pdf) | ChainSecurity | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [NFTfi_Ethereum_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/NFTfi_Ethereum_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | contract_name | 7 | high |
| [NFTfi - Collection Offer Smart Contract Security Audit Report](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/NFTfi_eth_nftfi_Collection_Offer_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-08 | stale | Direct | contract_name | 1 | high |
| [NFTfi - DirectLoanFixedOffer Redeployment Smart Contract Security Audit Report](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/NFTfi_DirectLoanFixedOffer_Redeployment_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-11 | stale | Direct | contract_name | 2 | high |
| [NFTfi - Bundles Airdrop Smart Contract Security Audit Report](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/NFTfi_Bundles_Airdrop_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-12 | stale | Direct | contract_name | 4 | high |
| [NFTfi_Native_Punk_Wrapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/NFTfi_Native_Punk_Wrapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9f10d7...75c0a6`](./contracts/ethereum-1/0x9f10d706d789e4c76a1a6434cd1a9841c875c0a6/) | AssetOfferLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6adec...bbad0d`](./contracts/ethereum-1/0xb6adec2acc851d30d5fb64f3137234bcdcbbad0d/) | CollectionOfferLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6d93a...4fd2e6`](./contracts/ethereum-1/0xa6d93abc54268cf849a93e867c129786f04fd2e6/) | LoanCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2cb0d...1bec2f`](./contracts/ethereum-1/0xa2cb0de6006eff2b5b20719152231bcd651bec2f/) | MigrateBundle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6701b1...57dd0c`](./contracts/ethereum-1/0x6701b1d2e6d34727c0c37cdbd0cf421d3357dd0c/) | Refinancing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=61

Zero-match audit list:

- [13564] DL audit link
- [13565] download report
- [13570] NFTfi_Native_Punk_Wrapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf

Fork inheritance lineage and inherited audits are included when available.
