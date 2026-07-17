# Agentic Audit Brief: SX Rollup Bridge

## Project Overview

- Project: SX Rollup Bridge (`sx-rollup-bridge`)
- Website: [https://sx.bet/wallet/bridge](https://sx.bet/wallet/bridge)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.245Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 82 unique implementations (83 raw deployments)
- DeFi Llama TVL: $11,467,761.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 71 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Contracts are linked by 54 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 140; live-surface contracts included: 82 (17 live, 65 unknown).
- Excluded by liveness: 58 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/14 (0.0%)
- Deployed-live implementations: 17 of 82 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 65
- Unique implementations: 82
- Raw deployments: 83
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChallengeManager | governance | ethereum | n/a | [`0x73cfa0f6ae141212115657ad91ad918e5d34d882`](./contracts/ethereum-1/0x73cfa0f6ae141212115657ad91ad918e5d34d882/) | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | ethereum | n/a | [`0xa104c0426e95a5538e89131dbb4163d230c35f86`](./contracts/ethereum-1/0xa104c0426e95a5538e89131dbb4163d230c35f86/) | ⚠️ Unaudited |
| ERC20Inbox | token | ethereum | n/a | [`0xea83e8907c89bc0d9517632f0ba081972e328631`](./contracts/ethereum-1/0xea83e8907c89bc0d9517632f0ba081972e328631/) | ⚠️ Unaudited |
| ERC20Outbox | token | ethereum | n/a | [`0xb360b2f57c645e847148d7c479b7468abf6f707d`](./contracts/ethereum-1/0xb360b2f57c645e847148d7c479b7468abf6f707d/) | ⚠️ Unaudited |
| ERC20RollupEventInbox | token | ethereum | n/a | [`0x9f1045201f8b9d0b12f6d1e40e8b8e6c047a81e3`](./contracts/ethereum-1/0x9f1045201f8b9d0b12f6d1e40e8b8e6c047a81e3/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xddb901e4e9a2e659aa1d6476d5d7a2833e7c3dfa`](./contracts/ethereum-1/0xddb901e4e9a2e659aa1d6476d5d7a2833e7c3dfa/) | ⚠️ Unaudited |
| L1OrbitERC20Gateway | token | ethereum | n/a | [`0xb4968c66becc8fb4f73b50354301c1adb2abaa91`](./contracts/ethereum-1/0xb4968c66becc8fb4f73b50354301c1adb2abaa91/) | ⚠️ Unaudited |
| L1OrbitGatewayRouter | adapter | ethereum | n/a | [`0x5f00446d785421d65b50c192d7129e3c3906438a`](./contracts/ethereum-1/0x5f00446d785421d65b50c192d7129e3c3906438a/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0xe8606a55d105ef857f187c32ae0e9a168af8f497`](./contracts/ethereum-1/0xe8606a55d105ef857f187c32ae0e9a168af8f497/) | ⚠️ Unaudited |
| RollupAdminLogic | unknown | ethereum | n/a | [`0x36c6c69a6186d4475fc5c21181cd980bd6e5e11f`](./contracts/ethereum-1/0x36c6c69a6186d4475fc5c21181cd980bd6e5e11f/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0xa4c325e25215c1fb2405eb28d81d2dfdbfc8d24c`](./contracts/ethereum-1/0xa4c325e25215c1fb2405eb28d81d2dfdbfc8d24c/) | ⚠️ Unaudited |
| SequencerInbox | unknown | ethereum | n/a | [`0xd80a805c86c14c879420ec6acb366d04d318fc0c`](./contracts/ethereum-1/0xd80a805c86c14c879420ec6acb366d04d318fc0c/) | ⚠️ Unaudited |
| SportX | unknown | ethereum | n/a | [`0x99fe3b1391503a1bc1788051347a1324bff41452`](./contracts/ethereum-1/0x99fe3b1391503a1bc1788051347a1324bff41452/) | ⚠️ Unaudited |
| SX | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd26ea9134d0bd0534ed8e546e2d2c5184ab38a1a`](./contracts/ethereum-1/0xd26ea9134d0bd0534ed8e546e2d2c5184ab38a1a/); ethereum `0xf6db956538df64f7221a0cf807e15da00f50ea4a` | ⚠️ Unaudited |
| SXNetwork | unknown | ethereum | n/a | [`0xbe9f61555f50dd6167f2772e9cf7519790d96624`](./contracts/ethereum-1/0xbe9f61555f50dd6167f2772e9cf7519790d96624/) | ⚠️ Unaudited |
| SXNTokenClaim | token | ethereum | n/a | [`0xe8f92b2aa53639319c67498ef955345fa1b57eb3`](./contracts/ethereum-1/0xe8f92b2aa53639319c67498ef955345fa1b57eb3/) | ⚠️ Unaudited |
| UpgradeExecutor | unknown | ethereum | n/a | [`0x44ec40d86b4643bd5110ed07be188f8473ad2d3a`](./contracts/ethereum-1/0x44ec40d86b4643bd5110ed07be188f8473ad2d3a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (65)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x01af28275a3e914386761fa0c978f33fcb3d2ba1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x041670ff3ffda1da64bf54b5ae009eda19bab8a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08c53a3b8f02d81773a1f9f529e623549fcc2435` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09365010860d3dac50da21c762ee0705b3e54eb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x093dc82d38459445e9152d35e4cd79d4d86a9f4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11c9c2ba8e1290184831c1ac9a070d6f0e8fee91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x179fc2063e3bc3f61fb931016604b2d3e91d9780` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1983199e6e3c93c13a903fa13352f155ce393067` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d730f26293fc2f3495a8acb199b8726c24a6cde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x218e3eb698b7e6641ac82469ce3f4e8625470d26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23340e240eb31c65c88540971897b0b7794863a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28fd7cdcd2a0cd1cbbc0d3835a2375bc52e26193` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2add68db8208399892cc4eaa215da90092ec079b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bd34a0ab6810b2a43a132cad6c88f6cdd0c6dfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37acc54582b433822100ba3e4d7890795a5abade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37ec9aaaabaa14cfabdde471a13635b8a56186b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38aef22152bc8965bf0af7cf53586e4b0c4e9936` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x398995122d4c5215991c15c2c5efb96882695d1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e96b0a25d51e3cc89c557f152797c33b839968f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fc10903f92a37ce2568e8bee3a4003e9e0b9c95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4109a2520f6def242658e46350cb288b0e8cf468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41ec5a80db4bf0a50a037475ae4724f2acb6ccd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x481675d673864526d8dc365fd77748b5f8a8399d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4891f40a7e108eea40f63c186ca880e2110c27a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49046f66cabf79d458ac925eff56072fd7499538` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a507dcac2053a7eacdd1f3589f223caa29aaa1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a7a274feaac5c646c13a66b80b9475c728b8700` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4eeb63be15ec381df24ac5126659209165e033c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b02262a934f9795981ec1801375d865fb83107d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e5744fd9381f9fda9107b325bbac59c9e2da6bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61802102539cc50be7793ca972b1bb3b4f3dc49f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61b59c9bd23239861c12e5ecb64004ca8bd39931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x620ab4d9bd74fef2f68eeac36ec54398180b5a1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x672961f0253c69bca9d7f4325e47793d32af3d4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6abde3606968e08e5ad95e6faab497362b4153ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7010e7dad9e67093f0c4ced769449207b3b1d925` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7eabe502597e24abd456acd5caa3e4f81a2c5bdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83e894599247b481a583b8fcb560de7a789c45a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84f7bfcc8de286c5668844fe88c8d6ae657a48e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c1f2ffc96020d9539b0489a4cb221b952ad2f0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9039a2f174ca7aff96c983cafb6eac356a87ede7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95b90dba0516fd2aa991a2f4afa7817546ffb06d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97e2878b4a4b1014c6477cb5f5fd1595206a1c9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b1d8300b8e71bf0fe14a699289927d4c9c6dad5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa21ac1436f7fcd43008c9473a78433339e222fca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6ea1ed4aec85df277fae3512f8a6cbb40c1fe7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadcc70c8ed258023101969933d208cff96378dc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb07043361e4e6079f101311865ca6d68a4ca4d75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1562b25c44f48250856306b9f5d202ed5b78792` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6cd10a879b0008d00f525cb514f17edf0e53a8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc077bcdb405f3fc53f6afe15821468b93e0c24d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc4fbba7d0e0f2a03113f42f5d3ae80d9b2ad55d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2d94821bd09753614d70ba05781d36902f9af8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddbbd448e5c4b102063c845e1456e38d8279636a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe40329de8f14fb6e905a3c87f0101d5f9a74cc66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5c7da5485626167942e6358c263e52d1425b1d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec2452b628a4193bdf3144d1895e214b3d88725d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeeebec924711751631f05775f4094571f36e858c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0890b331ac014de0d43a2ca883a538fa8981984` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf15885c79413f91d30b0e0c515c503f1fe0bec6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf859c91fec5eb3df899e644ab70348b144f59fcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfacf5ffe5a98ac364fec689593b69bbfdf61f5ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb28cc6da271ad7931541c4b54a3514c98b9a412` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd92bd39aac1fd36075d900faa895c3ee16847b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd960a3ece6de268cc69c23aa34597ddc3f955e0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x73cfa0f6ae141212115657ad91ad918e5d34d882`](./contracts/ethereum-1/0x73cfa0f6ae141212115657ad91ad918e5d34d882/) | ChallengeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa104c0426e95a5538e89131dbb4163d230c35f86`](./contracts/ethereum-1/0xa104c0426e95a5538e89131dbb4163d230c35f86/) | ERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea83e8907c89bc0d9517632f0ba081972e328631`](./contracts/ethereum-1/0xea83e8907c89bc0d9517632f0ba081972e328631/) | ERC20Inbox | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb360b2f57c645e847148d7c479b7468abf6f707d`](./contracts/ethereum-1/0xb360b2f57c645e847148d7c479b7468abf6f707d/) | ERC20Outbox | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f1045201f8b9d0b12f6d1e40e8b8e6c047a81e3`](./contracts/ethereum-1/0x9f1045201f8b9d0b12f6d1e40e8b8e6c047a81e3/) | ERC20RollupEventInbox | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4968c66becc8fb4f73b50354301c1adb2abaa91`](./contracts/ethereum-1/0xb4968c66becc8fb4f73b50354301c1adb2abaa91/) | L1OrbitERC20Gateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f00446d785421d65b50c192d7129e3c3906438a`](./contracts/ethereum-1/0x5f00446d785421d65b50c192d7129e3c3906438a/) | L1OrbitGatewayRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36c6c69a6186d4475fc5c21181cd980bd6e5e11f`](./contracts/ethereum-1/0x36c6c69a6186d4475fc5c21181cd980bd6e5e11f/) | RollupAdminLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd80a805c86c14c879420ec6acb366d04d318fc0c`](./contracts/ethereum-1/0xd80a805c86c14c879420ec6acb366d04d318fc0c/) | SequencerInbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99fe3b1391503a1bc1788051347a1324bff41452`](./contracts/ethereum-1/0x99fe3b1391503a1bc1788051347a1324bff41452/) | SportX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd26ea9134d0bd0534ed8e546e2d2c5184ab38a1a`](./contracts/ethereum-1/0xd26ea9134d0bd0534ed8e546e2d2c5184ab38a1a/) | SX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe9f61555f50dd6167f2772e9cf7519790d96624`](./contracts/ethereum-1/0xbe9f61555f50dd6167f2772e9cf7519790d96624/) | SXNetwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe8f92b2aa53639319c67498ef955345fa1b57eb3`](./contracts/ethereum-1/0xe8f92b2aa53639319c67498ef955345fa1b57eb3/) | SXNTokenClaim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44ec40d86b4643bd5110ed07be188f8473ad2d3a`](./contracts/ethereum-1/0x44ec40d86b4643bd5110ed07be188f8473ad2d3a/) | UpgradeExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
