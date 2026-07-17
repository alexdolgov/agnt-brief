# Agentic Audit Brief: SIR

## Project Overview

- Project: SIR (`sir`)
- Website: [https://www.sir.trading](https://www.sir.trading)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.340Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum, hyperliquid
- Contract surface: 67 unique implementations (97 raw deployments)
- DeFi Llama TVL: $84,567.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 35 project-authored contract(s) across 2 chain(s); 1 ERC20 token, 1 ERC721 NFT, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 15 common project-authored base contract(s) (immutablestate, peripherypayments, peripheryimmutablestate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 110; live-surface contracts included: 97 (44 live, 53 unknown).
- Excluded by liveness: 13 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/12 (33.3%)
- Deployed-live implementations: 14 of 67 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/14
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 53
- Unique implementations: 67
- Raw deployments: 97
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 28.6% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Oracle | operational_periphery | hyperliquid | n/a | 5 deployments: ethereum `0x3cdccfa37c1b2bee3d810ec9daddbb205048bb29`; ethereum `0xed89af5e62965c45956a0125a5d078218228497a`; hyperliquid [`0x2ab530127a40a832b3e9ad2f0ec6cdfee17542e0`](./contracts/hyperliquid-999/0x2ab530127a40a832b3e9ad2f0ec6cdfee17542e0/); hyperliquid `0x6241b197ad855c08ae0888642ce04f9e57f126aa`; hyperliquid `0xe61f3b3191a7638241ac52c47b12528fd51d5b96` | ✅ Audited |
| SIR | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1278b112943abc025a0df081ee42369414c3a834`](./contracts/ethereum-1/0x1278b112943abc025a0df081ee42369414c3a834/); ethereum `0x4da4fb565dcd5d5c5db495205c109ba983a8aba2`; ethereum `0x9063ada4f810fdc40a9cd234572dbf64b1e9a8e2`; hyperliquid `0x7f3856d63e74516ef142a51c7445fbbc373fed5a`; hyperliquid `0xa06d0c5a8adb7134903ca13d1fc0641731e2b766`; hyperliquid `0xdb40571d0cb37b5179c85af920e30e99cfc1db39` | ✅ Audited |
| SystemControl | unknown | hyperliquid | n/a | 6 deployments: ethereum `0x8d694d1b369bde5b274ad643fedd74f836e88543`; ethereum `0xbbb9bafb8e41f081ffa064b697bbeffd1a5b52f4`; ethereum `0xdc91789ab7d1e7c093c418c0930ed32d07d8bcf9`; hyperliquid [`0x2ff5f8100215ef44ec3ab83a8f42a6fe7f7046f7`](./contracts/hyperliquid-999/0x2ff5f8100215ef44ec3ab83a8f42a6fe7f7046f7/); hyperliquid `0xaad7a78da51fa53b50d17f4da47ae0a042301c93`; hyperliquid `0xf1017c43aa91e856afa173972765106dd98c4152` | ✅ Audited |
| Vault | core_logic | hyperliquid | n/a | 6 deployments: ethereum `0x549618c8e4b74f9eb519e459698b2caf53da0453`; ethereum `0x7dad75dd36de234c937c105e652b6e50d68b0309`; ethereum `0xb91ae2c8365fd45030aba84a4666c4db074e53e7`; hyperliquid [`0x4a35e7448dad9cac6b3e529050b5a6ee56a0edf0`](./contracts/hyperliquid-999/0x4a35e7448dad9cac6b3e529050b5a6ee56a0edf0/); hyperliquid `0x810bbc719c9e7d6762f6083bb3620cbf39e1d191`; hyperliquid `0xed4e95f1acff8452c33f1b0f3ec04734ff11f49e` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| APE | unknown | ethereum | n/a | 6 deployments: ethereum [`0x24616f1df1c737d11745286fe9330462937d7cc8`](./contracts/ethereum-1/0x24616f1df1c737d11745286fe9330462937d7cc8/); ethereum `0x8e3a5ec5a8b23fd169f38c9788b19e72aed97b5a`; ethereum `0xfdf65b4744679e461aa4f3d8477381cc17045593`; hyperliquid `0x60566290fe91f2424bbb2cb49b620a71b8aef3ff`; hyperliquid `0x7f26bca22b334fd8a0d45daa9cba48df77889a83`; hyperliquid `0xf1db8f4d2543c2c881a3dc90754cedf549cd362d` | ⚠️ Unaudited |
| Assistant | unknown | hyperliquid | n/a | 3 deployments: ethereum `0xff14f91285580aed3733c0b1f3c8b6d04804c5ec`; hyperliquid [`0x7d987b986fba5e0a4247649a2334bb2d4029656c`](./contracts/hyperliquid-999/0x7d987b986fba5e0a4247649a2334bb2d4029656c/); hyperliquid `0xa46f2aa9258960ea3f3baa3fefbbca1d490095fc` | ⚠️ Unaudited |
| Contributors | unknown | ethereum | n/a | 2 deployments: ethereum [`0xca5d6c55e249a9add07a2440eccfe16f56572cb5`](./contracts/ethereum-1/0xca5d6c55e249a9add07a2440eccfe16f56572cb5/); hyperliquid `0xdcd0d8bb7f54010b745aee52eff95ea246078a94` | ⚠️ Unaudited |
| Disperse | unknown | hyperliquid | n/a | [`0x77eb73e3496e1c9c29478471c8adab93be6d1209`](./contracts/hyperliquid-999/0x77eb73e3496e1c9c29478471c8adab93be6d1209/) | ⚠️ Unaudited |
| HyperswapRouter | adapter | hyperliquid | n/a | [`0xb4a9c4e6ea8e2191d2fa5b380452a634fb21240a`](./contracts/hyperliquid-999/0xb4a9c4e6ea8e2191d2fa5b380452a634fb21240a/) | ⚠️ Unaudited |
| HyperswapV3Factory | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x09109a5c4bdb616b7fc6d9f89d780a901e77162a`](./contracts/hyperliquid-999/0x09109a5c4bdb616b7fc6d9f89d780a901e77162a/); hyperliquid `0xa1029893c288470e990bb1c9e868457c6e5b50c3`; hyperliquid `0xb1c0fa0b789320044a6f623cfe5ebda9562602e3` | ⚠️ Unaudited |
| QuoterHyperEVM | periphery | hyperliquid | n/a | [`0xe57aff86a500849f66baa948c6c69c2a5e9951df`](./contracts/hyperliquid-999/0xe57aff86a500849f66baa948c6c69c2a5e9951df/) | ⚠️ Unaudited |
| SirProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb60492da0c311f3da89e18853656d3fd470b2a7e`](./contracts/ethereum-1/0xb60492da0c311f3da89e18853656d3fd470b2a7e/); ethereum `0xc046c450946e2d29703eb0299a32a647837f6d6c` | ⚠️ Unaudited |
| SwapRouter | adapter | hyperliquid | n/a | [`0x4e2960a8cd19b467b82d26d83facb0fae26b094d`](./contracts/hyperliquid-999/0x4e2960a8cd19b467b82d26d83facb0fae26b094d/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | ethereum | n/a | [`0x1f98431c8ad98523631ae4a59f267346ea31f984`](./contracts/ethereum-1/0x1f98431c8ad98523631ae4a59f267346ea31f984/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (53)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x6eda206207c09e5428f281761ddc0d300851fbc8) | proxy | hyperliquid | n/a | `0x6eda206207c09e5428f281761ddc0d300851fbc8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0089d5e0d8b5a7a180760aaea714c57bee2fdd26` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x03a918028f22d9e1473b7959c927ad7425a45c7c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x093de46c90bea4a730b1914748cc43d909b53661` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0983709e160cdc181df6073fe226e1b5d911563f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0abe69f24b22b82101d340680b07bb4298f80492` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2bef84cc99a6eed7853587b49e14ae9a112898c6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x35b2b5bbd27bfc4d65d69d8914f0c2646b85b226` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x38e3055f549167f298fbdb4fc28baed7bb9f0f18` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3f8f8284c383240ff80bfdc4e0b488e67b86effb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4a6907ae3c5bbcc54829fe64ba29ddb1a59c8e98` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4f07dee7972f03dcb3ca097b0d8da205783f33ae` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x51b77dae2bf04fe3e4e045ab9a5f8e30bc645e71` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x51bafe2054aeaa7291946b03dba17eb275151563` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x540a32ff49910bc0440713c2b1302f6849b2df74` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x56dee154ea6cd473ed76353f4045e92a5d44bb15` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5f4f176e94320456f7b30e9419321d87f6dadea9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x62046d9db4c25e92ed54e58d2c7a941843d889e4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x66e96c65bea6dc3e4c60f5d65a626e9decd0315a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x69ebc72344c8edc526d8a634e488cae682e93894` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x724412c00059bf7d6ee7d4a1d0d5cd4de3ea1c48` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x750db56b72bd932edf40d9206883d3962177b358` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x77b9e0551f8d87234fd9b6d30120128a465f55ab` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9aae3e0ab52252c4cb1fde92f7ee6c490a2df0a5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa3414d60c543732f1df893def045df22a05978e3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa7551a135f48832e205ca9dd622bee2ca0d017f5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xad0d7dc2ba4e8e9a84a1202a832b2917f1cb10ce` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xae22a0f9361e5a02a76511aeabbadcce719bbf7d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xae3712dbf9847972b4f652c79373fb8d57e75e61` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb4610edafa43e37110d9b64d8ea5e58024b222e0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb583880c52aca242d04e7c626385d21c07dcad46` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb9076b19898e0ebb25f0dfb640a83c511ef572ac` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbbaf1c75b2e7eddb367a258ce99202d80a79fa14` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbd90f3f9e3538bf55fec5f935498298896a64353` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc3f84568e9c8e5aac009e49fa7f0363ff676365b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc7a0ec2560bc8738c63df111c1afe090fae39646` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc8daa255d384a228eab2cb1200863221c499babd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcba9819563d6e361c5515ed285db82f3400dcc20` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd064afca46aa75d748e5757c84b26518c9a9c9a3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd1c5178fef74dc6ed30c639a03edc607639b7bec` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd3d887c9bb931749ae38ba2e038d6e9261b2ee26` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd86d0f9419ffe3c81daa7621ec1809127e7da315` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd8b5ba80d39eb0663a570a0f5f02e4a5ad3ccd4d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdfc8be0ad2171adece51272bc8bdcfc6088ae5ba` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe1c7c2779189ef8a862e293ac96b9b77913958a9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe40b0113d4b36d6170cb7cdb036540e2b2d4b009` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xea92ebb37298131988b343adfe349faef24c814f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xead2627da15cc850d9aaed8cdd6e5055f67c56dc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xedc68b21a42c12d311b2ddbb1833e12d250215df` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf56c59e9eabecaaf17e7e9b94f858e46816439c5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf865716b90f09268ff12b6b620e14bec390b8139` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa84d18b592b9d25ba7623a6ea772f96cf2081f7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa909ccdd144f6206e3826c1add67c9ecf32c18d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SIR-Trading.pdf](https://github.com/Egis-Security/audits/blob/main/reports/SIR-Trading.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x24616f1df1c737d11745286fe9330462937d7cc8`](./contracts/ethereum-1/0x24616f1df1c737d11745286fe9330462937d7cc8/) | APE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7d987b986fba5e0a4247649a2334bb2d4029656c`](./contracts/hyperliquid-999/0x7d987b986fba5e0a4247649a2334bb2d4029656c/) | Assistant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca5d6c55e249a9add07a2440eccfe16f56572cb5`](./contracts/ethereum-1/0xca5d6c55e249a9add07a2440eccfe16f56572cb5/) | Contributors | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xb4a9c4e6ea8e2191d2fa5b380452a634fb21240a`](./contracts/hyperliquid-999/0xb4a9c4e6ea8e2191d2fa5b380452a634fb21240a/) | HyperswapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x09109a5c4bdb616b7fc6d9f89d780a901e77162a`](./contracts/hyperliquid-999/0x09109a5c4bdb616b7fc6d9f89d780a901e77162a/) | HyperswapV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xe57aff86a500849f66baa948c6c69c2a5e9951df`](./contracts/hyperliquid-999/0xe57aff86a500849f66baa948c6c69c2a5e9951df/) | QuoterHyperEVM | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb60492da0c311f3da89e18853656d3fd470b2a7e`](./contracts/ethereum-1/0xb60492da0c311f3da89e18853656d3fd470b2a7e/) | SirProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4e2960a8cd19b467b82d26d83facb0fae26b094d`](./contracts/hyperliquid-999/0x4e2960a8cd19b467b82d26d83facb0fae26b094d/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 53 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Fork inheritance lineage and inherited audits are included when available.
