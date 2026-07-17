# Agentic Audit Brief: Metropolis Exchange

## Project Overview

- Project: Metropolis Exchange (`metropolis-exchange`)
- Website: [https://metropolis.exchange/](https://metropolis.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:31.559Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: sonic
- Contract surface: 34 unique implementations (34 raw deployments)
- DeFi Llama TVL: $463,030.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 34 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens, 2 ERC721 NFTs, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 18 common project-authored base contract(s) (proxy, lbhooksbasesimplerewarder, lbhooksbaserewarder). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Pharaoh Exchange** (`pharaoh-exchange`) in the DLMMFactory, DLMMPool, DLMMRewarder subsystem.
3 audits inherited from `pharaoh-exchange`, scoped to that subsystem.

Total inherited audits: 3. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 34; live-surface contracts included: 34 (34 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/33 (0.0%)
- Deployed-live implementations: 34 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 3 (0 direct, 3 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArcadeMemecoin | unknown | sonic | n/a | [`0x577fde1619ae2e1e0a0893e1208ddf2d1864341d`](./contracts/sonic-146/0x577fde1619ae2e1e0a0893e1208ddf2d1864341d/) | ⚠️ Unaudited |
| BribeRewarder | unknown | sonic | n/a | [`0x161a72027d83da46329ed64a4edfd0b717b7f8a7`](./contracts/sonic-146/0x161a72027d83da46329ed64a4edfd0b717b7f8a7/) | ⚠️ Unaudited |
| DummyERC20 | unknown | sonic | n/a | [`0xe0143ca6e6a0fb1a6ecae8faf94191a664f78eb9`](./contracts/sonic-146/0xe0143ca6e6a0fb1a6ecae8faf94191a664f78eb9/) | ⚠️ Unaudited |
| Factory | unknown | sonic | n/a | [`0x1570300e9cfec66c9fb0c8bc14366c86eb170ad0`](./contracts/sonic-146/0x1570300e9cfec66c9fb0c8bc14366c86eb170ad0/) | ⚠️ Unaudited |
| FarmLens | unknown | sonic | n/a | [`0x5657ab61ea91bcc22ccaae7168a621488003809b`](./contracts/sonic-146/0x5657ab61ea91bcc22ccaae7168a621488003809b/) | ⚠️ Unaudited |
| FarmZapper | unknown | sonic | n/a | [`0xa3db21cd2ee9c27f636bee29670669ef6c3c6cd3`](./contracts/sonic-146/0xa3db21cd2ee9c27f636bee29670669ef6c3c6cd3/) | ⚠️ Unaudited |
| LBFactory | unknown | sonic | n/a | [`0x39d966c1bafe7d3f1f53da4845805e15f7d6ee43`](./contracts/sonic-146/0x39d966c1bafe7d3f1f53da4845805e15f7d6ee43/) | ⚠️ Unaudited |
| LBHooksExtraRewarder | unknown | sonic | n/a | [`0x0a82b2611811d410f1b5e44221d4b1f545d89e26`](./contracts/sonic-146/0x0a82b2611811d410f1b5e44221d4b1f545d89e26/) | ⚠️ Unaudited |
| LBHooksLens | unknown | sonic | n/a | [`0x087495d1e9bb380a17783247ac260a124070e1a1`](./contracts/sonic-146/0x087495d1e9bb380a17783247ac260a124070e1a1/) | ⚠️ Unaudited |
| LBHooksManager | unknown | sonic | n/a | [`0x4962db3230075a3413251e22af3dd0761427f7ac`](./contracts/sonic-146/0x4962db3230075a3413251e22af3dd0761427f7ac/) | ⚠️ Unaudited |
| LBHooksMCRewarder | unknown | sonic | n/a | [`0x78ceffce6bd2093830fcfa9fb44a9fe858203388`](./contracts/sonic-146/0x78ceffce6bd2093830fcfa9fb44a9fe858203388/) | ⚠️ Unaudited |
| LBHooksSimpleRewarder | unknown | sonic | n/a | [`0x068812c0633752207e3b39ce5cf623ebea531cb6`](./contracts/sonic-146/0x068812c0633752207e3b39ce5cf623ebea531cb6/) | ⚠️ Unaudited |
| LBPair | unknown | sonic | n/a | [`0xce7f2a4f207ba9932c8935650a30fa5b53d416e4`](./contracts/sonic-146/0xce7f2a4f207ba9932c8935650a30fa5b53d416e4/) | ⚠️ Unaudited |
| LBQuoter | unknown | sonic | n/a | [`0x5277be3b93da960c7e92c50be58424e008c6cc49`](./contracts/sonic-146/0x5277be3b93da960c7e92c50be58424e008c6cc49/) | ⚠️ Unaudited |
| LBRouter | unknown | sonic | n/a | [`0x596eeb70a441d70511a64a2ea114beb5a8ffb881`](./contracts/sonic-146/0x596eeb70a441d70511a64a2ea114beb5a8ffb881/) | ⚠️ Unaudited |
| LiquidityHelperContract | unknown | sonic | n/a | [`0x4f95b0dac14ddbfa22c7c7f475cf819018774b20`](./contracts/sonic-146/0x4f95b0dac14ddbfa22c7c7f475cf819018774b20/) | ⚠️ Unaudited |
| MasterChefRewarder | unknown | sonic | n/a | [`0x501c4779c86add2a21115e4b8844bb31b6fdefd8`](./contracts/sonic-146/0x501c4779c86add2a21115e4b8844bb31b6fdefd8/) | ⚠️ Unaudited |
| Metro | unknown | sonic | n/a | [`0x71e99522ead5e21cf57f1f542dc4ad2e841f7321`](./contracts/sonic-146/0x71e99522ead5e21cf57f1f542dc4ad2e841f7321/) | ⚠️ Unaudited |
| MetroFairLaunch | unknown | sonic | n/a | [`0x1f18af7f1287a8a2a23a6ac71da2729e3a9b6609`](./contracts/sonic-146/0x1f18af7f1287a8a2a23a6ac71da2729e3a9b6609/) | ⚠️ Unaudited |
| MetroGem | unknown | sonic | n/a | [`0x8a3b1cd8d0decf649262e56ece6b339e59f350db`](./contracts/sonic-146/0x8a3b1cd8d0decf649262e56ece6b339e59f350db/) | ⚠️ Unaudited |
| MetroGem2 | unknown | sonic | n/a | [`0x1ae89cc21e1cf2d1e95ba5ebd5b3b1cf89e37a5e`](./contracts/sonic-146/0x1ae89cc21e1cf2d1e95ba5ebd5b3b1cf89e37a5e/) | ⚠️ Unaudited |
| MetroStaking | unknown | sonic | n/a | [`0xb7b785b01ed09f2c59a42994c1f8675e428ceb8b`](./contracts/sonic-146/0xb7b785b01ed09f2c59a42994c1f8675e428ceb8b/) | ⚠️ Unaudited |
| MetroStaking2 | unknown | sonic | n/a | [`0x197e72f8b1c9c9e46337bf0a4cce5d6bc0f3b254`](./contracts/sonic-146/0x197e72f8b1c9c9e46337bf0a4cce5d6bc0f3b254/) | ⚠️ Unaudited |
| OracleRewardVault | unknown | sonic | n/a | [`0x19d815667267d46254574e62647c2f500449a387`](./contracts/sonic-146/0x19d815667267d46254574e62647c2f500449a387/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | sonic | n/a | [`0x4541cda311ab72420743d03f8f45b42c858046dc`](./contracts/sonic-146/0x4541cda311ab72420743d03f8f45b42c858046dc/) | ⚠️ Unaudited |
| ProxyAdmin2Step | unknown | sonic | n/a | [`0x35de168492b6b22cffe53c12f46fbfaed173cfee`](./contracts/sonic-146/0x35de168492b6b22cffe53c12f46fbfaed173cfee/) | ⚠️ Unaudited |
| PythAggregatorAdapter | unknown | sonic | n/a | [`0x31b803a540b064f13e427138f8b04004ec742ab0`](./contracts/sonic-146/0x31b803a540b064f13e427138f8b04004ec742ab0/) | ⚠️ Unaudited |
| RewarderFactory | unknown | sonic | n/a | [`0x6122dcd13f0cb1157cf9e58d5787c2c46e8bdaf4`](./contracts/sonic-146/0x6122dcd13f0cb1157cf9e58d5787c2c46e8bdaf4/) | ⚠️ Unaudited |
| Router | unknown | sonic | n/a | [`0x95a7e403d7cf20f675ff9273d66e94d35ba49fa3`](./contracts/sonic-146/0x95a7e403d7cf20f675ff9273d66e94d35ba49fa3/) | ⚠️ Unaudited |
| Strategy | unknown | sonic | n/a | [`0x1817134ad98b72a42ab68cc485fb123afac85e80`](./contracts/sonic-146/0x1817134ad98b72a42ab68cc485fb123afac85e80/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | sonic | n/a | [`0x03a9896a464c515d13f2679df337bf95bc891fda`](./contracts/sonic-146/0x03a9896a464c515d13f2679df337bf95bc891fda/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | sonic | n/a | [`0x0444a986e90521130db7021c91f9f947d3c955ed`](./contracts/sonic-146/0x0444a986e90521130db7021c91f9f947d3c955ed/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | sonic | n/a | [`0x11650735f402bbf28e877a750a6e40d5db837d6f`](./contracts/sonic-146/0x11650735f402bbf28e877a750a6e40d5db837d6f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | sonic | n/a | [`0x1a5ded6adcfc64acede86151b1f142088c6e03da`](./contracts/sonic-146/0x1a5ded6adcfc64acede86151b1f142088c6e03da/) | ⚠️ Unaudited |

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
| [cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Inherited from Pharaoh Exchange — forked code, scoped to DLMMFactory, DLMMPool, DLMMRewarder | n/a | 0 | n/a |
| [code4rena.com/reports/2024-10-ramses-exchange](https://code4rena.com/reports/2024-10-ramses-exchange) | Code4rena | Contest | 2024-10 | aging | Inherited from Pharaoh Exchange — forked code, scoped to DLMMFactory, DLMMPool, DLMMRewarder | n/a | 0 | n/a |
| [diligence.security/audits/2024/08/ramses-v3](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | n/a | unknown | Inherited from Pharaoh Exchange — forked code, scoped to DLMMFactory, DLMMPool, DLMMRewarder | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x577fde1619ae2e1e0a0893e1208ddf2d1864341d`](./contracts/sonic-146/0x577fde1619ae2e1e0a0893e1208ddf2d1864341d/) | ArcadeMemecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x161a72027d83da46329ed64a4edfd0b717b7f8a7`](./contracts/sonic-146/0x161a72027d83da46329ed64a4edfd0b717b7f8a7/) | BribeRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe0143ca6e6a0fb1a6ecae8faf94191a664f78eb9`](./contracts/sonic-146/0xe0143ca6e6a0fb1a6ecae8faf94191a664f78eb9/) | DummyERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1570300e9cfec66c9fb0c8bc14366c86eb170ad0`](./contracts/sonic-146/0x1570300e9cfec66c9fb0c8bc14366c86eb170ad0/) | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5657ab61ea91bcc22ccaae7168a621488003809b`](./contracts/sonic-146/0x5657ab61ea91bcc22ccaae7168a621488003809b/) | FarmLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa3db21cd2ee9c27f636bee29670669ef6c3c6cd3`](./contracts/sonic-146/0xa3db21cd2ee9c27f636bee29670669ef6c3c6cd3/) | FarmZapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x39d966c1bafe7d3f1f53da4845805e15f7d6ee43`](./contracts/sonic-146/0x39d966c1bafe7d3f1f53da4845805e15f7d6ee43/) | LBFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0a82b2611811d410f1b5e44221d4b1f545d89e26`](./contracts/sonic-146/0x0a82b2611811d410f1b5e44221d4b1f545d89e26/) | LBHooksExtraRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x087495d1e9bb380a17783247ac260a124070e1a1`](./contracts/sonic-146/0x087495d1e9bb380a17783247ac260a124070e1a1/) | LBHooksLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4962db3230075a3413251e22af3dd0761427f7ac`](./contracts/sonic-146/0x4962db3230075a3413251e22af3dd0761427f7ac/) | LBHooksManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x78ceffce6bd2093830fcfa9fb44a9fe858203388`](./contracts/sonic-146/0x78ceffce6bd2093830fcfa9fb44a9fe858203388/) | LBHooksMCRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x068812c0633752207e3b39ce5cf623ebea531cb6`](./contracts/sonic-146/0x068812c0633752207e3b39ce5cf623ebea531cb6/) | LBHooksSimpleRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xce7f2a4f207ba9932c8935650a30fa5b53d416e4`](./contracts/sonic-146/0xce7f2a4f207ba9932c8935650a30fa5b53d416e4/) | LBPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5277be3b93da960c7e92c50be58424e008c6cc49`](./contracts/sonic-146/0x5277be3b93da960c7e92c50be58424e008c6cc49/) | LBQuoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x596eeb70a441d70511a64a2ea114beb5a8ffb881`](./contracts/sonic-146/0x596eeb70a441d70511a64a2ea114beb5a8ffb881/) | LBRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4f95b0dac14ddbfa22c7c7f475cf819018774b20`](./contracts/sonic-146/0x4f95b0dac14ddbfa22c7c7f475cf819018774b20/) | LiquidityHelperContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x501c4779c86add2a21115e4b8844bb31b6fdefd8`](./contracts/sonic-146/0x501c4779c86add2a21115e4b8844bb31b6fdefd8/) | MasterChefRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x71e99522ead5e21cf57f1f542dc4ad2e841f7321`](./contracts/sonic-146/0x71e99522ead5e21cf57f1f542dc4ad2e841f7321/) | Metro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1f18af7f1287a8a2a23a6ac71da2729e3a9b6609`](./contracts/sonic-146/0x1f18af7f1287a8a2a23a6ac71da2729e3a9b6609/) | MetroFairLaunch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8a3b1cd8d0decf649262e56ece6b339e59f350db`](./contracts/sonic-146/0x8a3b1cd8d0decf649262e56ece6b339e59f350db/) | MetroGem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1ae89cc21e1cf2d1e95ba5ebd5b3b1cf89e37a5e`](./contracts/sonic-146/0x1ae89cc21e1cf2d1e95ba5ebd5b3b1cf89e37a5e/) | MetroGem2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb7b785b01ed09f2c59a42994c1f8675e428ceb8b`](./contracts/sonic-146/0xb7b785b01ed09f2c59a42994c1f8675e428ceb8b/) | MetroStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x197e72f8b1c9c9e46337bf0a4cce5d6bc0f3b254`](./contracts/sonic-146/0x197e72f8b1c9c9e46337bf0a4cce5d6bc0f3b254/) | MetroStaking2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x19d815667267d46254574e62647c2f500449a387`](./contracts/sonic-146/0x19d815667267d46254574e62647c2f500449a387/) | OracleRewardVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x35de168492b6b22cffe53c12f46fbfaed173cfee`](./contracts/sonic-146/0x35de168492b6b22cffe53c12f46fbfaed173cfee/) | ProxyAdmin2Step | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x31b803a540b064f13e427138f8b04004ec742ab0`](./contracts/sonic-146/0x31b803a540b064f13e427138f8b04004ec742ab0/) | PythAggregatorAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6122dcd13f0cb1157cf9e58d5787c2c46e8bdaf4`](./contracts/sonic-146/0x6122dcd13f0cb1157cf9e58d5787c2c46e8bdaf4/) | RewarderFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x95a7e403d7cf20f675ff9273d66e94d35ba49fa3`](./contracts/sonic-146/0x95a7e403d7cf20f675ff9273d66e94d35ba49fa3/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1817134ad98b72a42ab68cc485fb123afac85e80`](./contracts/sonic-146/0x1817134ad98b72a42ab68cc485fb123afac85e80/) | Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x03a9896a464c515d13f2679df337bf95bc891fda`](./contracts/sonic-146/0x03a9896a464c515d13f2679df337bf95bc891fda/) | TransparentUpgradeableProxy2Step | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0444a986e90521130db7021c91f9f947d3c955ed`](./contracts/sonic-146/0x0444a986e90521130db7021c91f9f947d3c955ed/) | TransparentUpgradeableProxy2Step | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x11650735f402bbf28e877a750a6e40d5db837d6f`](./contracts/sonic-146/0x11650735f402bbf28e877a750a6e40d5db837d6f/) | TransparentUpgradeableProxy2Step | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1a5ded6adcfc64acede86151b1f142088c6e03da`](./contracts/sonic-146/0x1a5ded6adcfc64acede86151b1f142088c6e03da/) | TransparentUpgradeableProxy2Step | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19057] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c
- [19058] code4rena.com/reports/2024-10-ramses-exchange
- [19059] diligence.security/audits/2024/08/ramses-v3

Fork inheritance lineage and inherited audits are included when available.
