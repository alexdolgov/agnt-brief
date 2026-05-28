# Agentic Audit Brief: Enosys

## Project Overview

- Project: Enosys (`enosys`)
- Website: [https://enosys.global](https://enosys.global)
- Lifecycle: active (Tier 0, 81.3% below peak)
- Generated: 2026-05-28T16:39:30.519Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-06de
- Chains: ethereum
- Contract surface: 2 unique implementations (4 raw deployments)
- DeFi Llama TVL: $26,899,011.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Enosys is a multi-product DeFi protocol on Ethereum offering token bridging, AMM-based decentralized exchange, governance incentives, collateralized debt positions, and yield generation. It enables cross-chain asset transfers, liquidity provision, and lending/borrowing services.

### Architecture

The bridge family uses StandardToken as the bridged asset representation, while WrapDepositRedeem contracts handle the locking and minting logic. Other families (AMM, loans, governance) likely share the bridged tokens and may depend on the bridge for cross-chain liquidity, though their contracts are not detailed here.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 4
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StandardToken | token | ethereum | [`0x4a220e...254675`](./contracts/ethereum-1/0x4a220e6096b25eadb88358cb44068a3248254675/) | ⚠️ Unaudited |
| WrapDepositRedeem | unknown | ethereum | 3 deployments: ethereum [`0x37aca9...b68970`](./contracts/ethereum-1/0x37aca97a99d1b4260a5e9821d0ef14947fb68970/); ethereum `0x893676...162c51`; ethereum `0xb39026...d9b1e2` | ⚠️ Unaudited |

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
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4a220e...254675`](./contracts/ethereum-1/0x4a220e6096b25eadb88358cb44068a3248254675/) | StandardToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37aca9...b68970`](./contracts/ethereum-1/0x37aca97a99d1b4260a5e9821d0ef14947fb68970/) | WrapDepositRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
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

- [5952] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5953] 0002-metadata-manifest-and-pull-command.md
- [5954] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
