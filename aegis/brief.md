# Agentic Audit Brief: Aegis

## Project Overview

- Project: Aegis (`aegis`)
- Website: [https://aegis.im/](https://aegis.im/)
- Lifecycle: active (Tier 0, 19.1% below peak)
- Generated: 2026-06-17T07:00:45.000Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum
- Contract surface: 12 unique implementations (17 raw deployments)
- DeFi Llama TVL: $35,901,615.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Aegis is an active stablecoin and yield protocol centered on YUSD and marketed/upcoming jUSD, using delta-neutral, basis-trading, and funding-rate strategies to generate stablecoin yield. Its Ethereum contract topology includes YUSD as the stablecoin token, AegisMinting for core issuance/minting, AegisRewards for rewards/distribution, AegisOracle for pricing/periphery infrastructure, and AegisConfig for governance/configuration. The currently verified Ethereum live code-bearing surface excludes the no-code address 0xab3dbcd9b096c3ff76275038bf58eac10d22c61f; BSC/Binance exposure should be discovered or separately noted because project TVL includes BSC.

### Architecture

The protocol consists of a single product family centered around the YUSD token, with no additional supporting contracts identified in the inventory.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 17 (16 live, 1 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Unverified dependencies: 4/17.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 17
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

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AegisConfig | governance | ethereum | n/a | 2 deployments: ethereum [`0x90ccf2...f1db00`](./contracts/ethereum-1/0x90ccf2c4b3dee7aeac9af5950a7c60f89af1db00/); bsc `0xb9f1e8...4ca9da` | ⚠️ Unaudited |
| AegisMinting | unknown | bsc | n/a | 3 deployments: ethereum `0xa30644...bd815b`; ethereum `0xc4df68...820fc2`; bsc [`0x02bf8f...ce65cf`](./contracts/bsc-56/0x02bf8f0e046f471709e578b1e633077096ce65cf/) | ⚠️ Unaudited |
| AegisMintingJUSD | unknown | ethereum | n/a | [`0xbb0f32...09b520`](./contracts/ethereum-1/0xbb0f32d176590faedc7bc552b7ead7a86809b520/) | ⚠️ Unaudited |
| AegisOracle | operational_periphery | ethereum | n/a | [`0x2b4ad1...041aec`](./contracts/ethereum-1/0x2b4ad1d479561064cd1c311004aca93d15041aec/) | ⚠️ Unaudited |
| AegisOracleJUSD | unknown | ethereum | n/a | [`0xfa449d...17e0e7`](./contracts/ethereum-1/0xfa449dc17194fdaca1dd2237c828938f1917e0e7/) | ⚠️ Unaudited |
| AegisRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8adcfa...ddeafd`](./contracts/ethereum-1/0x8adcfaf1b64cc514524b80565bcc732273ddeafd/); bsc `0x93efaa...e5b75e` | ⚠️ Unaudited |
| sJUSD | unknown | ethereum | unit-18255 | [`0x4aa894...90bdb3`](./contracts/ethereum-1/0x4aa8949bb47da4b4f27345404ba1e5e7ea90bdb3/) | ⚠️ Unaudited |
| sJUSDSilo | unknown | ethereum | n/a | [`0x22dace...688d9a`](./contracts/ethereum-1/0x22daceed48d7ee53f964a5aa3bdb6e4d3d688d9a/) | ⚠️ Unaudited |
| sYUSD | unknown | ethereum | unit-18256 | [`0xfe0ccc...a4cb64`](./contracts/ethereum-1/0xfe0ccc9942e98c963fe6b4e5194eb6e3baa4cb64/) | ⚠️ Unaudited |
| sYUSDOFTAdapter | adapter | ethereum | n/a | [`0x1a7cde...0b41fc`](./contracts/ethereum-1/0x1a7cde558d318052add800ca30dc7464920b41fc/) | ⚠️ Unaudited |
| YUSD | unknown | ethereum | n/a | [`0x4274cd...a8da0a`](./contracts/ethereum-1/0x4274cd7277c7bb0806bd5fe84b9adae466a8da0a/) | ⚠️ Unaudited |
| YUSDMintBurnOFTAdapter | adapter | bsc | n/a | 2 deployments: ethereum `0xaf12b0...143565`; bsc [`0x539e46...e602e3`](./contracts/bsc-56/0x539e46827c37a3ef11c7ce521cc56b4d59e602e3/) | ⚠️ Unaudited |

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
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
