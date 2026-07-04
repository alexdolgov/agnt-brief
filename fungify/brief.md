# Agentic Audit Brief: Fungify

## Project Overview

- Project: Fungify (`fungify`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:17.238Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 25 unique implementations (25 raw deployments)
- DeFi Llama TVL: $736,486.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 25 project-authored contract(s) across 1 chain(s); 9 ERC20 tokens, 1 ERC721 NFT, 5 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 12 common project-authored base contract(s) (upgradeable, ctokeninterface, ctokenstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 25 (25 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 16/24 (66.7%)
- Deployed-live implementations: 25 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 16/25
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 16 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zach Obront | Tier 2 | 13 | 52.0% | 2023-12 |
| Hexens | Tier 2 | 8 | 32.0% | 2024-06 |
| Least Authority | Tier 2 | 4 | 16.0% | 2024-01 |
| yAudit | Tier 2 | 4 | 16.0% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchUpdateRate | unknown | ethereum | n/a | [`0x67283c...14dfb7`](./contracts/ethereum-1/0x67283c357053185f0ef0df2f2a37f8191114dfb7/) | ✅ Audited |
| CErc20_PandoraDelegate | unknown | ethereum | n/a | [`0xa2ae3d...c5d207`](./contracts/ethereum-1/0xa2ae3d05b1448bea9199afeb733de92b32c5d207/) | ✅ Audited |
| CErc20Delegate | unknown | ethereum | n/a | [`0x08a02c...e1a256`](./contracts/ethereum-1/0x08a02ce47e3809b8a571f9695224b243f4e1a256/) | ✅ Audited |
| CErc20InterestMarketDelegate | unknown | ethereum | n/a | [`0x5f86f5...87b9cf`](./contracts/ethereum-1/0x5f86f598e4fa983097fe6693a1b51f047d87b9cf/) | ✅ Audited |
| CErc721Delegate | unknown | ethereum | n/a | [`0x086d4c...2dc5f6`](./contracts/ethereum-1/0x086d4cf57f2ed2b84f55ed2c0a83efeb682dc5f6/) | ✅ Audited |
| CErc721Delegator | unknown | ethereum | n/a | [`0x5931c6...d12d57`](./contracts/ethereum-1/0x5931c64fe4472d7b7133117d123168d1ddd12d57/) | ✅ Audited |
| CEtherDelegate | unknown | ethereum | n/a | [`0x202bbc...c9000e`](./contracts/ethereum-1/0x202bbcdce24e827c592d45cfde7626e5f5c9000e/) | ✅ Audited |
| Comptroller | unknown | ethereum | n/a | [`0x7b6d3a...865adc`](./contracts/ethereum-1/0x7b6d3a6b3311e3c5ed3b18f98e9b0eebe2865adc/) | ✅ Audited |
| ComptrollerPT1 | unknown | ethereum | n/a | [`0x468e47...deb735`](./contracts/ethereum-1/0x468e47bd7d164a80ecee41fecc2c70f693deb735/) | ✅ Audited |
| FloorPriceFeedAdapter | unknown | ethereum | n/a | [`0x04f45b...ce792b`](./contracts/ethereum-1/0x04f45bea5fc40415449e3a72596e5488bace792b/) | ✅ Audited |
| FungifyNFT | unknown | ethereum | n/a | [`0x487695...425de3`](./contracts/ethereum-1/0x487695c35cc9022c67e74257c24ad99286425de3/) | ✅ Audited |
| FungifyPriceFeed | unknown | ethereum | n/a | [`0x000693...ab0c44`](./contracts/ethereum-1/0x0006939363616e78fee3618f3a2dfe3b46ab0c44/) | ✅ Audited |
| FungToken | unknown | ethereum | n/a | [`0x0e4e7f...bdc58a`](./contracts/ethereum-1/0x0e4e7f2aecf408aff4f82f067677050239bdc58a/) | ✅ Audited |
| JumpRateModelV2 | unknown | ethereum | n/a | [`0x8cd200...d8d25c`](./contracts/ethereum-1/0x8cd2001327a919653b9e0e1adb9298772ed8d25c/) | ✅ Audited |
| NFTMinter | unknown | ethereum | n/a | [`0x2fb854...852e6b`](./contracts/ethereum-1/0x2fb85432fe1fb9ad3f1a26460552a83736852e6b/) | ✅ Audited |
| StraightSale | unknown | ethereum | n/a | [`0x09f5ea...9964a6`](./contracts/ethereum-1/0x09f5eaaecb286271610e1336bf4a4afcb59964a6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc721NoBorrowDelegate | unknown | ethereum | n/a | [`0x2053e6...6ec5c1`](./contracts/ethereum-1/0x2053e6b81e1d6b537d38d28402122665486ec5c1/) | ⚠️ Unaudited |
| CErc721NoBorrowDelegator | unknown | ethereum | n/a | [`0xe2b76d...450697`](./contracts/ethereum-1/0xe2b76da8899f861d10103eadbea95685e2450697/) | ⚠️ Unaudited |
| DisperseOwned | unknown | ethereum | n/a | [`0xa9d97f...e8baf3`](./contracts/ethereum-1/0xa9d97f7db73f68778367ed90a91527d868e8baf3/) | ⚠️ Unaudited |
| FungLock | unknown | ethereum | n/a | [`0x507e03...993d21`](./contracts/ethereum-1/0x507e037d5c6979d32f992a95fcdd789182993d21/) | ⚠️ Unaudited |
| FungTokenVest | unknown | ethereum | n/a | [`0x4ea865...e15b5c`](./contracts/ethereum-1/0x4ea865684f3aaf931ffca26d7f962916a4e15b5c/) | ⚠️ Unaudited |
| NFTMinterProxy | unknown | ethereum | n/a | [`0x893905...8a768e`](./contracts/ethereum-1/0x893905096e97e5e2c514d11528732b26168a768e/) | ⚠️ Unaudited |
| SUSDeUSDePriceFeedAdapter | unknown | ethereum | n/a | [`0x17c7ba...3d81f4`](./contracts/ethereum-1/0x17c7ba4e9f29f8a385fd442f1ecc7930f83d81f4/) | ⚠️ Unaudited |
| WBTCPriceFeedAdapter | unknown | ethereum | n/a | [`0xe4ee8e...b3abd5`](./contracts/ethereum-1/0xe4ee8e5c5e020d8bc9b40a5d67fab4fc49b3abd5/) | ⚠️ Unaudited |
| WstETHPriceFeedAdapter | unknown | ethereum | n/a | [`0xe97b2f...69675e`](./contracts/ethereum-1/0xe97b2ff1d3a7fa699681a9500c3cad350069675e/) | ⚠️ Unaudited |

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
| [Fungify_Oct23_(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Fungify_Oct23_(Public).pdf) | Hexens | Audit | 2023-11 | stale | Direct | contract_name | 4 | high |
| [Fungify_Nov23_(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Fungify_Nov23_(Public).pdf) | Hexens | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [Github Link](https://gist.github.com/zobront/2bad23f555cb9e4f85638ad7fc3d397b) | Zach Obront | Audit | 2023-12 | stale | Direct | contract_name | 13 | high |
| [Github Link](https://leastauthority.com/wp-content/uploads/2024/01/Fungify_Smart_Contracts_Updated_Final-Audit_Report_Least_Authority.pdf) | Least Authority | Audit | 2024-01 | stale | Direct | contract_name | 4 | high |
| [Link](https://s3.eu-central-1.amazonaws.com/assets.fungify.it/audits/Gaslite_FungifyAuditReport_v2.pdf) | yAudit | Audit | 2024-02 | stale | Direct | contract_name | 4 | high |
| [Fungify_Audit_Hexens_Jun24(Public).pdf](https://s3.eu-central-1.amazonaws.com/assets.fungify.it/audits/Fungify_Audit_Hexens_Jun24(Public).pdf) | Hexens | Audit | 2024-06 | stale | Direct | contract_name | 2 | high |
| [Fungify-audit-feb24(Public) 13.07.45.pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Fungify-audit-feb24(Public)%2013.07.45.pdf) | Hexens | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [fungify-audit-june-2024(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/fungify-audit-june-2024(Public).pdf) | Hexens | Audit | 2024-06 | stale | Direct | contract_name | 2 | high |
| [fungify-nft-audit-feb24(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/fungify-nft-audit-feb24(Public).pdf) | Hexens | Audit | 2024-02 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2053e6...6ec5c1`](./contracts/ethereum-1/0x2053e6b81e1d6b537d38d28402122665486ec5c1/) | CErc721NoBorrowDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe2b76d...450697`](./contracts/ethereum-1/0xe2b76da8899f861d10103eadbea95685e2450697/) | CErc721NoBorrowDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x507e03...993d21`](./contracts/ethereum-1/0x507e037d5c6979d32f992a95fcdd789182993d21/) | FungLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ea865...e15b5c`](./contracts/ethereum-1/0x4ea865684f3aaf931ffca26d7f962916a4e15b5c/) | FungTokenVest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x893905...8a768e`](./contracts/ethereum-1/0x893905096e97e5e2c514d11528732b26168a768e/) | NFTMinterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17c7ba...3d81f4`](./contracts/ethereum-1/0x17c7ba4e9f29f8a385fd442f1ecc7930f83d81f4/) | SUSDeUSDePriceFeedAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4ee8e...b3abd5`](./contracts/ethereum-1/0xe4ee8e5c5e020d8bc9b40a5d67fab4fc49b3abd5/) | WBTCPriceFeedAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe97b2f...69675e`](./contracts/ethereum-1/0xe97b2ff1d3a7fa699681a9500c3cad350069675e/) | WstETHPriceFeedAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8
- Match method counts: extraction_exact=32

Zero-match audit list:

- [20340] Fungify-audit-feb24(Public) 13.07.45.pdf

Fork inheritance lineage and inherited audits are included when available.
