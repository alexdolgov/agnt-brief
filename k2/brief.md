# Agentic Audit Brief: K2

## Project Overview

- Project: K2 (`k2`)
- Website: [https://opengdp.network/](https://opengdp.network/)
- Lifecycle: active (Tier 0, 80.4% below peak)
- Generated: 2026-05-29T20:08:45.505Z
- Pipeline run: v2-pipeline-2026-05-29-691c43-e9c3
- Chains: ethereum
- Contract surface: 30 unique implementations (53 raw deployments)
- DeFi Llama TVL: $4,657,315.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

K2 is a Layer 2 scaling solution built on the OP Stack, providing fast and low-cost transactions while inheriting Ethereum's security. It uses a bridge to move assets between Ethereum and K2, and an OptimismPortal for depositing and withdrawing transactions.

### Architecture

The L1ChugSplashProxy (L1StandardBridge) and OptimismPortal work together to handle deposits and withdrawals, with the bridge managing token transfers and the portal processing transaction commitments and fraud proofs.

## Audit Coverage Summary

- Verified implementations audited: 0/21 (0.0%)
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 30
- Raw deployments: 53
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AddressManager | governance | ethereum | 2 deployments: ethereum [`0x14d25e...a9a837`](./contracts/ethereum-1/0x14d25e9632a628a986343d8f603f64c464a9a837/); ethereum `0xf2c899...26e8c9` | ⚠️ Unaudited |
| Claim | unknown | ethereum | 2 deployments: ethereum [`0x2f1976...35e3ba`](./contracts/ethereum-1/0x2f197670fcf3d952be099d8559e80a3a1535e3ba/); ethereum `0x3f71b5...a3863d` | ⚠️ Unaudited |
| Core | unknown | ethereum | [`0xd5b017...d12bfd`](./contracts/ethereum-1/0xd5b017695f9b516a90f81e268aef59b0d0d12bfd/) | ⚠️ Unaudited |
| DelegationSupervisor | unknown | ethereum | [`0xdd5e5e...39b79e`](./contracts/ethereum-1/0xdd5e5ec73707d74210f380f5b9bb85868639b79e/) | ⚠️ Unaudited |
| ERC1967Factory | registry | ethereum | [`0x947804...3aff2c`](./contracts/ethereum-1/0x947804256c9c46967cc55bbbbf6c0e93923aff2c/) | ⚠️ Unaudited |
| ERC20SlashingHandler | token | ethereum | [`0x25f192...c7fb01`](./contracts/ethereum-1/0x25f1928ba030ea2b3aea49b71974db6221c7fb01/) | ⚠️ Unaudited |
| KarakNFT | token | ethereum | 2 deployments: ethereum [`0x47c92a...97e09b`](./contracts/ethereum-1/0x47c92a446596aff7480bca7bddb3230e6a97e09b/); ethereum `0x5f7645...84a106` | ⚠️ Unaudited |
| L1ChugSplashProxy | bridge_template | ethereum | [`0x19a1c2...80495a`](./contracts/ethereum-1/0x19a1c224107e0498229ddb68b1d8ecf3a980495a/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | 2 deployments: ethereum [`0x186324...a320c8`](./contracts/ethereum-1/0x186324b6c0f0c0e7491a20d388ac60f569a320c8/); ethereum `0x9bffa6...77022d` | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | 3 deployments: ethereum [`0x55d588...ee0f94`](./contracts/ethereum-1/0x55d588941f90fb8a71fe1442acc2af6d5eee0f94/); ethereum `0x56e511...ea21f0`; ethereum `0x952851...e7491e` | ⚠️ Unaudited |
| L1StandardBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x0ba663...501158`](./contracts/ethereum-1/0x0ba6637f01fc5f1ac76beca8fb2c3d3b2d501158/); ethereum `0xba61f2...4b48a3` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x0a2334...731637`](./contracts/ethereum-1/0x0a23342520aa8ca963c4201801f4d3e95e731637/); ethereum `0x66445a...5e8425` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | 3 deployments: ethereum [`0x7b0aea...01c7a6`](./contracts/ethereum-1/0x7b0aea1b0889378af4caf0ed59df1d7b6a01c7a6/); ethereum `0xa41502...962c8d`; ethereum `0xf04a74...9c13db` | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | 3 deployments: ethereum [`0x32a5a8...03c4fd`](./contracts/ethereum-1/0x32a5a89ea2d0fc4128bb975ff63589090003c4fd/); ethereum `0x5cdaa3...352630`; ethereum `0xeece9c...47ea73` | ⚠️ Unaudited |
| Proxy | proxy | ethereum | [`0xc5d81c...b042ea`](./contracts/ethereum-1/0xc5d81ca04acdb10e02e8fefa10e70cb634b042ea/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 2 deployments: ethereum [`0x1612f8...d4065c`](./contracts/ethereum-1/0x1612f868eba1cea65ee66bf4a7c75001b0d4065c/); ethereum `0x94cd27...93b4b0` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | [`0x543805...3773b9`](./contracts/ethereum-1/0x5438051c64388b91baf5d28706fa33d6ee3773b9/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | 3 deployments: ethereum [`0x622333...8788a7`](./contracts/ethereum-1/0x622333688cc1878c7ff4205c89bde051798788a7/); ethereum `0xa99640...b3a418`; ethereum `0xd0f379...e5e830` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | 2 deployments: ethereum [`0x275ac9...76ca65`](./contracts/ethereum-1/0x275ac9c64ef372f528f7c87d3a987d1e3d76ca65/); ethereum `0x5cde0c...7f5ef8` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 3 deployments: ethereum [`0x01ba52...d61479`](./contracts/ethereum-1/0x01ba5212201a26c9a212f4261e49e7e0b5d61479/); ethereum `0x05cd29...7c948e`; ethereum `0x46c64c...24b0c7` | ⚠️ Unaudited |
| VaultSupervisor | core_logic | ethereum | 6 deployments: ethereum [`0x210caf...77292c`](./contracts/ethereum-1/0x210cafd20672ca2bd98ccd4b9ec52fbe1877292c/); ethereum `0x350246...ec49c2`; ethereum `0x7cc943...a39d0a`; ethereum `0xa1b8e3...ac90e0`; ethereum `0xf29ef3...bee457`; ethereum `0xf3fafb...71a636` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0xd1cd25597e79c2037f9bfc4b908b6184ef183a58) | proxy | ethereum | `0x1dbfb4...a1a88e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x01d962...2f78ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x578e61...776399` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x622017...77cd33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x77b932...f87ecd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x80bd39...313192` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8827bb...d6043a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcc4924...1bfea9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd1cd25...183a58` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x14d25e...a9a837`](./contracts/ethereum-1/0x14d25e9632a628a986343d8f603f64c464a9a837/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f1976...35e3ba`](./contracts/ethereum-1/0x2f197670fcf3d952be099d8559e80a3a1535e3ba/) | Claim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5b017...d12bfd`](./contracts/ethereum-1/0xd5b017695f9b516a90f81e268aef59b0d0d12bfd/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd5e5e...39b79e`](./contracts/ethereum-1/0xdd5e5ec73707d74210f380f5b9bb85868639b79e/) | DelegationSupervisor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25f192...c7fb01`](./contracts/ethereum-1/0x25f1928ba030ea2b3aea49b71974db6221c7fb01/) | ERC20SlashingHandler | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47c92a...97e09b`](./contracts/ethereum-1/0x47c92a446596aff7480bca7bddb3230e6a97e09b/) | KarakNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19a1c2...80495a`](./contracts/ethereum-1/0x19a1c224107e0498229ddb68b1d8ecf3a980495a/) | L1ChugSplashProxy | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x543805...3773b9`](./contracts/ethereum-1/0x5438051c64388b91baf5d28706fa33d6ee3773b9/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01ba52...d61479`](./contracts/ethereum-1/0x01ba5212201a26c9a212f4261e49e7e0b5d61479/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x210caf...77292c`](./contracts/ethereum-1/0x210cafd20672ca2bd98ccd4b9ec52fbe1877292c/) | VaultSupervisor | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 4 |
| standard_library | 3 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [7871] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [7872] 0002-metadata-manifest-and-pull-command.md
- [7873] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
