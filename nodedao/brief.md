# Agentic Audit Brief: NodeDAO

## Project Overview

- Project: NodeDAO (`nodedao`)
- Website: [https://www.nodedao.com](https://www.nodedao.com)
- Lifecycle: active (Tier 0, 64.2% below peak)
- Generated: 2026-06-19T06:14:30.331Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $25,126,572.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NodeDAO is a DAO-operated staking protocol spanning ETH liquid staking, rnETH restaking, BTC staking products including oBTC/oyBTC, and DeFi/L2 strategy integrations for earning and optimizing staking-related yields.

### Architecture

The NodeDAOView contract serves as a read-only aggregation point for the protocol, while the ERC1967Proxy enables upgradeability. Other contracts like RestakingPool, ELVault, and DefiStrategy likely interact with the view contract to provide data to users.

## Contract Surface Quality

- Indexed contracts: 53; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 20 inactive, 28 singleton, 0 uninitialized.
- Deployment units: 1/28 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 7
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 6 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CumulativeMerkleDrop | operational_periphery | ethereum | n/a | [`0x1349a8...7b6610`](./contracts/ethereum-1/0x1349a8d352b1971cbebeacf55fb75526f47b6610/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-37388 | [`0x718b78...2d6a1d`](./contracts/ethereum-1/0x718b7885fec8511dc8f2a378d3045c90e82d6a1d/) | ⚠️ Unaudited |
| LsdETH | unknown | ethereum | n/a | [`0x9dc7e1...b97c5b`](./contracts/ethereum-1/0x9dc7e196092dac94f0c76cfb020b60fa75b97c5b/) | ⚠️ Unaudited |
| NethOFTAdapter | adapter | ethereum | n/a | [`0x3343f9...3283ce`](./contracts/ethereum-1/0x3343f9de5612b6f8a433abc3eaae245cfa3283ce/) | ⚠️ Unaudited |
| RNethOFTAdapter | adapter | ethereum | n/a | [`0xcea368...8ded56`](./contracts/ethereum-1/0xcea3681131dd151ee72a5c8dbba555cb8b8ded56/) | ⚠️ Unaudited |

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
| [CertiK-Obelisk-final-20240805T174639Z.pdf](https://github.com/NodeDAO/audit/blob/main/CertiK-Obelisk-final-20240805T174639Z.pdf) | CertiK | Audit | 2024-08 | aging | Direct | contract_name | 0 | n/a |
| [Beosin_NodeDAO-Protocol_202302011759.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_NodeDAO-Protocol_202302011759.pdf) | Beosin | Audit | 2023-02 | stale | Direct | contract_name | 0 | n/a |
| [Beosin_NodeDAO-Protocol_202302161759.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_NodeDAO-Protocol_202302161759.pdf) | Beosin | Audit | 2023-02 | stale | Direct | contract_name | 0 | n/a |
| [Beosin_Validator-NFT_202210251808.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_Validator-NFT_202210251808.pdf) | Beosin | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [MetaScan_Report_NodeDAO_20230301.pdf](https://github.com/NodeDAO/audits/blob/main/MetaScan_Report_NodeDAO_20230301.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://www.nodedao.com/paf/MetaTrust.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://www.nodedao.com/paf/BEOSIN.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1349a8...7b6610`](./contracts/ethereum-1/0x1349a8d352b1971cbebeacf55fb75526f47b6610/) | CumulativeMerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dc7e1...b97c5b`](./contracts/ethereum-1/0x9dc7e196092dac94f0c76cfb020b60fa75b97c5b/) | LsdETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcea368...8ded56`](./contracts/ethereum-1/0xcea3681131dd151ee72a5c8dbba555cb8b8ded56/) | RNethOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=27

Zero-match audit list:

- [3976] CertiK-Obelisk-final-20240805T174639Z.pdf
- [3977] Beosin_NodeDAO-Protocol_202302011759.pdf
- [3978] Beosin_NodeDAO-Protocol_202302161759.pdf
- [3979] Beosin_Validator-NFT_202210251808.pdf
- [3980] MetaScan_Report_NodeDAO_20230301.pdf
- [15360] DL audit link
- [15361] DL audit link

Fork inheritance lineage and inherited audits are included when available.
