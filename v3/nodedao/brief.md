# Agentic Audit Brief: NodeDAO

## Project Overview

- Project: NodeDAO (`nodedao`)
- Website: [https://www.nodedao.com](https://www.nodedao.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:36.499Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 16 unique implementations (24 raw deployments)
- DeFi Llama TVL: $22,322,204.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 24 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 22 common project-authored base contract(s) (proxy, erc1967upgrade, oftadapter). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 47; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 23 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/16 (68.8%)
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/16
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 24
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 9 | 56.3% | 2024-08 |
| Beosin | Tier 2 | 2 | 12.5% | 2023-02 |
| MetaScan | Tier 2 | 2 | 12.5% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DefiStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x174799...bfc410`](./contracts/ethereum-1/0x174799af838f3883e88161f04011e2a316bfc410/); ethereum `0x59c384...73382d` | ✅ Audited |
| DefiStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5b14af...a7f503`](./contracts/ethereum-1/0x5b14afdb6cbab7289e7d73df7d3dbad48aa7f503/); ethereum `0xfc2891...14c4a7` | ✅ Audited |
| DefiStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x75b2e4...775bae`](./contracts/ethereum-1/0x75b2e41c6096eb4a8110e0d23c3eeb749e775bae/); ethereum `0x8446c9...ddf8f5` | ✅ Audited |
| ELVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3dd8d9...afac23`](./contracts/ethereum-1/0x3dd8d9074f2a2656144125a3dd04abce01afac23/); ethereum `0xa9d213...dee8f3` | ✅ Audited |
| ELVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x96714c...c3f04e`](./contracts/ethereum-1/0x96714ca83bdabd4d45ccf61e171d81178fc3f04e/); ethereum `0xbdfe7f...def3d8` | ✅ Audited |
| MintStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb97ab3...1f67a0`](./contracts/ethereum-1/0xb97ab3198f6117d2d093807faa670eb1c11f67a0/); ethereum `0xdd2d80...43e6fe` | ✅ Audited |
| ObeliskNetwork | unknown | ethereum | n/a | [`0x934cbd...ebad42`](./contracts/ethereum-1/0x934cbd2af86c074478a1fe1d10d2c5d4adebad42/) | ✅ Audited |
| ObeliskNetwork | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe423b9...1cd999`](./contracts/ethereum-1/0xe423b99af103c4423ce9edf37d4790e9ab1cd999/); ethereum `0xef2df4...43e80b` | ✅ Audited |
| OBTC | unknown | ethereum | n/a | [`0xb1e128...de0e3c`](./contracts/ethereum-1/0xb1e12802831da99d2d47b6a55049d69bf7de0e3c/) | ✅ Audited |
| OYBTCB2 | unknown | ethereum | n/a | [`0x7f58f8...3d24b6`](./contracts/ethereum-1/0x7f58f8d540324a7a895794bb819f2d635c3d24b6/) | ✅ Audited |
| StrategyManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36f57f...a16e16`](./contracts/ethereum-1/0x36f57f0379cb36e54248d219954274ee86a16e16/); ethereum `0x995f4e...8d5e38` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CumulativeMerkleDrop | operational_periphery | ethereum | n/a | [`0x1349a8...7b6610`](./contracts/ethereum-1/0x1349a8d352b1971cbebeacf55fb75526f47b6610/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x718b78...2d6a1d`](./contracts/ethereum-1/0x718b7885fec8511dc8f2a378d3045c90e82d6a1d/) | ⚠️ Unaudited |
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
| [CertiK-Obelisk-final-20240805T174639Z.pdf](https://github.com/NodeDAO/audit/blob/main/CertiK-Obelisk-final-20240805T174639Z.pdf) | CertiK | Audit | 2024-08 | aging | Direct | contract_name | 15 | high |
| [Beosin_NodeDAO-Protocol_202302011759.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_NodeDAO-Protocol_202302011759.pdf) | Beosin | Audit | 2023-02 | stale | Direct | contract_name | 4 | high |
| [Beosin_NodeDAO-Protocol_202302161759.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_NodeDAO-Protocol_202302161759.pdf) | Beosin | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [Beosin_Validator-NFT_202210251808.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_Validator-NFT_202210251808.pdf) | Beosin | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [MetaScan_Report_NodeDAO_20230301.pdf](https://github.com/NodeDAO/audits/blob/main/MetaScan_Report_NodeDAO_20230301.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | contract_name | 4 | high |
| [MetaTrust.pdf](https://www.nodedao.com/paf/MetaTrust.pdf) | unknown | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [BEOSIN.pdf](https://www.nodedao.com/paf/BEOSIN.pdf) | unknown | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=23

Zero-match audit list:

- [3978] Beosin_NodeDAO-Protocol_202302161759.pdf
- [3979] Beosin_Validator-NFT_202210251808.pdf
- [15360] MetaTrust.pdf
- [15361] BEOSIN.pdf

Fork inheritance lineage and inherited audits are included when available.
