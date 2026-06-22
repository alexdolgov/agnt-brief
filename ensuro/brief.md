# Agentic Audit Brief: Ensuro

## Project Overview

- Project: Ensuro (`ensuro`)
- Website: [https://ensuro.co](https://ensuro.co)
- Lifecycle: active (Tier 0, 68.4% below peak)
- Generated: 2026-06-21T14:23:45.633Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum, polygon
- Contract surface: 17 unique implementations (33 raw deployments)
- DeFi Llama TVL: $490,639.33
- On-chain TVL (included contracts): $126,219,084.83
- TVL by chain: Ethereum $96,455,809.26 | Polygon $29,763,275.57

## Project Description

Ensuro is a decentralized insurance protocol that allows users to provide capital to underwrite insurance risks and earn yield. It uses a policy pool, risk modules, and eTokens to manage capital, price risks, and distribute premiums and losses among liquidity providers.

### Architecture

The Core protocol family provides the PolicyPool and PremiumsAccount that aggregate capital and manage policy lifecycle, while Risk Modules define specific insurance products and interact with the pool to allocate capital and process claims. Cash Flow Management contracts invest idle pool capital into external DeFi strategies, returning yield to the pool, and are governed by the same AccessManager and timelock infrastructure.

## Contract Surface Quality

- Indexed contracts: 349; live-surface contracts included: 33 (33 live, 0 unknown).
- Excluded by liveness: 88 inactive, 228 singleton, 0 uninitialized.
- Deployment units: 4/108 live.
- Detected codebases: aave-v2
- Dependencies extracted: 9; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/17 (23.5%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 33
- Audits discovered: 5
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $126,219,084.83
- Latest audit: 2025-12 (fresh)
- Staleness: 1 fresh, 0 aging, 3 stale, 1 unknown
- Tier 1 coverage: 11.8% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 4 | 23.5% | 2025-12 |
| SlowMist | Tier 1 | 2 | 11.8% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | governance | ethereum | n/a | 4 deployments: ethereum [`0x367a03...f3a9d4`](./contracts/ethereum-1/0x367a03acd2f4df96871b891c0bad32b9f2f3a9d4/); ethereum `0x47e2af...026544`; ethereum `0xc3d6b7...373c07`; ethereum `0xf5866b...e69b3e` | ✅ Audited |
| FullSignedUW | unknown | ethereum | n/a | [`0xb259d0...170cf0`](./contracts/ethereum-1/0xb259d0267cdf1852714f6a3037551fd577170cf0/) | ✅ Audited |
| LPManualWhitelist | unknown | ethereum | n/a | [`0xe43be3...518bf5`](./contracts/ethereum-1/0xe43be3c635db0862a49b606ea2f3bd1205518bf5/) | ✅ Audited |
| PolicyPool | core_logic | ethereum | n/a | [`0xb13557...3c84a0`](./contracts/ethereum-1/0xb135570eb4a137077f0b56f59a5449e1283c84a0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x56bfa6...373ecf`](./contracts/ethereum-1/0x56bfa6f53669b836d1e0dfa5e99706b12c373ecf/); ethereum `0x8c106e...afa3d0` | ⚠️ Unaudited |
| ATokenInstance | token | polygon | unit-42837 | [`0xa4d940...c762bd`](./contracts/polygon-137/0xa4d94019934d8333ef880abffbf2fdd611c762bd/) | ⚠️ Unaudited |
| AaveV3InvestStrategy | operational_periphery | ethereum | n/a | [`0xd74a28...ac2497`](./contracts/ethereum-1/0xd74a28274c4b1a116add9857fc0e8f5e8fac2497/) | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | unit-42768 | [`0x98c23e...e16f5c`](./contracts/ethereum-1/0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c/) | ⚠️ Unaudited |
| ERC4626InvestStrategy | operational_periphery | polygon | n/a | 4 deployments: ethereum `0x7c19bc...dff81d`; ethereum `0xde79ce...95ca80`; ethereum `0xf7bbf9...81b9ca`; polygon [`0x758130...b0a33d`](./contracts/polygon-137/0x758130f2204ad60cca03b9b03c467bfa32b0a33d/) | ⚠️ Unaudited |
| IdleInvestStrategy | operational_periphery | polygon | n/a | 3 deployments: ethereum `0xdd71d3...e1e570`; polygon [`0x1c8b02...e08d12`](./contracts/polygon-137/0x1c8b0245a1028ea4b27e1d9afc9f45d895e08d12/); polygon `0xebeb6d...0c0047` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | polygon | n/a | 3 deployments: ethereum `0xe108fb...993add`; polygon [`0x781fb7...558c42`](./contracts/polygon-137/0x781fb7f6d845e3be129289833b04d43aa8558c42/); polygon `0xacb0dc...9ed6bc` | ⚠️ Unaudited |
| P2PSwapRouter | adapter | polygon | n/a | 3 deployments: ethereum `0x934164...378377`; ethereum `0xa87ce1...6c1aba`; polygon [`0x7801cf...872952`](./contracts/polygon-137/0x7801cfc789721138aba7ffd957653b9aa1872952/) | ⚠️ Unaudited |
| SwapLibrary | unknown | ethereum | n/a | [`0x8b6411...a3cae3`](./contracts/ethereum-1/0x8b641107c55664a9c64233f2d9e81c17c9a3cae3/) | ⚠️ Unaudited |
| SwapStableInvestStrategy | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x84bdaa...961dd8`](./contracts/ethereum-1/0x84bdaa06429f25085b2685ef7600cb4958961dd8/); ethereum `0xd2bb05...124069` | ⚠️ Unaudited |
| TimelockController | governance | polygon | n/a | 3 deployments: polygon [`0x371d67...0ac666`](./contracts/polygon-137/0x371d67ee31f6bfcdf13c7fa0cc9cc2c7080ac666/); polygon `0x76934c...623d2a`; polygon `0xc0d3ec...4e81a2` | ⚠️ Unaudited |
| USDO | unknown | ethereum | unit-42765 | [`0x823888...823bfe`](./contracts/ethereum-1/0x8238884ec9668ef77b90c6dff4d1a9f4f4823bfe/) | ⚠️ Unaudited |
| WEToken | token | ethereum | n/a | [`0x8e4704...249b67`](./contracts/ethereum-1/0x8e4704dc80953245bc87e09980004498d4249b67/) | ⚠️ Unaudited |

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
| [Quantstamp-Ensuro-Final-Report-2022-11-09.pdf](https://github.com/ensuro/ensuro/blob/main/audits/Quantstamp-Ensuro-Final-Report-2022-11-09.pdf) | Quantstamp | Audit | 2022-11 | stale | Direct | contract_name | 6 | high |
| [SlowMistAuditReport-Ensuro-2021-09-29.pdf](https://github.com/ensuro/ensuro/blob/main/audits/SlowMistAuditReport-Ensuro-2021-09-29.pdf) | SlowMist | Audit | 2021-09 | stale | Direct | contract_name | 2 | high |
| [DefiSafety.Process_Quality_Review.Ensuro.pdf](https://github.com/ensuro/ensuro/blob/main/audits/DefiSafety.Process_Quality_Review.Ensuro.pdf) | DefiSafety | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf](https://github.com/ensuro/ensuro/blob/main/audits/Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf) | Quantstamp | Audit | 2025-12 | fresh | Direct | contract_name | 3 | high |
| [DefiSafety-93-badge.png](https://github.com/ensuro/ensuro/blob/main/audits/DefiSafety-93-badge.png) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x758130...b0a33d`](./contracts/polygon-137/0x758130f2204ad60cca03b9b03c467bfa32b0a33d/) | ERC4626InvestStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1c8b02...e08d12`](./contracts/polygon-137/0x1c8b0245a1028ea4b27e1d9afc9f45d895e08d12/) | IdleInvestStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7801cf...872952`](./contracts/polygon-137/0x7801cfc789721138aba7ffd957653b9aa1872952/) | P2PSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b6411...a3cae3`](./contracts/ethereum-1/0x8b641107c55664a9c64233f2d9e81c17c9a3cae3/) | SwapLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84bdaa...961dd8`](./contracts/ethereum-1/0x84bdaa06429f25085b2685ef7600cb4958961dd8/) | SwapStableInvestStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e4704...249b67`](./contracts/ethereum-1/0x8e4704dc80953245bc87e09980004498d4249b67/) | WEToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 5 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=388

Zero-match audit list:

- [13093] DefiSafety.Process_Quality_Review.Ensuro.pdf
- [13095] DefiSafety-93-badge.png

Fork inheritance lineage and inherited audits are included when available.
