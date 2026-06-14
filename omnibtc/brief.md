# Agentic Audit Brief: OmniBTC

## Project Overview

- Project: OmniBTC (`omnibtc`)
- Website: [https://www.omnibtc.finance](https://www.omnibtc.finance)
- Lifecycle: active (Tier 0, 83.1% below peak)
- Generated: 2026-06-14T09:42:32.188Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-403f
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 18 unique implementations (19 raw deployments)
- DeFi Llama TVL: $1,916,802.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

OmniBTC is an omnichain/cross-chain financial platform providing swap and lend/borrow functionality across multiple blockchains, with a focus that includes BTC omnichain lending. Its supported chain footprint includes Sui as a dominant current TVL chain, as well as EVM networks such as Ethereum, Optimism, Polygon, Base, Arbitrum One, Avalanche, and Binance where applicable.

### Architecture

All contracts belong to a single product family with no explicit sub-families or shared infrastructure identified; they likely represent the core lending logic deployed across multiple chains.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 18
- Raw deployments: 19
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CCTPFacet | unknown | arbitrum | [`0x452b5f...0d343c`](./contracts/arbitrum-42161/0x452b5f476f4fa706a80c513c52729e47150d343c/) | ⚠️ Unaudited |
| CelerFacet | unknown | arbitrum | [`0x930b39...ee004e`](./contracts/arbitrum-42161/0x930b39ecea81678a5033aa3c9cc1f804ffee004e/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | arbitrum | [`0xdae4db...b3cead`](./contracts/arbitrum-42161/0xdae4db475aca613a5e2dc5fc304da7e962b3cead/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | arbitrum | [`0xe4d1eb...113d37`](./contracts/arbitrum-42161/0xe4d1ebf03742a8238b546980261507fde0113d37/) | ⚠️ Unaudited |
| GenericSwapFacet | unknown | arbitrum | [`0x6aa49f...3338be`](./contracts/arbitrum-42161/0x6aa49fa53d372329de88160017f9ca7c5d3338be/) | ⚠️ Unaudited |
| OwnershipFacet | unknown | arbitrum | [`0xad8542...f0e8a9`](./contracts/arbitrum-42161/0xad85421c47e9b830602deb83fcf149c2a1f0e8a9/) | ⚠️ Unaudited |
| StargateFacet | unknown | arbitrum | 2 deployments: arbitrum [`0x2967e7...9b3820`](./contracts/arbitrum-42161/0x2967e7bb9daa5711ac332caf874bd47ef99b3820/); arbitrum `0x96568b...1db303` | ⚠️ Unaudited |
| SystemPortal | unknown | arbitrum | [`0x9ab575...4753a5`](./contracts/arbitrum-42161/0x9ab575ab5b2c58c07345ce2db9b36f0cf54753a5/) | ⚠️ Unaudited |
| WithdrawFacet | unknown | arbitrum | [`0xa7487a...e2fb04`](./contracts/arbitrum-42161/0xa7487a536968be0d563901aeb3fc07b099e2fb04/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | `0xaa8b23...05b6fc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x233dde...a28975` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x051914...618f23` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc3eb69...4798c3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x689530...329dfa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x01ebb2...eea607` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d6cab...a11ce5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x53ecc0...4c7935` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc44c29...f3c554` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x6aa49f...3338be`](./contracts/arbitrum-42161/0x6aa49fa53d372329de88160017f9ca7c5d3338be/) | GenericSwapFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2967e7...9b3820`](./contracts/arbitrum-42161/0x2967e7bb9daa5711ac332caf874bd47ef99b3820/) | StargateFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9ab575...4753a5`](./contracts/arbitrum-42161/0x9ab575ab5b2c58c07345ce2db9b36f0cf54753a5/) | SystemPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa7487a...e2fb04`](./contracts/arbitrum-42161/0xa7487a536968be0d563901aeb3fc07b099e2fb04/) | WithdrawFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
