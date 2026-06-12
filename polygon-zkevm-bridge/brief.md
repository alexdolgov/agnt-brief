# Agentic Audit Brief: Polygon zkEVM Bridge

⚠️ Lifecycle status: UNKNOWN - TVL dropped 41.6% over 90 days

## Project Overview

- Project: Polygon zkEVM Bridge (`polygon-zkevm-bridge`)
- Website: [https://portal.polygon.technology/bridge](https://portal.polygon.technology/bridge)
- Lifecycle: unknown (Tier 0, 83.8% below peak)
- Generated: 2026-06-12T06:42:31.313Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-d6af
- Chains: ethereum
- Contract surface: 14 unique implementations (17 raw deployments)
- DeFi Llama TVL: $69,380,558.99
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Polygon zkEVM Bridge is the canonical bridge for transferring assets between Ethereum and Polygon zkEVM. On Ethereum, the bridge is exposed through a TransparentUpgradeableProxy that delegates to native Polygon/AggLayer bridge implementation logic for custody, deposits, and withdrawals; the logical bridge implementation should not be treated as OpenZeppelin standard-library code.

### Architecture

The protocol consists of a single product family with one core proxy contract that delegates to an implementation contract, with no additional supporting contracts or shared infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/14 (0.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 17
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AggchainECDSAMultisig | unknown | ethereum | [`0x519e42...130987`](./contracts/ethereum-1/0x519e42c24163192dca44cd3fbdcebf6be9130987/) | ⚠️ Unaudited |
| AgglayerBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x2a3dd3...ca2ede`](./contracts/ethereum-1/0x2a3dd3eb832af982ec71669e178424b10dca2ede/); ethereum `0x66e012...bac5ad` | ⚠️ Unaudited |
| AgglayerGateway | unknown | ethereum | [`0x046bb8...6274b3`](./contracts/ethereum-1/0x046bb8bb98db4cecbb2929542686b74b516274b3/) | ⚠️ Unaudited |
| AgglayerGER | unknown | ethereum | [`0x580bda...ce3cfb`](./contracts/ethereum-1/0x580bda1e7a0cfae92fa7f6c20a3794f169ce3cfb/) | ⚠️ Unaudited |
| AgglayerManager | governance | ethereum | [`0x5132a1...1b7ab2`](./contracts/ethereum-1/0x5132a183e9f3cb7c848b0aac5ae0c4f0491b7ab2/) | ⚠️ Unaudited |
| BridgeLib | unknown | ethereum | [`0x3622fc...a68ab3`](./contracts/ethereum-1/0x3622fcf450ca40a340b7492ae5f60e7c7ea68ab3/) | ⚠️ Unaudited |
| FflonkVerifier | unknown | ethereum | [`0x4f9a0e...38e6e9`](./contracts/ethereum-1/0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 2 deployments: ethereum [`0x242dae...413e21`](./contracts/ethereum-1/0x242dae44f5d8fb54b198d03a94da45b5a4413e21/); ethereum `0xf694c9...fce904` | ⚠️ Unaudited |
| L1Escrow | operational_periphery | ethereum | 2 deployments: ethereum [`0x4a27ac...2edb98`](./contracts/ethereum-1/0x4a27ac91c5cd3768f140ecabde3fc2b2d92edb98/); ethereum `0x70e70e...d755eb` | ⚠️ Unaudited |
| PolygonZkEVMDeployer | unknown | ethereum | [`0xcb19ed...9608c2`](./contracts/ethereum-1/0xcb19edde626906eb1ee52357a27f62dd519608c2/) | ⚠️ Unaudited |
| PolygonZkEVMTimelock | governance | ethereum | [`0xef1462...7ca4ef`](./contracts/ethereum-1/0xef1462451c30ea7ad8555386226059fe837ca4ef/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x0f9973...7bcc4a`](./contracts/ethereum-1/0x0f99738b2fc14d77308337f3e2596b63ae7bcc4a/) | ⚠️ Unaudited |
| SP1Verifier | unknown | ethereum | [`0x0459d5...84c459`](./contracts/ethereum-1/0x0459d576a6223feea177fb3df53c9c77bf84c459/) | ⚠️ Unaudited |
| WstETHBridgeL1 | operational_periphery | ethereum | [`0xf0cde1...582c01`](./contracts/ethereum-1/0xf0cde1e7f0fad79771cd526b1eb0a12f69582c01/) | ⚠️ Unaudited |

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
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
