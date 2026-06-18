# Agentic Audit Brief: Revault

⚠️ Lifecycle status: DECLINING - TVL dropped 0.3% over 90 days

## Project Overview

- Project: Revault (`revault`)
- Lifecycle: declining (Tier 0, 95.8% below peak)
- Generated: 2026-06-18T15:16:58.565Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4e21
- Chains: bsc
- Contract surface: 10 unique implementations (16 raw deployments)
- DeFi Llama TVL: $1,962,857.13
- On-chain TVL (included contracts): $996,920.98
- TVL by chain: Bsc $996,920.98

## Project Description

Revault is a yield optimization protocol on BSC that aggregates multiple vaults, staking pools, and auto-compounding strategies to maximize returns for deposited assets. Users can deposit tokens into various vaults and staking pools, which are managed through a system of fee receivers, zaps, and chef contracts.

### Architecture

All product families share the RevaToken as the central incentive token, distributed by various RevaChef contracts to staking pools and vaults. Supporting contracts like Zaps and FeeReceivers are reused across multiple vaults and pools to handle deposits, swaps, and fee collection.

## Contract Surface Quality

- Indexed contracts: 233; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 110 inactive, 107 singleton, 0 uninitialized.
- Deployment units: 4/38 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/18.

## Audit Coverage Summary

- Verified implementations audited: 2/10 (20.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 16
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $994,627.44
- Latest audit: 2021-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $994,627.44 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 2 | 20.0% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RevaToken | token | bsc | n/a | 2 deployments: bsc [`0x3cf362...ff089d`](./contracts/bsc-56/0x3cf362d6373aea38172fc3cff6c04655bdff089d/); bsc `0x4fdd92...7b4a3b` | ✅ Audited |
| vRevaToken | token | bsc | n/a | [`0x774d91...aef658`](./contracts/bsc-56/0x774d9103dc027b707812acf0e0b40a34dcaef658/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultVenus | core_logic | bsc | unit-37940 (2 proxies) | 2 deployments: bsc [`0x0243a2...38a67a`](./contracts/bsc-56/0x0243a20b20eca78ddedf6b8ddb43a0286438a67a/); bsc `0x52cfa1...eb38a3` | ⚠️ Unaudited |
| VaultCakeToCake | core_logic | bsc | unit-37973 | [`0xedfcb7...da28ed`](./contracts/bsc-56/0xedfcb78e73f7ba6ad2d829bf5d462a0924da28ed/) | ⚠️ Unaudited |
| BeefyVaultV6 | core_logic | bsc | n/a | 4 deployments: bsc [`0x154288...774101`](./contracts/bsc-56/0x1542885d6eed4ee3ac1a110d3f159003a0774101/); bsc `0x97e5d5...816677`; bsc `0xad6114...a70475`; bsc `0xb26642...0c7dfe` | ⚠️ Unaudited |
| BeefyVenusVaultBNB | core_logic | bsc | n/a | [`0x6be474...386b71`](./contracts/bsc-56/0x6be4741ab0ad233e4315a10bc783a7b923386b71/) | ⚠️ Unaudited |
| AutoFarmV2 | unknown | bsc | n/a | [`0x089519...450452`](./contracts/bsc-56/0x0895196562c7868c5be92459fae7f877ed450452/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x861859...80eb07`](./contracts/bsc-56/0x861859cc8d3c650b07373ed699d5bd8f5e80eb07/) | ⚠️ Unaudited |
| RevaAutoCompoundPool | core_logic | bsc | unit-37971 | [`0xe8f1cd...37d3cb`](./contracts/bsc-56/0xe8f1cda385a58ae1c1c1b71631da7ad6d137d3cb/) | ⚠️ Unaudited |
| VaultFlipToFlip | core_logic | bsc | unit-37962 (2 proxies) | 2 deployments: bsc [`0xa599d6...af00aa`](./contracts/bsc-56/0xa599d6b81ec4a5ddd8eca85e3aac31e006af00aa/); bsc `0xe0aca3...71ca62` | ⚠️ Unaudited |

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
| [DL audit link](https://paladinsec.co/projects/revault-network) | Paladin | Audit | 2021-09 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=102

Fork inheritance lineage and inherited audits are included when available.
