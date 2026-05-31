# Agentic Audit Brief: DerivaDEX

⚠️ Lifecycle status: DECLINING - TVL dropped 1.9% over 90 days

## Project Overview

- Project: DerivaDEX (`derivadex`)
- Website: [http://derivadex.com](http://derivadex.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-31T07:50:57.875Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: ethereum
- Contract surface: 9 unique implementations (10 raw deployments)
- DeFi Llama TVL: $1,617,904.02
- On-chain TVL (included contracts): $16,891,211.09
- TVL by chain: Ethereum $16,891,211.09

## Project Description

DerivaDEX is a decentralized derivatives exchange that enables trustless trading of perpetual contracts and other derivative products. It uses an insurance fund to manage risk and a tokenized representation of assets for collateral and settlement.

### Architecture

The DerivaDEX proxy delegates to the InsuranceFund implementation, indicating the exchange logic is tightly coupled with the insurance fund. The CErc20Delegator token contract likely serves as the collateral asset, integrating with the exchange and insurance fund for trading and risk management.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 9
- Raw deployments: 10
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $16,891,211.09
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $16,891,211.09 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CErc20Delegate | token | ethereum | [`0xf650c3...07dcc9`](./contracts/ethereum-1/0xf650c3d88d12db855b8bf7d11be6c55a4e07dcc9/) | ⚠️ Unaudited |
| DDXWalletCloneable | unknown | ethereum | [`0xc1e9e3...edfb3a`](./contracts/ethereum-1/0xc1e9e37c8bc1ef53dc5843a14407ee8743edfb3a/) | ⚠️ Unaudited |
| DIFundTokenFactory | registry | ethereum | [`0xe49478...4ff91c`](./contracts/ethereum-1/0xe49478b6973e7c9e0236081c89c609643f4ff91c/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | [`0xbfd5a7...b249c2`](./contracts/ethereum-1/0xbfd5a73bafc692190846e04fa7b3f22325b249c2/) | ⚠️ Unaudited |
| InsuranceFund | unknown | ethereum | 2 deployments: ethereum [`0x6fb8aa...660027`](./contracts/ethereum-1/0x6fb8aa6fc6f27e591423009194529ae126660027/); ethereum `0xccf3d6...ce656e` | ⚠️ Unaudited |
| Pause | unknown | ethereum | [`0x0c8813...94111a`](./contracts/ethereum-1/0x0c8813521196614c85c2fb121fb22f52dc94111a/) | ⚠️ Unaudited |
| Trader | unknown | ethereum | [`0xcb7130...fe0d66`](./contracts/ethereum-1/0xcb71303f4681aec73e137d096e0ef22464fe0d66/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | `0x44ee8d...b2574e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdb8dce...bcbad9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc1e9e3...edfb3a`](./contracts/ethereum-1/0xc1e9e37c8bc1ef53dc5843a14407ee8743edfb3a/) | DDXWalletCloneable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe49478...4ff91c`](./contracts/ethereum-1/0xe49478b6973e7c9e0236081c89c609643f4ff91c/) | DIFundTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbfd5a7...b249c2`](./contracts/ethereum-1/0xbfd5a73bafc692190846e04fa7b3f22325b249c2/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fb8aa...660027`](./contracts/ethereum-1/0x6fb8aa6fc6f27e591423009194529ae126660027/) | InsuranceFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c8813...94111a`](./contracts/ethereum-1/0x0c8813521196614c85c2fb121fb22f52dc94111a/) | Pause | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb7130...fe0d66`](./contracts/ethereum-1/0xcb71303f4681aec73e137d096e0ef22464fe0d66/) | Trader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
