# Agentic Audit Brief: Locus Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 7.6% over 90 days

## Project Overview

- Project: Locus Finance (`locus-finance`)
- Website: [https://www.locus.finance](https://www.locus.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T05:28:24.697Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, ethereum
- Contract surface: 10 unique implementations (13 raw deployments)
- DeFi Llama TVL: $43,946.24
- On-chain TVL (included contracts): $37,959.26
- TVL by chain: Arbitrum $37,959.26

## Project Description

Locus Finance is a yield optimization protocol that aggregates user deposits into vaults and deploys them across various DeFi strategies (e.g., Pendle, Aura, Convex, Stargate) to generate yield. It operates on Ethereum and Arbitrum, using a modular vault system with upgradeable proxies and a Diamond pattern for access control and token management.

### Architecture

All vaults and strategies share a common Diamond proxy infrastructure for access control and token management, and use upgradeable proxies to point to logic implementations. Vault tokens represent user shares and are minted/burned by vaults, while strategies are plugged into vaults to execute yield generation across external protocols.

## Contract Surface Quality

- Indexed contracts: 325; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 162 inactive, 150 singleton, 0 uninitialized.
- Deployment units: 8/73 live.
- Detected codebases: uniswap-v3, yearn-vault-v2
- Dependencies extracted: 56; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/10 (0.0%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 13
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $37,959.26
- Latest audit: 2023-07 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $37,959.26 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LTERC20Facet | token | arbitrum | unit-41168 | [`0xe1d349...5b6a9e`](./contracts/arbitrum-42161/0xe1d3495717f9534db67a6a8d4940dd17435b6a9e/) | ⚠️ Unaudited |
| OnChainVaultPendle | core_logic | arbitrum | unit-41138 | [`0x515f35...dbe641`](./contracts/arbitrum-42161/0x515f3533a17e2eefb13313d9248f328c94dbe641/) | ⚠️ Unaudited |
| Diamond | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6c4472...90b25e`](./contracts/arbitrum-42161/0x6c447230f098cddb62f6aeaeec25c27e8b90b25e/); arbitrum `0xfce625...012684` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | arbitrum | unit-41170 | [`0xecc5e0...afb952`](./contracts/arbitrum-42161/0xecc5e0c19806cf47531f307140e8b042d5afb952/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | unit-41141 | [`0x57c817...67c23f`](./contracts/arbitrum-42161/0x57c817253e0ee2b260468e81628bc6ccdd67c23f/) | ⚠️ Unaudited |
| LSDepositaryForVaultTokensFacet | core_logic | arbitrum | unit-41120 (2 proxies) | 2 deployments: arbitrum [`0x24d6d6...4dd9ae`](./contracts/arbitrum-42161/0x24d6d6af23cd865b4dee7f169ca60bf07b4dd9ae/); arbitrum `0x639074...d885c2` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x0b4cf3...0d0f87`](./contracts/ethereum-1/0x0b4cf39b345aafe16957794636e5b0e7c90d0f87/); arbitrum [`0x0b4cf3...0d0f87`](./contracts/arbitrum-42161/0x0b4cf39b345aafe16957794636e5b0e7c90d0f87/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | unit-41103 | [`0x4a8a75...d0ee97`](./contracts/ethereum-1/0x4a8a7539ad59c277c1915c3938d2b0c15cd0ee97/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-41162 | [`0xb0a66d...464649`](./contracts/arbitrum-42161/0xb0a66dd3b92293e5dc946b47922c6ca9de464649/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-41164 | [`0xbf8181...58c60f`](./contracts/arbitrum-42161/0xbf8181f3b5e71fa0cbbe1e067f408a9a0558c60f/) | ⚠️ Unaudited |

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
| [Locus Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Locus%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xe1d349...5b6a9e`](./contracts/arbitrum-42161/0xe1d3495717f9534db67a6a8d4940dd17435b6a9e/) | LTERC20Facet | token | $22,613.83 | Verified native implementation with $22,613.83 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c4472...90b25e`](./contracts/arbitrum-42161/0x6c447230f098cddb62f6aeaeec25c27e8b90b25e/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xecc5e0...afb952`](./contracts/arbitrum-42161/0xecc5e0c19806cf47531f307140e8b042d5afb952/) | DiamondCutFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x24d6d6...4dd9ae`](./contracts/arbitrum-42161/0x24d6d6af23cd865b4dee7f169ca60bf07b4dd9ae/) | LSDepositaryForVaultTokensFacet | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=9

Zero-match audit list:

- [13385] Locus Security Analysis by Pessimistic.pdf

Fork inheritance lineage and inherited audits are included when available.
