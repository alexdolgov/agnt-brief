# Agentic Audit Brief: x2y2

## Project Overview

- Project: x2y2 (`x2y2`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.363Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 45 unique implementations (45 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 44 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (dsmath, dsauth, dsauthevents). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 45; live-surface contracts included: 45 (45 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/42 (9.5%)
- Deployed-live implementations: 45 of 45 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/45
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 45
- Raw deployments: 45
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 8.9% | n/a |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1155Delegate | unknown | ethereum | n/a | [`0x024ac22acdb367a3ae52a3d94ac6649fdc1f0779`](./contracts/ethereum-1/0x024ac22acdb367a3ae52a3d94ac6649fdc1f0779/) | ✅ Audited |
| ERC721Delegate | unknown | ethereum | n/a | [`0xf849de01b080adc3a814fabe1e2087475cf2e354`](./contracts/ethereum-1/0xf849de01b080adc3a814fabe1e2087475cf2e354/) | ✅ Audited |
| VestingContractWithFeeSharing | unknown | ethereum | n/a | [`0x13c19498de6f026eff6dfc56e56febe73d50c101`](./contracts/ethereum-1/0x13c19498de6f026eff6dfc56e56febe73d50c101/) | ✅ Audited |
| X2Y2_r1 | unknown | ethereum | n/a | [`0x6d7812d41a08bc2a910b562d8b56411964a4ed88`](./contracts/ethereum-1/0x6d7812d41a08bc2a910b562d8b56411964a4ed88/) | ✅ Audited |

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressProvider | unknown | ethereum | n/a | [`0x21a619115f36de1a71b549e9081022fe84136f65`](./contracts/ethereum-1/0x21a619115f36de1a71b549e9081022fe84136f65/) | ⚠️ Unaudited |
| Ayor | unknown | ethereum | n/a | [`0x198e6462d93940c856114c6b475de4c3da51d6da`](./contracts/ethereum-1/0x198e6462d93940c856114c6b475de4c3da51d6da/) | ⚠️ Unaudited |
| AYORStaking | unknown | ethereum | n/a | [`0xa558b62e92c42df15ae161fddcc1d12c3049e5c3`](./contracts/ethereum-1/0xa558b62e92c42df15ae161fddcc1d12c3049e5c3/) | ⚠️ Unaudited |
| DadFab | unknown | ethereum | n/a | [`0x01c1103d765f62a0d909499d7b615c382cdb072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | ⚠️ Unaudited |
| DaiFab | unknown | ethereum | n/a | [`0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| Delegate | unknown | ethereum | n/a | [`0xef887e8b1c06209f59e8ae55d0e625c937344376`](./contracts/ethereum-1/0xef887e8b1c06209f59e8ae55d0e625c937344376/) | ⚠️ Unaudited |
| DSChief | unknown | ethereum | n/a | [`0x8e2a84d6ade1e7fffee039a35ef5f19f13057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | ethereum | n/a | [`0x1e7ca05e174a523709e556080e227f734a8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | [`0x068083069ed92da4c5291dba52d8912abfcc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/) | ⚠️ Unaudited |
| FeeManagement | unknown | ethereum | n/a | [`0xd823c605807cc5e6bd6fc0d7e4eea50d3e2d66cd`](./contracts/ethereum-1/0xd823c605807cc5e6bd6fc0d7e4eea50d3e2d66cd/) | ⚠️ Unaudited |
| FeeSharingSetter | unknown | ethereum | n/a | [`0x1db0cb415ad88abd2e27629da3eee0a4129b29b8`](./contracts/ethereum-1/0x1db0cb415ad88abd2e27629da3eee0a4129b29b8/) | ⚠️ Unaudited |
| FeeSharingSystem | unknown | ethereum | n/a | [`0xc8c3cc5be962b6d281e4a53dbcce1359f76a1b85`](./contracts/ethereum-1/0xc8c3cc5be962b6d281e4a53dbcce1359f76a1b85/) | ⚠️ Unaudited |
| GemFab | unknown | ethereum | n/a | [`0x431e935209d79706b5866eb42137a3491d845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | ⚠️ Unaudited |
| GemPit | unknown | ethereum | n/a | [`0x69076e44a9c70a67d5b79d95795aba299083c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | ⚠️ Unaudited |
| ListingRewardDistributor | unknown | ethereum | n/a | [`0xb1d4337e7bd80f24b45ef807cde333328ec36797`](./contracts/ethereum-1/0xb1d4337e7bd80f24b45ef807cde333328ec36797/) | ⚠️ Unaudited |
| ListingRewardDistributorV2 | unknown | ethereum | n/a | [`0xc4ccddcd0239d8425b54322e8e5f99d19fb7ba43`](./contracts/ethereum-1/0xc4ccddcd0239d8425b54322e8e5f99d19fb7ba43/) | ⚠️ Unaudited |
| ListingRewardDistributorV2Controller | unknown | ethereum | n/a | [`0xfb7602ad16ddd89363b4d796915aebcc92c29159`](./contracts/ethereum-1/0xfb7602ad16ddd89363b4d796915aebcc92c29159/) | ⚠️ Unaudited |
| ListingRewardForwarder | unknown | ethereum | n/a | [`0x6eda6b87df23d69d791adc365d4b17c3a1f16833`](./contracts/ethereum-1/0x6eda6b87df23d69d791adc365d4b17c3a1f16833/) | ⚠️ Unaudited |
| MomFab | unknown | ethereum | n/a | [`0x141a206ece672e3198086c5d21f7858ad03669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | ⚠️ Unaudited |
| OwnedRegistrant | unknown | ethereum | n/a | [`0xf73130664f9b0e69b64bda61486ca14c6561c935`](./contracts/ethereum-1/0xf73130664f9b0e69b64bda61486ca14c6561c935/) | ⚠️ Unaudited |
| Presale | unknown | ethereum | n/a | [`0xc2f44bc508b6b50047a2f3afb1984ed105070be1`](./contracts/ethereum-1/0xc2f44bc508b6b50047a2f3afb1984ed105070be1/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xf7735e2c7120c420ff3b619c66b763d2287165cb`](./contracts/ethereum-1/0xf7735e2c7120c420ff3b619c66b763d2287165cb/) | ⚠️ Unaudited |
| RewardController | unknown | ethereum | n/a | [`0x6b34a06b6baa92eeb377532dd0f434e45d808df9`](./contracts/ethereum-1/0x6b34a06b6baa92eeb377532dd0f434e45d808df9/) | ⚠️ Unaudited |
| RewardDistributorV3 | unknown | ethereum | n/a | [`0x897249fef87fa6d1e7fedcb960c2a01ec99ecc6c`](./contracts/ethereum-1/0x897249fef87fa6d1e7fedcb960c2a01ec99ecc6c/) | ⚠️ Unaudited |
| ServiceFee | unknown | ethereum | n/a | [`0xb858e4a6f81173892ad263584aa5b78f2407ee72`](./contracts/ethereum-1/0xb858e4a6f81173892ad263584aa5b78f2407ee72/) | ⚠️ Unaudited |
| SigningUtils | unknown | ethereum | n/a | [`0x6a7acf3feb58fcf15f74b73391c78a879f7c9e35`](./contracts/ethereum-1/0x6a7acf3feb58fcf15f74b73391c78a879f7c9e35/) | ⚠️ Unaudited |
| TapFab | unknown | ethereum | n/a | [`0x521c420c2a2b461034becbb41d4888b68951f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x3c113749bac6ffccc7a36b63d6c64ce645d50d6d`](./contracts/ethereum-1/0x3c113749bac6ffccc7a36b63d6c64ce645d50d6d/) | ⚠️ Unaudited |
| TokenDistributor | unknown | ethereum | n/a | [`0xb329e39ebefd16f40d38f07643652ce17ca5bac1`](./contracts/ethereum-1/0xb329e39ebefd16f40d38f07643652ce17ca5bac1/) | ⚠️ Unaudited |
| TokenSplitter | unknown | ethereum | n/a | [`0xe7643ff46c6f88ed812b3e7198c2fa2522d630cc`](./contracts/ethereum-1/0xe7643ff46c6f88ed812b3e7198c2fa2522d630cc/) | ⚠️ Unaudited |
| TopFab | unknown | ethereum | n/a | [`0x0eda20f7499aae7bdadc4e52fd72e49663733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | ⚠️ Unaudited |
| TubFab | unknown | ethereum | n/a | [`0xb3b67099121e1fbde6276b2802048d1a7dd1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | ⚠️ Unaudited |
| VoxFab | unknown | ethereum | n/a | [`0x414b1da0bb6e948dc0559d14ebde9fa9572499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | ⚠️ Unaudited |
| WETH | unknown | ethereum | n/a | [`0x353f8931ce1c52f643121be129985aab09c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | ⚠️ Unaudited |
| WETH9 | unknown | ethereum | n/a | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| X2Y2Drop | unknown | ethereum | n/a | [`0xe6949137b24ad50cce2cf6b124b3b874449a41fa`](./contracts/ethereum-1/0xe6949137b24ad50cce2cf6b124b3b874449a41fa/) | ⚠️ Unaudited |
| X2Y2Integrated | unknown | ethereum | n/a | [`0x687252e1c921cc3c6f7a38283d52b5bd5b32f077`](./contracts/ethereum-1/0x687252e1c921cc3c6f7a38283d52b5bd5b32f077/) | ⚠️ Unaudited |
| X2Y2Token | unknown | ethereum | n/a | [`0x1e4ede388cbc9f4b5c79681b7f94d36a11abebc9`](./contracts/ethereum-1/0x1e4ede388cbc9f4b5c79681b7f94d36a11abebc9/) | ⚠️ Unaudited |
| XY3 | unknown | ethereum | n/a | [`0xc28f7ee92cd6619e8eec6a70923079fbafb86196`](./contracts/ethereum-1/0xc28f7ee92cd6619e8eec6a70923079fbafb86196/) | ⚠️ Unaudited |
| Xy3Nft | unknown | ethereum | n/a | [`0x0e258c84df0f8728ae4a6426ea5fd163eb6b9d1b`](./contracts/ethereum-1/0x0e258c84df0f8728ae4a6426ea5fd163eb6b9d1b/) | ⚠️ Unaudited |
| Xy3V1Exchange | unknown | ethereum | n/a | [`0x83e1c2b35262f1ba55afba61bc7b8682aab2848f`](./contracts/ethereum-1/0x83e1c2b35262f1ba55afba61bc7b8682aab2848f/) | ⚠️ Unaudited |

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
| [x2y2.readme.io/reference/contracts_audit](https://x2y2.readme.io/reference/contracts_audit) | unknown | Audit | n/a | unknown | Direct | contract_name | 4 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x21a619115f36de1a71b549e9081022fe84136f65`](./contracts/ethereum-1/0x21a619115f36de1a71b549e9081022fe84136f65/) | AddressProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x198e6462d93940c856114c6b475de4c3da51d6da`](./contracts/ethereum-1/0x198e6462d93940c856114c6b475de4c3da51d6da/) | Ayor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa558b62e92c42df15ae161fddcc1d12c3049e5c3`](./contracts/ethereum-1/0xa558b62e92c42df15ae161fddcc1d12c3049e5c3/) | AYORStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01c1103d765f62a0d909499d7b615c382cdb072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | DadFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | DaiFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef887e8b1c06209f59e8ae55d0e625c937344376`](./contracts/ethereum-1/0xef887e8b1c06209f59e8ae55d0e625c937344376/) | Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e2a84d6ade1e7fffee039a35ef5f19f13057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | DSChief | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e7ca05e174a523709e556080e227f734a8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | DSChiefFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd823c605807cc5e6bd6fc0d7e4eea50d3e2d66cd`](./contracts/ethereum-1/0xd823c605807cc5e6bd6fc0d7e4eea50d3e2d66cd/) | FeeManagement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1db0cb415ad88abd2e27629da3eee0a4129b29b8`](./contracts/ethereum-1/0x1db0cb415ad88abd2e27629da3eee0a4129b29b8/) | FeeSharingSetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8c3cc5be962b6d281e4a53dbcce1359f76a1b85`](./contracts/ethereum-1/0xc8c3cc5be962b6d281e4a53dbcce1359f76a1b85/) | FeeSharingSystem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x431e935209d79706b5866eb42137a3491d845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | GemFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69076e44a9c70a67d5b79d95795aba299083c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | GemPit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1d4337e7bd80f24b45ef807cde333328ec36797`](./contracts/ethereum-1/0xb1d4337e7bd80f24b45ef807cde333328ec36797/) | ListingRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4ccddcd0239d8425b54322e8e5f99d19fb7ba43`](./contracts/ethereum-1/0xc4ccddcd0239d8425b54322e8e5f99d19fb7ba43/) | ListingRewardDistributorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb7602ad16ddd89363b4d796915aebcc92c29159`](./contracts/ethereum-1/0xfb7602ad16ddd89363b4d796915aebcc92c29159/) | ListingRewardDistributorV2Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6eda6b87df23d69d791adc365d4b17c3a1f16833`](./contracts/ethereum-1/0x6eda6b87df23d69d791adc365d4b17c3a1f16833/) | ListingRewardForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141a206ece672e3198086c5d21f7858ad03669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | MomFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf73130664f9b0e69b64bda61486ca14c6561c935`](./contracts/ethereum-1/0xf73130664f9b0e69b64bda61486ca14c6561c935/) | OwnedRegistrant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2f44bc508b6b50047a2f3afb1984ed105070be1`](./contracts/ethereum-1/0xc2f44bc508b6b50047a2f3afb1984ed105070be1/) | Presale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b34a06b6baa92eeb377532dd0f434e45d808df9`](./contracts/ethereum-1/0x6b34a06b6baa92eeb377532dd0f434e45d808df9/) | RewardController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x897249fef87fa6d1e7fedcb960c2a01ec99ecc6c`](./contracts/ethereum-1/0x897249fef87fa6d1e7fedcb960c2a01ec99ecc6c/) | RewardDistributorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb858e4a6f81173892ad263584aa5b78f2407ee72`](./contracts/ethereum-1/0xb858e4a6f81173892ad263584aa5b78f2407ee72/) | ServiceFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a7acf3feb58fcf15f74b73391c78a879f7c9e35`](./contracts/ethereum-1/0x6a7acf3feb58fcf15f74b73391c78a879f7c9e35/) | SigningUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x521c420c2a2b461034becbb41d4888b68951f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | TapFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb329e39ebefd16f40d38f07643652ce17ca5bac1`](./contracts/ethereum-1/0xb329e39ebefd16f40d38f07643652ce17ca5bac1/) | TokenDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7643ff46c6f88ed812b3e7198c2fa2522d630cc`](./contracts/ethereum-1/0xe7643ff46c6f88ed812b3e7198c2fa2522d630cc/) | TokenSplitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eda20f7499aae7bdadc4e52fd72e49663733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | TopFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3b67099121e1fbde6276b2802048d1a7dd1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | TubFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x414b1da0bb6e948dc0559d14ebde9fa9572499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | VoxFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x353f8931ce1c52f643121be129985aab09c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | WETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6949137b24ad50cce2cf6b124b3b874449a41fa`](./contracts/ethereum-1/0xe6949137b24ad50cce2cf6b124b3b874449a41fa/) | X2Y2Drop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x687252e1c921cc3c6f7a38283d52b5bd5b32f077`](./contracts/ethereum-1/0x687252e1c921cc3c6f7a38283d52b5bd5b32f077/) | X2Y2Integrated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e4ede388cbc9f4b5c79681b7f94d36a11abebc9`](./contracts/ethereum-1/0x1e4ede388cbc9f4b5c79681b7f94d36a11abebc9/) | X2Y2Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc28f7ee92cd6619e8eec6a70923079fbafb86196`](./contracts/ethereum-1/0xc28f7ee92cd6619e8eec6a70923079fbafb86196/) | XY3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e258c84df0f8728ae4a6426ea5fd163eb6b9d1b`](./contracts/ethereum-1/0x0e258c84df0f8728ae4a6426ea5fd163eb6b9d1b/) | Xy3Nft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83e1c2b35262f1ba55afba61bc7b8682aab2848f`](./contracts/ethereum-1/0x83e1c2b35262f1ba55afba61bc7b8682aab2848f/) | Xy3V1Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
