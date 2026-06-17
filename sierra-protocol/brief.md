# Agentic Audit Brief: Sierra Protocol

## Project Overview

- Project: Sierra Protocol (`sierra-protocol`)
- Website: [https://sierra.money/](https://sierra.money/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T21:00:08.621Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-6f9b
- Chains: avalanche, ethereum
- Contract surface: 6 unique implementations (19 raw deployments)
- DeFi Llama TVL: $34,484,947.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SIERRA is a Liquid Yield Token protocol designed to grow through intrinsic yield generated from a portfolio of real-world assets and DeFi/CeFi strategies. Its on-chain contracts, including pools and related registry or accounting components where applicable, should be described as implementation infrastructure for the yield-generating SIERRA product rather than as a separate deposit-address management product family.

### Architecture

The Sierra Protocol family relies on shared infrastructure contracts like PoolRegistry and DepositAddressRegistry to manage pool deployments and user deposit addresses. The Blockchain Addresses family appears to be a subset focused on deposit address management, reusing the LYTPool contract and DepositAddressRegistry.

## Contract Surface Quality

- Indexed contracts: 141; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 94 inactive, 28 singleton, 0 uninitialized.
- Deployment units: 1/13 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 19
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FiatTokenV2_2 | token | avalanche | unit-33125 | [`0xb97ef9...c48a6e`](./contracts/avalanche-43114/0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e/) | ⚠️ Unaudited |
| LytPoolOFT | core_logic | ethereum | n/a | [`0x6bf778...10e0fc`](./contracts/ethereum-1/0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc/) | ⚠️ Unaudited |
| LytPoolOFTAdapter | adapter | avalanche | n/a | [`0xc472d3...38bcaa`](./contracts/avalanche-43114/0xc472d3a47719de5f9d808ca91d7b70bd2138bcaa/) | ⚠️ Unaudited |
| PoolControllerFactoryFlex | registry | ethereum | n/a | [`0x447239...97dbf4`](./contracts/ethereum-1/0x447239a5c9940ccafa566977c91f17f5d797dbf4/) | ⚠️ Unaudited |
| PoolControllerFlex | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x0264f3...12c547`](./contracts/ethereum-1/0x0264f33c7716d93053a28efec730bb5e7412c547/); ethereum `0x266a75...98d5d7`; ethereum `0x6ac591...2b3d93`; ethereum `0x70b661...f1d2c3`; ethereum `0x758859...147ec8`; ethereum `0x912849...6953db`; ethereum `0xea12f3...f33c6d` | ⚠️ Unaudited |
| ServiceConfigurationV6 | governance | ethereum | n/a | 8 deployments: ethereum [`0x0c583a...206611`](./contracts/ethereum-1/0x0c583a7926635301ddbc3cc9fd613df156206611/); ethereum `0x2f6d91...4853ce`; ethereum `0x51e8bb...e356f6`; ethereum `0x673897...9d226f`; ethereum `0xbca5cf...8990b2`; ethereum `0xc5524d...187380`; ethereum `0xde6bf1...f60aaa`; ethereum `0xe958bb...6e3c1b` | ⚠️ Unaudited |

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
| [The Sierra Protocol was built using [OpenTrade](https://www.opentrade.io/)'s Liquid Yield Token (LYT) protocol, which was audited by Spearbit's Cantina in August 2025 and the report is available here: <>. There were no High Risk or Critical findings.](https://cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6bf778...10e0fc`](./contracts/ethereum-1/0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc/) | LytPoolOFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc472d3...38bcaa`](./contracts/avalanche-43114/0xc472d3a47719de5f9d808ca91d7b70bd2138bcaa/) | LytPoolOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x447239...97dbf4`](./contracts/ethereum-1/0x447239a5c9940ccafa566977c91f17f5d797dbf4/) | PoolControllerFactoryFlex | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0264f3...12c547`](./contracts/ethereum-1/0x0264f33c7716d93053a28efec730bb5e7412c547/) | PoolControllerFlex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c583a...206611`](./contracts/ethereum-1/0x0c583a7926635301ddbc3cc9fd613df156206611/) | ServiceConfigurationV6 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=1

Zero-match audit list:

- [3990] The Sierra Protocol was built using [OpenTrade](https://www.opentrade.io/)'s Liquid Yield Token (LYT) protocol, which was audited by Spearbit's Cantina in August 2025 and the report is available here: <>. There were no High Risk or Critical findings.

Fork inheritance lineage and inherited audits are included when available.
