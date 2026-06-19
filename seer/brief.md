# Agentic Audit Brief: Seer

## Project Overview

- Project: Seer (`seer`)
- Website: [https://seer.pm/](https://seer.pm/)
- Lifecycle: active (Tier 0, 23.2% below peak)
- Generated: 2026-06-19T06:14:37.355Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: ethereum, gnosis
- Contract surface: 25 unique implementations (77 raw deployments)
- DeFi Llama TVL: $828,646.84
- On-chain TVL (included contracts): $1,475,343.79
- TVL by chain: Ethereum $1,475,343.79

## Project Description

Seer is a decentralized prediction market protocol that allows users to create and trade outcome tokens on future events. It uses conditional token frameworks and automated market makers to facilitate trading and liquidity provision.

### Architecture

MarketFactory deploys individual Market contracts that interact with ConditionalTokens for outcome token minting and redemption. AlgebraFactory and FutarchyFactory provide AMM infrastructure, while MarketView offers read-only aggregation, all sharing the same conditional token framework.

## Contract Surface Quality

- Indexed contracts: 336; live-surface contracts included: 77 (54 live, 23 unknown).
- Excluded by liveness: 259 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 12/71.

## Audit Coverage Summary

- Verified implementations audited: 0/24 (0.0%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 25
- Raw deployments: 77
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,475,343.79
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConditionalTokens | token | ethereum | n/a | 2 deployments: ethereum [`0xc59b0e...407e0c`](./contracts/ethereum-1/0xc59b0e4de5f1248c1140964e0ff287b192407e0c/); gnosis `0xceafdd...43c0ce` | ⚠️ Unaudited |
| AlgebraFactory | registry | gnosis | n/a | [`0xa0864c...7da766`](./contracts/gnosis-100/0xa0864cca6e114013ab0e27cbd5b6f4c8947da766/) | ⚠️ Unaudited |
| CentralVault | core_logic | gnosis | n/a | 4 deployments: gnosis [`0x0ec662...c2b84d`](./contracts/gnosis-100/0x0ec66212a45f6b289e1965ac218d95b350c2b84d/); gnosis `0x4f49a8...f0f82b`; gnosis `0x7f2265...d57894`; gnosis `0xde8d8f...249995` | ⚠️ Unaudited |
| ConditionalRouter | adapter | gnosis | n/a | [`0x774284...13c29c`](./contracts/gnosis-100/0x774284d5cdfec3a0a0ebc7283ad4d5b33013c29c/) | ⚠️ Unaudited |
| CreditsManager | governance | gnosis | n/a | 4 deployments: gnosis [`0x17592e...ea8a61`](./contracts/gnosis-100/0x17592efe59a318a6b0afe32145ee04eafeea8a61/); gnosis `0x43bd67...43af17`; gnosis `0xb29d0c...4d2d70`; gnosis `0xfeb801...c9768b` | ⚠️ Unaudited |
| ForesightCredits | unknown | gnosis | n/a | [`0x09e701...2c94f9`](./contracts/gnosis-100/0x09e7014d2c15eb8c5ee25853fe6842ff5e2c94f9/) | ⚠️ Unaudited |
| FPMMDeterministicFactory | registry | gnosis | n/a | [`0x9083a2...a3eef0`](./contracts/gnosis-100/0x9083a2b699c0a4ad06f63580bde2635d26a3eef0/) | ⚠️ Unaudited |
| FutarchyFactory | registry | gnosis | n/a | 3 deployments: ethereum `0xf9369c...9d3678`; gnosis [`0xa6cb18...30a345`](./contracts/gnosis-100/0xa6cb18fcdc17a2b44e5cad2d80a6d5942d30a345/); gnosis `0xe789e4...f6b792` | ⚠️ Unaudited |
| FutarchyProposal | unknown | ethereum | n/a | [`0x0956b7...2d8a1c`](./contracts/ethereum-1/0x0956b70ac0eca45db9661a1cee96b2e7062d8a1c/) | ⚠️ Unaudited |
| FutarchyRealityProxy | unknown | ethereum | n/a | [`0xa638f2...5280dc`](./contracts/ethereum-1/0xa638f22cdd13013494971b0e1325718aa45280dc/) | ⚠️ Unaudited |
| FutarchyRouter | adapter | gnosis | n/a | 3 deployments: ethereum `0xac9bf8...3f98dc`; gnosis [`0x7495a5...e1228f`](./contracts/gnosis-100/0x7495a583ba85875d59407781b4958ed6e0e1228f/); gnosis `0xe2996f...c9f74e` | ⚠️ Unaudited |
| GnosisRouter | adapter | gnosis | n/a | [`0xec9048...c70fb8`](./contracts/gnosis-100/0xec9048b59b3467415b1a38f63416407ea0c70fb8/) | ⚠️ Unaudited |
| MainnetRouter | adapter | ethereum | n/a | [`0x886ef0...af8bc6`](./contracts/ethereum-1/0x886ef0a78fabbae942f1da1791a8ed02a5af8bc6/) | ⚠️ Unaudited |
| Market | unknown | gnosis | n/a | 24 deployments: gnosis [`0x0b5f90...59d93a`](./contracts/gnosis-100/0x0b5f90febc2fc44c43985b2a712f159ca059d93a/); gnosis `0x0d479a...a3ac09`; gnosis `0x20a3b1...1bc2d2`; gnosis `0x21a72f...d1d6a3`; gnosis `0x232474...fa5ca8`; gnosis `0x612f80...07bc1e`; gnosis `0x61cdb9...32f459`; gnosis `0x6ac12e...4ef581`; gnosis `0x829c91...88dbcb`; gnosis `0x87aabb...e0baf7`; gnosis `0x8b8de5...454778`; gnosis `0x9510c9...9e8aeb`; gnosis `0x9b6cca...7d8de1`; gnosis `0x9baeee...cda933`; gnosis `0x9e2272...24ad10`; gnosis `0x9ef70c...80bc7f`; gnosis `0xabe35c...4802f9`; gnosis `0xbbf8f7...bcc32e`; gnosis `0xc57764...088e17`; gnosis `0xe820d0...4bb647`; gnosis `0xf444a3...8423fd`; gnosis `0xfbebbb...cd2df0`; gnosis `0xfc5e55...cb63ce`; gnosis `0xfe414d...4b7c36` | ⚠️ Unaudited |
| MarketFactory | registry | gnosis | n/a | 5 deployments: ethereum `0x1f728c...7b7904`; gnosis [`0x1246c7...f58e90`](./contracts/gnosis-100/0x1246c7e5ac59ba73a45a62e3081b548f02f58e90/); gnosis `0x2e3937...ecb68e`; gnosis `0x83183d...5cdcf1`; gnosis `0x846f8f...92e6c5` | ⚠️ Unaudited |
| ParimutuelVault | core_logic | gnosis | n/a | 2 deployments: gnosis [`0x506dcc...0b6137`](./contracts/gnosis-100/0x506dcc9781b895b02559014544a83bd39f0b6137/); gnosis `0x659a90...2810c9` | ⚠️ Unaudited |
| PickemSlateFactory | registry | gnosis | n/a | 4 deployments: gnosis [`0x2a9fa7...5b0cad`](./contracts/gnosis-100/0x2a9fa7bad74e85d91c8f9fc1258f065e285b0cad/); gnosis `0x4df41e...1612f5`; gnosis `0xa2cd7c...d9bb67`; gnosis `0xfe5754...aac3c3` | ⚠️ Unaudited |
| RealityProxy | unknown | gnosis | n/a | [`0xc260ad...0f2d6c`](./contracts/gnosis-100/0xc260adfac11f97c001dc143d2a4f45b98e0f2d6c/) | ⚠️ Unaudited |
| SeerCredits | unknown | gnosis | n/a | 3 deployments: gnosis [`0x3a0d86...dc607c`](./contracts/gnosis-100/0x3a0d8671efcbc172edbe32f91169bbc984dc607c/); gnosis `0xedd48e...51acaf`; gnosis `0xf67736...cd466b` | ⚠️ Unaudited |
| SlateFactory | registry | gnosis | n/a | 2 deployments: gnosis [`0x31ac36...6ecbac`](./contracts/gnosis-100/0x31ac36cbaa3e7e57a1542f6623fc775ec86ecbac/); gnosis `0xb5a01f...22f1d9` | ⚠️ Unaudited |
| SportsSlateFactory | registry | gnosis | n/a | 6 deployments: gnosis [`0x293dfe...4640d1`](./contracts/gnosis-100/0x293dfe3ffe40454598ebc745d46da3d3c44640d1/); gnosis `0x6938ef...dc070a`; gnosis `0x7e53af...a732d8`; gnosis `0x8a670a...7f2999`; gnosis `0x931fc6...3fc6c4`; gnosis `0x96f61c...2a3619` | ⚠️ Unaudited |
| TradingCredits | unknown | gnosis | n/a | 3 deployments: gnosis [`0x02d727...e2e5c2`](./contracts/gnosis-100/0x02d727a6a93eb45d2c20f6d9c7a97ae8fce2e5c2/); gnosis `0x075b4c...decc15`; gnosis `0x122f6b...ca35a8` | ⚠️ Unaudited |
| UniswapV3Factory | registry | ethereum | n/a | [`0x1f9843...31f984`](./contracts/ethereum-1/0x1f98431c8ad98523631ae4a59f267346ea31f984/) | ⚠️ Unaudited |
| Wrapped1155Factory | registry | ethereum | n/a | [`0xd19431...10b79f`](./contracts/ethereum-1/0xd194319d1804c1051dd21ba1dc931ca72410b79f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | gnosis | n/a | `0xe9d43d...4414e3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | [`0x17592e...ea8a61`](./contracts/gnosis-100/0x17592efe59a318a6b0afe32145ee04eafeea8a61/) | CreditsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x9083a2...a3eef0`](./contracts/gnosis-100/0x9083a2b699c0a4ad06f63580bde2635d26a3eef0/) | FPMMDeterministicFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0956b7...2d8a1c`](./contracts/ethereum-1/0x0956b70ac0eca45db9661a1cee96b2e7062d8a1c/) | FutarchyProposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa638f2...5280dc`](./contracts/ethereum-1/0xa638f22cdd13013494971b0e1325718aa45280dc/) | FutarchyRealityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xec9048...c70fb8`](./contracts/gnosis-100/0xec9048b59b3467415b1a38f63416407ea0c70fb8/) | GnosisRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x886ef0...af8bc6`](./contracts/ethereum-1/0x886ef0a78fabbae942f1da1791a8ed02a5af8bc6/) | MainnetRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x2a9fa7...5b0cad`](./contracts/gnosis-100/0x2a9fa7bad74e85d91c8f9fc1258f065e285b0cad/) | PickemSlateFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xc260ad...0f2d6c`](./contracts/gnosis-100/0xc260adfac11f97c001dc143d2a4f45b98e0f2d6c/) | RealityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x3a0d86...dc607c`](./contracts/gnosis-100/0x3a0d8671efcbc172edbe32f91169bbc984dc607c/) | SeerCredits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x31ac36...6ecbac`](./contracts/gnosis-100/0x31ac36cbaa3e7e57a1542f6623fc775ec86ecbac/) | SlateFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x293dfe...4640d1`](./contracts/gnosis-100/0x293dfe3ffe40454598ebc745d46da3d3c44640d1/) | SportsSlateFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x02d727...e2e5c2`](./contracts/gnosis-100/0x02d727a6a93eb45d2c20f6d9c7a97ae8fce2e5c2/) | TradingCredits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd19431...10b79f`](./contracts/ethereum-1/0xd194319d1804c1051dd21ba1dc931ca72410b79f/) | Wrapped1155Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
