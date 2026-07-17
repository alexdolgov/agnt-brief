# Agentic Audit Brief: Contango

## Project Overview

- Project: Contango (`contango`)
- Website: [https://contango.xyz](https://contango.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.465Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, ethereum
- Contract surface: 42 unique implementations (42 raw deployments)
- DeFi Llama TVL: $94,907,979.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 41 project-authored contract(s) across 2 chain(s); 3 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 8 common project-authored base contract(s) (balanceless, erc1967upgradeupgradeable, multicall). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 42; live-surface contracts included: 42 (42 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 23/40 (57.5%)
- Deployed-live implementations: 42 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 24/42
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 42
- Raw deployments: 42
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 24 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 16 | 38.1% | 2024-02 |
| Compound | Tier 2 | 9 | 21.4% | 2024-05 |
| Offbeat Security | Tier 2 | 5 | 11.9% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveMoneyMarket | unknown | ethereum | n/a | [`0x403cc0dd4831b5f896293146c96b1eb0727d30a1`](./contracts/ethereum-1/0x403cc0dd4831b5f896293146c96b1eb0727d30a1/) | ✅ Audited |
| CometMoneyMarket | unknown | ethereum | n/a | [`0x29000dc631b75261f11e883cdbdf65b7570ba829`](./contracts/ethereum-1/0x29000dc631b75261f11e883cdbdf65b7570ba829/) | ✅ Audited |
| CometMoneyMarketView | unknown | ethereum | n/a | [`0x0aeff85b59fb641c2f60cdd396294446cb93e27f`](./contracts/ethereum-1/0x0aeff85b59fb641c2f60cdd396294446cb93e27f/) | ✅ Audited |
| CometReverseLookup | unknown | ethereum | n/a | [`0x3aaa75b701dac0592ed26a28555832a629f781e5`](./contracts/ethereum-1/0x3aaa75b701dac0592ed26a28555832a629f781e5/) | ✅ Audited |
| Contango | unknown | ethereum | n/a | [`0x07563293dbb881eef5f993f46da98e4116afde89`](./contracts/ethereum-1/0x07563293dbb881eef5f993f46da98e4116afde89/) | ✅ Audited |
| ContangoToken | unknown | arbitrum | n/a | [`0xc760f9782f8cea5b06d862574464729537159966`](./contracts/arbitrum-42161/0xc760f9782f8cea5b06d862574464729537159966/) | ✅ Audited |
| EulerMoneyMarket | unknown | ethereum | n/a | [`0x486b9185bcbfa780fcfd9a043ba140b3fa48e03e`](./contracts/ethereum-1/0x486b9185bcbfa780fcfd9a043ba140b3fa48e03e/) | ✅ Audited |
| EulerMoneyMarketView | unknown | ethereum | n/a | [`0x0c7d644fe0b0a63aa6fcfc7baad575853d4a7704`](./contracts/ethereum-1/0x0c7d644fe0b0a63aa6fcfc7baad575853d4a7704/) | ✅ Audited |
| EulerReverseLookup | unknown | ethereum | n/a | [`0xd0d9e5ca8793cae9fac72f34caaf7f99e4f0fc68`](./contracts/ethereum-1/0xd0d9e5ca8793cae9fac72f34caaf7f99e4f0fc68/) | ✅ Audited |
| EulerRewardsOperator | unknown | ethereum | n/a | [`0xb3863d03938ead437e3f136778531dcb89f29ead`](./contracts/ethereum-1/0xb3863d03938ead437e3f136778531dcb89f29ead/) | ✅ Audited |
| FeeManager | unknown | ethereum | n/a | [`0x95bb968af09ac6975adae3c96d3721a47e17d6c8`](./contracts/ethereum-1/0x95bb968af09ac6975adae3c96d3721a47e17d6c8/) | ✅ Audited |
| FluidMoneyMarket | unknown | ethereum | n/a | [`0x2475b89a193c2c4eced142134a8612d9a28890a7`](./contracts/ethereum-1/0x2475b89a193c2c4eced142134a8612d9a28890a7/) | ✅ Audited |
| FluidMoneyMarketView | unknown | ethereum | n/a | [`0x767fa190331ef7619dc0a51eb82f962ef26c88df`](./contracts/ethereum-1/0x767fa190331ef7619dc0a51eb82f962ef26c88df/) | ✅ Audited |
| ImmutableBeaconProxy | unknown | ethereum | n/a | [`0x034f657f778b8441c3a89c9914dff67147bd8c3c`](./contracts/ethereum-1/0x034f657f778b8441c3a89c9914dff67147bd8c3c/) | ✅ Audited |
| Maestro | unknown | ethereum | n/a | [`0x01fe7dde6688c92ddacab33bb2df7c20cf8c1702`](./contracts/ethereum-1/0x01fe7dde6688c92ddacab33bb2df7c20cf8c1702/) | ✅ Audited |
| OrderManager | unknown | ethereum | n/a | [`0x2226af65e4c9bb0550685b340529cc0e51de7a05`](./contracts/ethereum-1/0x2226af65e4c9bb0550685b340529cc0e51de7a05/) | ✅ Audited |
| ReferralManager | unknown | ethereum | n/a | [`0xff7b4d89617d8ac9698632b14127aac55895d21e`](./contracts/ethereum-1/0xff7b4d89617d8ac9698632b14127aac55895d21e/) | ✅ Audited |
| SiloMoneyMarket | unknown | ethereum | n/a | [`0x2f57aad5dcd2d650f92c058a79758c8b1217d341`](./contracts/ethereum-1/0x2f57aad5dcd2d650f92c058a79758c8b1217d341/) | ✅ Audited |
| SiloMoneyMarketView | unknown | ethereum | n/a | [`0x205e4b6ff70beda203de802e53170486bbde3422`](./contracts/ethereum-1/0x205e4b6ff70beda203de802e53170486bbde3422/) | ✅ Audited |
| SimpleSpotExecutor | unknown | ethereum | n/a | [`0x12158f171c77f6341443b0700e2d094cdeabaa9d`](./contracts/ethereum-1/0x12158f171c77f6341443b0700e2d094cdeabaa9d/) | ✅ Audited |
| SpotExecutor | unknown | ethereum | n/a | [`0x90896236b00a88959e427e5d47b73fd51bd82f1b`](./contracts/ethereum-1/0x90896236b00a88959e427e5d47b73fd51bd82f1b/) | ✅ Audited |
| StrategyBuilder | unknown | ethereum | n/a | [`0x39662fff061088ca50a79a5acc3b569bb73c0271`](./contracts/ethereum-1/0x39662fff061088ca50a79a5acc3b569bb73c0271/) | ✅ Audited |
| UpgradeableBeaconWithOwner | unknown | ethereum | n/a | [`0x41aa57aa613429dae7dfd1941ddd3e5317038a10`](./contracts/ethereum-1/0x41aa57aa613429dae7dfd1941ddd3e5317038a10/) | ✅ Audited |
| Vault | unknown | ethereum | n/a | [`0x3cab97f99147012b0b1352e5e1278c933776861a`](./contracts/ethereum-1/0x3cab97f99147012b0b1352e5e1278c933776861a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CashSettler | unknown | arbitrum | n/a | [`0x17104eb54776b63301ba5dbbf809250918175433`](./contracts/arbitrum-42161/0x17104eb54776b63301ba5dbbf809250918175433/) | ⚠️ Unaudited |
| Cauldron | unknown | arbitrum | n/a | [`0x44386ddb4c44e7cb8981f97af89e928ddd4258dd`](./contracts/arbitrum-42161/0x44386ddb4c44e7cb8981f97af89e928ddd4258dd/) | ⚠️ Unaudited |
| CompositeMultiOracle | unknown | arbitrum | n/a | [`0x750b3a18115fe090bc621f9e4b90bd442bcd02f2`](./contracts/arbitrum-42161/0x750b3a18115fe090bc621f9e4b90bd442bcd02f2/) | ⚠️ Unaudited |
| ContangoLadle | unknown | ethereum | n/a | [`0x30e7348163016b3b6e1621a3cb40e8cf33ce97db`](./contracts/ethereum-1/0x30e7348163016b3b6e1621a3cb40e8cf33ce97db/) | ⚠️ Unaudited |
| ContangoLens | unknown | ethereum | n/a | [`0x121b7580fbb1972774f74f5c1d0afb6a2783e0c0`](./contracts/ethereum-1/0x121b7580fbb1972774f74f5c1d0afb6a2783e0c0/) | ⚠️ Unaudited |
| ContangoPositionNFT | unknown | ethereum | n/a | [`0x361f0201e82c9d701bca9913191086476a8df53a`](./contracts/ethereum-1/0x361f0201e82c9d701bca9913191086476a8df53a/) | ⚠️ Unaudited |
| ContangoWitch | unknown | arbitrum | n/a | [`0x79857da1d4b976f40787daa6177e24256bc53b75`](./contracts/arbitrum-42161/0x79857da1d4b976f40787daa6177e24256bc53b75/) | ⚠️ Unaudited |
| ContangoYield | unknown | ethereum | n/a | [`0x2fe262f35c11e14597f6b4769f2ae589d9a08ab0`](./contracts/ethereum-1/0x2fe262f35c11e14597f6b4769f2ae589d9a08ab0/) | ⚠️ Unaudited |
| ContangoYieldQuoter | unknown | arbitrum | n/a | [`0x18004bb3321bec99e32e3fdcaa3699930a9d43f1`](./contracts/arbitrum-42161/0x18004bb3321bec99e32e3fdcaa3699930a9d43f1/) | ⚠️ Unaudited |
| DineroSwap | unknown | ethereum | n/a | [`0xfe189d42177df1f5834c154b981e70c93f9eeba0`](./contracts/ethereum-1/0xfe189d42177df1f5834c154b981e70c93f9eeba0/) | ⚠️ Unaudited |
| FixedFeeModel | unknown | ethereum | n/a | [`0x02ef55ad73ce24fa3d0b33dabcd4f27e0604e63b`](./contracts/ethereum-1/0x02ef55ad73ce24fa3d0b33dabcd4f27e0604e63b/) | ⚠️ Unaudited |
| IdentityOracle | unknown | arbitrum | n/a | [`0xce3d36e19de6a7b66e851c5b7e468e35dc83d29d`](./contracts/arbitrum-42161/0xce3d36e19de6a7b66e851c5b7e468e35dc83d29d/) | ⚠️ Unaudited |
| Join | unknown | ethereum | n/a | [`0x2f201b7b1176ecaba3d9e6c3e720b1f6a923229e`](./contracts/ethereum-1/0x2f201b7b1176ecaba3d9e6c3e720b1f6a923229e/) | ⚠️ Unaudited |
| PoolOracle | unknown | ethereum | n/a | [`0x96bf9ab0e421a3da31d4506c967a825312455767`](./contracts/ethereum-1/0x96bf9ab0e421a3da31d4506c967a825312455767/) | ⚠️ Unaudited |
| Router | unknown | ethereum | n/a | [`0xdaf4da41aacc0439b412a138fe8274e06341024e`](./contracts/ethereum-1/0xdaf4da41aacc0439b412a138fe8274e06341024e/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x62c66911af80994a7d3758cd77afd67098ac665e`](./contracts/ethereum-1/0x62c66911af80994a7d3758cd77afd67098ac665e/) | ⚠️ Unaudited |
| Yield | unknown | ethereum | n/a | [`0x00b98a7fa3eaf0e35b9fd353fe58306b61d2bdd4`](./contracts/ethereum-1/0x00b98a7fa3eaf0e35b9fd353fe58306b61d2bdd4/) | ⚠️ Unaudited |
| YieldSpaceMultiOracle | unknown | ethereum | n/a | [`0x210f4e1942beec4038743a8f885b870e0c27b414`](./contracts/ethereum-1/0x210f4e1942beec4038743a8f885b870e0c27b414/) | ⚠️ Unaudited |

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
| [ABDK_Contango_CoreV2PartIII_v_2_0.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/ABDK_Contango_CoreV2PartIII_v_2_0.pdf) | ABDK | Audit | 2024-02 | stale | Direct | contract_name | 3 | high |
| [ABDK_Contango_CoreV2_PARTII_v_3_0.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/ABDK_Contango_CoreV2_PARTII_v_3_0.pdf) | ABDK | Audit | 2023-12 | stale | Direct | contract_name | 3 | high |
| [ABDK_Contango_CoreV2_v_2_0.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/ABDK_Contango_CoreV2_v_2_0.pdf) | ABDK | Audit | 2023-10 | stale | Direct | contract_name | 14 | high |
| [Compound - Contango Integration Audit.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Compound%20-%20Contango%20Integration%20Audit.pdf) | Compound | Audit | 2024-05 | stale | Direct | contract_name | 9 | high |
| [Offbeat Security - Contango Perpetual Option Review - Oct 2024.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Contango%20Perpetual%20Option%20Review%20-%20Oct%202024.pdf) | Offbeat Security | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [Offbeat Security - Dolomite Money Market Review - May 2024.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Dolomite%20Money%20Market%20Review%20-%20May%202024.pdf) | Offbeat Security | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Offbeat Security - Euler Money Market Review - Sep 2024.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Euler%20Money%20Market%20Review%20-%20Sep%202024.pdf) | Offbeat Security | Audit | 2024-09 | aging | Direct | contract_name | 3 | high |
| [Offbeat Security - Strategy Builder Review - May 2024.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Strategy%20Builder%20Review%20-%20May%202024.pdf) | Offbeat Security | Audit | 2024-05 | stale | Direct | contract_name | 1 | high |
| [networks.json](https://github.com/contango-xyz/core-v2/blob/main/networks.json) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x17104eb54776b63301ba5dbbf809250918175433`](./contracts/arbitrum-42161/0x17104eb54776b63301ba5dbbf809250918175433/) | CashSettler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x44386ddb4c44e7cb8981f97af89e928ddd4258dd`](./contracts/arbitrum-42161/0x44386ddb4c44e7cb8981f97af89e928ddd4258dd/) | Cauldron | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x750b3a18115fe090bc621f9e4b90bd442bcd02f2`](./contracts/arbitrum-42161/0x750b3a18115fe090bc621f9e4b90bd442bcd02f2/) | CompositeMultiOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30e7348163016b3b6e1621a3cb40e8cf33ce97db`](./contracts/ethereum-1/0x30e7348163016b3b6e1621a3cb40e8cf33ce97db/) | ContangoLadle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x121b7580fbb1972774f74f5c1d0afb6a2783e0c0`](./contracts/ethereum-1/0x121b7580fbb1972774f74f5c1d0afb6a2783e0c0/) | ContangoLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x361f0201e82c9d701bca9913191086476a8df53a`](./contracts/ethereum-1/0x361f0201e82c9d701bca9913191086476a8df53a/) | ContangoPositionNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x79857da1d4b976f40787daa6177e24256bc53b75`](./contracts/arbitrum-42161/0x79857da1d4b976f40787daa6177e24256bc53b75/) | ContangoWitch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fe262f35c11e14597f6b4769f2ae589d9a08ab0`](./contracts/ethereum-1/0x2fe262f35c11e14597f6b4769f2ae589d9a08ab0/) | ContangoYield | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x18004bb3321bec99e32e3fdcaa3699930a9d43f1`](./contracts/arbitrum-42161/0x18004bb3321bec99e32e3fdcaa3699930a9d43f1/) | ContangoYieldQuoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe189d42177df1f5834c154b981e70c93f9eeba0`](./contracts/ethereum-1/0xfe189d42177df1f5834c154b981e70c93f9eeba0/) | DineroSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02ef55ad73ce24fa3d0b33dabcd4f27e0604e63b`](./contracts/ethereum-1/0x02ef55ad73ce24fa3d0b33dabcd4f27e0604e63b/) | FixedFeeModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xce3d36e19de6a7b66e851c5b7e468e35dc83d29d`](./contracts/arbitrum-42161/0xce3d36e19de6a7b66e851c5b7e468e35dc83d29d/) | IdentityOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f201b7b1176ecaba3d9e6c3e720b1f6a923229e`](./contracts/ethereum-1/0x2f201b7b1176ecaba3d9e6c3e720b1f6a923229e/) | Join | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96bf9ab0e421a3da31d4506c967a825312455767`](./contracts/ethereum-1/0x96bf9ab0e421a3da31d4506c967a825312455767/) | PoolOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdaf4da41aacc0439b412a138fe8274e06341024e`](./contracts/ethereum-1/0xdaf4da41aacc0439b412a138fe8274e06341024e/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b98a7fa3eaf0e35b9fd353fe58306b61d2bdd4`](./contracts/ethereum-1/0x00b98a7fa3eaf0e35b9fd353fe58306b61d2bdd4/) | Yield | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x210f4e1942beec4038743a8f885b870e0c27b414`](./contracts/ethereum-1/0x210f4e1942beec4038743a8f885b870e0c27b414/) | YieldSpaceMultiOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7
- Match method counts: extraction_exact=34

Zero-match audit list:

- [16907] Offbeat Security - Dolomite Money Market Review - May 2024.pdf
- [16912] networks.json

Fork inheritance lineage and inherited audits are included when available.
