# Agentic Audit Brief: Guru Network DAO

## Project Overview

- Project: Guru Network DAO (`guru-network-dao`)
- Website: [https://ftm.guru/](https://ftm.guru/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.131Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, avalanche, base, fantom, kava, metis, polygon, sonic
- Contract surface: 46 unique implementations (74 raw deployments)
- DeFi Llama TVL: $1,700,277.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 26 project-authored contract(s) across 5 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 3 common project-authored base contract(s) (proxy, erc1967upgrade, owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 82; live-surface contracts included: 74 (30 live, 44 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/15 (0.0%)
- Deployed-live implementations: 16 of 46 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 46
- Raw deployments: 74
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

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| aera_farm | unknown | metis | n/a | [`0x6c39ff982ac0a696978f66ef632d9f86dfb93264`](./contracts/metis-1088/0x6c39ff982ac0a696978f66ef632d9f86dfb93264/) | ⚠️ Unaudited |
| AERA_Layer1 | unknown | metis | n/a | [`0x63d73d848b7f5142f11974188e9fe3f5de28f88c`](./contracts/metis-1088/0x63d73d848b7f5142f11974188e9fe3f5de28f88c/) | ⚠️ Unaudited |
| AerariumMasterChef | unknown | metis | n/a | [`0x5c652a94c672f8f6d021417bb5ee75c322ecf1fc`](./contracts/metis-1088/0x5c652a94c672f8f6d021417bb5ee75c322ecf1fc/) | ⚠️ Unaudited |
| ContractChecker | unknown | arbitrum | n/a | [`0x869c20286e6c71178669ef7fe0851bc1dbc56c36`](./contracts/arbitrum-42161/0x869c20286e6c71178669ef7fe0851bc1dbc56c36/) | ⚠️ Unaudited |
| elCHR | unknown | arbitrum | n/a | [`0xd600ec98cf6418c50ee051ace53219d95aeaa134`](./contracts/arbitrum-42161/0xd600ec98cf6418c50ee051ace53219d95aeaa134/) | ⚠️ Unaudited |
| elCHR_Depositor | unknown | arbitrum | n/a | [`0x88c3211ed3220c08376a28a3ba7c67d7d4be7db1`](./contracts/arbitrum-42161/0x88c3211ed3220c08376a28a3ba7c67d7d4be7db1/) | ⚠️ Unaudited |
| ElitenessERC20 | token | polygon | n/a | 2 deployments: polygon [`0x7898a099b61fdecd83a26f4006812ef04e0ceb08`](./contracts/polygon-137/0x7898a099b61fdecd83a26f4006812ef04e0ceb08/); polygon `0xcc1eff4e5f1b82a96179b9044e93e142285fee93` | ⚠️ Unaudited |
| eLOCKS | unknown | sonic | n/a | [`0xc6b515328f970ec25228a716bf91774e5bd5abc0`](./contracts/sonic-146/0xc6b515328f970ec25228a716bf91774e5bd5abc0/) | ⚠️ Unaudited |
| elToken | token | polygon | n/a | [`0xfab311fe3e3be4bb3fed77257ee294fb22fa888b`](./contracts/polygon-137/0xfab311fe3e3be4bb3fed77257ee294fb22fa888b/) | ⚠️ Unaudited |
| elToken_Depositor | token | polygon | n/a | 4 deployments: polygon [`0x2696f94f11dff0d77875e2652fcdb537274b9ce7`](./contracts/polygon-137/0x2696f94f11dff0d77875e2652fcdb537274b9ce7/); polygon `0xcc835d13543cec819ac0226dd9ff35b6312b8fca`; polygon `0xd600ec98cf6418c50ee051ace53219d95aeaa134`; polygon `0xdf486980df72446a5eff76263efb2fa9391be136` | ⚠️ Unaudited |
| elTokenManager | governance | polygon | n/a | 4 deployments: polygon [`0x30e118c1a6f1c83b4fab64f6a6c9150f0b2f480c`](./contracts/polygon-137/0x30e118c1a6f1c83b4fab64f6a6c9150f0b2f480c/); polygon `0x4046c4a45b0472fbce61965c7b84e05fe90a40c4`; arbitrum `0x7be024bbd16e3e0ab6839cb94d0dc25b7a101eab`; arbitrum `0x861fe22b721602954d34f2e4a5843e6a295811c7` | ⚠️ Unaudited |
| elTokenRedeemVault | core_logic | arbitrum | n/a | [`0x39cc812e698a61f1883f7b9dba54159aa7b1d91c`](./contracts/arbitrum-42161/0x39cc812e698a61f1883f7b9dba54159aa7b1d91c/) | ⚠️ Unaudited |
| Granary | unknown | metis | n/a | [`0xf060c8c86e17bf64fa3cfc6bbb2cb829c33b8069`](./contracts/metis-1088/0xf060c8c86e17bf64fa3cfc6bbb2cb829c33b8069/) | ⚠️ Unaudited |
| GuruMultiRewardFarmland | unknown | arbitrum | n/a | 7 deployments: polygon `0xc4c807aee35f75c891cb51ef982c98371b1362b4`; metis `0xa0edd976462104805f939e8771f7e3e7450350e9`; arbitrum [`0x2696f94f11dff0d77875e2652fcdb537274b9ce7`](./contracts/arbitrum-42161/0x2696f94f11dff0d77875e2652fcdb537274b9ce7/); arbitrum `0x64532eb2e28b0d0b56b5cba35c0a88fa06285d08`; arbitrum `0xcc835d13543cec819ac0226dd9ff35b6312b8fca`; arbitrum `0xdf486980df72446a5eff76263efb2fa9391be136`; avalanche `0xdf486980df72446a5eff76263efb2fa9391be136` | ⚠️ Unaudited |
| LBFactory | registry | base | n/a | 2 deployments: base [`0x8597db3ba8de6baadeda8cba4dac653e24a0e57b`](./contracts/base-8453/0x8597db3ba8de6baadeda8cba4dac653e24a0e57b/); arbitrum [`0x8597db3ba8de6baadeda8cba4dac653e24a0e57b`](./contracts/arbitrum-42161/0x8597db3ba8de6baadeda8cba4dac653e24a0e57b/) | ⚠️ Unaudited |
| MultiRewards | unknown | metis | n/a | [`0xafbe3b8b0939a5538de32f7752a78e08c8492295`](./contracts/metis-1088/0xafbe3b8b0939a5538de32f7752a78e08c8492295/) | ⚠️ Unaudited |
| oTokenToElToken | token | polygon | n/a | [`0x3979d8149099b98cde35e08722f05dc477f55b97`](./contracts/polygon-137/0x3979d8149099b98cde35e08722f05dc477f55b97/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0x7b7faf5f614f8c13f80a8775b61d1c22f48ebd27`](./contracts/arbitrum-42161/0x7b7faf5f614f8c13f80a8775b61d1c22f48ebd27/) | ⚠️ Unaudited |
| pvl | unknown | arbitrum | n/a | [`0xb264c9ece4c1f9ebff85e580b068a82fcdb2e198`](./contracts/arbitrum-42161/0xb264c9ece4c1f9ebff85e580b068a82fcdb2e198/) | ⚠️ Unaudited |
| tvlGuru | unknown | polygon | n/a | 3 deployments: polygon [`0x18c7ad880a07d363f2d034a8523ae34b8068845a`](./contracts/polygon-137/0x18c7ad880a07d363f2d034a8523ae34b8068845a/); metis `0x50dcc6cb1b2d6965c42d98a2b07629c57a6be895`; arbitrum `0xfab311fe3e3be4bb3fed77257ee294fb22fa888b` | ⚠️ Unaudited |
| TvlGuru_v21 | unknown | sonic | n/a | [`0x52ce715ca439a031fc3cc103f08a378bad18546b`](./contracts/sonic-146/0x52ce715ca439a031fc3cc103f08a378bad18546b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x05bf8a10a24acb9d61b9b6dd90aef99fb86a1c7e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x123136fe50b5711a3c1f546f9d5608a9cb6d16c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x345551265a8938472991d60a048cae3625e0cd6d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x37c140598dab38a924214958849b94d83c220423` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3df3e6bbd322eae0ffea3e6c629490a18ec036bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x41c4d6e7d3ea574bc1c8b2b34544cb2e3789a7e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5c00ba9c27fa6eb77a98d2c4cccb5f1ce7c9bf1b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x702e5db7da5e9cee17d78618a1e7dc5b97f033b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b7faf5f614f8c13f80a8775b61d1c22f48ebd27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb264c9ece4c1f9ebff85e580b068a82fcdb2e198` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc5687aa2d1b043b56b269657034d4d64b4287761` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc8207c5c54b4cf54aa3f5538cc8a2c6dfa2716d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcd1430673b0ea81a3c027f13bcb1cc13edec6680` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd323538a0c40e3052b9db5886e9f3888ce0170a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdfae2e027a282579caab632d2ebc5a627e08cb65` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 13 deployments: fantom `0x0786c3a78f5133f08c1c70953b8b10376bc6dcad`; fantom `0x0a558d43bccbc7586547fc74e3a0e70467215b3c`; fantom `0x2f20a659601d1c161a108e0725fef31256a907ad`; fantom `0x35402cdc3bcffb904116bdc720afc75c2921de08`; fantom `0x426a4a4b73d4cd173c9ab78d18c0d79d1717eaa9`; fantom `0x8597db3ba8de6baadeda8cba4dac653e24a0e57b`; fantom `0xa254bfd74c38b26145b980162fb1a49bc0a4f14b`; fantom `0xb6633c351a3af289ed6bbf4a78c682fa16656b1e`; fantom `0xe345a50c33e5c9d0284d6ff0b891c4fc99a9c117`; fantom `0xf43cc235e686d7bc513f53fbffb61f760c3a1882`; fantom `0xfaa22e721924fa57d042f6e2c793997aa9287b27`; kava `0x86e4d91800c03e803d4c8fa3293d1c7d612a7300`; kava `0x9d9682577ca889c882412056669bd936894663fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63d73d848b7f5142f11974188e9fe3f5de28f88c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x650078a42f682837d5f9307f1e7483aaa612885f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb62f6095f2afd00702fb79570c9f1aa730510fc4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc851f62badf09c30ff7a218dce249bc0ff448d08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd9751ad0767ecd82c815628b0c3402aa788c11f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x18c7ad880a07d363f2d034a8523ae34b8068845a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4c807aee35f75c891cb51ef982c98371b1362b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9751ad0767ecd82c815628b0c3402aa788c11f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc295f619afc2b8543d91c8970ea4c0726f197250` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | [`0x6c39ff982ac0a696978f66ef632d9f86dfb93264`](./contracts/metis-1088/0x6c39ff982ac0a696978f66ef632d9f86dfb93264/) | aera_farm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x63d73d848b7f5142f11974188e9fe3f5de28f88c`](./contracts/metis-1088/0x63d73d848b7f5142f11974188e9fe3f5de28f88c/) | AERA_Layer1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x5c652a94c672f8f6d021417bb5ee75c322ecf1fc`](./contracts/metis-1088/0x5c652a94c672f8f6d021417bb5ee75c322ecf1fc/) | AerariumMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x869c20286e6c71178669ef7fe0851bc1dbc56c36`](./contracts/arbitrum-42161/0x869c20286e6c71178669ef7fe0851bc1dbc56c36/) | ContractChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd600ec98cf6418c50ee051ace53219d95aeaa134`](./contracts/arbitrum-42161/0xd600ec98cf6418c50ee051ace53219d95aeaa134/) | elCHR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x88c3211ed3220c08376a28a3ba7c67d7d4be7db1`](./contracts/arbitrum-42161/0x88c3211ed3220c08376a28a3ba7c67d7d4be7db1/) | elCHR_Depositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7898a099b61fdecd83a26f4006812ef04e0ceb08`](./contracts/polygon-137/0x7898a099b61fdecd83a26f4006812ef04e0ceb08/) | ElitenessERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xc6b515328f970ec25228a716bf91774e5bd5abc0`](./contracts/sonic-146/0xc6b515328f970ec25228a716bf91774e5bd5abc0/) | eLOCKS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfab311fe3e3be4bb3fed77257ee294fb22fa888b`](./contracts/polygon-137/0xfab311fe3e3be4bb3fed77257ee294fb22fa888b/) | elToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2696f94f11dff0d77875e2652fcdb537274b9ce7`](./contracts/polygon-137/0x2696f94f11dff0d77875e2652fcdb537274b9ce7/) | elToken_Depositor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x30e118c1a6f1c83b4fab64f6a6c9150f0b2f480c`](./contracts/polygon-137/0x30e118c1a6f1c83b4fab64f6a6c9150f0b2f480c/) | elTokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39cc812e698a61f1883f7b9dba54159aa7b1d91c`](./contracts/arbitrum-42161/0x39cc812e698a61f1883f7b9dba54159aa7b1d91c/) | elTokenRedeemVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xf060c8c86e17bf64fa3cfc6bbb2cb829c33b8069`](./contracts/metis-1088/0xf060c8c86e17bf64fa3cfc6bbb2cb829c33b8069/) | Granary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2696f94f11dff0d77875e2652fcdb537274b9ce7`](./contracts/arbitrum-42161/0x2696f94f11dff0d77875e2652fcdb537274b9ce7/) | GuruMultiRewardFarmland | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8597db3ba8de6baadeda8cba4dac653e24a0e57b`](./contracts/base-8453/0x8597db3ba8de6baadeda8cba4dac653e24a0e57b/) | LBFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xafbe3b8b0939a5538de32f7752a78e08c8492295`](./contracts/metis-1088/0xafbe3b8b0939a5538de32f7752a78e08c8492295/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3979d8149099b98cde35e08722f05dc477f55b97`](./contracts/polygon-137/0x3979d8149099b98cde35e08722f05dc477f55b97/) | oTokenToElToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb264c9ece4c1f9ebff85e580b068a82fcdb2e198`](./contracts/arbitrum-42161/0xb264c9ece4c1f9ebff85e580b068a82fcdb2e198/) | pvl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x18c7ad880a07d363f2d034a8523ae34b8068845a`](./contracts/polygon-137/0x18c7ad880a07d363f2d034a8523ae34b8068845a/) | tvlGuru | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x52ce715ca439a031fc3cc103f08a378bad18546b`](./contracts/sonic-146/0x52ce715ca439a031fc3cc103f08a378bad18546b/) | TvlGuru_v21 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
