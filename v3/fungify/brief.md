# Agentic Audit Brief: Fungify

## Project Overview

- Project: Fungify (`fungify`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:53.538Z
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

- Coverage of deployed-live implementations: 0/25 (0.0%)
- Deployed-live implementations: 25 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchUpdateRate | unknown | ethereum | n/a | [`0x67283c...14dfb7`](./contracts/ethereum-1/0x67283c357053185f0ef0df2f2a37f8191114dfb7/) | ⚠️ Unaudited |
| CErc20_PandoraDelegate | unknown | ethereum | n/a | [`0xa2ae3d...c5d207`](./contracts/ethereum-1/0xa2ae3d05b1448bea9199afeb733de92b32c5d207/) | ⚠️ Unaudited |
| CErc20Delegate | unknown | ethereum | n/a | [`0x08a02c...e1a256`](./contracts/ethereum-1/0x08a02ce47e3809b8a571f9695224b243f4e1a256/) | ⚠️ Unaudited |
| CErc20InterestMarketDelegate | unknown | ethereum | n/a | [`0x5f86f5...87b9cf`](./contracts/ethereum-1/0x5f86f598e4fa983097fe6693a1b51f047d87b9cf/) | ⚠️ Unaudited |
| CErc721Delegate | unknown | ethereum | n/a | [`0x086d4c...2dc5f6`](./contracts/ethereum-1/0x086d4cf57f2ed2b84f55ed2c0a83efeb682dc5f6/) | ⚠️ Unaudited |
| CErc721Delegator | unknown | ethereum | n/a | [`0x5931c6...d12d57`](./contracts/ethereum-1/0x5931c64fe4472d7b7133117d123168d1ddd12d57/) | ⚠️ Unaudited |
| CErc721NoBorrowDelegate | unknown | ethereum | n/a | [`0x2053e6...6ec5c1`](./contracts/ethereum-1/0x2053e6b81e1d6b537d38d28402122665486ec5c1/) | ⚠️ Unaudited |
| CErc721NoBorrowDelegator | unknown | ethereum | n/a | [`0xe2b76d...450697`](./contracts/ethereum-1/0xe2b76da8899f861d10103eadbea95685e2450697/) | ⚠️ Unaudited |
| CEtherDelegate | unknown | ethereum | n/a | [`0x202bbc...c9000e`](./contracts/ethereum-1/0x202bbcdce24e827c592d45cfde7626e5f5c9000e/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x7b6d3a...865adc`](./contracts/ethereum-1/0x7b6d3a6b3311e3c5ed3b18f98e9b0eebe2865adc/) | ⚠️ Unaudited |
| ComptrollerPT1 | unknown | ethereum | n/a | [`0x468e47...deb735`](./contracts/ethereum-1/0x468e47bd7d164a80ecee41fecc2c70f693deb735/) | ⚠️ Unaudited |
| DisperseOwned | unknown | ethereum | n/a | [`0xa9d97f...e8baf3`](./contracts/ethereum-1/0xa9d97f7db73f68778367ed90a91527d868e8baf3/) | ⚠️ Unaudited |
| FloorPriceFeedAdapter | unknown | ethereum | n/a | [`0x04f45b...ce792b`](./contracts/ethereum-1/0x04f45bea5fc40415449e3a72596e5488bace792b/) | ⚠️ Unaudited |
| FungifyNFT | unknown | ethereum | n/a | [`0x487695...425de3`](./contracts/ethereum-1/0x487695c35cc9022c67e74257c24ad99286425de3/) | ⚠️ Unaudited |
| FungifyPriceFeed | unknown | ethereum | n/a | [`0x000693...ab0c44`](./contracts/ethereum-1/0x0006939363616e78fee3618f3a2dfe3b46ab0c44/) | ⚠️ Unaudited |
| FungLock | unknown | ethereum | n/a | [`0x507e03...993d21`](./contracts/ethereum-1/0x507e037d5c6979d32f992a95fcdd789182993d21/) | ⚠️ Unaudited |
| FungToken | unknown | ethereum | n/a | [`0x0e4e7f...bdc58a`](./contracts/ethereum-1/0x0e4e7f2aecf408aff4f82f067677050239bdc58a/) | ⚠️ Unaudited |
| FungTokenVest | unknown | ethereum | n/a | [`0x4ea865...e15b5c`](./contracts/ethereum-1/0x4ea865684f3aaf931ffca26d7f962916a4e15b5c/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | ethereum | n/a | [`0x8cd200...d8d25c`](./contracts/ethereum-1/0x8cd2001327a919653b9e0e1adb9298772ed8d25c/) | ⚠️ Unaudited |
| NFTMinter | unknown | ethereum | n/a | [`0x2fb854...852e6b`](./contracts/ethereum-1/0x2fb85432fe1fb9ad3f1a26460552a83736852e6b/) | ⚠️ Unaudited |
| NFTMinterProxy | unknown | ethereum | n/a | [`0x893905...8a768e`](./contracts/ethereum-1/0x893905096e97e5e2c514d11528732b26168a768e/) | ⚠️ Unaudited |
| StraightSale | unknown | ethereum | n/a | [`0x09f5ea...9964a6`](./contracts/ethereum-1/0x09f5eaaecb286271610e1336bf4a4afcb59964a6/) | ⚠️ Unaudited |
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
| [Fungify_Oct23_(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Fungify_Oct23_(Public).pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Fungify_Nov23_(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Fungify_Nov23_(Public).pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Github Link](https://gist.github.com/zobront/2bad23f555cb9e4f85638ad7fc3d397b) | Zach Obront | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Github Link](https://leastauthority.com/wp-content/uploads/2024/01/Fungify_Smart_Contracts_Updated_Final-Audit_Report_Least_Authority.pdf) | Least Authority | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://s3.eu-central-1.amazonaws.com/assets.fungify.it/audits/Gaslite_FungifyAuditReport_v2.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Fungify_Audit_Hexens_Jun24(Public).pdf](https://s3.eu-central-1.amazonaws.com/assets.fungify.it/audits/Fungify_Audit_Hexens_Jun24(Public).pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Fungify-audit-feb24(Public) 13.07.45.pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Fungify-audit-feb24(Public)%2013.07.45.pdf) | Hexens | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [fungify-audit-june-2024(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/fungify-audit-june-2024(Public).pdf) | Hexens | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [fungify-nft-audit-feb24(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/fungify-nft-audit-feb24(Public).pdf) | Hexens | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20334] Fungify_Oct23_(Public).pdf
- [20335] Fungify_Nov23_(Public).pdf
- [20336] Github Link
- [20337] Github Link
- [20338] Link
- [20339] Fungify_Audit_Hexens_Jun24(Public).pdf
- [20340] Fungify-audit-feb24(Public) 13.07.45.pdf
- [20341] fungify-audit-june-2024(Public).pdf
- [20342] fungify-nft-audit-feb24(Public).pdf

Fork inheritance lineage and inherited audits are included when available.
