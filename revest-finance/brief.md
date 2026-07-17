# Agentic Audit Brief: revest-finance

## Project Overview

- Project: revest-finance (`revest-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:46.041Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: arbitrum, avalanche, ethereum, fraxtal, linea, optimism, polygon
- Contract surface: 40 unique implementations (40 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 40 project-authored contract(s) across 7 chain(s); 1 ERC20 token, 1 ERC1155 multi-token; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 3 common project-authored base contract(s) (securedaddresslock, revestaccesscontrol, revestreentrancyguard). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 40 (40 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/35 (25.7%)
- Deployed-live implementations: 40 of 40 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/40
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 40
- Raw deployments: 40
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 11 | 27.5% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChainlinkOracleDispatch | unknown | avalanche | n/a | [`0xda1c33f0f1f34607e778b3758d4f0bd8b33c0b9c`](./contracts/avalanche-43114/0xda1c33f0f1f34607e778b3758d4f0bd8b33c0b9c/) | ✅ Audited |
| FNFTHandler | unknown | avalanche | n/a | [`0x02935e8f0db2b1b123d0a858e1a4d90f42a36724`](./contracts/avalanche-43114/0x02935e8f0db2b1b123d0a858e1a4d90f42a36724/) | ✅ Audited |
| LockManager | unknown | avalanche | n/a | [`0x09da4a87de388c7304a42ad250acb868c1bd8b6c`](./contracts/avalanche-43114/0x09da4a87de388c7304a42ad250acb868c1bd8b6c/) | ✅ Audited |
| MetadataHandler | unknown | ethereum | n/a | [`0x0fb4c53ddd53161bd0087abd1aac918ee97e4894`](./contracts/ethereum-1/0x0fb4c53ddd53161bd0087abd1aac918ee97e4894/) | ✅ Audited |
| Revest | unknown | ethereum | n/a | [`0x2320a28f52334d62622cc2eafa15de55f9987ed9`](./contracts/ethereum-1/0x2320a28f52334d62622cc2eafa15de55f9987ed9/) | ✅ Audited |
| RevestAddressRegistry | unknown | avalanche | n/a | [`0x0bfcd4e6ce75f6953e20e1c820d3da25c636910a`](./contracts/avalanche-43114/0x0bfcd4e6ce75f6953e20e1c820d3da25c636910a/) | ✅ Audited |
| RevestPublicSaleBatch | unknown | ethereum | n/a | [`0xa4aaa9d28fe87a1d6f2feba75ee931517671ba47`](./contracts/ethereum-1/0xa4aaa9d28fe87a1d6f2feba75ee931517671ba47/) | ✅ Audited |
| RevestToken | unknown | ethereum | n/a | [`0x120a3879da835a5af037bb2d1456bebd6b54d4ba`](./contracts/ethereum-1/0x120a3879da835a5af037bb2d1456bebd6b54d4ba/) | ✅ Audited |
| RewardsHandler | unknown | ethereum | n/a | [`0x9c061b1880d587331de977aecc39a0425bd9f195`](./contracts/ethereum-1/0x9c061b1880d587331de977aecc39a0425bd9f195/) | ✅ Audited |
| TokenVault | unknown | polygon | n/a | [`0x3ccc20d960e185e863885913596b54ea666b2fe7`](./contracts/polygon-137/0x3ccc20d960e185e863885913596b54ea666b2fe7/) | ✅ Audited |
| UniswapTwapOracleDispatch | unknown | ethereum | n/a | [`0x13cd285a7209901f48978b690f1082b25396912b`](./contracts/ethereum-1/0x13cd285a7209901f48978b690f1082b25396912b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressLockProxy | unknown | linea | n/a | [`0x507a84d5124a946e1e7954723dd62223232ac08c`](./contracts/linea-59144/0x507a84d5124a946e1e7954723dd62223232ac08c/) | ⚠️ Unaudited |
| AddressRegistryController | unknown | linea | n/a | [`0x1a0eeaa7bf60e01646eff96bfcaada850ed250ae`](./contracts/linea-59144/0x1a0eeaa7bf60e01646eff96bfcaada850ed250ae/) | ⚠️ Unaudited |
| AdminTimeLock | unknown | ethereum | n/a | [`0x07317ed9204c9e76df03f106ceffd5b021c5f6a5`](./contracts/ethereum-1/0x07317ed9204c9e76df03f106ceffd5b021c5f6a5/) | ⚠️ Unaudited |
| BinaryComboLock | unknown | avalanche | n/a | [`0x068c1893ad9f16086a1ee5177b9a3dd86310524b`](./contracts/avalanche-43114/0x068c1893ad9f16086a1ee5177b9a3dd86310524b/) | ⚠️ Unaudited |
| CashFlowManagement | unknown | ethereum | n/a | [`0x50edb49b5104b8fbab7f680f9696e769d2c94911`](./contracts/ethereum-1/0x50edb49b5104b8fbab7f680f9696e769d2c94911/) | ⚠️ Unaudited |
| DevWallet | unknown | linea | n/a | [`0xa1cd659cd2add076a0d5b7409f28295e4e5d4ccd`](./contracts/linea-59144/0xa1cd659cd2add076a0d5b7409f28295e4e5d4ccd/) | ⚠️ Unaudited |
| FNFTHandlerMigrator | unknown | ethereum | n/a | [`0x03e1b06a239c210821b4f927c630c876739dd6ad`](./contracts/ethereum-1/0x03e1b06a239c210821b4f927c630c876739dd6ad/) | ⚠️ Unaudited |
| LoveLock | unknown | ethereum | n/a | [`0x780ce455bc835127182809bc8ff36fffe55bc4b8`](./contracts/ethereum-1/0x780ce455bc835127182809bc8ff36fffe55bc4b8/) | ⚠️ Unaudited |
| OutputReceiverProxy | unknown | linea | n/a | [`0x64fbd9d9674090c5d9333171a0da5d437c7def4e`](./contracts/linea-59144/0x64fbd9d9674090c5d9333171a0da5d437c7def4e/) | ⚠️ Unaudited |
| PriceProvider | unknown | linea | n/a | [`0x8df7c553cde03d1b50066774a2d352c3bd647ea5`](./contracts/linea-59144/0x8df7c553cde03d1b50066774a2d352c3bd647ea5/) | ⚠️ Unaudited |
| Resonate | unknown | linea | n/a | [`0x18eb4532266be3a28adccfd0bbfffe88bb5bc1df`](./contracts/linea-59144/0x18eb4532266be3a28adccfd0bbfffe88bb5bc1df/) | ⚠️ Unaudited |
| ResonateHelper | unknown | linea | n/a | [`0xb5660e1425aa5e3a191207507c70c69825ceb1e0`](./contracts/linea-59144/0xb5660e1425aa5e3a191207507c70c69825ceb1e0/) | ⚠️ Unaudited |
| RevestA1 | unknown | avalanche | n/a | [`0x010385229378d7556998553971b9d04ce1aea0ef`](./contracts/avalanche-43114/0x010385229378d7556998553971b9d04ce1aea0ef/) | ⚠️ Unaudited |
| RevestA3 | unknown | ethereum | n/a | [`0x36c2732f1b2ed69cf17133ab01f2876b614a2f27`](./contracts/ethereum-1/0x36c2732f1b2ed69cf17133ab01f2876b614a2f27/) | ⚠️ Unaudited |
| RevestA3_1 | unknown | ethereum | n/a | [`0x209f3f7750d4cc52776e3e243717b3a8ade413eb`](./contracts/ethereum-1/0x209f3f7750d4cc52776e3e243717b3a8ade413eb/) | ⚠️ Unaudited |
| RevestA3_2 | unknown | ethereum | n/a | [`0x56584b080cbfada50112271b0486a61444ae6fe2`](./contracts/ethereum-1/0x56584b080cbfada50112271b0486a61444ae6fe2/) | ⚠️ Unaudited |
| RevestA3_3 | unknown | ethereum | n/a | [`0x412c1197e1d7f1c0fdf22998737d3e329ef42f1b`](./contracts/ethereum-1/0x412c1197e1d7f1c0fdf22998737d3e329ef42f1b/) | ⚠️ Unaudited |
| RevestA4 | unknown | polygon | n/a | [`0x1dff6655cf45f099e5df6402252240728f010583`](./contracts/polygon-137/0x1dff6655cf45f099e5df6402252240728f010583/) | ⚠️ Unaudited |
| RevestVeFXS | unknown | fraxtal | n/a | [`0x5cb95122ef920ffa5c6ed7fc6149170aed7a7305`](./contracts/fraxtal-252/0x5cb95122ef920ffa5c6ed7fc6149170aed7a7305/) | ⚠️ Unaudited |
| RewardsHandlerSimplified | unknown | linea | n/a | [`0x4f87356f848b929a7671db26b58446c72500cc5a`](./contracts/linea-59144/0x4f87356f848b929a7671db26b58446c72500cc5a/) | ⚠️ Unaudited |
| SandwichBotProxy | unknown | linea | n/a | [`0x8fd6f51bf0c29533abcc55f8848cd3920c245a5f`](./contracts/linea-59144/0x8fd6f51bf0c29533abcc55f8848cd3920c245a5f/) | ⚠️ Unaudited |
| SmartWalletWhitelistV2 | unknown | linea | n/a | [`0x175e8283d79b3f1dd56ed58d339d9fd0cf870bf7`](./contracts/linea-59144/0x175e8283d79b3f1dd56ed58d339d9fd0cf870bf7/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x86169239aeeedefb9a571c952b809f2681c0e209`](./contracts/ethereum-1/0x86169239aeeedefb9a571c952b809f2681c0e209/) | ⚠️ Unaudited |
| SupplyLock | unknown | ethereum | n/a | [`0x1b8a0bf64bc0290c8ba2570bade02201a099530c`](./contracts/ethereum-1/0x1b8a0bf64bc0290c8ba2570bade02201a099530c/) | ⚠️ Unaudited |
| TimelockController | unknown | optimism | n/a | [`0x7c62c9d55b22700e1e7f8ca0e8815dadcb8a9d49`](./contracts/optimism-10/0x7c62c9d55b22700e1e7f8ca0e8815dadcb8a9d49/) | ⚠️ Unaudited |
| TokenVaultMigrator | unknown | ethereum | n/a | [`0x99df06747694a21b74e072d0cb31ab35c586d5d4`](./contracts/ethereum-1/0x99df06747694a21b74e072d0cb31ab35c586d5d4/) | ⚠️ Unaudited |
| TokenVaultV2 | unknown | arbitrum | n/a | [`0x209f3f7750d4cc52776e3e243717b3a8ade413eb`](./contracts/arbitrum-42161/0x209f3f7750d4cc52776e3e243717b3a8ade413eb/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x6490828bd87be38279a36f029f3b9af8b4e14b49`](./contracts/ethereum-1/0x6490828bd87be38279a36f029f3b9af8b4e14b49/) | ⚠️ Unaudited |
| UniswapV3CronjeSon | unknown | ethereum | n/a | [`0xc03bb46b3bfd42e6a2bf20ad6fa660e4bd3736f8`](./contracts/ethereum-1/0xc03bb46b3bfd42e6a2bf20ad6fa660e4bd3736f8/) | ⚠️ Unaudited |

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
| [sourcehat.com/audits/Revest](https://sourcehat.com/audits/Revest) | SourceHat | Audit | 2021-09 | stale | Direct | contract_name | 11 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x507a84d5124a946e1e7954723dd62223232ac08c`](./contracts/linea-59144/0x507a84d5124a946e1e7954723dd62223232ac08c/) | AddressLockProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1a0eeaa7bf60e01646eff96bfcaada850ed250ae`](./contracts/linea-59144/0x1a0eeaa7bf60e01646eff96bfcaada850ed250ae/) | AddressRegistryController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07317ed9204c9e76df03f106ceffd5b021c5f6a5`](./contracts/ethereum-1/0x07317ed9204c9e76df03f106ceffd5b021c5f6a5/) | AdminTimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x068c1893ad9f16086a1ee5177b9a3dd86310524b`](./contracts/avalanche-43114/0x068c1893ad9f16086a1ee5177b9a3dd86310524b/) | BinaryComboLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50edb49b5104b8fbab7f680f9696e769d2c94911`](./contracts/ethereum-1/0x50edb49b5104b8fbab7f680f9696e769d2c94911/) | CashFlowManagement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xa1cd659cd2add076a0d5b7409f28295e4e5d4ccd`](./contracts/linea-59144/0xa1cd659cd2add076a0d5b7409f28295e4e5d4ccd/) | DevWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03e1b06a239c210821b4f927c630c876739dd6ad`](./contracts/ethereum-1/0x03e1b06a239c210821b4f927c630c876739dd6ad/) | FNFTHandlerMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x780ce455bc835127182809bc8ff36fffe55bc4b8`](./contracts/ethereum-1/0x780ce455bc835127182809bc8ff36fffe55bc4b8/) | LoveLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x64fbd9d9674090c5d9333171a0da5d437c7def4e`](./contracts/linea-59144/0x64fbd9d9674090c5d9333171a0da5d437c7def4e/) | OutputReceiverProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x8df7c553cde03d1b50066774a2d352c3bd647ea5`](./contracts/linea-59144/0x8df7c553cde03d1b50066774a2d352c3bd647ea5/) | PriceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x18eb4532266be3a28adccfd0bbfffe88bb5bc1df`](./contracts/linea-59144/0x18eb4532266be3a28adccfd0bbfffe88bb5bc1df/) | Resonate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xb5660e1425aa5e3a191207507c70c69825ceb1e0`](./contracts/linea-59144/0xb5660e1425aa5e3a191207507c70c69825ceb1e0/) | ResonateHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x010385229378d7556998553971b9d04ce1aea0ef`](./contracts/avalanche-43114/0x010385229378d7556998553971b9d04ce1aea0ef/) | RevestA1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36c2732f1b2ed69cf17133ab01f2876b614a2f27`](./contracts/ethereum-1/0x36c2732f1b2ed69cf17133ab01f2876b614a2f27/) | RevestA3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x209f3f7750d4cc52776e3e243717b3a8ade413eb`](./contracts/ethereum-1/0x209f3f7750d4cc52776e3e243717b3a8ade413eb/) | RevestA3_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56584b080cbfada50112271b0486a61444ae6fe2`](./contracts/ethereum-1/0x56584b080cbfada50112271b0486a61444ae6fe2/) | RevestA3_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x412c1197e1d7f1c0fdf22998737d3e329ef42f1b`](./contracts/ethereum-1/0x412c1197e1d7f1c0fdf22998737d3e329ef42f1b/) | RevestA3_3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1dff6655cf45f099e5df6402252240728f010583`](./contracts/polygon-137/0x1dff6655cf45f099e5df6402252240728f010583/) | RevestA4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x5cb95122ef920ffa5c6ed7fc6149170aed7a7305`](./contracts/fraxtal-252/0x5cb95122ef920ffa5c6ed7fc6149170aed7a7305/) | RevestVeFXS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x4f87356f848b929a7671db26b58446c72500cc5a`](./contracts/linea-59144/0x4f87356f848b929a7671db26b58446c72500cc5a/) | RewardsHandlerSimplified | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x8fd6f51bf0c29533abcc55f8848cd3920c245a5f`](./contracts/linea-59144/0x8fd6f51bf0c29533abcc55f8848cd3920c245a5f/) | SandwichBotProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x175e8283d79b3f1dd56ed58d339d9fd0cf870bf7`](./contracts/linea-59144/0x175e8283d79b3f1dd56ed58d339d9fd0cf870bf7/) | SmartWalletWhitelistV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86169239aeeedefb9a571c952b809f2681c0e209`](./contracts/ethereum-1/0x86169239aeeedefb9a571c952b809f2681c0e209/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b8a0bf64bc0290c8ba2570bade02201a099530c`](./contracts/ethereum-1/0x1b8a0bf64bc0290c8ba2570bade02201a099530c/) | SupplyLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99df06747694a21b74e072d0cb31ab35c586d5d4`](./contracts/ethereum-1/0x99df06747694a21b74e072d0cb31ab35c586d5d4/) | TokenVaultMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x209f3f7750d4cc52776e3e243717b3a8ade413eb`](./contracts/arbitrum-42161/0x209f3f7750d4cc52776e3e243717b3a8ade413eb/) | TokenVaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=11

Fork inheritance lineage and inherited audits are included when available.
