# Agentic Audit Brief: Butter Network

⚠️ Lifecycle status: DECLINING - TVL dropped 44.7% over 90 days

## Project Overview

- Project: Butter Network (`butter-network`)
- Website: [https://www.butterswap.io/swap](https://www.butterswap.io/swap)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-28T16:03:03.456Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-06de
- Chains: arbitrum, base, blast, ethereum, klaytn, linea, mantle, merlin, optimism, polygon, scroll
- Contract surface: 6 unique implementations (13 raw deployments)
- DeFi Llama TVL: $1,227,686.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Butter Network is a cross-chain bridge protocol that enables asset transfers across multiple blockchains. It uses a unified OmniServiceProxy architecture to facilitate interoperability between Ethereum, Optimism, Polygon, and other supported chains.

### Architecture

The protocol consists of a single product family where multiple OmniServiceProxy instances, deployed on different chains, share the same proxy address and implement the Bridge logic. These proxies collectively form the bridging infrastructure, with each instance operating on its respective chain to handle cross-chain messages and asset transfers.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 6
- Raw deployments: 13
- Audits discovered: 19
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 19 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Bridge | operational_periphery | ethereum | 8 deployments: ethereum [`0x000031...8f6a56`](./contracts/ethereum-1/0x0000317bec33af037b5fab2028f52d14658f6a56/); optimism [`0x000031...8f6a56`](./contracts/optimism-10/0x0000317bec33af037b5fab2028f52d14658f6a56/); polygon [`0x000031...8f6a56`](./contracts/polygon-137/0x0000317bec33af037b5fab2028f52d14658f6a56/); mantle [`0x000031...8f6a56`](./contracts/mantle-5000/0x0000317bec33af037b5fab2028f52d14658f6a56/); base [`0x000031...8f6a56`](./contracts/base-8453/0x0000317bec33af037b5fab2028f52d14658f6a56/); arbitrum [`0x000031...8f6a56`](./contracts/arbitrum-42161/0x0000317bec33af037b5fab2028f52d14658f6a56/); linea [`0x000031...8f6a56`](./contracts/linea-59144/0x0000317bec33af037b5fab2028f52d14658f6a56/); blast [`0x000031...8f6a56`](./contracts/blast-81457/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ⚠️ Unaudited |
| OmniServiceProxy | unknown | scroll | [`0x000031...8f6a56`](./contracts/scroll-534352/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | merlin | `0x000031...8f6a56` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0x41d903...fb0f71` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x000031...8f6a56` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xd077a4...3e4fdb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [1.install.md](https://github.com/butternetwork/butter-packages/blob/main/packages/butter-sdk/docs/1.install.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2.configure-sdk.md](https://github.com/butternetwork/butter-packages/blob/main/packages/butter-sdk/docs/2.configure-sdk.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [3.request-routes.md](https://github.com/butternetwork/butter-packages/blob/main/packages/butter-sdk/docs/3.request-routes.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [4.execute-route.md](https://github.com/butternetwork/butter-packages/blob/main/packages/butter-sdk/docs/4.execute-route.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [5.others.md](https://github.com/butternetwork/butter-packages/blob/main/packages/butter-sdk/docs/5.others.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BOPS.md (also discovered via alternate URL)](https://github.com/butternetwork/butter-documents/blob/master/docs/How%20to%20Integrate/BOPS.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BSLP.md (also discovered via alternate URL)](https://github.com/butternetwork/butter-documents/blob/master/docs/How%20to%20Integrate/BSLP.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [exchange.md](https://github.com/butternetwork/butter-documents/blob/master/docs/How%20to%20Integrate/exchange.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [switch-chain.md](https://github.com/butternetwork/butter-documents/blob/master/docs/How%20to%20Integrate/switch-chain.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [introduction.md](https://github.com/butternetwork/butter-documents/blob/master/docs/introduction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BCES.md](https://github.com/butternetwork/butter-documents/blob/master/docs/products/BCES.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [butter-bridge.md](https://github.com/butternetwork/butter-documents/blob/master/docs/products/butter-bridge.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [butter-chain-switcher.md](https://github.com/butternetwork/butter-documents/blob/master/docs/products/butter-chain-switcher.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [roadmap.md](https://github.com/butternetwork/butter-documents/blob/master/docs/roadmap.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [security.md](https://github.com/butternetwork/butter-documents/blob/master/docs/security.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [thefee.md](https://github.com/butternetwork/butter-documents/blob/master/docs/thefee.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x000031...8f6a56`](./contracts/ethereum-1/0x0000317bec33af037b5fab2028f52d14658f6a56/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x000031...8f6a56`](./contracts/scroll-534352/0x0000317bec33af037b5fab2028f52d14658f6a56/) | OmniServiceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 19
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [9496] 1.install.md
- [9497] 2.configure-sdk.md
- [9498] 3.request-routes.md
- [9499] 4.execute-route.md
- [9500] 5.others.md
- [9501] BOPS.md
- [9502] BSLP.md
- [9503] exchange.md
- [9504] switch-chain.md
- [9505] introduction.md
- [9506] BCES.md
- [9509] butter-bridge.md
- [9510] butter-chain-switcher.md
- [9511] roadmap.md
- [9512] security.md
- [9513] thefee.md
- [9514] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [9515] 0002-metadata-manifest-and-pull-command.md
- [9516] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
