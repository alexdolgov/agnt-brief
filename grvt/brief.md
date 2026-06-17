# Agentic Audit Brief: Grvt

⚠️ Lifecycle status: DECLINING - TVL dropped 44.4% over 90 days

## Project Overview

- Project: Grvt (`grvt`)
- Website: [https://grvt.io/?ref=WCDISXW](https://grvt.io/?ref=WCDISXW)
- Lifecycle: declining (Tier 0, 52.2% below peak)
- Generated: 2026-06-17T07:00:45.299Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 10 unique implementations (12 raw deployments)
- DeFi Llama TVL: $51,179,228.00
- On-chain TVL (included contracts): $39,142,673.50
- TVL by chain: Ethereum $39,142,673.50

## Project Description

Grvt is a zero-knowledge/privacy-focused DEX or exchange. The indexed Ethereum TVL and contract surface in this record primarily reflects Grvt's bridge, treasury vault, and related strategy infrastructure rather than verified perpetual trading contracts.

### Architecture

The Grvt Bridge family relies on the NativeBridgeGateway to handle cross-chain messages and the GRVTL1TreasuryVault to secure assets. The AaveV3Strategy is used as a supporting contract to deploy vault funds into Aave for yield generation.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 5/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/10 (0.0%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 12
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $39,142,673.50
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $39,142,673.50 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L1NativeTokenVault | core_logic | ethereum | unit-27381 | [`0xbed1eb...1111f6`](./contracts/ethereum-1/0xbed1eb542f9a5aa6419ff3deb921a372681111f6/) | ⚠️ Unaudited |
| PoolInstance | core_logic | ethereum | unit-27380 | [`0x87870b...4fa4e2`](./contracts/ethereum-1/0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2/) | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | unit-27378 | [`0x238789...d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/) | ⚠️ Unaudited |
| Bridgehub | operational_periphery | ethereum | unit-27379 | [`0x303a46...eb5213`](./contracts/ethereum-1/0x303a465b659cbb0ab36ee643ea362c509eeb5213/) | ⚠️ Unaudited |
| GRVTBridgeProxy | operational_periphery | ethereum | unit-27383 | [`0xe17aed...113a65`](./contracts/ethereum-1/0xe17aed2fc55f4a876315376ffa49fe6358113a65/) | ⚠️ Unaudited |
| NativeBridgeGateway | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x6e93c9...864473`](./contracts/ethereum-1/0x6e93c940830df3ae9a82937b96a9bf7108864473/); ethereum `0xa0b497...761f8d`; ethereum `0xa20697...aebf65` | ⚠️ Unaudited |
| NativeVaultGateway | core_logic | ethereum | n/a | [`0x81ef29...12c7b9`](./contracts/ethereum-1/0x81ef29d82c5232627976d182c0a2be177412c7b9/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x4e2971...ea36de`](./contracts/ethereum-1/0x4e29715b7ca2569678027c01627d936235ea36de/) | ⚠️ Unaudited |
| VaultBridgeLib | operational_periphery | ethereum | n/a | [`0xff61d6...89a915`](./contracts/ethereum-1/0xff61d6c6e8334d8cf73011c1069b411f4789a915/) | ⚠️ Unaudited |
| VaultStrategyOpsLib | core_logic | ethereum | n/a | [`0xff41bb...c8d86f`](./contracts/ethereum-1/0xff41bb293a6eb4bda4f799137be5aa781dc8d86f/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
