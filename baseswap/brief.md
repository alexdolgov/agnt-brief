# Agentic Audit Brief: BaseSwap

## Project Overview

- Project: BaseSwap (`baseswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:05.308Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: base
- Contract surface: 31 unique implementations (31 raw deployments)
- DeFi Llama TVL: $492,331.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 30 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 10 common project-authored base contract(s) (peripheryimmutablestate, peripheryvalidation, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 31 (30 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/30 (0.0%)
- Deployed-live implementations: 30 of 31 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/31
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 31
- Raw deployments: 31
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BPLPManager | unknown | base | n/a | [`0xb5e73f436a676c649f186dfe6fcbf1bacff958aa`](./contracts/base-8453/0xb5e73f436a676c649f186dfe6fcbf1bacff958aa/) | ⚠️ Unaudited |
| BswapToken | unknown | base | n/a | [`0x78a087d713be963bf307b18f2ff8122ef9a63ae9`](./contracts/base-8453/0x78a087d713be963bf307b18f2ff8122ef9a63ae9/) | ⚠️ Unaudited |
| FastPriceEvents | unknown | base | n/a | [`0xffba6f02ae140d8ec2fc7798b5ab60e85bc62c78`](./contracts/base-8453/0xffba6f02ae140d8ec2fc7798b5ab60e85bc62c78/) | ⚠️ Unaudited |
| FastPriceFeed | unknown | base | n/a | [`0x1691559e2cdd440fc40997978eedd63bf76c0641`](./contracts/base-8453/0x1691559e2cdd440fc40997978eedd63bf76c0641/) | ⚠️ Unaudited |
| MasterChefV2 | unknown | base | n/a | [`0x2b0a43dccbd7d42c18f6a83f86d1a19fa58d541a`](./contracts/base-8453/0x2b0a43dccbd7d42c18f6a83f86d1a19fa58d541a/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | base | n/a | [`0xdb7971adc396d7ed3953e9542a8d4baec914b772`](./contracts/base-8453/0xdb7971adc396d7ed3953e9542a8d4baec914b772/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | base | n/a | [`0x20c51b3da2e7821ef62d63a447ac9e5f8a503065`](./contracts/base-8453/0x20c51b3da2e7821ef62d63a447ac9e5f8a503065/) | ⚠️ Unaudited |
| OrderBook | unknown | base | n/a | [`0xb4df850b99cf6dae86c2ceca7782ac81a5d5b688`](./contracts/base-8453/0xb4df850b99cf6dae86c2ceca7782ac81a5d5b688/) | ⚠️ Unaudited |
| OrderBookReader | unknown | base | n/a | [`0xd1a8d93eebf7a32ad6bc1f8674082ab2f0e89493`](./contracts/base-8453/0xd1a8d93eebf7a32ad6bc1f8674082ab2f0e89493/) | ⚠️ Unaudited |
| OrderExecutor | unknown | base | n/a | [`0xa64db2c205fdc3fd930dcb6e3e1f9510ca51f146`](./contracts/base-8453/0xa64db2c205fdc3fd930dcb6e3e1f9510ca51f146/) | ⚠️ Unaudited |
| PancakeFactory | unknown | base | n/a | [`0x6f1a2f63ea06b475edbf2e6393406058c12a7910`](./contracts/base-8453/0x6f1a2f63ea06b475edbf2e6393406058c12a7910/) | ⚠️ Unaudited |
| PancakeRouter | unknown | base | n/a | [`0x327df1e6de05895d2ab08513aadd9313fe505d86`](./contracts/base-8453/0x327df1e6de05895d2ab08513aadd9313fe505d86/) | ⚠️ Unaudited |
| PositionUtils | unknown | base | n/a | [`0x3a180411a88525d872793342ba8b09ab635568a7`](./contracts/base-8453/0x3a180411a88525d872793342ba8b09ab635568a7/) | ⚠️ Unaudited |
| QuoterV2 | unknown | base | n/a | [`0x2918e366d059733fe12a2a9c18e7f6fea01fb13c`](./contracts/base-8453/0x2918e366d059733fe12a2a9c18e7f6fea01fb13c/) | ⚠️ Unaudited |
| Reader | unknown | base | n/a | [`0x3d7cbf8104aea85d8c76d5eeb397441a59b24187`](./contracts/base-8453/0x3d7cbf8104aea85d8c76d5eeb397441a59b24187/) | ⚠️ Unaudited |
| ReferralReader | unknown | base | n/a | [`0xaa88ad234a374989d46a854337e315bcf70020fc`](./contracts/base-8453/0xaa88ad234a374989d46a854337e315bcf70020fc/) | ⚠️ Unaudited |
| ReferralStorage | unknown | base | n/a | [`0xab2b07da4710bcd8f2d610ca4420e632b994ac55`](./contracts/base-8453/0xab2b07da4710bcd8f2d610ca4420e632b994ac55/) | ⚠️ Unaudited |
| RewardReader | unknown | base | n/a | [`0x67965f5126103abbd49ba912d46bf3afb37730df`](./contracts/base-8453/0x67965f5126103abbd49ba912d46bf3afb37730df/) | ⚠️ Unaudited |
| Router | unknown | base | n/a | [`0x6699ca490855082a67429b712f96a9a68a1cd15e`](./contracts/base-8453/0x6699ca490855082a67429b712f96a9a68a1cd15e/) | ⚠️ Unaudited |
| ShortsTracker | unknown | base | n/a | [`0x54ee88d2094ecd5b1472c11a604478feda42e2cc`](./contracts/base-8453/0x54ee88d2094ecd5b1472c11a604478feda42e2cc/) | ⚠️ Unaudited |
| SmartChefFactory | unknown | base | n/a | [`0xc9ee54147445f1c1c23f52183c95456e69a92989`](./contracts/base-8453/0xc9ee54147445f1c1c23f52183c95456e69a92989/) | ⚠️ Unaudited |
| SwapRouter | unknown | base | n/a | [`0x14963869592e41a2ecd7524bd213cfc3044adf75`](./contracts/base-8453/0x14963869592e41a2ecd7524bd213cfc3044adf75/) | ⚠️ Unaudited |
| TickLens | unknown | base | n/a | [`0x49a3a5cf91de1b78c43dc1add03e8a71f1ea2e30`](./contracts/base-8453/0x49a3a5cf91de1b78c43dc1add03e8a71f1ea2e30/) | ⚠️ Unaudited |
| UniswapV3Factory | unknown | base | n/a | [`0x3f6533d37d7623bf7a396730637ce0f52bf27781`](./contracts/base-8453/0x3f6533d37d7623bf7a396730637ce0f52bf27781/) | ⚠️ Unaudited |
| USBS | unknown | base | n/a | [`0xda55eb290d30203a0a30e0411153c4667021cd57`](./contracts/base-8453/0xda55eb290d30203a0a30e0411153c4667021cd57/) | ⚠️ Unaudited |
| V3Migrator | unknown | base | n/a | [`0x4710b12426270d17936ea61d8314e099062a2c6a`](./contracts/base-8453/0x4710b12426270d17936ea61d8314e099062a2c6a/) | ⚠️ Unaudited |
| V3PrepToken | unknown | base | n/a | [`0x07de0511cb0d7af0b63a1a63b2a575b8ec35f089`](./contracts/base-8453/0x07de0511cb0d7af0b63a1a63b2a575b8ec35f089/) | ⚠️ Unaudited |
| Vault | unknown | base | n/a | [`0xd29ceab5e7c902806f5de29305e45b772ef544ae`](./contracts/base-8453/0xd29ceab5e7c902806f5de29305e45b772ef544ae/) | ⚠️ Unaudited |
| VaultPriceFeed | unknown | base | n/a | [`0x88f1a478d86239f0929c984431281b8a1ca4ca3c`](./contracts/base-8453/0x88f1a478d86239f0929c984431281b8a1ca4ca3c/) | ⚠️ Unaudited |
| VaultReader | unknown | base | n/a | [`0x5c09876676bc0225d94757f78bde48708f0014ec`](./contracts/base-8453/0x5c09876676bc0225d94757f78bde48708f0014ec/) | ⚠️ Unaudited |
| VaultUtils | unknown | base | n/a | [`0x3371da2b01ca2e31bb230582aede3e7cf5ecbcc3`](./contracts/base-8453/0x3371da2b01ca2e31bb230582aede3e7cf5ecbcc3/) | ⚠️ Unaudited |

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
| [***https://gopluslabs.io/token-security/8453/0x647FC2d8B7587B036A93A98D6612a9EcEFd3cb88***](https://console.gopluslabs.io/token-security/8453/0x647FC2d8B7587B036A93A98D6612a9EcEFd3cb88) | GoPlus Labs | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [- [AUDIT]()](https://baseswap.gitbook.io/baseswap/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xb5e73f436a676c649f186dfe6fcbf1bacff958aa`](./contracts/base-8453/0xb5e73f436a676c649f186dfe6fcbf1bacff958aa/) | BPLPManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x78a087d713be963bf307b18f2ff8122ef9a63ae9`](./contracts/base-8453/0x78a087d713be963bf307b18f2ff8122ef9a63ae9/) | BswapToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xffba6f02ae140d8ec2fc7798b5ab60e85bc62c78`](./contracts/base-8453/0xffba6f02ae140d8ec2fc7798b5ab60e85bc62c78/) | FastPriceEvents | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1691559e2cdd440fc40997978eedd63bf76c0641`](./contracts/base-8453/0x1691559e2cdd440fc40997978eedd63bf76c0641/) | FastPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2b0a43dccbd7d42c18f6a83f86d1a19fa58d541a`](./contracts/base-8453/0x2b0a43dccbd7d42c18f6a83f86d1a19fa58d541a/) | MasterChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdb7971adc396d7ed3953e9542a8d4baec914b772`](./contracts/base-8453/0xdb7971adc396d7ed3953e9542a8d4baec914b772/) | MixedRouteQuoterV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x20c51b3da2e7821ef62d63a447ac9e5f8a503065`](./contracts/base-8453/0x20c51b3da2e7821ef62d63a447ac9e5f8a503065/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb4df850b99cf6dae86c2ceca7782ac81a5d5b688`](./contracts/base-8453/0xb4df850b99cf6dae86c2ceca7782ac81a5d5b688/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd1a8d93eebf7a32ad6bc1f8674082ab2f0e89493`](./contracts/base-8453/0xd1a8d93eebf7a32ad6bc1f8674082ab2f0e89493/) | OrderBookReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa64db2c205fdc3fd930dcb6e3e1f9510ca51f146`](./contracts/base-8453/0xa64db2c205fdc3fd930dcb6e3e1f9510ca51f146/) | OrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6f1a2f63ea06b475edbf2e6393406058c12a7910`](./contracts/base-8453/0x6f1a2f63ea06b475edbf2e6393406058c12a7910/) | PancakeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x327df1e6de05895d2ab08513aadd9313fe505d86`](./contracts/base-8453/0x327df1e6de05895d2ab08513aadd9313fe505d86/) | PancakeRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3a180411a88525d872793342ba8b09ab635568a7`](./contracts/base-8453/0x3a180411a88525d872793342ba8b09ab635568a7/) | PositionUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2918e366d059733fe12a2a9c18e7f6fea01fb13c`](./contracts/base-8453/0x2918e366d059733fe12a2a9c18e7f6fea01fb13c/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3d7cbf8104aea85d8c76d5eeb397441a59b24187`](./contracts/base-8453/0x3d7cbf8104aea85d8c76d5eeb397441a59b24187/) | Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xaa88ad234a374989d46a854337e315bcf70020fc`](./contracts/base-8453/0xaa88ad234a374989d46a854337e315bcf70020fc/) | ReferralReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xab2b07da4710bcd8f2d610ca4420e632b994ac55`](./contracts/base-8453/0xab2b07da4710bcd8f2d610ca4420e632b994ac55/) | ReferralStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x67965f5126103abbd49ba912d46bf3afb37730df`](./contracts/base-8453/0x67965f5126103abbd49ba912d46bf3afb37730df/) | RewardReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6699ca490855082a67429b712f96a9a68a1cd15e`](./contracts/base-8453/0x6699ca490855082a67429b712f96a9a68a1cd15e/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x54ee88d2094ecd5b1472c11a604478feda42e2cc`](./contracts/base-8453/0x54ee88d2094ecd5b1472c11a604478feda42e2cc/) | ShortsTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc9ee54147445f1c1c23f52183c95456e69a92989`](./contracts/base-8453/0xc9ee54147445f1c1c23f52183c95456e69a92989/) | SmartChefFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x14963869592e41a2ecd7524bd213cfc3044adf75`](./contracts/base-8453/0x14963869592e41a2ecd7524bd213cfc3044adf75/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x49a3a5cf91de1b78c43dc1add03e8a71f1ea2e30`](./contracts/base-8453/0x49a3a5cf91de1b78c43dc1add03e8a71f1ea2e30/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xda55eb290d30203a0a30e0411153c4667021cd57`](./contracts/base-8453/0xda55eb290d30203a0a30e0411153c4667021cd57/) | USBS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4710b12426270d17936ea61d8314e099062a2c6a`](./contracts/base-8453/0x4710b12426270d17936ea61d8314e099062a2c6a/) | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x07de0511cb0d7af0b63a1a63b2a575b8ec35f089`](./contracts/base-8453/0x07de0511cb0d7af0b63a1a63b2a575b8ec35f089/) | V3PrepToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd29ceab5e7c902806f5de29305e45b772ef544ae`](./contracts/base-8453/0xd29ceab5e7c902806f5de29305e45b772ef544ae/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x88f1a478d86239f0929c984431281b8a1ca4ca3c`](./contracts/base-8453/0x88f1a478d86239f0929c984431281b8a1ca4ca3c/) | VaultPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5c09876676bc0225d94757f78bde48708f0014ec`](./contracts/base-8453/0x5c09876676bc0225d94757f78bde48708f0014ec/) | VaultReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3371da2b01ca2e31bb230582aede3e7cf5ecbcc3`](./contracts/base-8453/0x3371da2b01ca2e31bb230582aede3e7cf5ecbcc3/) | VaultUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19518] ***https://gopluslabs.io/token-security/8453/0x647FC2d8B7587B036A93A98D6612a9EcEFd3cb88***
- [19519] - [AUDIT]()

Fork inheritance lineage and inherited audits are included when available.
