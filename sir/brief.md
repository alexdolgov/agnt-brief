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
| Oracle | operational_periphery | hyperliquid | n/a | 5 deployments: ethereum `0x3cdccf...48bb29`; ethereum `0xed89af...28497a`; hyperliquid [`0x2ab530...7542e0`](./contracts/hyperliquid-999/0x2ab530127a40a832b3e9ad2f0ec6cdfee17542e0/); hyperliquid `0x6241b1...f126aa`; hyperliquid `0xe61f3b...1d5b96` | ✅ Audited |
| SIR | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1278b1...c3a834`](./contracts/ethereum-1/0x1278b112943abc025a0df081ee42369414c3a834/); ethereum `0x4da4fb...a8aba2`; ethereum `0x9063ad...e9a8e2`; hyperliquid `0x7f3856...3fed5a`; hyperliquid `0xa06d0c...e2b766`; hyperliquid `0xdb4057...c1db39` | ✅ Audited |
| SystemControl | unknown | hyperliquid | n/a | 6 deployments: ethereum `0x8d694d...e88543`; ethereum `0xbbb9ba...5b52f4`; ethereum `0xdc9178...d8bcf9`; hyperliquid [`0x2ff5f8...7046f7`](./contracts/hyperliquid-999/0x2ff5f8100215ef44ec3ab83a8f42a6fe7f7046f7/); hyperliquid `0xaad7a7...301c93`; hyperliquid `0xf1017c...8c4152` | ✅ Audited |
| Vault | core_logic | hyperliquid | n/a | 6 deployments: ethereum `0x549618...da0453`; ethereum `0x7dad75...8b0309`; ethereum `0xb91ae2...4e53e7`; hyperliquid [`0x4a35e7...a0edf0`](./contracts/hyperliquid-999/0x4a35e7448dad9cac6b3e529050b5a6ee56a0edf0/); hyperliquid `0x810bbc...e1d191`; hyperliquid `0xed4e95...11f49e` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| APE | unknown | ethereum | n/a | 6 deployments: ethereum [`0x24616f...7d7cc8`](./contracts/ethereum-1/0x24616f1df1c737d11745286fe9330462937d7cc8/); ethereum `0x8e3a5e...d97b5a`; ethereum `0xfdf65b...045593`; hyperliquid `0x605662...aef3ff`; hyperliquid `0x7f26bc...889a83`; hyperliquid `0xf1db8f...cd362d` | ⚠️ Unaudited |
| Assistant | unknown | hyperliquid | n/a | 3 deployments: ethereum `0xff14f9...04c5ec`; hyperliquid [`0x7d987b...29656c`](./contracts/hyperliquid-999/0x7d987b986fba5e0a4247649a2334bb2d4029656c/); hyperliquid `0xa46f2a...0095fc` | ⚠️ Unaudited |
| Contributors | unknown | ethereum | n/a | 2 deployments: ethereum [`0xca5d6c...572cb5`](./contracts/ethereum-1/0xca5d6c55e249a9add07a2440eccfe16f56572cb5/); hyperliquid `0xdcd0d8...078a94` | ⚠️ Unaudited |
| Disperse | unknown | hyperliquid | n/a | [`0x77eb73...6d1209`](./contracts/hyperliquid-999/0x77eb73e3496e1c9c29478471c8adab93be6d1209/) | ⚠️ Unaudited |
| HyperswapRouter | adapter | hyperliquid | n/a | [`0xb4a9c4...21240a`](./contracts/hyperliquid-999/0xb4a9c4e6ea8e2191d2fa5b380452a634fb21240a/) | ⚠️ Unaudited |
| HyperswapV3Factory | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x09109a...77162a`](./contracts/hyperliquid-999/0x09109a5c4bdb616b7fc6d9f89d780a901e77162a/); hyperliquid `0xa10298...5b50c3`; hyperliquid `0xb1c0fa...2602e3` | ⚠️ Unaudited |
| QuoterHyperEVM | periphery | hyperliquid | n/a | [`0xe57aff...9951df`](./contracts/hyperliquid-999/0xe57aff86a500849f66baa948c6c69c2a5e9951df/) | ⚠️ Unaudited |
| SirProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb60492...0b2a7e`](./contracts/ethereum-1/0xb60492da0c311f3da89e18853656d3fd470b2a7e/); ethereum `0xc046c4...7f6d6c` | ⚠️ Unaudited |
| SwapRouter | adapter | hyperliquid | n/a | [`0x4e2960...6b094d`](./contracts/hyperliquid-999/0x4e2960a8cd19b467b82d26d83facb0fae26b094d/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | ethereum | n/a | [`0x1f9843...31f984`](./contracts/ethereum-1/0x1f98431c8ad98523631ae4a59f267346ea31f984/) | ⚠️ Unaudited |

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
| Proxy (impl: 0x6eda206207c09e5428f281761ddc0d300851fbc8) | proxy | hyperliquid | n/a | `0x6eda20...51fbc8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0089d5...2fdd26` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x03a918...a45c7c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x093de4...b53661` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x098370...11563f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0abe69...f80492` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2bef84...2898c6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x35b2b5...85b226` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x38e305...9f0f18` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3f8f82...86effb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4a6907...9c8e98` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4f07de...3f33ae` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x51b77d...645e71` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x51bafe...151563` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x540a32...b2df74` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x56dee1...44bb15` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5f4f17...dadea9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x62046d...d889e4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x66e96c...d0315a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x69ebc7...e93894` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x724412...ea1c48` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x750db5...77b358` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x77b9e0...5f55ab` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9aae3e...2df0a5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa3414d...5978e3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa7551a...d017f5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xad0d7d...cb10ce` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xae22a0...9bbf7d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xae3712...e75e61` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb4610e...b222e0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb58388...dcad46` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb9076b...f572ac` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbbaf1c...79fa14` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbd90f3...a64353` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc3f845...76365b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc7a0ec...e39646` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc8daa2...99babd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcba981...0dcc20` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd064af...a9c9a3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd1c517...9b7bec` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd3d887...b2ee26` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd86d0f...7da315` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd8b5ba...3ccd4d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdfc8be...8ae5ba` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe1c7c2...3958a9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe40b01...d4b009` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xea92eb...4c814f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xead262...7c56dc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xedc68b...0215df` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf56c59...6439c5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf86571...0b8139` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa84d1...2081f7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa909c...32c18d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SIR-Trading.pdf](https://github.com/Egis-Security/audits/blob/main/reports/SIR-Trading.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x24616f...7d7cc8`](./contracts/ethereum-1/0x24616f1df1c737d11745286fe9330462937d7cc8/) | APE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7d987b...29656c`](./contracts/hyperliquid-999/0x7d987b986fba5e0a4247649a2334bb2d4029656c/) | Assistant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca5d6c...572cb5`](./contracts/ethereum-1/0xca5d6c55e249a9add07a2440eccfe16f56572cb5/) | Contributors | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xb4a9c4...21240a`](./contracts/hyperliquid-999/0xb4a9c4e6ea8e2191d2fa5b380452a634fb21240a/) | HyperswapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x09109a...77162a`](./contracts/hyperliquid-999/0x09109a5c4bdb616b7fc6d9f89d780a901e77162a/) | HyperswapV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xe57aff...9951df`](./contracts/hyperliquid-999/0xe57aff86a500849f66baa948c6c69c2a5e9951df/) | QuoterHyperEVM | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb60492...0b2a7e`](./contracts/ethereum-1/0xb60492da0c311f3da89e18853656d3fd470b2a7e/) | SirProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4e2960...6b094d`](./contracts/hyperliquid-999/0x4e2960a8cd19b467b82d26d83facb0fae26b094d/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
