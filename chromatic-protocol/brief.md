# Agentic Audit Brief: Chromatic Protocol

## Project Overview

- Project: Chromatic Protocol (`chromatic-protocol`)
- Website: [https://www.chromatic.finance](https://www.chromatic.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.262Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: arbitrum
- Contract surface: 13 unique implementations (36 raw deployments)
- DeFi Llama TVL: $975.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 29 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 2 ERC1155 multi-tokens; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 9 common project-authored base contract(s) (marketfacetbase, chromaticcommonlp, chromaticlpbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 36 (33 live, 3 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/10 (60.0%)
- Deployed-live implementations: 10 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/10
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 13
- Raw deployments: 36
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 6 | 60.0% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChromaticBPFactory | registry | arbitrum | n/a | [`0xfb913c25e35f48a0809a0a7420e4ea77859cfb0e`](./contracts/arbitrum-42161/0xfb913c25e35f48a0809a0a7420e4ea77859cfb0e/) | ✅ Audited |
| ChromaticLP | unknown | arbitrum | n/a | 21 deployments: arbitrum [`0x0e339ccae40e18793ba3d8ccb9394d7901c5affb`](./contracts/arbitrum-42161/0x0e339ccae40e18793ba3d8ccb9394d7901c5affb/); arbitrum `0x1971cd6ba8fe74d0ef2ee904f9d76aab6c1ddc6c`; arbitrum `0x30ff22b782e6a09b34c2ff3206a8bd2e0d650912`; arbitrum `0x42688bf565d020cace88b057008ae0d8196e2df2`; arbitrum `0x4568e81b9faeee48fc48d4817c8a2a578f01434f`; arbitrum `0x4780b91f47c0848a8abd69576bbd83a5a12f9c81`; arbitrum `0x67096c11e78dc6ad1b7cb6e2599ce02fc7668e47`; arbitrum `0x8052bd81c69c84c9caa67147d663bccfe4f7f1f1`; arbitrum `0x832e20f49e690e85b3ef7b200eaba64012e0988b`; arbitrum `0x848f268caaaf07da06826f2b6364a9067af33605`; arbitrum `0x87186524edd20ef1bec3527f39ccdd822e78b457`; arbitrum `0x931194e0ea466843437cf29336485eb4d0748a2a`; arbitrum `0x93f7240b32c5da858975823a9b607ae00c3a8c93`; arbitrum `0x969b07852b60a559d7da12cd17f59282917b9bd3`; arbitrum `0x9706de4b4bb1027ce059344cd42bb57e079f64c7`; arbitrum `0xad6fe0a0d746aeeedeeab19adbadbe58249cd0c7`; arbitrum `0xb7f379913e7b8a60954977a18eab930d0709c1bb`; arbitrum `0xcab81a613bff3f56f6d6a14edcad87f7cb525b27`; arbitrum `0xee808d7bf3c0e08ebfad2af23443ad36e52c7b6a`; arbitrum `0xfa334be13ba4cdc5c3d9a25344ffbb312d2423a2`; arbitrum `0xfe6e1f50bcebcd58a95e2f136fa4bcbfebdc74f7` | ✅ Audited |
| ChromaticLPRegistry | registry | arbitrum | n/a | [`0xc337325525ef17b7852fd36da400d3f9eed51a4a`](./contracts/arbitrum-42161/0xc337325525ef17b7852fd36da400d3f9eed51a4a/) | ✅ Audited |
| ChromaticRouter | adapter | arbitrum | n/a | [`0xbcc97243f965ecbe31071887b5ddba1add8e220a`](./contracts/arbitrum-42161/0xbcc97243f965ecbe31071887b5ddba1add8e220a/) | ✅ Audited |
| MarketLiquidateFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xd859492325d2035c73a3d317918590dc673c58f0`](./contracts/arbitrum-42161/0xd859492325d2035c73a3d317918590dc673c58f0/); arbitrum `0xe92b90e81d3d4989e7bd70093cfe4d820b7fa6fb` | ✅ Audited |
| MarketStateFacet | unknown | arbitrum | n/a | [`0xed8f31f4ba61beaf9bdc0ed32387de5901a418c1`](./contracts/arbitrum-42161/0xed8f31f4ba61beaf9bdc0ed32387de5901a418c1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChromaticLPLogic | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3e13af6d1a3ed3b69e44dd92f96bcae471f9f238`](./contracts/arbitrum-42161/0x3e13af6d1a3ed3b69e44dd92f96bcae471f9f238/); arbitrum `0x8b48e672d99ac7cf1be87bbaca41bd6b655ef0a1` | ⚠️ Unaudited |
| CLBTokenDeployerLib | token | arbitrum | n/a | [`0xf0ba5f54af8d3dfd379ce97e6597d63deeea794d`](./contracts/arbitrum-42161/0xf0ba5f54af8d3dfd379ce97e6597d63deeea794d/) | ⚠️ Unaudited |
| MarketRemoveLiquidityFacet | unknown | arbitrum | n/a | [`0xcd92faf0f5bcc980f2edeee2c74352b8c9eb90c8`](./contracts/arbitrum-42161/0xcd92faf0f5bcc980f2edeee2c74352b8c9eb90c8/) | ⚠️ Unaudited |
| MarketTradeOpenPositionFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xbb7ae79a07abedd635b6b4143ef494d8a0ca342b`](./contracts/arbitrum-42161/0xbb7ae79a07abedd635b6b4143ef494d8a0ca342b/); arbitrum `0xff9ab6e6584b480252476f0bf6e0b8e9de0bac0e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x61f842e4b5c3e1c759bb3371f7a7e61926ceb099` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x81c94f35a170b1935f17de47f74204895c437461` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed97991b6cb2a77902d5ecee6f51f6f3ee7f838d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Chromatic_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Chromatic_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2024-02 | stale | Direct | contract_name | 6 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x3e13af6d1a3ed3b69e44dd92f96bcae471f9f238`](./contracts/arbitrum-42161/0x3e13af6d1a3ed3b69e44dd92f96bcae471f9f238/) | ChromaticLPLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf0ba5f54af8d3dfd379ce97e6597d63deeea794d`](./contracts/arbitrum-42161/0xf0ba5f54af8d3dfd379ce97e6597d63deeea794d/) | CLBTokenDeployerLib | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcd92faf0f5bcc980f2edeee2c74352b8c9eb90c8`](./contracts/arbitrum-42161/0xcd92faf0f5bcc980f2edeee2c74352b8c9eb90c8/) | MarketRemoveLiquidityFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbb7ae79a07abedd635b6b4143ef494d8a0ca342b`](./contracts/arbitrum-42161/0xbb7ae79a07abedd635b6b4143ef494d8a0ca342b/) | MarketTradeOpenPositionFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Fork inheritance lineage and inherited audits are included when available.
