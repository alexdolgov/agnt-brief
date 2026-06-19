# Agentic Audit Brief: ACryptoS

## Project Overview

- Project: ACryptoS (`acryptos`)
- Website: [https://www.acryptos.com/](https://www.acryptos.com/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-19T06:13:13.462Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, base, bsc
- Contract surface: 19 unique implementations (120 raw deployments)
- DeFi Llama TVL: $10,552,177.58
- On-chain TVL (included contracts): $5,436,812.44
- TVL by chain: Bsc $5,436,812.44

## Project Description

ACryptoS is a multi-chain yield optimization protocol that offers automated vaults and farming strategies. Users deposit assets into vaults which execute complex yield farming strategies, including leveraged positions on external protocols like Venus, to maximize returns. The protocol also features governance tokens (ACS, ACSI) and a MasterChef-style farm for reward distribution.

### Architecture

Vaults and farming contracts share governance infrastructure (Controller, Timelock) and proxy patterns (AdminUpgradeabilityProxy, ERC1967Proxy). Vault strategies often deposit into external protocols and may stake receipt tokens in MasterChef farms to earn ACS/ACSI rewards, creating a yield compounding loop.

## Contract Surface Quality

- Indexed contracts: 678; live-surface contracts included: 120 (120 live, 0 unknown).
- Excluded by liveness: 436 inactive, 122 singleton, 0 uninitialized.
- Deployment units: 2/49 live.
- Detected codebases: balancer-v2
- Unverified dependencies: 1/7.

## Audit Coverage Summary

- Verified implementations audited: 8/15 (53.3%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 19
- Raw deployments: 120
- Audits discovered: 8
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $85,692.62
- Latest audit: 2021-11 (stale)
- Staleness: 0 fresh, 0 aging, 6 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 8 | 53.3% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ACryptoSVault | core_logic | bsc | n/a | 86 deployments: bsc [`0x027b51...baac78`](./contracts/bsc-56/0x027b514b13b17eb123c88f48fedc14676bbaac78/); bsc `0x02aabf...919d0e`; bsc `0x0395fc...5e3eef`; bsc `0x03e0df...4233c1`; bsc `0x03e904...2f5c39`; bsc `0x0551ea...29fd31`; bsc `0x08234f...b0ee6f`; bsc `0x0e3e97...a6de62`; bsc `0x123108...fedbbe`; bsc `0x14b197...c7dcec`; bsc `0x161afe...78d33f`; bsc `0x17c9bb...15e0d6`; bsc `0x1ba8b2...27406b`; bsc `0x1da371...02c1a3`; bsc `0x1db2f2...1dc655`; bsc `0x2875a5...b3ef2c`; bsc `0x28b4b0...314af9`; bsc `0x2d8483...041137`; bsc `0x32d5b8...35f3a0`; bsc `0x32fe1b...a31943`; bsc `0x35cadd...8d863e`; bsc `0x38e3e6...8962b0`; bsc `0x3a30e2...ab0a06`; bsc `0x40a7dd...dcdfed`; bsc `0x471696...ec1f8d`; bsc `0x4e58b6...dca14f`; bsc `0x51d6b8...dcbb73`; bsc `0x52525a...55c006`; bsc `0x532d57...a9baa5`; bsc `0x58d35b...3a360b`; bsc `0x5a330d...59620c`; bsc `0x5c2b38...478684`; bsc `0x5c8c85...10e5a8`; bsc `0x5d15d6...60eae2`; bsc `0x5e4993...563690`; bsc `0x5f9aab...aedf55`; bsc `0x6200f2...384941`; bsc `0x675361...ab1ed9`; bsc `0x68fdcd...9bfc3c`; bsc `0x6c8a59...a30d8d`; bsc `0x6cc0ef...314a9c`; bsc `0x713da0...38d8de`; bsc `0x7a2fb0...7f6624`; bsc `0x7abbcf...34a58e`; bsc `0x7d34cd...3d996a`; bsc `0x82b4c3...04bced`; bsc `0x838366...c7d5af`; bsc `0x87d5fd...64a230`; bsc `0x883a0d...016811`; bsc `0x8dc707...f1d766`; bsc `0x90f277...6cba16`; bsc `0x9ce0e8...99ce04`; bsc `0xa0753c...03e5cd`; bsc `0xa1125b...aadc88`; bsc `0xa49642...804126`; bsc `0xab8191...31a2d1`; bsc `0xab8195...c8b24a`; bsc `0xac0452...ecbde2`; bsc `0xad4bba...791f6f`; bsc `0xadb783...388ada`; bsc `0xb00b62...c00bc5`; bsc `0xb1dc4f...afd5bd`; bsc `0xb2c1b3...deca7c`; bsc `0xb6eb65...00a0c0`; bsc `0xb8c134...362c98`; bsc `0xb9b837...e84f31`; bsc `0xbb08f8...92cc1b`; bsc `0xbba267...04bea5`; bsc `0xc109d8...207102`; bsc `0xcd630d...7a08c3`; bsc `0xcf69f9...bf6317`; bsc `0xcfb96f...e2d280`; bsc `0xcfbb1a...a6398e`; bsc `0xd574c6...66db75`; bsc `0xda6e3b...36033f`; bsc `0xdac0c9...07f323`; bsc `0xe0303c...c02f95`; bsc `0xe427a9...ea9908`; bsc `0xe9861f...622ff5`; bsc `0xe9d9f5...a3869c`; bsc `0xed3f6a...e01765`; bsc `0xf54d43...f6c73a`; bsc `0xf690ae...720494`; bsc `0xf7ffa2...7af16b`; bsc `0xfc698d...17e5e2`; bsc `0xfcf924...6d5a48` | ✅ Audited |
| ACryptoSVaultBnb | core_logic | bsc | n/a | 3 deployments: bsc [`0x10137a...373104`](./contracts/bsc-56/0x10137a821fd5aea332f682f4cbafc839e4373104/); bsc `0x6fe676...35a628`; bsc `0x997899...7cfbde` | ✅ Audited |
| ACryptoSVault0V2_ACSI | core_logic | bsc | n/a | [`0x2b6639...ae929a`](./contracts/bsc-56/0x2b66399ad01be47c5aa11c48fdd6df689dae929a/) | ✅ Audited |
| ACryptoSVault0 | core_logic | bsc | n/a | [`0x767938...3a4fc3`](./contracts/bsc-56/0x7679381507af0c8de64586a458161aa58d3a4fc3/) | ✅ Audited |
| ACS | unknown | bsc | n/a | [`0x4197c6...aa1d29`](./contracts/bsc-56/0x4197c6ef3879a08cd51e5560da5064b773aa1d29/) | ✅ Audited |
| ACSI | unknown | bsc | n/a | [`0x5b17b4...cba389`](./contracts/bsc-56/0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389/) | ✅ Audited |
| MasterChef | unknown | bsc | n/a | [`0xeae142...9d0bed`](./contracts/bsc-56/0xeae1425d8ed46554bf56968960e2e567b49d0bed/) | ✅ Audited |
| StrategyACryptoSVenusLeverageBnb | core_logic | bsc | n/a | [`0x3b5b36...5d78ec`](./contracts/bsc-56/0x3b5b3640096a5381e7378a013069c4ef925d78ec/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StrategyACryptoS0V6_ACSI | core_logic | bsc | n/a | [`0x8045db...1bdf51`](./contracts/bsc-56/0x8045db83f60fe9fc8eb67593140eeeb4a71bdf51/) | ⚠️ Unaudited |
| StrategyACryptoSBsw | core_logic | bsc | n/a | 2 deployments: bsc [`0x2aa23d...9354c5`](./contracts/bsc-56/0x2aa23d513e9a9e6bd22862debb66161ab49354c5/); bsc `0x577b47...a29d51` | ⚠️ Unaudited |
| StrategyACryptoSMdxV3 | core_logic | bsc | n/a | 2 deployments: bsc [`0x24a87b...ada317`](./contracts/bsc-56/0x24a87b844fa46008442186f1362a8123b0ada317/); bsc `0xe8b2e9...7d2a96` | ⚠️ Unaudited |
| StrategyACryptoSAtlantisLeverageBnbV5 | core_logic | bsc | n/a | [`0xb918b4...aee9fa`](./contracts/bsc-56/0xb918b4609462c13272fbf9ba48cb71cf35aee9fa/) | ⚠️ Unaudited |
| StrategyACryptoSDsg | core_logic | bsc | n/a | [`0x02bd61...51e6f9`](./contracts/bsc-56/0x02bd617fbce209d974d545fa06236aec3651e6f9/) | ⚠️ Unaudited |
| StrategyACryptoSVenusVaiV2 | core_logic | bsc | n/a | [`0x20d1d3...8a6f78`](./contracts/bsc-56/0x20d1d365834852f1fea2dfacd5121935f88a6f78/) | ⚠️ Unaudited |
| Vyper_contract | unknown | bsc | n/a | 9 deployments: bsc [`0x191409...8a191e`](./contracts/bsc-56/0x191409d5a4effe25b0f4240557ba2192d18a191e/); bsc `0x38b28b...809ac7`; bsc `0x391987...a4f958`; bsc `0x494403...f02b28`; bsc `0x83d69e...71f29b`; bsc `0x9e31f4...606b98`; bsc `0xb3f0c9...59b0ac`; bsc `0xd3debe...23301b`; bsc `0xeb7dc7...1ea5ad` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x3e499ebd1aa75415d6ba26f3ffa08ae649b6db0a) | proxy | arbitrum | unit-36705 (5 proxies) | 5 deployments: arbitrum `0x05aa42...7004ed`; arbitrum `0x4405bc...7fb938`; arbitrum `0x5fddfe...38328e`; arbitrum `0x8aa74a...adfc84`; arbitrum `0xdfafee...82873b` | ❓ Unverified |
| Proxy (impl: 0xc80ed325f6471d39f03b3acd1ed38dfd3a0972d7) | proxy | base | unit-36704 | `0x07667a...8bc6da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3aa07f...fbf9a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x844cb6...fe68bc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [README.md](https://github.com/acryptos/docs.acryptos.com/blob/master/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20210128-defiyield.info.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210128-defiyield.info.pdf) | Hacken | Audit | 2021-01 | stale | Direct | contract_name | 4 | high |
| [20210218-Hacken-ACryptoSFarmV2.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210218-Hacken-ACryptoSFarmV2.pdf) | Hacken | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | 0 | n/a |
| [20210331-Hacken-Complete.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210331-Hacken-Complete.pdf) | Hacken | Audit | 2021-03 | stale | Direct | contract_name | 94 | high |
| [20211105-Hacken-AcsiFinance-BalancerV2.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20211105-Hacken-AcsiFinance-BalancerV2.pdf) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20211116-Hacken-Review.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20211116-Hacken-Review.pdf) | Hacken | Audit | 2021-11 | stale | Direct | contract_name | 93 | high |
| [**1**](https://skynet.certik.com/projects/acryptos) | CertiK | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x8045db...1bdf51`](./contracts/bsc-56/0x8045db83f60fe9fc8eb67593140eeeb4a71bdf51/) | StrategyACryptoS0V6_ACSI | core_logic | $85,692.51 | Verified native implementation with $85,692.51 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2aa23d...9354c5`](./contracts/bsc-56/0x2aa23d513e9a9e6bd22862debb66161ab49354c5/) | StrategyACryptoSBsw | core_logic | $0.11 | Verified native implementation with $0.11 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x24a87b...ada317`](./contracts/bsc-56/0x24a87b844fa46008442186f1362a8123b0ada317/) | StrategyACryptoSMdxV3 | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb918b4...aee9fa`](./contracts/bsc-56/0xb918b4609462c13272fbf9ba48cb71cf35aee9fa/) | StrategyACryptoSAtlantisLeverageBnbV5 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02bd61...51e6f9`](./contracts/bsc-56/0x02bd617fbce209d974d545fa06236aec3651e6f9/) | StrategyACryptoSDsg | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20d1d3...8a6f78`](./contracts/bsc-56/0x20d1d365834852f1fea2dfacd5121935f88a6f78/) | StrategyACryptoSVenusVaiV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=402

Zero-match audit list:

- [9664] README.md
- [9666] 20210218-Hacken-ACryptoSFarmV2.pdf
- [9667] 20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf
- [9669] 20211105-Hacken-AcsiFinance-BalancerV2.pdf
- [15288] **1**

Fork inheritance lineage and inherited audits are included when available.
