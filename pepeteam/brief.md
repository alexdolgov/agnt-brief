# Agentic Audit Brief: PepeTeam

## Project Overview

- Project: PepeTeam (`pepeteam`)
- Website: [https://pepe.team](https://pepe.team)
- Lifecycle: active (Tier 0, 93.1% below peak)
- Generated: 2026-06-17T07:00:45.415Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, polygon
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $1,031,570.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

PepeTeam is a multi-chain product development team whose current products include P2P trading and escrow, a pepeCash fiat/crypto purchase flow, a Telegram bot, and pepeBridge cross-chain communication and liquidity-transfer infrastructure. Do not describe the project as offering a vault-based DEX or sWAVES liquid staking unless those claims are independently supported.

### Architecture

Both families share the same deployer cluster and proxy infrastructure, indicating a unified development team. The bridge contracts may supply liquidity or wrapped assets to the DEX vaults, while the DEX could provide trading venues for bridged tokens.

## Contract Surface Quality

- Indexed contracts: 60; live-surface contracts included: 2 (1 live, 1 unknown).
- Excluded by liveness: 6 inactive, 52 singleton, 0 uninitialized.
- Deployment units: 1/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SafeERC20Bridge | operational_periphery | polygon | n/a | [`0x5f89d0...66e37c`](./contracts/polygon-137/0x5f89d002e72a33b57d7e1c151aaae1216666e37c/) | ⚠️ Unaudited |
| SafeERC20BridgeWithPool | operational_periphery | bsc | unit-27570 | [`0x8df127...e9367a`](./contracts/bsc-56/0x8df12786ec0e34e60d4c52f9052ba4e536e9367a/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x5f89d0...66e37c`](./contracts/polygon-137/0x5f89d002e72a33b57d7e1c151aaae1216666e37c/) | SafeERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8df127...e9367a`](./contracts/bsc-56/0x8df12786ec0e34e60d4c52f9052ba4e536e9367a/) | SafeERC20BridgeWithPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
