# Agentic Audit Brief: King Protocol

## Project Overview

- Project: King Protocol (`king-protocol`)
- Website: [https://kingprotocol.org/](https://kingprotocol.org/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:19.936Z
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

- Coverage of deployed-live implementations: 4/7 (57.1%)
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
| KingOFTL2 | unknown | mantle | n/a | 2 deployments: mantle [`0x548c41...7b98ed`](./contracts/mantle-5000/0x548c4116a97e0138f78000088ea3f155717b98ed/); mantle `0x5a57eb...7a7ab0` | ✅ Audited |
| KingOFTL2 | unknown | base | n/a | 2 deployments: base [`0x2a57db...9bb283`](./contracts/base-8453/0x2a57db06506ab9764db8dcf06ac17a5fed9bb283/); base `0x6d0431...91570d` | ✅ Audited |
| KingOFTL2 | unknown | base | n/a | 2 deployments: base [`0x4d6a22...51beab`](./contracts/base-8453/0x4d6a22986acca58aa890fbb233f3b4563251beab/); base `0xe22c24...5fbac0` | ✅ Audited |
| KingOFTL2 | unknown | base | n/a | 2 deployments: base [`0xcc0112...e852a9`](./contracts/base-8453/0xcc011273240610838aea80b485fbdff2b2e852a9/); base `0xf25768...1d689d` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbitrageFoundation | unknown | base | n/a | 8 deployments: base [`0x117212...546dc2`](./contracts/base-8453/0x11721202e81eb2f7445bac9f9bf11f0b87546dc2/); base `0x2e7a78...d4eab1`; base `0x44d021...9b42fd`; base `0x506131...55dac7`; base `0x64f582...d7eae2`; base `0xb2bad5...3a18fe`; base `0xe5bb8e...6e29fb`; base `0xe92e65...47cedb` | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | base | n/a | [`0x3253c8...9e0886`](./contracts/base-8453/0x3253c8105e8e70ae6abaf2fd21c703d8729e0886/) | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | [`0xdc5f7c...3015ac`](./contracts/base-8453/0xdc5f7c7916c7792603fdc17f05f7929b423015ac/) | ⚠️ Unaudited |
| RamsesBeaconProxy | registry | arbitrum | n/a | [`0x93e6e5...7bc942`](./contracts/arbitrum-42161/0x93e6e571d04848de3ba31525fca36f1e4f7bc942/) | ⚠️ Unaudited |
| UniswapV3Plugin | unknown | base | n/a | 4 deployments: base [`0x409994...200ec2`](./contracts/base-8453/0x409994fd2fdcfccddea418b7f203b4db51200ec2/); base `0x84acc4...983af0`; base `0x8bd78c...e4a459`; base `0xa12772...675ef7` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | swellchain | n/a | `0xc2606a...cee6f8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x63f237...077c6a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe63ba6...cce318` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0e9315...6aca5a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x155938...a33ac4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34b17b...fc1dc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x644403...436763` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e2a99...025844` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaeab5e...d12dbe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb71612...e228e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd2e14...27586b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe592f9...3421b5` | ❓ Unverified |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

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
