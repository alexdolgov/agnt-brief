# Agentic Audit Brief: sandclock

## Project Overview

- Project: sandclock (`sandclock`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:53.908Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 27 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 6 common project-authored base contract(s) (basev2vault, sc4626, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 27 (27 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/27 (0.0%)
- Deployed-live implementations: 27 of 27 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActivePool | unknown | ethereum | n/a | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ⚠️ Unaudited |
| BorrowerOperations | unknown | ethereum | n/a | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | ⚠️ Unaudited |
| CollSurplusPool | unknown | ethereum | n/a | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | ⚠️ Unaudited |
| CommunityIssuance | unknown | ethereum | n/a | [`0xd8c9d9...08d816`](./contracts/ethereum-1/0xd8c9d9071123a059c6e0a945cf0e0c82b508d816/) | ⚠️ Unaudited |
| DefaultPool | unknown | ethereum | n/a | [`0x896a3f...0d741c`](./contracts/ethereum-1/0x896a3f03176f05cfbb4f006bfcd8723f2b0d741c/) | ⚠️ Unaudited |
| GasPool | unknown | ethereum | n/a | [`0x9555b0...49a8d9`](./contracts/ethereum-1/0x9555b042f969e561855e5f28cb1230819149a8d9/) | ⚠️ Unaudited |
| HintHelpers | unknown | ethereum | n/a | [`0xe84251...f997c0`](./contracts/ethereum-1/0xe84251b93d9524e0d2e621ba7dc7cb3579f997c0/) | ⚠️ Unaudited |
| LockupContractFactory | unknown | ethereum | n/a | [`0x2ebef2...edcd4b`](./contracts/ethereum-1/0x2ebef24da09489218ba2becb01867f6daaedcd4b/) | ⚠️ Unaudited |
| LQTYStaking | unknown | ethereum | n/a | [`0x4f9fbb...fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | ⚠️ Unaudited |
| LQTYToken | unknown | ethereum | n/a | [`0x6dea81...88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | ⚠️ Unaudited |
| LUSDToken | unknown | ethereum | n/a | [`0x5f9880...568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | ⚠️ Unaudited |
| MultiTroveGetter | unknown | ethereum | n/a | [`0xfc92d0...49922b`](./contracts/ethereum-1/0xfc92d0e9fa35df17e3a6d9f40716ca2ce749922b/) | ⚠️ Unaudited |
| PriceFeed | unknown | ethereum | n/a | [`0x4c517d...2201de`](./contracts/ethereum-1/0x4c517d4e2c851ca76d7ec94b805269df0f2201de/) | ⚠️ Unaudited |
| QuartzToken | unknown | ethereum | n/a | [`0xba8a62...2225ef`](./contracts/ethereum-1/0xba8a621b4a54e61c442f5ec623687e2a942225ef/) | ⚠️ Unaudited |
| RewardTracker | unknown | ethereum | n/a | [`0x0a36f9...4a55d8`](./contracts/ethereum-1/0x0a36f9565c6fb862509ad8d148941968344a55d8/) | ⚠️ Unaudited |
| scLiquity | unknown | ethereum | n/a | [`0xdb369e...146a11`](./contracts/ethereum-1/0xdb369eeb33fcfdcd1557e354ddee7d6cf3146a11/) | ⚠️ Unaudited |
| scUSDC | unknown | ethereum | n/a | [`0x1038ff...d15cab`](./contracts/ethereum-1/0x1038ff057b7092f17807358c6f68b42661d15cab/) | ⚠️ Unaudited |
| scUSDCv2 | unknown | ethereum | n/a | [`0x096697...4665e5`](./contracts/ethereum-1/0x096697720056886b905d0deb0f06affb8e4665e5/) | ⚠️ Unaudited |
| scWETH | unknown | ethereum | n/a | [`0x1fc623...9c5e9d`](./contracts/ethereum-1/0x1fc623b96c8024067142ec9c15d669e5c99c5e9d/) | ⚠️ Unaudited |
| scWETHv2 | unknown | ethereum | n/a | [`0x4c406c...4a1333`](./contracts/ethereum-1/0x4c406c068106375724275cbff028770c544a1333/) | ⚠️ Unaudited |
| SortedTroves | unknown | ethereum | n/a | [`0x8fdd3f...a741a6`](./contracts/ethereum-1/0x8fdd3fbfeb32b28fb73555518f8b361bcea741a6/) | ⚠️ Unaudited |
| StabilityPool | unknown | ethereum | n/a | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | ⚠️ Unaudited |
| TellorCaller | unknown | ethereum | n/a | [`0xad4305...641112`](./contracts/ethereum-1/0xad430500ecda11e38c9bcb08a702274b94641112/) | ⚠️ Unaudited |
| TroveManager | unknown | ethereum | n/a | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | ⚠️ Unaudited |
| Unipool | unknown | ethereum | n/a | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0x00c567...1cecf1`](./contracts/ethereum-1/0x00c567d2b1e23782d388c8f58e64937ca11cecf1/) | ⚠️ Unaudited |
| VestedRewards | unknown | ethereum | n/a | [`0x5dd890...b182b3`](./contracts/ethereum-1/0x5dd8905aec612529361a35372efd5b127bb182b3/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ActivePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | BorrowerOperations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | CollSurplusPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8c9d9...08d816`](./contracts/ethereum-1/0xd8c9d9071123a059c6e0a945cf0e0c82b508d816/) | CommunityIssuance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x896a3f...0d741c`](./contracts/ethereum-1/0x896a3f03176f05cfbb4f006bfcd8723f2b0d741c/) | DefaultPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9555b0...49a8d9`](./contracts/ethereum-1/0x9555b042f969e561855e5f28cb1230819149a8d9/) | GasPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe84251...f997c0`](./contracts/ethereum-1/0xe84251b93d9524e0d2e621ba7dc7cb3579f997c0/) | HintHelpers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ebef2...edcd4b`](./contracts/ethereum-1/0x2ebef24da09489218ba2becb01867f6daaedcd4b/) | LockupContractFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f9fbb...fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | LQTYStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dea81...88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | LQTYToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f9880...568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | LUSDToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc92d0...49922b`](./contracts/ethereum-1/0xfc92d0e9fa35df17e3a6d9f40716ca2ce749922b/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c517d...2201de`](./contracts/ethereum-1/0x4c517d4e2c851ca76d7ec94b805269df0f2201de/) | PriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba8a62...2225ef`](./contracts/ethereum-1/0xba8a621b4a54e61c442f5ec623687e2a942225ef/) | QuartzToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a36f9...4a55d8`](./contracts/ethereum-1/0x0a36f9565c6fb862509ad8d148941968344a55d8/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb369e...146a11`](./contracts/ethereum-1/0xdb369eeb33fcfdcd1557e354ddee7d6cf3146a11/) | scLiquity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1038ff...d15cab`](./contracts/ethereum-1/0x1038ff057b7092f17807358c6f68b42661d15cab/) | scUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x096697...4665e5`](./contracts/ethereum-1/0x096697720056886b905d0deb0f06affb8e4665e5/) | scUSDCv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fc623...9c5e9d`](./contracts/ethereum-1/0x1fc623b96c8024067142ec9c15d669e5c99c5e9d/) | scWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c406c...4a1333`](./contracts/ethereum-1/0x4c406c068106375724275cbff028770c544a1333/) | scWETHv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fdd3f...a741a6`](./contracts/ethereum-1/0x8fdd3fbfeb32b28fb73555518f8b361bcea741a6/) | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | StabilityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad4305...641112`](./contracts/ethereum-1/0xad430500ecda11e38c9bcb08a702274b94641112/) | TellorCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | TroveManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | Unipool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00c567...1cecf1`](./contracts/ethereum-1/0x00c567d2b1e23782d388c8f58e64937ca11cecf1/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dd890...b182b3`](./contracts/ethereum-1/0x5dd8905aec612529361a35372efd5b127bb182b3/) | VestedRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
