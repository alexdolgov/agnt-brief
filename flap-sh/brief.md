# Agentic Audit Brief: Flap sh

## Project Overview

- Project: Flap sh (`flap-sh`)
- Website: [https://flap.sh/board](https://flap.sh/board)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.354Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: bsc, ethereum
- Contract surface: 47 unique implementations (47 raw deployments)
- DeFi Llama TVL: $739,083.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 47 project-authored contract(s) across 2 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 2 functional families. Its contracts share 14 common project-authored base contract(s) (contextupgradeable, accesscontrolupgradeable, erc165upgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 47; live-surface contracts included: 47 (47 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/44 (18.2%)
- Deployed-live implementations: 47 of 47 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/47
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 47
- Raw deployments: 47
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockSec | Tier 2 | 8 | 17.0% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dividend | unknown | bsc | n/a | [`0x0bfa35e8e5a467c002fd5f0f692b362f4fdfb56a`](./contracts/bsc-56/0x0bfa35e8e5a467c002fd5f0f692b362f4fdfb56a/) | ✅ Audited |
| FlapTaxToken | unknown | bsc | n/a | [`0x05823d3a5c7db95d41074f491be6c8b9b6346452`](./contracts/bsc-56/0x05823d3a5c7db95d41074f491be6c8b9b6346452/) | ✅ Audited |
| FlapTaxTokenV2 | unknown | bsc | n/a | [`0x9a18f9ce8df2848e9208d5acc2bd1a9fbc053904`](./contracts/bsc-56/0x9a18f9ce8df2848e9208d5acc2bd1a9fbc053904/) | ✅ Audited |
| MultiDexRouter | unknown | bsc | n/a | [`0x7a858eb8b7320c7f3c60152cebf9072408c5675f`](./contracts/bsc-56/0x7a858eb8b7320c7f3c60152cebf9072408c5675f/) | ✅ Audited |
| Portal | unknown | bsc | n/a | [`0x07a4c2236a03ec941267d2bff6fc6d49255dd2a7`](./contracts/bsc-56/0x07a4c2236a03ec941267d2bff6fc6d49255dd2a7/) | ✅ Audited |
| SaleForge | unknown | bsc | n/a | [`0x28f4c5e13f26d82b297cfb22c24bdd87ea9091ec`](./contracts/bsc-56/0x28f4c5e13f26d82b297cfb22c24bdd87ea9091ec/) | ✅ Audited |
| TaxProcessor | unknown | bsc | n/a | [`0x16ce34152563fc4d19ebf5d150ef57785213d145`](./contracts/bsc-56/0x16ce34152563fc4d19ebf5d150ef57785213d145/) | ✅ Audited |
| TaxTokenHelper | unknown | bsc | n/a | [`0x039daa6791d2d5c05a1e58ebc546ea9af554a5ef`](./contracts/bsc-56/0x039daa6791d2d5c05a1e58ebc546ea9af554a5ef/) | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Burner | unknown | bsc | n/a | [`0xc6ef24b94d86e1e082150591b743f851dc40871d`](./contracts/bsc-56/0xc6ef24b94d86e1e082150591b743f851dc40871d/) | ⚠️ Unaudited |
| ConstantProductCurve | unknown | bsc | n/a | [`0x2a770e952bb2700393238199b5889013693a8271`](./contracts/bsc-56/0x2a770e952bb2700393238199b5889013693a8271/) | ⚠️ Unaudited |
| FlapAIProvider | unknown | bsc | n/a | [`0x0ba6c4e3061f373f5c80185a49347c7febf8c057`](./contracts/bsc-56/0x0ba6c4e3061f373f5c80185a49347c7febf8c057/) | ⚠️ Unaudited |
| FlapGuardian | unknown | bsc | n/a | [`0x2c146f058a6fe9305276c74964f2197bd5db7136`](./contracts/bsc-56/0x2c146f058a6fe9305276c74964f2197bd5db7136/) | ⚠️ Unaudited |
| FlapOracle | unknown | bsc | n/a | [`0x280e5eadaa630f2d2d21097158be734fde1603f5`](./contracts/bsc-56/0x280e5eadaa630f2d2d21097158be734fde1603f5/) | ⚠️ Unaudited |
| FlapShuttle | unknown | bsc | n/a | [`0x1f0825b4990125b267a16a8e98b27e70aeb78f12`](./contracts/bsc-56/0x1f0825b4990125b267a16a8e98b27e70aeb78f12/) | ⚠️ Unaudited |
| FlapTaxTokenV3 | unknown | bsc | n/a | [`0x024f18294970b5c76c0691b87f138a0317156422`](./contracts/bsc-56/0x024f18294970b5c76c0691b87f138a0317156422/) | ⚠️ Unaudited |
| FlapTriggerService | unknown | bsc | n/a | [`0x78e6c122c6e7cf33ce2ca800ec3853cf2bc0a2d1`](./contracts/bsc-56/0x78e6c122c6e7cf33ce2ca800ec3853cf2bc0a2d1/) | ⚠️ Unaudited |
| FlapXVault | unknown | bsc | n/a | [`0xd9d95fdbddb24f7363ba64cc65971039522ab5eb`](./contracts/bsc-56/0xd9d95fdbddb24f7363ba64cc65971039522ab5eb/) | ⚠️ Unaudited |
| FlapXVaultFactory | unknown | bsc | n/a | [`0x025549f52b03cf36f9e1a337c02d3aa7af66ab32`](./contracts/bsc-56/0x025549f52b03cf36f9e1a337c02d3aa7af66ab32/) | ⚠️ Unaudited |
| PortalGame | unknown | bsc | n/a | [`0x0872519cdf60439a318b340f314f702a0b12fd4a`](./contracts/bsc-56/0x0872519cdf60439a318b340f314f702a0b12fd4a/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x60fc96b3b78004e82011a475d490f36e06acf82c`](./contracts/bsc-56/0x60fc96b3b78004e82011a475d490f36e06acf82c/) | ⚠️ Unaudited |
| RewardDistributor | unknown | bsc | n/a | [`0x59763d1ba356d0e2d05f6865bb541e0bfe954226`](./contracts/bsc-56/0x59763d1ba356d0e2d05f6865bb541e0bfe954226/) | ⚠️ Unaudited |
| SaleProxy | unknown | bsc | n/a | [`0x4a1a9c47f6695e3d7465033a11ca6f29aeaff8bf`](./contracts/bsc-56/0x4a1a9c47f6695e3d7465033a11ca6f29aeaff8bf/) | ⚠️ Unaudited |
| SimpleAIConsumer | unknown | bsc | n/a | [`0x7df9c89b6fb1cc8f1c2d1e142346a14001cc5987`](./contracts/bsc-56/0x7df9c89b6fb1cc8f1c2d1e142346a14001cc5987/) | ⚠️ Unaudited |
| SnowBall | unknown | bsc | n/a | [`0x2195543e9fcda86dc0a3196ea889f6cdaaf9ad62`](./contracts/bsc-56/0x2195543e9fcda86dc0a3196ea889f6cdaaf9ad62/) | ⚠️ Unaudited |
| SnowBallAdapter | unknown | bsc | n/a | [`0x0c0eb21368e516a42bfeeeeebb0fe0689a7cb2d3`](./contracts/bsc-56/0x0c0eb21368e516a42bfeeeeebb0fe0689a7cb2d3/) | ⚠️ Unaudited |
| SnowBallCommissionTracker | unknown | bsc | n/a | [`0x45ad90e2c8d58db0ee2d933e6920a4859eb1a077`](./contracts/bsc-56/0x45ad90e2c8d58db0ee2d933e6920a4859eb1a077/) | ⚠️ Unaudited |
| SnowBallFactory | unknown | bsc | n/a | [`0x036beaa74113b7a03bf9fe09812fb7c9de9198b4`](./contracts/bsc-56/0x036beaa74113b7a03bf9fe09812fb7c9de9198b4/) | ⚠️ Unaudited |
| SnowBallHelper | unknown | bsc | n/a | [`0x726fa88b0949a9122f75cd284300d8276dea363f`](./contracts/bsc-56/0x726fa88b0949a9122f75cd284300d8276dea363f/) | ⚠️ Unaudited |
| SnowBallVault | unknown | bsc | n/a | [`0x580532e2df90f3f9e95c3c3a71fd7937610a2d69`](./contracts/bsc-56/0x580532e2df90f3f9e95c3c3a71fd7937610a2d69/) | ⚠️ Unaudited |
| SplitVault | unknown | bsc | n/a | [`0xd6a92acc0a5fd685c1cb3a464d44410dc90c5d25`](./contracts/bsc-56/0xd6a92acc0a5fd685c1cb3a464d44410dc90c5d25/) | ⚠️ Unaudited |
| TaxDistributionHelper | unknown | bsc | n/a | [`0x56333af228c6fc1283c3a93ec1facd661a49b4ae`](./contracts/bsc-56/0x56333af228c6fc1283c3a93ec1facd661a49b4ae/) | ⚠️ Unaudited |
| TaxHelper | unknown | bsc | n/a | [`0x4d0249e3d54a351be1f82b400c98d1455a15f93d`](./contracts/bsc-56/0x4d0249e3d54a351be1f82b400c98d1455a15f93d/) | ⚠️ Unaudited |
| TaxProcessorUniV2 | unknown | bsc | n/a | [`0x0b426ba0783c65fb59c00c0db7c1e40a141338d2`](./contracts/bsc-56/0x0b426ba0783c65fb59c00c0db7c1e40a141338d2/) | ⚠️ Unaudited |
| TaxProcessorUniV4 | unknown | bsc | n/a | [`0x143741e50c729fe8953e7b7b85a97ae05abeb806`](./contracts/bsc-56/0x143741e50c729fe8953e7b7b85a97ae05abeb806/) | ⚠️ Unaudited |
| TaxSplitter | unknown | bsc | n/a | [`0x988eb559dfbde2cc25e7c33c56153ac13a036f24`](./contracts/bsc-56/0x988eb559dfbde2cc25e7c33c56153ac13a036f24/) | ⚠️ Unaudited |
| TaxSplitterHelper | unknown | bsc | n/a | [`0x3044435addeff858e7e760474e30ac982c6fb9ca`](./contracts/bsc-56/0x3044435addeff858e7e760474e30ac982c6fb9ca/) | ⚠️ Unaudited |
| TaxTokenBeneficiaryChecker | unknown | bsc | n/a | [`0xbad031645bf161c165a92ae335a94734f2e60a29`](./contracts/bsc-56/0xbad031645bf161c165a92ae335a94734f2e60a29/) | ⚠️ Unaudited |
| Token | unknown | bsc | n/a | [`0x524ea1de5929d5d0165e425bfce8d9750d65c6c7`](./contracts/bsc-56/0x524ea1de5929d5d0165e425bfce8d9750d65c6c7/) | ⚠️ Unaudited |
| TokenV2 | unknown | bsc | n/a | [`0x8b4329947e34b6d56d71a3385cac122bade7d78d`](./contracts/bsc-56/0x8b4329947e34b6d56d71a3385cac122bade7d78d/) | ⚠️ Unaudited |
| TokenV2BETATEST | unknown | ethereum | n/a | [`0x225894eadeabbba41ecdfd88a3ef88aa0af31d44`](./contracts/ethereum-1/0x225894eadeabbba41ecdfd88a3ef88aa0af31d44/) | ⚠️ Unaudited |
| TokenV3 | unknown | bsc | n/a | [`0x88881b6f03090462a969ec7f48385744eeb63333`](./contracts/bsc-56/0x88881b6f03090462a969ec7f48385744eeb63333/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x12dc83157bf1cfcb8db5952b3ba5bb56cc38f8c9`](./contracts/bsc-56/0x12dc83157bf1cfcb8db5952b3ba5bb56cc38f8c9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x134c6b9562e226096947e018ddee4804c9146921`](./contracts/bsc-56/0x134c6b9562e226096947e018ddee4804c9146921/) | ⚠️ Unaudited |
| VaultBurner | unknown | bsc | n/a | [`0xa700245ceb465941f36e83a50ae701d612373d04`](./contracts/bsc-56/0xa700245ceb465941f36e83a50ae701d612373d04/) | ⚠️ Unaudited |
| VaultPortal | unknown | bsc | n/a | [`0x02244890dd46af7d66ab5080ff6d1297c288f259`](./contracts/bsc-56/0x02244890dd46af7d66ab5080ff6d1297c288f259/) | ⚠️ Unaudited |
| WorldCupViewer | unknown | bsc | n/a | [`0x2262f6a29d15365f752861068bcbe1977c665bab`](./contracts/bsc-56/0x2262f6a29d15365f752861068bcbe1977c665bab/) | ⚠️ Unaudited |
| WrappedX402 | unknown | bsc | n/a | [`0x5dbb81a88fc6172ea1fb63ded7e00d2c0da5d184`](./contracts/bsc-56/0x5dbb81a88fc6172ea1fb63ded7e00d2c0da5d184/) | ⚠️ Unaudited |

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
| [* The Flap Launchpad Protocol V2, V4 and Flap Tax Token V1 were audited by Certik. Check the audit report on[ Certik Skynet]().](https://skynet.certik.com/projects/flap) | CertiK | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [blocksec_flap_tax_token_v1.0-signed.pdf](https://2671086575-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5KujUBwRoHVjn8OZEgtZ%2Fuploads%2FkhrpkMsQlhcrM9L5QDLS%2Fblocksec_flap_tax_token_v1.0-signed.pdf) | BlockSec | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [blocksec_flap_protocol_v5_v1.0-signed.pdf](https://2671086575-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5KujUBwRoHVjn8OZEgtZ%2Fuploads%2FMLLrgVU4RSejW0xh7jLH%2Fblocksec_flap_protocol_v5_v1.0-signed.pdf) | BlockSec | Audit | 2025-12 | fresh | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xc6ef24b94d86e1e082150591b743f851dc40871d`](./contracts/bsc-56/0xc6ef24b94d86e1e082150591b743f851dc40871d/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a770e952bb2700393238199b5889013693a8271`](./contracts/bsc-56/0x2a770e952bb2700393238199b5889013693a8271/) | ConstantProductCurve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ba6c4e3061f373f5c80185a49347c7febf8c057`](./contracts/bsc-56/0x0ba6c4e3061f373f5c80185a49347c7febf8c057/) | FlapAIProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c146f058a6fe9305276c74964f2197bd5db7136`](./contracts/bsc-56/0x2c146f058a6fe9305276c74964f2197bd5db7136/) | FlapGuardian | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x280e5eadaa630f2d2d21097158be734fde1603f5`](./contracts/bsc-56/0x280e5eadaa630f2d2d21097158be734fde1603f5/) | FlapOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1f0825b4990125b267a16a8e98b27e70aeb78f12`](./contracts/bsc-56/0x1f0825b4990125b267a16a8e98b27e70aeb78f12/) | FlapShuttle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x024f18294970b5c76c0691b87f138a0317156422`](./contracts/bsc-56/0x024f18294970b5c76c0691b87f138a0317156422/) | FlapTaxTokenV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x78e6c122c6e7cf33ce2ca800ec3853cf2bc0a2d1`](./contracts/bsc-56/0x78e6c122c6e7cf33ce2ca800ec3853cf2bc0a2d1/) | FlapTriggerService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd9d95fdbddb24f7363ba64cc65971039522ab5eb`](./contracts/bsc-56/0xd9d95fdbddb24f7363ba64cc65971039522ab5eb/) | FlapXVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x025549f52b03cf36f9e1a337c02d3aa7af66ab32`](./contracts/bsc-56/0x025549f52b03cf36f9e1a337c02d3aa7af66ab32/) | FlapXVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0872519cdf60439a318b340f314f702a0b12fd4a`](./contracts/bsc-56/0x0872519cdf60439a318b340f314f702a0b12fd4a/) | PortalGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x59763d1ba356d0e2d05f6865bb541e0bfe954226`](./contracts/bsc-56/0x59763d1ba356d0e2d05f6865bb541e0bfe954226/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4a1a9c47f6695e3d7465033a11ca6f29aeaff8bf`](./contracts/bsc-56/0x4a1a9c47f6695e3d7465033a11ca6f29aeaff8bf/) | SaleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7df9c89b6fb1cc8f1c2d1e142346a14001cc5987`](./contracts/bsc-56/0x7df9c89b6fb1cc8f1c2d1e142346a14001cc5987/) | SimpleAIConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2195543e9fcda86dc0a3196ea889f6cdaaf9ad62`](./contracts/bsc-56/0x2195543e9fcda86dc0a3196ea889f6cdaaf9ad62/) | SnowBall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0c0eb21368e516a42bfeeeeebb0fe0689a7cb2d3`](./contracts/bsc-56/0x0c0eb21368e516a42bfeeeeebb0fe0689a7cb2d3/) | SnowBallAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x45ad90e2c8d58db0ee2d933e6920a4859eb1a077`](./contracts/bsc-56/0x45ad90e2c8d58db0ee2d933e6920a4859eb1a077/) | SnowBallCommissionTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x036beaa74113b7a03bf9fe09812fb7c9de9198b4`](./contracts/bsc-56/0x036beaa74113b7a03bf9fe09812fb7c9de9198b4/) | SnowBallFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x726fa88b0949a9122f75cd284300d8276dea363f`](./contracts/bsc-56/0x726fa88b0949a9122f75cd284300d8276dea363f/) | SnowBallHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x580532e2df90f3f9e95c3c3a71fd7937610a2d69`](./contracts/bsc-56/0x580532e2df90f3f9e95c3c3a71fd7937610a2d69/) | SnowBallVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd6a92acc0a5fd685c1cb3a464d44410dc90c5d25`](./contracts/bsc-56/0xd6a92acc0a5fd685c1cb3a464d44410dc90c5d25/) | SplitVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x56333af228c6fc1283c3a93ec1facd661a49b4ae`](./contracts/bsc-56/0x56333af228c6fc1283c3a93ec1facd661a49b4ae/) | TaxDistributionHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4d0249e3d54a351be1f82b400c98d1455a15f93d`](./contracts/bsc-56/0x4d0249e3d54a351be1f82b400c98d1455a15f93d/) | TaxHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b426ba0783c65fb59c00c0db7c1e40a141338d2`](./contracts/bsc-56/0x0b426ba0783c65fb59c00c0db7c1e40a141338d2/) | TaxProcessorUniV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x143741e50c729fe8953e7b7b85a97ae05abeb806`](./contracts/bsc-56/0x143741e50c729fe8953e7b7b85a97ae05abeb806/) | TaxProcessorUniV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x988eb559dfbde2cc25e7c33c56153ac13a036f24`](./contracts/bsc-56/0x988eb559dfbde2cc25e7c33c56153ac13a036f24/) | TaxSplitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3044435addeff858e7e760474e30ac982c6fb9ca`](./contracts/bsc-56/0x3044435addeff858e7e760474e30ac982c6fb9ca/) | TaxSplitterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbad031645bf161c165a92ae335a94734f2e60a29`](./contracts/bsc-56/0xbad031645bf161c165a92ae335a94734f2e60a29/) | TaxTokenBeneficiaryChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x524ea1de5929d5d0165e425bfce8d9750d65c6c7`](./contracts/bsc-56/0x524ea1de5929d5d0165e425bfce8d9750d65c6c7/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8b4329947e34b6d56d71a3385cac122bade7d78d`](./contracts/bsc-56/0x8b4329947e34b6d56d71a3385cac122bade7d78d/) | TokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x225894eadeabbba41ecdfd88a3ef88aa0af31d44`](./contracts/ethereum-1/0x225894eadeabbba41ecdfd88a3ef88aa0af31d44/) | TokenV2BETATEST | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x88881b6f03090462a969ec7f48385744eeb63333`](./contracts/bsc-56/0x88881b6f03090462a969ec7f48385744eeb63333/) | TokenV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa700245ceb465941f36e83a50ae701d612373d04`](./contracts/bsc-56/0xa700245ceb465941f36e83a50ae701d612373d04/) | VaultBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02244890dd46af7d66ab5080ff6d1297c288f259`](./contracts/bsc-56/0x02244890dd46af7d66ab5080ff6d1297c288f259/) | VaultPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2262f6a29d15365f752861068bcbe1977c665bab`](./contracts/bsc-56/0x2262f6a29d15365f752861068bcbe1977c665bab/) | WorldCupViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5dbb81a88fc6172ea1fb63ded7e00d2c0da5d184`](./contracts/bsc-56/0x5dbb81a88fc6172ea1fb63ded7e00d2c0da5d184/) | WrappedX402 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=9

Zero-match audit list:

- [20296] * The Flap Launchpad Protocol V2, V4 and Flap Tax Token V1 were audited by Certik. Check the audit report on[ Certik Skynet]().

Fork inheritance lineage and inherited audits are included when available.
