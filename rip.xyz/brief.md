# Agentic Audit Brief: Rip.xyz

## Project Overview

- Project: Rip.xyz (`rip.xyz`)
- Website: [https://www.rip.xyz/](https://www.rip.xyz/)
- Lifecycle: active (Tier 0, 45.5% below peak)
- Generated: 2026-06-17T07:00:36.910Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: hyperliquid
- Contract surface: 5 unique implementations (6 raw deployments)
- DeFi Llama TVL: $879,290.64
- On-chain TVL (included contracts): $0.00
- TVL by chain: Hyperliquid $0.00

## Project Description

Rip.xyz provides tokenized vault strategies on HyperEVM. Its initial strategy, Hypurr Vault, offers NFT-backed vault exposure for fractional access to Hypurr NFTs. External rHYPURR liquidity venues, such as third-party DEX pools, should be treated as dependencies rather than the core project purpose.

### Architecture

The rHYPURR vault (implemented behind an ERC1967 proxy) accepts wHYPE deposits and mints rHYPURR shares; these shares are paired with wHYPE in a Uniswap V3 pool to provide liquidity. The Nft contract likely interacts with the vault for access or rewards, while wHYPE serves as the common base asset across the system.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 5
- Raw deployments: 6
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $0.00
- Latest audit: 2026-01 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Nft | token | hyperliquid | n/a | 2 deployments: hyperliquid [`0x3c7fd3...83b123`](./contracts/hyperliquid-999/0x3c7fd353d32344476d964deda8ea112a9d83b123/); hyperliquid `0x9125e2...bac685` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x6e5f66...a1bf77` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xaa2674...68791c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb12827...8cb154` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc19430...6e1645` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [**View the full audit report (PDF)**](https://rip.xyz/audits/hypurrvault/rHYPURR.pdf) | Three Sigma | Audit | 2026-01 | fresh | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x3c7fd3...83b123`](./contracts/hyperliquid-999/0x3c7fd353d32344476d964deda8ea112a9d83b123/) | Nft | token | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=2

Zero-match audit list:

- [3204] **View the full audit report (PDF)**

Fork inheritance lineage and inherited audits are included when available.
