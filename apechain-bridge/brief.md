# Agentic Audit Brief: ApeChain Bridge

## Project Overview

- Project: ApeChain Bridge (`apechain-bridge`)
- Website: [https://apechain.com/portal#bridge](https://apechain.com/portal#bridge)
- Lifecycle: active (Tier 0, 90.8% below peak)
- Generated: 2026-05-29T05:23:36.278Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-befa
- Chains: ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $44,918,026.08
- On-chain TVL (included contracts): $138,232,772.62
- TVL by chain: Ethereum $138,232,772.62

## Project Description

ApeChain Bridge enables cross-chain transfers of assets between Ethereum and ApeChain, focusing on staking and bridging of ApeCoin and related tokens.

### Architecture

The L1Oft4626Router adapter connects the StETHVault and SimpleToken to the LayerZero OFT standard for cross-chain messaging, while ApeCoinStaking manages staking rewards, all deployed by a shared set of deployer addresses.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $138,232,772.62
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SimpleToken | token | ethereum | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| StETHVault | core_logic | ethereum | [`0xc8a12b...1131d1`](./contracts/ethereum-1/0xc8a12b1db09ec5a43919906d94fa7eeaef1131d1/) | ⚠️ Unaudited |
| ApeCoinStaking | unknown | ethereum | [`0x5954ab...2afbb9`](./contracts/ethereum-1/0x5954ab967bc958940b7eb73ee84797dc8a2afbb9/) | ⚠️ Unaudited |
| ApeETH | unknown | ethereum | [`0xcf800f...f70438`](./contracts/ethereum-1/0xcf800f4948d16f23333508191b1b1591daf70438/) | ⚠️ Unaudited |
| ApeUSD | unknown | ethereum | [`0xa2235d...3fbef4`](./contracts/ethereum-1/0xa2235d059f80e176d931ef76b6c51953eb3fbef4/) | ⚠️ Unaudited |
| L1ApeETHRouter | adapter | ethereum | [`0x6c92ce...aed0a1`](./contracts/ethereum-1/0x6c92ceeb09c83f1018d5bca81d933df3eeaed0a1/) | ⚠️ Unaudited |
| L1Oft4626Router | adapter | ethereum | [`0xf33d21...59cb00`](./contracts/ethereum-1/0xf33d21137cd0b878f3a18cc60cd74f842c59cb00/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x27e800...47b84d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b61c1...ac196c` | ❓ Unverified |

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
| ethereum | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | SimpleToken | token | $138,232,772.62 | Verified native implementation with $138,232,772.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8a12b...1131d1`](./contracts/ethereum-1/0xc8a12b1db09ec5a43919906d94fa7eeaef1131d1/) | StETHVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5954ab...2afbb9`](./contracts/ethereum-1/0x5954ab967bc958940b7eb73ee84797dc8a2afbb9/) | ApeCoinStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf800f...f70438`](./contracts/ethereum-1/0xcf800f4948d16f23333508191b1b1591daf70438/) | ApeETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2235d...3fbef4`](./contracts/ethereum-1/0xa2235d059f80e176d931ef76b6c51953eb3fbef4/) | ApeUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c92ce...aed0a1`](./contracts/ethereum-1/0x6c92ceeb09c83f1018d5bca81d933df3eeaed0a1/) | L1ApeETHRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf33d21...59cb00`](./contracts/ethereum-1/0xf33d21137cd0b878f3a18cc60cd74f842c59cb00/) | L1Oft4626Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [5786] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5787] 0002-metadata-manifest-and-pull-command.md
- [5788] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
