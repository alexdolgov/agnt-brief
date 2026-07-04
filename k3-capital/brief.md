# Agentic Audit Brief: K3 Capital

## Project Overview

- Project: K3 Capital (`k3-capital`)
- Website: [https://k3.capital](https://k3.capital)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:27.826Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: avalanche, bsc, ethereum, plasma
- Contract surface: 41 unique implementations (41 raw deployments)
- DeFi Llama TVL: $244,661,360.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Risk Curators. Structurally: 27 project-authored contract(s) across 4 chain(s); 3 ERC4626 vaults, 3 ERC20 tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (proxy, erc1967upgrade, helper). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **MoreMarkets.xyz** (`moremarkets.xyz`) in the TermInitializer, TermStrategyAprOracle, TokenizedStrategy subsystem.
3 audits inherited from `moremarkets.xyz`, scoped to that subsystem.

Total inherited audits: 3. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 41; live-surface contracts included: 41 (40 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/25 (12.0%)
- Deployed-live implementations: 40 of 41 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/41
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 41
- Raw deployments: 41
- Audits discovered: 6 (3 direct, 3 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 1 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 4.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nuffle Labs | Tier 2 | 2 | 4.9% | n/a |
| unknown | Tier 2 | 2 | 4.9% | n/a |
| ChainSecurity | Tier 1 | 1 | 2.4% | n/a |
| Dedaub | Tier 2 | 1 | 2.4% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| sBold | unknown | ethereum | n/a | [`0x50bd66...59dd11`](./contracts/ethereum-1/0x50bd66d59911f5e086ec87ae43c811e0d059dd11/) | ✅ Audited |
| TermInitializer | unknown | avalanche | n/a | [`0x52b4c5...6d9005`](./contracts/avalanche-43114/0x52b4c5908e8e033bd58a2f815973013b596d9005/) | ✅ Audited |
| TokenizedStrategy | unknown | avalanche | n/a | [`0x8fc260...420af9`](./contracts/avalanche-43114/0x8fc260cd0a00cac30eb1f444b8f1511d71420af9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeaconProxy | unknown | plasma | n/a | [`0x141a6f...e09041`](./contracts/plasma-9745/0x141a6f77ca186861bfb323b07012e80ef4e09041/) | ⚠️ Unaudited |
| BeaconProxy | unknown | plasma | n/a | [`0xda33ba...97d71b`](./contracts/plasma-9745/0xda33ba72a303c26515ede275a2521b469f97d71b/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x007f78...736027`](./contracts/avalanche-43114/0x007f7869dff5381940510f85d19a46656a736027/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x00d5e4...fe791e`](./contracts/avalanche-43114/0x00d5e455b67b1370328a9f10bb60567ee6fe791e/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x016572...fa4dab`](./contracts/avalanche-43114/0x016572aacd1bcb1fca8c495488742a66d5fa4dab/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x04adbe...2e9e37`](./contracts/avalanche-43114/0x04adbec2e6fc32a4faca0ebe9c79f4dba62e9e37/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x0a43f1...3af746`](./contracts/avalanche-43114/0x0a43f1d5a87bc3d474347badfc692164813af746/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x4b1471...a4664b`](./contracts/avalanche-43114/0x4b1471638da297c8d2c13d9f1f52cb1766a4664b/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x5ca49e...f5f83a`](./contracts/avalanche-43114/0x5ca49e6e2a4bf854add1892241c5be1957f5f83a/) | ⚠️ Unaudited |
| InstaFlashAggregatorPlasma | unknown | plasma | n/a | [`0x0f8a99...7173b4`](./contracts/plasma-9745/0x0f8a9922b65ff5ecd965e8378d46a10d9c7173b4/) | ⚠️ Unaudited |
| InstaFlashAggregatorProxyAdmin | unknown | plasma | n/a | [`0x9c0ee5...b6eac8`](./contracts/plasma-9745/0x9c0ee5e73d2350e19a6e29ad8416b58101b6eac8/) | ⚠️ Unaudited |
| InstaFlashResolverPlasma | unknown | plasma | n/a | [`0x12c811...f93c7b`](./contracts/plasma-9745/0x12c811702987e47b2797a0b19c4fc1edf2f93c7b/) | ⚠️ Unaudited |
| MellowVaultCompat | unknown | ethereum | n/a | [`0x82f510...9e0b26`](./contracts/ethereum-1/0x82f5104b23ff2fa54c2345f821dac9369e9e0b26/) | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | avalanche | n/a | [`0x93ef00...79348d`](./contracts/avalanche-43114/0x93ef00bbcfbbb3dbf10e5696c5426cafe179348d/) | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | ethereum | n/a | [`0x3b3bda...87147a`](./contracts/ethereum-1/0x3b3bdaa4462851621818d2cebc835e077587147a/) | ⚠️ Unaudited |
| PoolV3_USDT | unknown | ethereum | n/a | [`0xf5503d...5db6de`](./contracts/ethereum-1/0xf5503d3d4bd254c2c17690eed523bcb2935db6de/) | ⚠️ Unaudited |
| Roles | unknown | plasma | n/a | [`0x14b3bd...f66c47`](./contracts/plasma-9745/0x14b3bd93d11a1f97c8e11940d02daf5e52f66c47/) | ⚠️ Unaudited |
| SafeProxy | unknown | ethereum | n/a | [`0xdd84a2...538b6b`](./contracts/ethereum-1/0xdd84a24eedde63f10ec3e928f1c8302a47538b6b/) | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | n/a | [`0x5bb012...df0506`](./contracts/bsc-56/0x5bb012482fa43c44a29168c6393657130fdf0506/) | ⚠️ Unaudited |
| SafeProxy | unknown | plasma | n/a | [`0x060db0...6dfea3`](./contracts/plasma-9745/0x060db084bf41872861f175d83f3cb1b5566dfea3/) | ⚠️ Unaudited |
| StrategyGovDeployerPlasma | unknown | plasma | n/a | [`0x182fe6...1bfe37`](./contracts/plasma-9745/0x182fe66b62ea845c8aba37c0926aea99831bfe37/) | ⚠️ Unaudited |
| TermAggregatorFlashDefaultLiquidatorSwap | unknown | plasma | n/a | [`0x1123da...10b45e`](./contracts/plasma-9745/0x1123dac01d5ef674b26e2069f0f59eb16810b45e/) | ⚠️ Unaudited |
| TermAggregatorFlashShortfallLiquidatorSwap | unknown | plasma | n/a | [`0x924c71...3c50c1`](./contracts/plasma-9745/0x924c71ec51fd8f4a9f809555713d756c643c50c1/) | ⚠️ Unaudited |
| TermCeilingPriceFeedV1 | unknown | plasma | n/a | [`0x970f1a...345494`](./contracts/plasma-9745/0x970f1a76391f6a6793de1965a74e05deaa345494/) | ⚠️ Unaudited |
| TermCombinationPriceFeedV1 | unknown | plasma | n/a | [`0x18019d...f4f123`](./contracts/plasma-9745/0x18019dfd4acc9560cd16776457e2be4180f4f123/) | ⚠️ Unaudited |
| TermController | unknown | avalanche | n/a | [`0x145e78...f67da9`](./contracts/avalanche-43114/0x145e7813c5ceab4c5fd5f3c4943b40d075f67da9/) | ⚠️ Unaudited |
| TermEventEmitter | unknown | avalanche | n/a | [`0xba1112...0c81be`](./contracts/avalanche-43114/0xba1112f957f2d1d4e6f13cef17e68ed6f00c81be/) | ⚠️ Unaudited |
| TermPriceConsumerV3 | unknown | avalanche | n/a | [`0xafaa77...4ddd18`](./contracts/avalanche-43114/0xafaa777e3c71b93cee4288fa6be98e6c2b4ddd18/) | ⚠️ Unaudited |
| TermRepoCollateralManager | unknown | avalanche | n/a | [`0x0035f6...bd22fa`](./contracts/avalanche-43114/0x0035f6945c855794aa5e707fc76d5205e0bd22fa/) | ⚠️ Unaudited |
| TermRepoLocker | unknown | avalanche | n/a | [`0x040475...0c385a`](./contracts/avalanche-43114/0x0404758c1862de9af342b4b012dc24fb370c385a/) | ⚠️ Unaudited |
| TermRepoRolloverManager | unknown | avalanche | n/a | [`0x015caa...c9c316`](./contracts/avalanche-43114/0x015caa0cc7a6fca2d141cb8e25eb331f01c9c316/) | ⚠️ Unaudited |
| TermVaultEventEmitter | unknown | avalanche | n/a | [`0xeae3fa...0c3bca`](./contracts/avalanche-43114/0xeae3fa745a2ad9178e5acbc5b58f2056d80c3bca/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x024375...abd336`](./contracts/ethereum-1/0x0243755a22e37b835486fdae9a839523adabd336/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x866c6c...d9ea83`](./contracts/ethereum-1/0x866c6c6627303be103814150fc0e886be5d9ea83/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xe1b4d3...8e6c2e`](./contracts/ethereum-1/0xe1b4d34e8754600962cd944b535180bd758e6c2e/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0xdc4795...8eea26`](./contracts/ethereum-1/0xdc47953c816531a8ca9e1d461ab53687d48eea26/) | ⚠️ Unaudited |
| VaultGovDeployerAvax | unknown | avalanche | n/a | [`0x182fe6...1bfe37`](./contracts/avalanche-43114/0x182fe66b62ea845c8aba37c0926aea99831bfe37/) | ⚠️ Unaudited |
| VaultGovDeployerPlasma | unknown | plasma | n/a | [`0x2fbddb...f2d9fb`](./contracts/plasma-9745/0x2fbddb36cd41e4a6e3063afd257637208ef2d9fb/) | ⚠️ Unaudited |

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
| [spaces/pkuCQdIPo5l6ElM4z077/uploads/op7oRI0mOlG9Yf9yht2x/MoreMarkets Collaborative Audit Report May 11_2025.pdf](https://3939430316-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpkuCQdIPo5l6ElM4z077%2Fuploads%2Fop7oRI0mOlG9Yf9yht2x%2FMoreMarkets%20Collaborative%20Audit%20Report%20May%2011_2025.pdf) | unknown | Audit | n/a | unknown | Inherited from MoreMarkets.xyz — forked code, scoped to TermInitializer, TermStrategyAprOracle, TokenizedStrategy | inherited | 2 | n/a |
| [spaces/pkuCQdIPo5l6ElM4z077/uploads/P6VwD0pisQXhVgoCIFrL/Sigma_Prime_MoreMarkets_Security_Assessment_Report_v2_0_final.pdf](https://3939430316-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpkuCQdIPo5l6ElM4z077%2Fuploads%2FP6VwD0pisQXhVgoCIFrL%2FSigma_Prime_MoreMarkets_Security_Assessment_Report_v2_0_final.pdf) | unknown | Audit | n/a | unknown | Inherited from MoreMarkets.xyz — forked code, scoped to TermInitializer, TermStrategyAprOracle, TokenizedStrategy | inherited | 2 | n/a |
| [spaces/pkuCQdIPo5l6ElM4z077/uploads/beoAHR4BdxCOPNViqMZe/Nuffle_Labs_Nuffle_Contracts_Smart_Contract_Security_Assessment.pdf](https://3939430316-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpkuCQdIPo5l6ElM4z077%2Fuploads%2FbeoAHR4BdxCOPNViqMZe%2FNuffle_Labs_Nuffle_Contracts_Smart_Contract_Security_Assessment.pdf) | Nuffle Labs | Audit | n/a | unknown | Inherited from MoreMarkets.xyz — forked code, scoped to TermInitializer, TermStrategyAprOracle, TokenizedStrategy | inherited | 2 | n/a |
| [ChainSecurity](https://www.chainsecurity.com/security-audit/k3-sbold) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [Dedaub](https://dedaub.com/audits/k3-capital/sbold-may-19-2025) | Dedaub | Audit | 2025-05 | aging | Direct | contract_name | 1 | high |
| [- [Audit Reports]()](https://k3-capital.gitbook.io/sbold/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | [`0x0f8a99...7173b4`](./contracts/plasma-9745/0x0f8a9922b65ff5ecd965e8378d46a10d9c7173b4/) | InstaFlashAggregatorPlasma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x9c0ee5...b6eac8`](./contracts/plasma-9745/0x9c0ee5e73d2350e19a6e29ad8416b58101b6eac8/) | InstaFlashAggregatorProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x12c811...f93c7b`](./contracts/plasma-9745/0x12c811702987e47b2797a0b19c4fc1edf2f93c7b/) | InstaFlashResolverPlasma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82f510...9e0b26`](./contracts/ethereum-1/0x82f5104b23ff2fa54c2345f821dac9369e9e0b26/) | MellowVaultCompat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x93ef00...79348d`](./contracts/avalanche-43114/0x93ef00bbcfbbb3dbf10e5696c5426cafe179348d/) | MerkleDistributorWithDeadline | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b3bda...87147a`](./contracts/ethereum-1/0x3b3bdaa4462851621818d2cebc835e077587147a/) | PlasmaVaultBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5503d...5db6de`](./contracts/ethereum-1/0xf5503d3d4bd254c2c17690eed523bcb2935db6de/) | PoolV3_USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x14b3bd...f66c47`](./contracts/plasma-9745/0x14b3bd93d11a1f97c8e11940d02daf5e52f66c47/) | Roles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x182fe6...1bfe37`](./contracts/plasma-9745/0x182fe66b62ea845c8aba37c0926aea99831bfe37/) | StrategyGovDeployerPlasma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x1123da...10b45e`](./contracts/plasma-9745/0x1123dac01d5ef674b26e2069f0f59eb16810b45e/) | TermAggregatorFlashDefaultLiquidatorSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x924c71...3c50c1`](./contracts/plasma-9745/0x924c71ec51fd8f4a9f809555713d756c643c50c1/) | TermAggregatorFlashShortfallLiquidatorSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x970f1a...345494`](./contracts/plasma-9745/0x970f1a76391f6a6793de1965a74e05deaa345494/) | TermCeilingPriceFeedV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x18019d...f4f123`](./contracts/plasma-9745/0x18019dfd4acc9560cd16776457e2be4180f4f123/) | TermCombinationPriceFeedV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x145e78...f67da9`](./contracts/avalanche-43114/0x145e7813c5ceab4c5fd5f3c4943b40d075f67da9/) | TermController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xba1112...0c81be`](./contracts/avalanche-43114/0xba1112f957f2d1d4e6f13cef17e68ed6f00c81be/) | TermEventEmitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xafaa77...4ddd18`](./contracts/avalanche-43114/0xafaa777e3c71b93cee4288fa6be98e6c2b4ddd18/) | TermPriceConsumerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0035f6...bd22fa`](./contracts/avalanche-43114/0x0035f6945c855794aa5e707fc76d5205e0bd22fa/) | TermRepoCollateralManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x040475...0c385a`](./contracts/avalanche-43114/0x0404758c1862de9af342b4b012dc24fb370c385a/) | TermRepoLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x015caa...c9c316`](./contracts/avalanche-43114/0x015caa0cc7a6fca2d141cb8e25eb331f01c9c316/) | TermRepoRolloverManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xeae3fa...0c3bca`](./contracts/avalanche-43114/0xeae3fa745a2ad9178e5acbc5b58f2056d80c3bca/) | TermVaultEventEmitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc4795...8eea26`](./contracts/ethereum-1/0xdc47953c816531a8ca9e1d461ab53687d48eea26/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x182fe6...1bfe37`](./contracts/avalanche-43114/0x182fe66b62ea845c8aba37c0926aea99831bfe37/) | VaultGovDeployerAvax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x2fbddb...f2d9fb`](./contracts/plasma-9745/0x2fbddb36cd41e4a6e3063afd257637208ef2d9fb/) | VaultGovDeployerPlasma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 15 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, low=1
- Match method counts: extraction_exact=2, inherited_name_remap=6

Zero-match audit list:

- [20601] - [Audit Reports]()

Fork inheritance lineage and inherited audits are included when available.
