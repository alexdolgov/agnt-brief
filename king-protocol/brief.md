# Agentic Audit Brief: King Protocol

## Project Overview

- Project: King Protocol (`king-protocol`)
- Website: [https://kingprotocol.org/](https://kingprotocol.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.225Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, base, mantle, swellchain
- Contract surface: 21 unique implementations (35 raw deployments)
- DeFi Llama TVL: $1,181,064.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Restaking. Structurally: 5 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 35 (11 live, 24 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/6 (66.7%)
- Deployed-live implementations: 7 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/9
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 21
- Raw deployments: 35
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 44.4% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KingOFTL2 | unknown | mantle | n/a | 2 deployments: mantle [`0x548c4116a97e0138f78000088ea3f155717b98ed`](./contracts/mantle-5000/0x548c4116a97e0138f78000088ea3f155717b98ed/); mantle `0x5a57ebb2c25eb64f05ebb4e07d9de8b3b67a7ab0` | ✅ Audited |
| KingOFTL2 | unknown | base | n/a | 2 deployments: base [`0x2a57db06506ab9764db8dcf06ac17a5fed9bb283`](./contracts/base-8453/0x2a57db06506ab9764db8dcf06ac17a5fed9bb283/); base `0x6d04314fb449e020bd70ac701dfe0f13b591570d` | ✅ Audited |
| KingOFTL2 | unknown | base | n/a | 2 deployments: base [`0x4d6a22986acca58aa890fbb233f3b4563251beab`](./contracts/base-8453/0x4d6a22986acca58aa890fbb233f3b4563251beab/); base `0xe22c243c7559c667a1eb94b593369d192c5fbac0` | ✅ Audited |
| KingOFTL2 | unknown | base | n/a | 2 deployments: base [`0xcc011273240610838aea80b485fbdff2b2e852a9`](./contracts/base-8453/0xcc011273240610838aea80b485fbdff2b2e852a9/); base `0xf25768f2ac3a4c349be98c46ee97f59a9b1d689d` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbitrageFoundation | unknown | base | n/a | 8 deployments: base [`0x11721202e81eb2f7445bac9f9bf11f0b87546dc2`](./contracts/base-8453/0x11721202e81eb2f7445bac9f9bf11f0b87546dc2/); base `0x2e7a789893e96ee2aea8d5404cedfbf7b9d4eab1`; base `0x44d021961cd51152b24f4782cb22b64c739b42fd`; base `0x5061315ef94788a482aae586d5f93cd6c555dac7`; base `0x64f5824d1eed1234138462824e4dc74022d7eae2`; base `0xb2bad500860c1efcef22f15f3f82f656853a18fe`; base `0xe5bb8ef2d356cc54791396eaa979328f826e29fb`; base `0xe92e65ba68e39774722678103ebcfc97a747cedb` | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | base | n/a | [`0x3253c8105e8e70ae6abaf2fd21c703d8729e0886`](./contracts/base-8453/0x3253c8105e8e70ae6abaf2fd21c703d8729e0886/) | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | [`0xdc5f7c7916c7792603fdc17f05f7929b423015ac`](./contracts/base-8453/0xdc5f7c7916c7792603fdc17f05f7929b423015ac/) | ⚠️ Unaudited |
| RamsesBeaconProxy | registry | arbitrum | n/a | [`0x93e6e571d04848de3ba31525fca36f1e4f7bc942`](./contracts/arbitrum-42161/0x93e6e571d04848de3ba31525fca36f1e4f7bc942/) | ⚠️ Unaudited |
| UniswapV3Plugin | unknown | base | n/a | 4 deployments: base [`0x409994fd2fdcfccddea418b7f203b4db51200ec2`](./contracts/base-8453/0x409994fd2fdcfccddea418b7f203b4db51200ec2/); base `0x84acc48d3c96728f9572a4f1b8819317de983af0`; base `0x8bd78cc193c01573d4e464e2c3d1514dade4a459`; base `0xa12772103af37270b4a6e68865463ff6ee675ef7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | swellchain | n/a | `0xc2606aade4bdd978a4fa5a6edb3b66657acee6f8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x63f23727af926604016ed0856a2390a1e4077c6a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe63ba626494f88d5a269b435213f2e8803cce318` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0e9315a7868608e6efc309575fe9fcdc756aca5a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x15593877afb1d5ee4b1ea7b31f540e88bda33ac4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34b17b0eaa06bb0f5d3c711627121da747fc1dc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x644403bf932e142b45ca35bdf33d2c45d7436763` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e2a99a7bd0b27945c838ba702342a7acc025844` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaeab5e4d4a8ffc01807c1ec3aa11eedfebd12dbe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb7161279dc98a3f09f46c42a77fecc8eafe228e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd2e14734ab6634ed91f37dca9b3169b5627586b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe592f9af23a0c51ff59f611698da3833bd3421b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [NM_0452_King_Cross_Chain_FINAL.pdf](https://github.com/King-Protocol/king-cross-chain/blob/master/audit/NM_0452_King_Cross_Chain_FINAL.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 8 | high |
| [NM_0314_EtherFi_LRT_2.pdf](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/NM_0314_EtherFi_LRT_2.pdf) | NM | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [NM_0390_LRT_Square_Strategies_DRAFT.pdf](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/NM_0390_LRT_Square_Strategies_DRAFT.pdf) | NM | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf) | Ether_Fi | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf](https://github.com/King-Protocol/king-protocol-sc/blob/master/audits/Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf) | Ether Fi | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x11721202e81eb2f7445bac9f9bf11f0b87546dc2`](./contracts/base-8453/0x11721202e81eb2f7445bac9f9bf11f0b87546dc2/) | ArbitrageFoundation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdc5f7c7916c7792603fdc17f05f7929b423015ac`](./contracts/base-8453/0xdc5f7c7916c7792603fdc17f05f7929b423015ac/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x93e6e571d04848de3ba31525fca36f1e4f7bc942`](./contracts/arbitrum-42161/0x93e6e571d04848de3ba31525fca36f1e4f7bc942/) | RamsesBeaconProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=8

Zero-match audit list:

- [3126] NM_0314_EtherFi_LRT_2.pdf
- [3127] NM_0390_LRT_Square_Strategies_DRAFT.pdf
- [3128] Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf
- [14854] Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf

Fork inheritance lineage and inherited audits are included when available.
