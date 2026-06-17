# Agentic Audit Brief: Mainstreet

## Project Overview

- Project: Mainstreet (`mainstreet`)
- Website: [https://mainstreet.finance/](https://mainstreet.finance/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:57.594Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 10 unique implementations (13 raw deployments)
- DeFi Llama TVL: $81,918,976.45
- On-chain TVL (included contracts): $77,748,954.25
- TVL by chain: Ethereum $77,748,954.25

## Project Description

Mainstreet is an Ethereum basis-trading and synthetic-dollar protocol centered on msUSD, a yield-bearing or rebasing synthetic dollar minted against yield-bearing collateral.

### Architecture

The ERC1967Proxy serves as the upgradeable entry point for the msUSDV2 implementation, which contains the core minting and redemption logic.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 5/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/10 (0.0%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 13
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $77,748,954.25
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakedmsUSD | token | ethereum | unit-32389 | [`0x890a51...0bd74a`](./contracts/ethereum-1/0x890a5122aa1da30fec4286de7904ff808f0bd74a/) | ⚠️ Unaudited |
| CustodianManager | governance | ethereum | unit-32387 | [`0x4cc941...935d0a`](./contracts/ethereum-1/0x4cc94169605069ddf82c815493cf6048f1935d0a/) | ⚠️ Unaudited |
| FeeSilo | unknown | ethereum | n/a | [`0x6665ef...b98b81`](./contracts/ethereum-1/0x6665efde9f1916a9e16f7f955375ecd392b98b81/) | ⚠️ Unaudited |
| MainstreetMinter | unknown | ethereum | unit-32388 | [`0x70c0c1...2ade14`](./contracts/ethereum-1/0x70c0c12fbb3acfff8e48abf027436971cf2ade14/) | ⚠️ Unaudited |
| msUSDSilo | unknown | ethereum | n/a | [`0x6f1888...ea6871`](./contracts/ethereum-1/0x6f188821283923953121f35d74e69a5e73ea6871/) | ⚠️ Unaudited |
| msYBridger | operational_periphery | ethereum | unit-32385 | [`0x22eb4e...bc98f2`](./contracts/ethereum-1/0x22eb4e61fe4d4e31113979e8b1f4377d46bc98f2/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-32384 (2 proxies) | 2 deployments: ethereum [`0x0eae4a...571858`](./contracts/ethereum-1/0x0eae4acb10f3e5696cf6b0de33693ef8ec571858/); ethereum `0x6580ad...8dccc4` | ⚠️ Unaudited |
| StablePool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x111ce2...998826`](./contracts/ethereum-1/0x111ce2a60c30f6058a57d0dbae1a39a42d998826/); ethereum `0x9054ae...c73a12` | ⚠️ Unaudited |
| StaticPriceOracle | unknown | ethereum | n/a | [`0x098e47...3cd2af`](./contracts/ethereum-1/0x098e47096856eb292d8b2d379b74e987e23cd2af/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42d9ee...37ebb6`](./contracts/ethereum-1/0x42d9ee7049f5dc573fe08330a3597af17437ebb6/); ethereum `0xcf72a8...2822a6` | ⚠️ Unaudited |

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
| [Mainstreet_v2_Audit_Report_by_WatchPug.pdf](https://github.com/Mainstreet-Labs/mainstreet-watchpug-audit/blob/main/Mainstreet_v2_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2025-07 | fresh | Direct | contract_name | 0 | n/a |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=1

Zero-match audit list:

- [4639] Mainstreet_v2_Audit_Report_by_WatchPug.pdf

Fork inheritance lineage and inherited audits are included when available.
