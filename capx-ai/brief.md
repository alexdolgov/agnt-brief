# Agentic Audit Brief: Capx AI

## Project Overview

- Project: Capx AI (`capx-ai`)
- Website: [https://capx.ai](https://capx.ai)
- Lifecycle: active (Tier 0, 19.2% below peak)
- Generated: 2026-05-24T14:07:13.155Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $2,155,363.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Capx AI is a protocol on BSC that deploys and manages AI agent tokens via a factory contract, enabling the creation and trading of burnable/mintable ERC20 tokens.

### Architecture

The single product family contains the core factory contract, which serves as the registry and deployer for all AI agent tokens; no additional infrastructure contracts are present.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FactoryBurnMintERC20 | registry | bsc | [`0x71fb17...42ed5f`](./contracts/bsc-56/0x71fb1795b084ff2b65eabf51cad22bbefd42ed5f/) | ⚠️ Unaudited |

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
| [DL audit link](https://www.capx.ai/openzeppelin-audit-report.pdf) | OpenZeppelin | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x71fb17...42ed5f`](./contracts/bsc-56/0x71fb1795b084ff2b65eabf51cad22bbefd42ed5f/) | FactoryBurnMintERC20 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2880] DL audit link

Fork inheritance lineage and inherited audits are included when available.
