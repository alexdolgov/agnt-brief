# Agentic Audit Brief: Mu Digital

## Project Overview

- Project: Mu Digital (`mu-digital`)
- Website: [https://mudigital.net](https://mudigital.net)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-11T01:15:41.259Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-2b99
- Chains: ethereum
- Contract surface: 12 unique implementations (42 raw deployments)
- DeFi Llama TVL: $19,416,287.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Mu Digital is a real-world asset (RWA) protocol focused on Asia-based fixed income and private credit yield products. Its token structure includes AZND as the senior tranche and muBOND as the junior or first-loss tranche; staking, rewards, treasury, and related contracts should be treated as supporting infrastructure rather than the primary product unless separately documented.

### Architecture

The Protocol Contracts family relies on shared proxy infrastructure (ERC1967Proxy) for upgradeability. Supporting contracts like AccessManager, TreasuryManager, and PriceFeed provide cross-cutting services for access control, treasury operations, and price oracles.

## Audit Coverage Summary

- Verified implementations audited: 12/12 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 42
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: 100.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 12 | 100.0% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AccessManager | governance | ethereum | 10 deployments: ethereum [`0x3eefda...bff74c`](./contracts/ethereum-1/0x3eefda14348c364493f6a0c12c11bdd32ebff74c/); ethereum `0x4122ee...fc9184`; ethereum `0x43e117...4b426f`; ethereum `0x4e889d...df9690`; ethereum `0x549b90...ba7fb6`; ethereum `0x967020...a63394`; ethereum `0xab3d62...90d7d6`; ethereum `0xc0f4f4...fc8f08`; ethereum `0xe683fc...07b520`; ethereum `0xfae287...85e9c4` | ✅ Audited |
| AZND | unknown | ethereum | 2 deployments: ethereum [`0x2e49c1...8a0db6`](./contracts/ethereum-1/0x2e49c14a73210356de9f23a46a98de777b8a0db6/); ethereum `0x52c66b...3708a0` | ✅ Audited |
| LoAZND | unknown | ethereum | 2 deployments: ethereum [`0x703bd6...32e7e1`](./contracts/ethereum-1/0x703bd6efee75cf36c1af0c7b3ba10a7e5232e7e1/); ethereum `0xa61422...3e0503` | ✅ Audited |
| MuBOND | unknown | ethereum | 3 deployments: ethereum [`0x09ad9c...ea8599`](./contracts/ethereum-1/0x09ad9c6dcadcc3ab0b3e107e8e7da69c2eea8599/); ethereum `0x8169e1...7c98ba`; ethereum `0xfc4e6d...e92dbd` | ✅ Audited |
| MuBONDPriceFeed | operational_periphery | ethereum | 2 deployments: ethereum [`0xca5b9e...45a7a1`](./contracts/ethereum-1/0xca5b9e561e3d94c8b3a90278d6e1752e8445a7a1/); ethereum `0xdefb60...92ed70` | ✅ Audited |
| PreDeposit | unknown | ethereum | 6 deployments: ethereum [`0x00692c...e5cd01`](./contracts/ethereum-1/0x00692cc98b70639c6a47f01a4a7bd7a1e2e5cd01/); ethereum `0x2a3861...6b1073`; ethereum `0x7ad72f...d49827`; ethereum `0xade59b...601ba2`; ethereum `0xb0d323...0627f6`; ethereum `0xf17ee2...a7c1ec` | ✅ Audited |
| PriceFeed | operational_periphery | ethereum | 3 deployments: ethereum [`0x5588f4...88ed32`](./contracts/ethereum-1/0x5588f4090dfd88e0753a8ba2a08d639d7888ed32/); ethereum `0xd37453...3327bf`; ethereum `0xe200c4...cbc0a4` | ✅ Audited |
| PrimaryMarket | unknown | ethereum | 4 deployments: ethereum [`0x3ee90f...79ce25`](./contracts/ethereum-1/0x3ee90f1a7da3d5a9e381ce7b37bbc426d679ce25/); ethereum `0xb6c5c4...1c645e`; ethereum `0xe7c05c...bb32cc`; ethereum `0xff6c13...c7d7cf` | ✅ Audited |
| RewardDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x223b70...2ec543`](./contracts/ethereum-1/0x223b70103ac61e6d357ef0556bcc96b8802ec543/); ethereum `0xf0d35e...6c8e2e` | ✅ Audited |
| StakingEscrow | operational_periphery | ethereum | 2 deployments: ethereum [`0x61cebe...8e53b2`](./contracts/ethereum-1/0x61cebec9bb555e2c81c0f9d212b53809888e53b2/); ethereum `0xbc4958...d12565` | ✅ Audited |
| SYLoAZND | unknown | ethereum | 4 deployments: ethereum [`0x51df57...8cb1bc`](./contracts/ethereum-1/0x51df572286ae0c84f4eacad7c23c2b58e78cb1bc/); ethereum `0x53e23b...9d29f5`; ethereum `0x6ca835...0d86a0`; ethereum `0x80cca9...241a77` | ✅ Audited |
| TreasuryManager | operational_periphery | ethereum | 2 deployments: ethereum [`0x77563f...0d63ba`](./contracts/ethereum-1/0x77563f46c20df04c4020981ce38cc341320d63ba/); ethereum `0xb4e8d2...215b6a` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [Mu Protocol - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Mu%20Protocol%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-10 | fresh | Direct | contract_name | 34 | high |
| [hacken.io/audits/mu-digital](https://hacken.io/audits/mu-digital) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=34

Zero-match audit list:

- [1914] hacken.io/audits/mu-digital

Fork inheritance lineage and inherited audits are included when available.
