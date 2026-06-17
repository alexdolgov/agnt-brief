# Agentic Audit Brief: CLever

## Project Overview

- Project: CLever (`clever`)
- Website: [https://clever.aladdin.club/](https://clever.aladdin.club/)
- Lifecycle: active (Tier 0, 83.1% below peak)
- Generated: 2026-06-17T07:00:40.376Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 16 unique implementations (29 raw deployments)
- DeFi Llama TVL: $4,387,763.00
- On-chain TVL (included contracts): $1,669,435.21
- TVL by chain: Ethereum $1,669,435.21

## Project Description

CLever is a DeFi protocol for CVX and stablecoin-related future-yield and leverage positions. Its native surface includes CLever modules such as Furnace/MetaFurnace, farming, locker, vesting, governance, token, and strategy components that handle yield claims, reward harvesting, swapping, and redemption flows. Third-party systems such as Balancer and StakeDAO should be treated as external integrations or dependencies rather than CLever-owned core contracts or TVL.

### Architecture

The CLever family consists of a single product line where the Vault contract interacts with multiple Vyper contracts to execute yield strategies. All contracts share the same deployer cluster, indicating a unified infrastructure.

## Contract Surface Quality

- Indexed contracts: 174; live-surface contracts included: 29 (29 live, 0 unknown).
- Excluded by liveness: 102 inactive, 43 singleton, 0 uninitialized.
- Deployment units: 9/29 live.
- Detected codebases: none
- Unverified dependencies: 4/120.

## Audit Coverage Summary

- Verified implementations audited: 4/16 (25.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 29
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $10,613.51
- Latest audit: 2022-11 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 25.0% | 2022-04 |
| SECBIT | Tier 2 | 3 | 18.8% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLeverToken | token | ethereum | n/a | 2 deployments: ethereum [`0x3c20ac...972f86`](./contracts/ethereum-1/0x3c20ac688410be8f391be1fb00afc5c212972f86/); ethereum `0xf05e58...0ba904` | ✅ Audited |
| CLeverCVXLocker | unknown | ethereum | unit-24531 | [`0x96c68d...c64154`](./contracts/ethereum-1/0x96c68d861ada016ed98c30c810879f9df7c64154/) | ✅ Audited |
| Furnace | unknown | ethereum | unit-24535 | [`0xce4dcc...7ab72a`](./contracts/ethereum-1/0xce4dcc5028588377e279255c0335effe2d7ab72a/) | ✅ Audited |
| Vesting | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x592e35...695593`](./contracts/ethereum-1/0x592e353c5b97356e99eaf6a72b971ba1c9695593/); ethereum `0x834188...f28742`; ethereum `0x84c82d...6f7a4e` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RebalancePool | core_logic | ethereum | unit-24532 | [`0xa677d9...01a49e`](./contracts/ethereum-1/0xa677d95b91530d56791fba72c01a862f1b01a49e/) | ⚠️ Unaudited |
| AladdinConvexVault | core_logic | ethereum | unit-24534 | [`0xc8ff37...68e0e8`](./contracts/ethereum-1/0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8/) | ⚠️ Unaudited |
| AladdinCRVV2 | unknown | ethereum | unit-24518 | [`0x2b95a1...7e0884`](./contracts/ethereum-1/0x2b95a1dcc3d405535f9ed33c219ab38e8d7e0884/) | ⚠️ Unaudited |
| AladdinFXSConvexVault | core_logic | ethereum | unit-24537 | [`0xd6e3bb...bf99e1`](./contracts/ethereum-1/0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1/) | ⚠️ Unaudited |
| Market | unknown | ethereum | unit-24542 | [`0xe7b9c7...5108db`](./contracts/ethereum-1/0xe7b9c7c9ca85340b8c06fb805f7775e3015108db/) | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | ethereum | n/a | [`0x695eb5...411403`](./contracts/ethereum-1/0x695eb50a92ad2aebb89c6dd1f3c7546a28411403/) | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | ethereum | n/a | [`0x323668...2380c8`](./contracts/ethereum-1/0x32366846354db5c08e92b4ab0d2a510b2a2380c8/) | ⚠️ Unaudited |
| RewardClaimHelper | periphery | ethereum | n/a | [`0xaf59d1...657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | ⚠️ Unaudited |
| SdCrvCompounder | adapter | ethereum | unit-24521 | [`0x43e54c...7b9922`](./contracts/ethereum-1/0x43e54c2e7b3e294de3a155785f52ab49d87b9922/) | ⚠️ Unaudited |
| stETHTreasury | operational_periphery | ethereum | unit-24515 | [`0x0e5caa...3afbb0`](./contracts/ethereum-1/0x0e5caa5c889bdf053c9a76395f62267e653afbb0/) | ⚠️ Unaudited |
| VeFeeGateway | unknown | ethereum | n/a | [`0x8fc790...6421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 11 deployments: ethereum [`0x4aa2af...18566a`](./contracts/ethereum-1/0x4aa2afd5616beec2321a9efd7349400d4f18566a/); ethereum `0x6c280d...5d3620`; ethereum `0x72953a...581bbf`; ethereum `0x86e917...cf114f`; ethereum `0x94be07...2e051e`; ethereum `0x9b0254...7a2fe8`; ethereum `0xa5d935...a4458c`; ethereum `0xb3ad64...6890b8`; ethereum `0xc50222...67f2f0`; ethereum `0xe4c099...4b4968`; ethereum `0xf9078f...d1a5a6` | ⚠️ Unaudited |

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
| [SECBIT_CLever_Report_v1.1.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_CLever_Report_v1.1.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 7 | high |
| [Furnace](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_CLever_Furnace_Update_20221111.pdf) | SECBIT | Audit | 2022-11 | stale | Direct | contract_name | 1 | high |
| [clevUSD](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf) | SECBIT | Audit | 2022-09 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x695eb5...411403`](./contracts/ethereum-1/0x695eb50a92ad2aebb89c6dd1f3c7546a28411403/) | PlatformFeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x323668...2380c8`](./contracts/ethereum-1/0x32366846354db5c08e92b4ab0d2a510b2a2380c8/) | PlatformFeeSpliter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf59d1...657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | RewardClaimHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fc790...6421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | VeFeeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4aa2af...18566a`](./contracts/ethereum-1/0x4aa2afd5616beec2321a9efd7349400d4f18566a/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=34

Fork inheritance lineage and inherited audits are included when available.
