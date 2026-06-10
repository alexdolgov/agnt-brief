# Agentic Audit Brief: NodeDAO

## Project Overview

- Project: NodeDAO (`nodedao`)
- Website: [https://www.nodedao.com](https://www.nodedao.com)
- Lifecycle: active (Tier 0, 64.2% below peak)
- Generated: 2026-06-10T20:59:08.705Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 18 unique implementations (36 raw deployments)
- DeFi Llama TVL: $33,688,344.49
- On-chain TVL (included contracts): $33,267,260.92
- TVL by chain: Ethereum $33,267,260.92

## Project Description

NodeDAO is a DAO-operated staking protocol spanning ETH liquid staking, rnETH restaking, BTC staking products including oBTC/oyBTC, and DeFi/L2 strategy integrations for earning and optimizing staking-related yields.

### Architecture

The NodeDAOView contract serves as a read-only aggregation point for the protocol, while the ERC1967Proxy enables upgradeability. Other contracts like RestakingPool, ELVault, and DefiStrategy likely interact with the view contract to provide data to users.

## Audit Coverage Summary

- Verified implementations audited: 7/18 (38.9%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 36
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $33,267,260.92
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 5 | 27.8% | 2024-08 |
| Beosin | Tier 2 | 2 | 11.1% | 2023-02 |
| MetaScan | Tier 2 | 1 | 5.6% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ELVault | core_logic | ethereum | 4 deployments: ethereum [`0x3dd8d9...afac23`](./contracts/ethereum-1/0x3dd8d9074f2a2656144125a3dd04abce01afac23/); ethereum `0x96714c...c3f04e`; ethereum `0xa9d213...dee8f3`; ethereum `0xbdfe7f...def3d8` | ✅ Audited |
| DefiStrategy | core_logic | ethereum | 6 deployments: ethereum [`0x174799...bfc410`](./contracts/ethereum-1/0x174799af838f3883e88161f04011e2a316bfc410/); ethereum `0x59c384...73382d`; ethereum `0x5b14af...a7f503`; ethereum `0x75b2e4...775bae`; ethereum `0x8446c9...ddf8f5`; ethereum `0xfc2891...14c4a7` | ✅ Audited |
| MintSecurity | unknown | ethereum | 2 deployments: ethereum [`0xa57dc7...f9d25f`](./contracts/ethereum-1/0xa57dc79b2852415448b66100bf59753318f9d25f/); ethereum `0xd297dc...befb57` | ✅ Audited |
| MintStrategy | core_logic | ethereum | 2 deployments: ethereum [`0xb97ab3...1f67a0`](./contracts/ethereum-1/0xb97ab3198f6117d2d093807faa670eb1c11f67a0/); ethereum `0xdd2d80...43e6fe` | ✅ Audited |
| ObeliskNetwork | unknown | ethereum | [`0xe423b9...1cd999`](./contracts/ethereum-1/0xe423b99af103c4423ce9edf37d4790e9ab1cd999/) | ✅ Audited |
| StrategyManager | core_logic | ethereum | 2 deployments: ethereum [`0x36f57f...a16e16`](./contracts/ethereum-1/0x36f57f0379cb36e54248d219954274ee86a16e16/); ethereum `0x995f4e...8d5e38` | ✅ Audited |
| TimelockController | governance | ethereum | [`0xe4c555...312f20`](./contracts/ethereum-1/0xe4c555c2aa8f7fdb7baf90039b3a583c8e312f20/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RestakingPool | core_logic | ethereum | 3 deployments: ethereum [`0x0d6f76...a725bc`](./contracts/ethereum-1/0x0d6f764452ca43eb8bd22788c9db43e4b5a725bc/); ethereum `0x512d8b...90285b`; ethereum `0x80c1ef...6bd0fc` | ⚠️ Unaudited |
| NethPool | core_logic | ethereum | 3 deployments: ethereum [`0x9c6f15...6503fa`](./contracts/ethereum-1/0x9c6f151ff54b9820d4c54335369b76729e6503fa/); ethereum `0xa1ed35...82629a`; ethereum `0xf3c794...c07c18` | ⚠️ Unaudited |
| CumulativeMerkleDrop | operational_periphery | ethereum | 2 deployments: ethereum [`0x1349a8...7b6610`](./contracts/ethereum-1/0x1349a8d352b1971cbebeacf55fb75526f47b6610/); ethereum `0x4d68f9...a1bfd6` | ⚠️ Unaudited |
| LsdETH | unknown | ethereum | [`0x9dc7e1...b97c5b`](./contracts/ethereum-1/0x9dc7e196092dac94f0c76cfb020b60fa75b97c5b/) | ⚠️ Unaudited |
| NethOFTAdapter | adapter | ethereum | [`0x3343f9...3283ce`](./contracts/ethereum-1/0x3343f9de5612b6f8a433abc3eaae245cfa3283ce/) | ⚠️ Unaudited |
| NodeDAOView | periphery | ethereum | 2 deployments: ethereum [`0x857bf0...14d948`](./contracts/ethereum-1/0x857bf02b1f5fd85e064e6726658ea1864a14d948/); ethereum `0xd7c049...812121` | ⚠️ Unaudited |
| ObeliskCustody | unknown | ethereum | [`0x9f836f...8b1a2c`](./contracts/ethereum-1/0x9f836f8a27f1579258388bfab16ab16e278b1a2c/) | ⚠️ Unaudited |
| PoolConfig | core_logic | ethereum | 2 deployments: ethereum [`0x54f661...d1ea62`](./contracts/ethereum-1/0x54f661260dd47b6178cf4f6f3e90cc30d8d1ea62/); ethereum `0xea66a6...ad497a` | ⚠️ Unaudited |
| RestakingPod | unknown | ethereum | [`0x9efdeb...a3b75c`](./contracts/ethereum-1/0x9efdeb695f1e3f0ad3bcfb1e07d2749b50a3b75c/) | ⚠️ Unaudited |
| RNethOFTAdapter | adapter | ethereum | [`0xcea368...8ded56`](./contracts/ethereum-1/0xcea3681131dd151ee72a5c8dbba555cb8b8ded56/) | ⚠️ Unaudited |
| TokenAuthority | governance | ethereum | [`0x6fdfd0...6d74a7`](./contracts/ethereum-1/0x6fdfd096687a2d7b83e4afdc05c43519166d74a7/) | ⚠️ Unaudited |

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
| [CertiK-Obelisk-final-20240805T174639Z.pdf](https://github.com/NodeDAO/audit/blob/main/CertiK-Obelisk-final-20240805T174639Z.pdf) | CertiK | Audit | 2024-08 | aging | Direct | contract_name | 13 | high |
| [Beosin_NodeDAO-Protocol_202302011759.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_NodeDAO-Protocol_202302011759.pdf) | Beosin | Audit | 2023-02 | stale | Direct | contract_name | 4 | high |
| [Beosin_NodeDAO-Protocol_202302161759.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_NodeDAO-Protocol_202302161759.pdf) | Beosin | Audit | 2023-02 | stale | Direct | contract_name | 1 | high |
| [Beosin_Validator-NFT_202210251808.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_Validator-NFT_202210251808.pdf) | Beosin | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [MetaScan_Report_NodeDAO_20230301.pdf](https://github.com/NodeDAO/audits/blob/main/MetaScan_Report_NodeDAO_20230301.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9c6f15...6503fa`](./contracts/ethereum-1/0x9c6f151ff54b9820d4c54335369b76729e6503fa/) | NethPool | core_logic | $11,500,732.63 | Verified native implementation with $11,500,732.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1349a8...7b6610`](./contracts/ethereum-1/0x1349a8d352b1971cbebeacf55fb75526f47b6610/) | CumulativeMerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dc7e1...b97c5b`](./contracts/ethereum-1/0x9dc7e196092dac94f0c76cfb020b60fa75b97c5b/) | LsdETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x857bf0...14d948`](./contracts/ethereum-1/0x857bf02b1f5fd85e064e6726658ea1864a14d948/) | NodeDAOView | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcea368...8ded56`](./contracts/ethereum-1/0xcea3681131dd151ee72a5c8dbba555cb8b8ded56/) | RNethOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fdfd0...6d74a7`](./contracts/ethereum-1/0x6fdfd096687a2d7b83e4afdc05c43519166d74a7/) | TokenAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 9 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=22

Zero-match audit list:

- [3979] Beosin_Validator-NFT_202210251808.pdf

Fork inheritance lineage and inherited audits are included when available.
