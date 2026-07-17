# Agentic Audit Brief: Alien Base

⚠️ Lifecycle status: DECLINING - TVL dropped 39.5% over 90 days

## Project Overview

- Project: Alien Base (`alien-base`)
- Website: [https://alienbase.xyz/](https://alienbase.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:52:59.763Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: base
- Contract surface: 39 unique implementations (64 raw deployments)
- DeFi Llama TVL: $3,336,181.00
- On-chain TVL (included contracts): $2,020,491.49
- TVL by chain: Base $2,020,491.49

## Project Description

Dexs. Structurally: 51 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 16 common project-authored base contract(s) (proxy, erc1967upgrade, nodelegatecall). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 113; live-surface contracts included: 64 (53 live, 11 unknown).
- Excluded by liveness: 49 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/19 (0.0%)
- Deployed-live implementations: 28 of 39 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 39
- Raw deployments: 64
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,020,491.49
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,020,491.49 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlienBaseToken | token | base | n/a | [`0x1dd2d631c92b1acdfcdd51a0f7145a50130050c4`](./contracts/base-8453/0x1dd2d631c92b1acdfcdd51a0f7145a50130050c4/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | base | n/a | [`0xbcd27a437ebe92555cee6b5bbeddac639a1b6fcb`](./contracts/base-8453/0xbcd27a437ebe92555cee6b5bbeddac639a1b6fcb/) | ⚠️ Unaudited |
| BasedDistributorV2 | operational_periphery | base | n/a | [`0x52eaecac2402633d98b95213d0b473e069d86590`](./contracts/base-8453/0x52eaecac2402633d98b95213d0b473e069d86590/) | ⚠️ Unaudited |
| BunniHub | unknown | base | n/a | [`0xdc53487e2a6ef468260bc938f645f84caaccac6f`](./contracts/base-8453/0xdc53487e2a6ef468260bc938f645f84caaccac6f/) | ⚠️ Unaudited |
| BunniHubA | unknown | base | n/a | [`0xd1fac4f51457e4a6d35bdc7311718e5d6de92bb9`](./contracts/base-8453/0xd1fac4f51457e4a6d35bdc7311718e5d6de92bb9/) | ⚠️ Unaudited |
| BunniHubController | governance | base | n/a | [`0x4bcc584979817219585b6a62a5bb6c15c1fa0f38`](./contracts/base-8453/0x4bcc584979817219585b6a62a5bb6c15c1fa0f38/) | ⚠️ Unaudited |
| BunniLensV2 | periphery | base | n/a | 2 deployments: base [`0x3ceb26bb6ad94f2dfdd98f10cb4d6caf02bec9dc`](./contracts/base-8453/0x3ceb26bb6ad94f2dfdd98f10cb4d6caf02bec9dc/); base `0xf71e5e59f762b1d13e3797d24bf0c8986a05b621` | ⚠️ Unaudited |
| BunniToken | token | base | n/a | 2 deployments: base [`0x053d11735f501199ec64a125498f29ed453d27a4`](./contracts/base-8453/0x053d11735f501199ec64a125498f29ed453d27a4/); base `0x176ca19007b1e2c9d85b8ecd68f89bb7f8a208f0` | ⚠️ Unaudited |
| BunniZap | adapter | base | n/a | [`0x6947da282e447a2e9d65ff00aaf80efb5116d75d`](./contracts/base-8453/0x6947da282e447a2e9d65ff00aaf80efb5116d75d/) | ⚠️ Unaudited |
| BunniZap | adapter | base | n/a | [`0x77c18d8aea11147b65d9e3ee7b3a9e89910ab7f0`](./contracts/base-8453/0x77c18d8aea11147b65d9e3ee7b3a9e89910ab7f0/) | ⚠️ Unaudited |
| ComplexRewarderPerSecV4 | unknown | base | n/a | 2 deployments: base [`0x052916740d97a2e9d5668bbee813317dbcd19d10`](./contracts/base-8453/0x052916740d97a2e9d5668bbee813317dbcd19d10/); base `0xb329511948b8f7ae590242de0790050d1423c74f` | ⚠️ Unaudited |
| DistributorController | operational_periphery | base | n/a | 3 deployments: base [`0x16f1f80654f2fea97293321675907cfa2e23e4fb`](./contracts/base-8453/0x16f1f80654f2fea97293321675907cfa2e23e4fb/); base `0x68e143d9754a244f5dce5a66e86492ea98e1c68c`; base `0xb71cc2eee5b23dbe4934ba7277570aa06177b60e` | ⚠️ Unaudited |
| EsComplexRewarder | unknown | base | n/a | 4 deployments: base [`0x3923820118a3b654644d31653bcc650f655c43a6`](./contracts/base-8453/0x3923820118a3b654644d31653bcc650f655c43a6/); base `0x3aa57f8a8fac29ce6897212ba950ea433b30b211`; base `0x3f42d7254ed785951885a30e3e86ac1c32252811`; base `0xbbd0cb9d847a087e778901cc25cd601e6f11210e` | ⚠️ Unaudited |
| EsProxyMaster | unknown | base | n/a | [`0xd3968a4a07d64c6e16982d45191b9a09a261ec88`](./contracts/base-8453/0xd3968a4a07d64c6e16982d45191b9a09a261ec88/) | ⚠️ Unaudited |
| EsToken | token | base | n/a | 9 deployments: base [`0x1a18d238b0f43edaa68640f3f537d229e23c5af2`](./contracts/base-8453/0x1a18d238b0f43edaa68640f3f537d229e23c5af2/); base `0x365c6d588e8611125de3bea5b9280c304fa54113`; base `0x3d3a5ad6d7beab234d7f0338a01e62b1d36d8ea0`; base `0x4a023efe4b5cd304e800f29074186164fda36978`; base `0x5c9054a94eeeb147f5bc4550e2d918eac68c5e66`; base `0x93d590335c2cb13bb0581b771770b1982a8f529b`; base `0xccb48874fdb042497520f982e581994034c0a124`; base `0xe1afc637f41e05efe08d55296a2ccff0072a4587`; base `0xe2204e0f54c0834ead587bbd3aa2095f37213ac8` | ⚠️ Unaudited |
| EsTokenController | governance | base | n/a | 6 deployments: base [`0x154d41a96ad37570a2ad6849063d0b480da1ea99`](./contracts/base-8453/0x154d41a96ad37570a2ad6849063d0b480da1ea99/); base `0x2de715d04579535b2005a2057455b3cfcb7f60dc`; base `0x95ff6591b17befd31d4b899dbe3177d05c2d2819`; base `0x9e27f316f7d6587be00a3105b26621bfee82ac6e`; base `0xf4eb75f940e8d0e6dbee094a7dd9768d25da644a`; base `0xf6c0db9e2f0a137c9c4cba82090dd25c86ecdb94` | ⚠️ Unaudited |
| EsVoting | unknown | base | n/a | 2 deployments: base [`0x3f8d116e99bce42b38989a62394fa9bb532dddc1`](./contracts/base-8453/0x3f8d116e99bce42b38989a62394fa9bb532dddc1/); base `0xd3cfcb52ec5715652c5096bdf99ea078c4df2e7b` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | base | n/a | [`0x4ab9070b7680f802cbf8322e597a4409902171e5`](./contracts/base-8453/0x4ab9070b7680f802cbf8322e597a4409902171e5/) | ⚠️ Unaudited |
| LPToken | token | base | n/a | [`0xcf13556f6181971a23395ec21dce2543bdc2633a`](./contracts/base-8453/0xcf13556f6181971a23395ec21dce2543bdc2633a/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0xb7996d1ecd07fb227e8dca8cd5214bdfb04534e5`](./contracts/base-8453/0xb7996d1ecd07fb227e8dca8cd5214bdfb04534e5/) | ⚠️ Unaudited |
| PredictionETH | unknown | base | n/a | [`0xfbe87ee1ee62244a2df80a8093eab829c52863e8`](./contracts/base-8453/0xfbe87ee1ee62244a2df80a8093eab829c52863e8/) | ⚠️ Unaudited |
| SmartRouter | adapter | base | n/a | [`0xb20c411fc84fbb27e78608c24d0056d974ea9411`](./contracts/base-8453/0xb20c411fc84fbb27e78608c24d0056d974ea9411/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | base | n/a | 2 deployments: base [`0x410d28fbcd00c677bae1cce2261546c8db4f6a2d`](./contracts/base-8453/0x410d28fbcd00c677bae1cce2261546c8db4f6a2d/); base `0x927860797d07b1c46fbbe7f6f73d45c7e1bfbb27` | ⚠️ Unaudited |
| TokenGenerator | token | base | n/a | [`0xbce75497d72b25c3509b62ae1a47ccfb502ad08d`](./contracts/base-8453/0xbce75497d72b25c3509b62ae1a47ccfb502ad08d/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | base | n/a | 2 deployments: base [`0x3485f8e155973cc247cbea9e77c0dbbb4bbb79e7`](./contracts/base-8453/0x3485f8e155973cc247cbea9e77c0dbbb4bbb79e7/); base `0x8c1a3cf8f83074169fe5d7ad50b978e1cd6b37c7` | ⚠️ Unaudited |
| UniswapV3Factory | registry | base | n/a | [`0x0fd83557b2be93617c9c1c1b6fd549401c74558c`](./contracts/base-8453/0x0fd83557b2be93617c9c1c1b6fd549401c74558c/) | ⚠️ Unaudited |
| UniversalDistributorController | operational_periphery | base | n/a | [`0x62d58b4cdd96b590ff4174e272b5f41693c8fba9`](./contracts/base-8453/0x62d58b4cdd96b590ff4174e272b5f41693c8fba9/) | ⚠️ Unaudited |
| VestingFactory | operational_periphery | base | n/a | 2 deployments: base [`0x77ec0394e4edea1997bdb1919bb354d880faed84`](./contracts/base-8453/0x77ec0394e4edea1997bdb1919bb354d880faed84/); base `0xf61cc1aedd072784d8f133ba9409c538cfc9453d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x293be4ee731ce9ccfa007aad4c0e4da8aa1b5220` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c0b9fc00c4852b0b6070b00af03843ec9444cd2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x783898572ef4970d445ad9af95d5dfdb633843ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7920fbf3b05d49edf62c03e43e2982bef2fea013` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ca63e82b203011a7149f78f5480609fce6dae7b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e1c243eaf95943c9c2152d4ae02d5e2e55b846a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa52632a038bdb4d943a61709981cc41767c2c24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb931894cae0055cab7ebc077ffeb71051c2884f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd97c8f2a950d3a77a8f776cc9abf932adb84ce2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd54a92d5612daa6d70c0f46fa7a374b483aeb5bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf78ac4a524205603b4ef9135942219400cc20ff5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x1dd2d631c92b1acdfcdd51a0f7145a50130050c4`](./contracts/base-8453/0x1dd2d631c92b1acdfcdd51a0f7145a50130050c4/) | AlienBaseToken | token | $1,874,177.28 | Verified native implementation with $1,874,177.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x52eaecac2402633d98b95213d0b473e069d86590`](./contracts/base-8453/0x52eaecac2402633d98b95213d0b473e069d86590/) | BasedDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdc53487e2a6ef468260bc938f645f84caaccac6f`](./contracts/base-8453/0xdc53487e2a6ef468260bc938f645f84caaccac6f/) | BunniHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd1fac4f51457e4a6d35bdc7311718e5d6de92bb9`](./contracts/base-8453/0xd1fac4f51457e4a6d35bdc7311718e5d6de92bb9/) | BunniHubA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x053d11735f501199ec64a125498f29ed453d27a4`](./contracts/base-8453/0x053d11735f501199ec64a125498f29ed453d27a4/) | BunniToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x052916740d97a2e9d5668bbee813317dbcd19d10`](./contracts/base-8453/0x052916740d97a2e9d5668bbee813317dbcd19d10/) | ComplexRewarderPerSecV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16f1f80654f2fea97293321675907cfa2e23e4fb`](./contracts/base-8453/0x16f1f80654f2fea97293321675907cfa2e23e4fb/) | DistributorController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3923820118a3b654644d31653bcc650f655c43a6`](./contracts/base-8453/0x3923820118a3b654644d31653bcc650f655c43a6/) | EsComplexRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd3968a4a07d64c6e16982d45191b9a09a261ec88`](./contracts/base-8453/0xd3968a4a07d64c6e16982d45191b9a09a261ec88/) | EsProxyMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a18d238b0f43edaa68640f3f537d229e23c5af2`](./contracts/base-8453/0x1a18d238b0f43edaa68640f3f537d229e23c5af2/) | EsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x154d41a96ad37570a2ad6849063d0b480da1ea99`](./contracts/base-8453/0x154d41a96ad37570a2ad6849063d0b480da1ea99/) | EsTokenController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3f8d116e99bce42b38989a62394fa9bb532dddc1`](./contracts/base-8453/0x3f8d116e99bce42b38989a62394fa9bb532dddc1/) | EsVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcf13556f6181971a23395ec21dce2543bdc2633a`](./contracts/base-8453/0xcf13556f6181971a23395ec21dce2543bdc2633a/) | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfbe87ee1ee62244a2df80a8093eab829c52863e8`](./contracts/base-8453/0xfbe87ee1ee62244a2df80a8093eab829c52863e8/) | PredictionETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb20c411fc84fbb27e78608c24d0056d974ea9411`](./contracts/base-8453/0xb20c411fc84fbb27e78608c24d0056d974ea9411/) | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x410d28fbcd00c677bae1cce2261546c8db4f6a2d`](./contracts/base-8453/0x410d28fbcd00c677bae1cce2261546c8db4f6a2d/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbce75497d72b25c3509b62ae1a47ccfb502ad08d`](./contracts/base-8453/0xbce75497d72b25c3509b62ae1a47ccfb502ad08d/) | TokenGenerator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x62d58b4cdd96b590ff4174e272b5f41693c8fba9`](./contracts/base-8453/0x62d58b4cdd96b590ff4174e272b5f41693c8fba9/) | UniversalDistributorController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x77ec0394e4edea1997bdb1919bb354d880faed84`](./contracts/base-8453/0x77ec0394e4edea1997bdb1919bb354d880faed84/) | VestingFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 8 |
| standard_library | 1 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
