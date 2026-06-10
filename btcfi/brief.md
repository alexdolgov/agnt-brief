# Agentic Audit Brief: BTCFi

## Project Overview

- Project: BTCFi (`btcfi`)
- Website: [https://btcfi.one](https://btcfi.one)
- Lifecycle: active (Tier 0, 58.9% below peak)
- Generated: 2026-06-10T20:59:01.167Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: base
- Contract surface: 15 unique implementations (16 raw deployments)
- DeFi Llama TVL: $11,758,166.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

BTCFi is a cross-chain Bitcoin collateralization/CDP and asset-management platform centered on using Bitcoin-pegged collateral to mint BtcUSD. Its public project surface spans multiple chains, including Bitcoin, Bifrost Network, Base, and CORE; the Base contracts represent only a small subset of the overall project and TVL. Any Base-only contract brief should be labeled as limited coverage and should not imply that total parent-project TVL is secured solely by the listed Base deployments.

### Architecture

The CDP family uses proxy contracts for upgradeability, with implementation contracts shared between proxies; the protocol also includes a bridged ERC20 token and a farm component that likely distributes rewards to CDP users.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 15
- Raw deployments: 16
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC20_Bridged | operational_periphery | base | 2 deployments: base [`0x6e9070...3b74a9`](./contracts/base-8453/0x6e9070b8a8dbbc6cad6b6d029a5c6f6a653b74a9/); base `0xe4b209...804dd4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x5d964ec530f989de6128efa22837cfb26095cbfd) | proxy | base | `0x4f7ab5...e5e08b` | ❓ Unverified |
| Proxy (impl: 0x872b347cd764d46c127ffefbcab605fff3f3a48c) | proxy | base | `0xf549e4...527429` | ❓ Unverified |
| Proxy (impl: 0x98e266bdb0eedd38bf45232b9316959ad0aad90c) | proxy | base | `0x4c7a44...105239` | ❓ Unverified |
| Proxy (impl: 0x9ce202ebf6de9dfa728df770cbfba91e27ebd2f1) | proxy | base | `0xae172d...c9bf3e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x26fce5...8dddbe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x55506b...735060` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5d964e...95cbfd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x872b34...f3a48c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x98e266...aad90c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9ce202...ebd2f1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xaa4ad5...db4200` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xac1552...b46ddd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xacf310...45eef5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeedab4...852326` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
