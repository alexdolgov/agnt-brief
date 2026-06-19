# Agentic Audit Brief: King Protocol

## Project Overview

- Project: King Protocol (`king-protocol`)
- Website: [https://kingprotocol.org/](https://kingprotocol.org/)
- Lifecycle: active (Tier 0, 94% below peak)
- Generated: 2026-06-19T06:14:24.610Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, base, mantle, swellchain
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $1,142,997.99
- On-chain TVL (included contracts): $3,674.42
- TVL by chain: Base $3,674.42

## Project Description

King Protocol is a rewards and vault-share protocol focused on consolidating DeFi and restaking rewards into a liquid token. Its observed deployments include cross-chain token components such as KingOFTL2/LayerZero OFT-related contracts, but these should be treated as cross-chain deployment infrastructure rather than the sole or primary product definition unless further supported by current documentation.

### Architecture

The LRTSquaredCore contract manages the core restaking logic and interacts with the PriceProvider for asset pricing and the Swapper1InchV6 for trade execution. KingOFTL2 tokens are the liquid restaking tokens that are minted to users and can be bridged across chains via LayerZero.

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 15 (11 live, 4 unknown).
- Excluded by liveness: 2 inactive, 18 singleton, 0 uninitialized.
- Deployment units: 0/9 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 1/2.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 5
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,674.42
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Pool | core_logic | base | n/a | [`0xdc5f7c...3015ac`](./contracts/base-8453/0xdc5f7c7916c7792603fdc17f05f7929b423015ac/) | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | base | n/a | [`0x3253c8...9e0886`](./contracts/base-8453/0x3253c8105e8e70ae6abaf2fd21c703d8729e0886/) | ⚠️ Unaudited |
| RamsesBeaconProxy | registry | arbitrum | n/a | [`0x93e6e5...7bc942`](./contracts/arbitrum-42161/0x93e6e571d04848de3ba31525fca36f1e4f7bc942/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | swellchain | n/a | `0xc2606a...cee6f8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x63f237...077c6a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe63ba6...cce318` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0e9315...6aca5a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x155938...a33ac4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34b17b...fc1dc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x644403...436763` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e2a99...025844` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaeab5e...d12dbe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb71612...e228e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd2e14...27586b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe592f9...3421b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [NM_0452_King_Cross_Chain_FINAL.pdf](https://github.com/King-Protocol/king-cross-chain/blob/master/audit/NM_0452_King_Cross_Chain_FINAL.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 0 | n/a |
| [NM_0314_EtherFi_LRT_2.pdf (also discovered via alternate URL)](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/NM_0314_EtherFi_LRT_2.pdf) | NM | Audit | n/a | unknown | Direct | contract_name|n/a | 0 | n/a |
| [NM_0390_LRT_Square_Strategies_DRAFT.pdf (also discovered via alternate URL)](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/NM_0390_LRT_Square_Strategies_DRAFT.pdf) | NM | Audit | n/a | unknown | Direct | contract_name|n/a | 0 | n/a |
| [Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf) | Ether_Fi | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf](https://github.com/King-Protocol/king-protocol-sc/blob/master/audits/Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf) | Ether Fi | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xdc5f7c...3015ac`](./contracts/base-8453/0xdc5f7c7916c7792603fdc17f05f7929b423015ac/) | Pool | core_logic | $3,674.42 | Verified native implementation with $3,674.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=22

Zero-match audit list:

- [3122] NM_0452_King_Cross_Chain_FINAL.pdf
- [3126] NM_0314_EtherFi_LRT_2.pdf
- [3127] NM_0390_LRT_Square_Strategies_DRAFT.pdf
- [3128] Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf
- [14854] Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf

Fork inheritance lineage and inherited audits are included when available.
