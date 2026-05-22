# Agentic Audit Brief: Manta Pacific

## Project Overview

- Project: Manta Pacific (`manta-pacific`)
- Website: [https://pacific-bridge.manta.network](https://pacific-bridge.manta.network)
- Lifecycle: active (Tier 0, 91.2% below peak)
- Generated: 2026-05-22T12:26:36.321Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum, manta
- Contract surface: 13 unique implementations (58 raw deployments)
- DeFi Llama TVL: $25,670,595.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Manta Pacific is a Layer 2 scaling solution for Ethereum that uses the OP Stack to enable fast and low-cost transactions. It provides a canonical bridge for transferring assets between Ethereum and the Manta Pacific network.

### Architecture

All contracts belong to a single product family that implements the OP Stack bridging system. The L1StandardBridge and L1ERC721Bridge handle asset transfers, while the OptimismPortal manages deposits and withdrawals, and the L1CrossDomainMessenger enables cross-chain communication, all configured by the SystemConfig and secured by the L2OutputOracle.

## Audit Coverage Summary

- Verified implementations audited: 0/13 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 1
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 58
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

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L1ChugSplashProxy | bridge_template | ethereum | 2 deployments: ethereum [`0x305e88...8f18d6`](./contracts/ethereum-1/0x305e88d809c9dc03179554bfbf85ac05ce8f18d6/); ethereum `0xb6c539...c230df` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | 2 deployments: ethereum [`0x635ba6...13c310`](./contracts/ethereum-1/0x635ba609680c55c3bdd0b3627b4c5db21b13c310/); ethereum `0x9cddc6...e8b51f` | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | 2 deployments: ethereum [`0xbe896f...481c8f`](./contracts/ethereum-1/0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f/); ethereum `0xfb1e17...d3c32d` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | 2 deployments: ethereum [`0x3b95bc...9715e5`](./contracts/ethereum-1/0x3b95bc951ee0f553ba487327278cac44f29715e5/); ethereum `0x62b257...41cd58` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x1e5e63...70b30a`](./contracts/ethereum-1/0x1e5e634981564fc645dcbc6546ae618d7870b30a/); ethereum `0x30c789...a05c1d` | ⚠️ Unaudited |
| Manta | unknown | manta | [`0x95cef1...c544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | 2 deployments: ethereum [`0x216525...d41e20`](./contracts/ethereum-1/0x2165254f0dd74c19d07ed447b231447604d41e20/); ethereum `0xd49577...ceb894` | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | 2 deployments: ethereum [`0x445c62...b199f1`](./contracts/ethereum-1/0x445c62f4948f3b08a6bb1dbc51ef985b3eb199f1/); ethereum `0x916876...0b7622` | ⚠️ Unaudited |
| Proxy | proxy | ethereum | 12 deployments: ethereum [`0x0f2486...1e47bf`](./contracts/ethereum-1/0x0f2486b9c7ba7a1edd9ab33c7a5586d6481e47bf/); ethereum `0x120bd9...35d78c`; ethereum `0x1c466b...b8aa71`; ethereum `0x6ec90d...e2c5ce`; ethereum `0x732970...fea232`; ethereum `0x96d6e5...8771c4`; ethereum `0xb73603...5016fb`; ethereum `0xd0e3a9...3e3dcc`; ethereum `0xea4f12...126fba`; ethereum `0xf417f5...d2851f`; ethereum `0xf4b428...0748fa`; ethereum `0xf992f6...acf631` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 13 deployments: ethereum [`0x007957...f8cb2d`](./contracts/ethereum-1/0x007957bf0681b75e92273a7018784ace6af8cb2d/); ethereum `0x1772e3...410eb5`; ethereum `0x1a7381...88007d`; ethereum `0x4d7e19...a40e9e`; ethereum `0x65d6b2...92d48e`; ethereum `0x68b18d...8062bd`; ethereum `0x8a7b47...8d3be1`; ethereum `0xa2dca8...06e8d1`; ethereum `0xc21f2e...b6e79d`; ethereum `0xc9ef2e...906995`; ethereum `0xe84162...dbdd0e`; ethereum `0xeb77d0...4c48cd`; ethereum `0xecde80...b0d8e5` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | [`0x2fe3ad...d94ba5`](./contracts/ethereum-1/0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | 2 deployments: ethereum [`0x895e00...351a5d`](./contracts/ethereum-1/0x895e00269a05848f3c9889efa677d02ff7351a5d/); ethereum `0xef01a6...1ad0ae` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AddressManager | governance | ethereum | 15 deployments: ethereum [`0x171045...a5a063`](./contracts/ethereum-1/0x1710450f1dab239a83834123508e10c910a5a063/); ethereum `0x1dc618...6d39fa`; ethereum `0x262181...8415af`; ethereum `0x39860b...552864`; ethereum `0x3ad319...b67b05`; ethereum `0x424b45...d202b5`; ethereum `0x5e99cf...e8902d`; ethereum `0x6d223e...719665`; ethereum `0x897c4f...a7abf6`; ethereum `0xa69f3d...ddf561`; ethereum `0xc32db7...b0580d`; ethereum `0xdb2712...fc3284`; ethereum `0xe3cb59...43e9db`; ethereum `0xe63ac9...7a7a82`; ethereum `0xfd195d...dfbc4c` | ⚠️ Unaudited (bytecode match) |

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
| ethereum | [`0x171045...a5a063`](./contracts/ethereum-1/0x1710450f1dab239a83834123508e10c910a5a063/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x305e88...8f18d6`](./contracts/ethereum-1/0x305e88d809c9dc03179554bfbf85ac05ce8f18d6/) | L1ChugSplashProxy | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x635ba6...13c310`](./contracts/ethereum-1/0x635ba609680c55c3bdd0b3627b4c5db21b13c310/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b95bc...9715e5`](./contracts/ethereum-1/0x3b95bc951ee0f553ba487327278cac44f29715e5/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e5e63...70b30a`](./contracts/ethereum-1/0x1e5e634981564fc645dcbc6546ae618d7870b30a/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x95cef1...c544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | Manta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x445c62...b199f1`](./contracts/ethereum-1/0x445c62f4948f3b08a6bb1dbc51ef985b3eb199f1/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fe3ad...d94ba5`](./contracts/ethereum-1/0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
