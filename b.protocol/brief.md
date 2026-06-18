# Agentic Audit Brief: B.Protocol

⚠️ Lifecycle status: DECLINING - TVL changed 1.0% over 90 days

## Project Overview

- Project: B.Protocol (`b.protocol`)
- Website: [https://app.bprotocol.org/](https://app.bprotocol.org/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-18T01:44:37.879Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-ac25
- Chains: arbitrum, ethereum, fantom, polygon
- Contract surface: 17 unique implementations (19 raw deployments)
- DeFi Llama TVL: $1,761,279.62
- On-chain TVL (included contracts): $53,745,997.71
- TVL by chain: Ethereum $53,745,997.71

## Project Description

B.Protocol is a liquidation and backstop protocol that lets users backstop lending markets and share in liquidation proceeds. It has deployments across Ethereum, Polygon, Arbitrum, and Fantom; scraped address-list headings should be treated as deployment groups rather than separate product lines.

### Architecture

The B.Protocol family provides governance and core liquidation logic, while the Contract Addresses families deploy BAMM and Vault contracts that interact with lending markets. All families share the BAMM concept, with the Arbitrum family extending it to a new chain, and the B.Protocol family integrating with Compound-like tokens via CErc20Delegator proxies.

## Contract Surface Quality

- Indexed contracts: 342; live-surface contracts included: 19 (17 live, 2 unknown).
- Excluded by liveness: 305 inactive, 18 singleton, 0 uninitialized.
- Deployment units: 1/7 live.
- Detected codebases: none
- Unverified dependencies: 2/39.

## Audit Coverage Summary

- Verified implementations audited: 1/15 (6.7%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 17
- Raw deployments: 19
- Audits discovered: 5
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $53,745,997.71
- Latest audit: 2021-12 (stale)
- Staleness: 0 fresh, 0 aging, 5 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $53,745,997.71 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Fixed Point Solutions | Tier 2 | 1 | 6.7% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BAMM | unknown | ethereum | n/a | 3 deployments: ethereum [`0x00ff66...a0849a`](./contracts/ethereum-1/0x00ff66ab8699aafa050ee5ef5041d1503aa0849a/); arbitrum `0x0a3096...034c41`; arbitrum `0x12c60b...24329e` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LUSDToken | token | ethereum | n/a | [`0x5f9880...568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | ⚠️ Unaudited |
| LQTYToken | token | ethereum | n/a | [`0x6dea81...88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | ⚠️ Unaudited |
| StabilityPool | core_logic | ethereum | n/a | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | ethereum | n/a | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | ⚠️ Unaudited |
| ActivePool | core_logic | ethereum | n/a | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ⚠️ Unaudited |
| CollSurplusPool | core_logic | ethereum | n/a | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | ⚠️ Unaudited |
| CEther | unknown | polygon | n/a | [`0xebd7f3...b55e31`](./contracts/polygon-137/0xebd7f3349aba8bb15b897e03d6c1a4ba95b55e31/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | unit-33938 | [`0x3d9819...c9cd3b`](./contracts/ethereum-1/0x3d9819210a31b4961b30ef54be2aed79b9c9cd3b/) | ⚠️ Unaudited |
| LQTYStaking | unknown | ethereum | n/a | [`0x4f9fbb...fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | ethereum | n/a | [`0x4dbbbf...851e80`](./contracts/ethereum-1/0x4dbbbfb0e68be9d8f5a377a4654604a62e851e80/) | ⚠️ Unaudited |
| Pay | unknown | ethereum | n/a | [`0x0ab366...176bde`](./contracts/ethereum-1/0x0ab366dbbb03c84f581963a4cc0756eb66176bde/) | ⚠️ Unaudited |
| TroveManager | governance | ethereum | n/a | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | ⚠️ Unaudited |
| Unipool | core_logic | ethereum | n/a | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | [`0xc507a2...288880`](./contracts/ethereum-1/0xc507a27860c225aad8cb4a5a32a44d8892288880/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | fantom | n/a | `0x6d62d6...634d22` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xedc790...138a3d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [MakerDAO Integration](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20Backstop%20Protocol%20%5B02.10.2020%5D.pdf) | Solidified | Audit | 2020-10 | stale | Direct | contract_name | 0 | n/a |
| [**Liquity Integration**](https://github.com/Fixed-Point-Solutions/published-work/blob/master/SmartContractAudits/FPS_B.AMM_Liquity_Assessment_FINAL.pdf) | Fixed Point Solutions | Audit | 2021-07 | stale | Direct | contract_name | 3 | high |
| [**Compound Compatible Platforms (Hundred, Fuse)**](https://github.com/Fixed-Point-Solutions/published-work/blob/master/SmartContractAudits/FPS_B.AMM_Rari_Assessment_FINAL.pdf) | Fixed Point Solutions | Audit | 2021-12 | stale | Direct | contract_name | 3 | high |
| [Audit Report - B-Protocol [16.02.2021].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20B-Protocol%20%5B16.02.2021%5D.pdf) | Solidified | Audit | 2021-02 | stale | Direct | contract_name | 0 | n/a |
| [**Compound Integration**](https://github.com/solidified-platform/audits/blob/60778395ae2f78fc1caec0085bfa96c6f70c4573/Audit%20Report%20-%20B-Protocol%20%5B16.02.2021%5D.pdf) | Code4rena | Contest | 2021-02 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | StabilityPool | core_logic | $5,090.00 | Verified native implementation with $5,090.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | BorrowerOperations | core_logic | $4,002.72 | Verified native implementation with $4,002.72 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ActivePool | core_logic | $0.02 | Verified native implementation with $0.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | CollSurplusPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ab366...176bde`](./contracts/ethereum-1/0x0ab366dbbb03c84f581963a4cc0756eb66176bde/) | Pay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | Unipool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc507a2...288880`](./contracts/ethereum-1/0xc507a27860c225aad8cb4a5a32a44d8892288880/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 5 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=45

Zero-match audit list:

- [2976] MakerDAO Integration
- [2980] Audit Report - B-Protocol [16.02.2021].pdf
- [14828] **Compound Integration**

Fork inheritance lineage and inherited audits are included when available.
