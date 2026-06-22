# Agentic Audit Brief: MAHA.xyz

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: MAHA.xyz (`maha.xyz`)
- Website: [https://maha.xyz/](https://maha.xyz/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T11:58:38.040Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: arbitrum, base, bsc, ethereum, linea
- Contract surface: 10 unique implementations (16 raw deployments)
- DeFi Llama TVL: $2.62
- On-chain TVL (included contracts): $2,337,890.40
- TVL by chain: Ethereum $2,337,890.40 | Base $0.00

## Project Description

MAHA.xyz is a decentralized CDP (Collateralized Debt Position) protocol that enables users to mint the stablecoin ZAI against collateral. It also provides cross-chain token transfers via LayerZero, staking rewards, and governance through the MAHA token.

### Architecture

The Core Protocol manages ZAI minting and stability, while Direct Deposit Modules invest collateral into external protocols for yield. Cross-Chain Addresses enable MAHA and ZAI to move across chains, and Staking Pools incentivize liquidity provision, all governed by the MAHA token and timelock controllers.

## Contract Surface Quality

- Indexed contracts: 412; live-surface contracts included: 16 (14 live, 2 unknown).
- Excluded by liveness: 214 inactive, 182 singleton, 0 uninitialized.
- Deployment units: 0/89 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 3/58.

## Audit Coverage Summary

- Verified implementations audited: 1/10 (10.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 16
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $60,741.65
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $60,741.65 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 10.0% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ZaiStablecoin | token | ethereum | n/a | [`0x69000d...182ced`](./contracts/ethereum-1/0x69000dfd5025e82f48eb28325a2b88a241182ced/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MahaToken | token | ethereum | n/a | [`0x745407...2e49b0`](./contracts/ethereum-1/0x745407c86df8db893011912d3ab28e68b62e49b0/) | ⚠️ Unaudited |
| CLPool | core_logic | base | n/a | [`0xebf0d2...ff571f`](./contracts/base-8453/0xebf0d2fac88448874947550fa9b2a75f22ff571f/) | ⚠️ Unaudited |
| LayerZeroCustomOFT | unknown | base | n/a | 3 deployments: bsc `0x6a6613...03990a`; base [`0x554bba...72c0de`](./contracts/base-8453/0x554bba833518793056cf105e66abea330672c0de/); linea `0x6a6613...03990a` | ⚠️ Unaudited |
| LayerZeroCustomOFTAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x3a7b70...e9fde2`](./contracts/ethereum-1/0x3a7b708e71ff72506afa674ea14881e39ce9fde2/); ethereum `0x557177...a73872` | ⚠️ Unaudited |
| LockerToken | token | base | n/a | 2 deployments: base [`0x5f4250...fae7e6`](./contracts/base-8453/0x5f4250ed435124199adc5cc102d2aa59defae7e6/); base `0xdb1a47...54f6e4` | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | [`0x93edc6...0a58e4`](./contracts/base-8453/0x93edc603d7a2ea03518ac55219cad320010a58e4/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0x69000c...582863`](./contracts/arbitrum-42161/0x69000c978701fc4427d4baf749f10a5cec582863/) | ⚠️ Unaudited |
| Swapper | adapter | linea | n/a | 2 deployments: bsc `0xc2c07e...abe371`; linea [`0x44263a...ea3b01`](./contracts/linea-59144/0x44263a0b9ff2a90f72ded1cf4865da3457ea3b01/) | ⚠️ Unaudited |
| ZaiOFTWithRestaking | unknown | base | n/a | 2 deployments: base [`0x0a27e0...a62853`](./contracts/base-8453/0x0a27e060c0406f8ab7b64e3bee036a37e5a62853/); base `0x69000d...182ced` | ⚠️ Unaudited |

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
| [2024-08-halborn-core.pdf](https://github.com/mahaxyz/contracts/blob/master/audits/2024-08-halborn-core.pdf) | Halborn | Audit | 2024-08 | aging | Direct | contract_name | 1 | high |
| [Halborn MAHA Audit Reports](https://www.halborn.com/audits/maha/mahas-core) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x745407...2e49b0`](./contracts/ethereum-1/0x745407c86df8db893011912d3ab28e68b62e49b0/) | MahaToken | token | $60,741.65 | Verified native implementation with $60,741.65 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5f4250...fae7e6`](./contracts/base-8453/0x5f4250ed435124199adc5cc102d2aa59defae7e6/) | LockerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x44263a...ea3b01`](./contracts/linea-59144/0x44263a0b9ff2a90f72ded1cf4865da3457ea3b01/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a27e0...a62853`](./contracts/base-8453/0x0a27e060c0406f8ab7b64e3bee036a37e5a62853/) | ZaiOFTWithRestaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=14

Zero-match audit list:

- [13445] Halborn MAHA Audit Reports

Fork inheritance lineage and inherited audits are included when available.
