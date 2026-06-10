# Agentic Audit Brief: Rip.xyz

## Project Overview

- Project: Rip.xyz (`rip.xyz`)
- Website: [https://www.rip.xyz/](https://www.rip.xyz/)
- Lifecycle: active (Tier 0, 45.5% below peak)
- Generated: 2026-06-10T20:59:11.465Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: hyperliquid
- Contract surface: 6 unique implementations (8 raw deployments)
- DeFi Llama TVL: $1,041,783.34
- On-chain TVL (included contracts): $0.00
- TVL by chain: Hyperliquid $0.00

## Project Description

Rip.xyz provides tokenized vault strategies on HyperEVM. Its initial strategy, Hypurr Vault, offers NFT-backed vault exposure for fractional access to Hypurr NFTs. External rHYPURR liquidity venues, such as third-party DEX pools, should be treated as dependencies rather than the core project purpose.

### Architecture

The rHYPURR vault (implemented behind an ERC1967 proxy) accepts wHYPE deposits and mints rHYPURR shares; these shares are paired with wHYPE in a Uniswap V3 pool to provide liquidity. The Nft contract likely interacts with the vault for access or rewards, while wHYPE serves as the common base asset across the system.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 6
- Raw deployments: 8
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $0.00
- Latest audit: 2026-01 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Three Sigma | Tier 2 | 1 | 50.0% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| rHYPURR | unknown | hyperliquid | 2 deployments: hyperliquid [`0x0df4f6...94667b`](./contracts/hyperliquid-999/0x0df4f69cf9417b1817ab9579bf099537a694667b/); hyperliquid `0x533811...79bee7` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Nft | token | hyperliquid | 2 deployments: hyperliquid [`0x3c7fd3...83b123`](./contracts/hyperliquid-999/0x3c7fd353d32344476d964deda8ea112a9d83b123/); hyperliquid `0x9125e2...bac685` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | hyperliquid | `0x6e5f66...a1bf77` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xaa2674...68791c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xb12827...8cb154` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xc19430...6e1645` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [**View the full audit report (PDF)**](https://rip.xyz/audits/hypurrvault/rHYPURR.pdf) | Three Sigma | Audit | 2026-01 | fresh | Direct | contract_name | 2 | high |

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
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
