# Agentic Audit Brief: K2

## Project Overview

- Project: K2 (`k2`)
- Website: [https://opengdp.network/](https://opengdp.network/)
- Lifecycle: active (Tier 0, 80.4% below peak)
- Generated: 2026-06-17T07:00:52.455Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $3,732,008.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

K2 should be described as part of the broader OpenGDP/Karak ecosystem rather than only as an OP Stack Layer 2 bridge. The project includes programmable economic infrastructure with staking/restaking and vault components, alongside K2 bridge and OP Stack chain infrastructure for moving assets and messages between Ethereum and K2. The contract surface should distinguish these Karak/OpenGDP vault, staking/restaking, registry, governance, and operational components from the bridge/portal contracts instead of treating the system as only a Layer 2 scaling bridge.

### Architecture

The L1ChugSplashProxy (L1StandardBridge) and OptimismPortal work together to handle deposits and withdrawals, with the bridge managing token transfers and the portal processing transaction commitments and fraud proofs.

## Contract Surface Quality

- Indexed contracts: 62; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 38 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 3/13 live.
- Detected codebases: none
- Unverified dependencies: 47/57.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 12
- Raw deployments: 12
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Claim | unknown | ethereum | n/a | [`0x3f71b5...a3863d`](./contracts/ethereum-1/0x3f71b535c733096f303d5a495e410d3f90a3863d/) | ⚠️ Unaudited |
| KarakNFT | token | ethereum | n/a | [`0x5f7645...84a106`](./contracts/ethereum-1/0x5f7645eeabc5eebbcca3783d96d130d03484a106/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | unit-31916 | [`0xba61f2...4b48a3`](./contracts/ethereum-1/0xba61f25dd9f2d5f02d01b1c2c1c5f0b14c4b48a3/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | unit-31907 | [`0x0a2334...731637`](./contracts/ethereum-1/0x0a23342520aa8ca963c4201801f4d3e95e731637/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | unit-31918 | [`0xeece9c...47ea73`](./contracts/ethereum-1/0xeece9cd7abd1cc84d9dfc7493e7e68079e47ea73/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Karak DelegationSupervisor proxy | core_logic | ethereum | n/a | `0xafa904...4449e0` | ❓ Unverified |
| Karak v1 VaultSupervisor / factory | registry | ethereum | n/a | `0x54e44d...1ef1cc` | ❓ Unverified |
| KarakMultisig for K2 OP Stack | governance | ethereum | n/a | `0x28a227...abb920` | ❓ Unverified |
| Representative Karak v2 vault created by Core, pufETH collateral | core_logic | ethereum | n/a | `0x1f2aa9...3f60b4` | ❓ Unverified |
| Representative Karak v2 vault created by Core, sUSDe collateral | core_logic | ethereum | n/a | `0x7a4b1a...b0dbca` | ❓ Unverified |
| Representative Karak v2 vault created by Core, USDC collateral | core_logic | ethereum | n/a | `0x52d7e0...32a531` | ❓ Unverified |
| Representative Karak v2 vault created by Core, USDe collateral | core_logic | ethereum | n/a | `0x3735e3...969378` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3f71b5...a3863d`](./contracts/ethereum-1/0x3f71b535c733096f303d5a495e410d3f90a3863d/) | Claim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f7645...84a106`](./contracts/ethereum-1/0x5f7645eeabc5eebbcca3783d96d130d03484a106/) | KarakNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba61f2...4b48a3`](./contracts/ethereum-1/0xba61f25dd9f2d5f02d01b1c2c1c5f0b14c4b48a3/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
