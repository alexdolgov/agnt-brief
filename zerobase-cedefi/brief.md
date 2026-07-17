# Agentic Audit Brief: ZEROBASE CeDeFi

## Project Overview

- Project: ZEROBASE CeDeFi (`zerobase-cedefi`)
- Website: [https://app.zerobase.pro/](https://app.zerobase.pro/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.802Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 61 unique implementations (95 raw deployments)
- DeFi Llama TVL: $55,728,979.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 7 project-authored contract(s) across 4 chain(s); 3 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 110; live-surface contracts included: 95 (42 live, 53 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/7 (57.1%)
- Deployed-live implementations: 8 of 61 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/7
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 54
- Unique implementations: 61
- Raw deployments: 95
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 2 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Salus Security | Tier 2 | 3 | 42.9% | 2025-09 |
| unknown | Tier 2 | 3 | 42.9% | 2024-12 |
| PeckShield | Tier 2 | 2 | 28.6% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Utils | unknown | bsc | n/a | 2 deployments: bsc [`0xa07f347eaad1ba229dc913eda646b5f17d0661ac`](./contracts/bsc-56/0xa07f347eaad1ba229dc913eda646b5f17d0661ac/); bsc `0xcc5df5c68d8c991035b6a437d4e00a99875228e4` | ✅ Audited |
| Utils | unknown | arbitrum | n/a | 9 deployments: ethereum `0x8724d1b62ddf87d830811c9dcb2e1a6494c9c117`; ethereum `0xa07f347eaad1ba229dc913eda646b5f17d0661ac`; ethereum `0xa6c17e2c8a3ad6307ae159d1cbc9e33b4d53958e`; optimism `0xa07f347eaad1ba229dc913eda646b5f17d0661ac`; polygon `0xa07f347eaad1ba229dc913eda646b5f17d0661ac`; base `0xa07f347eaad1ba229dc913eda646b5f17d0661ac`; arbitrum [`0x254bd92fae14e595ad2cf6652941684aa01045dd`](./contracts/arbitrum-42161/0x254bd92fae14e595ad2cf6652941684aa01045dd/); arbitrum `0x887b00e38031c7d4e0cac2a7cd46a6aa30d13f19`; arbitrum `0xa07f347eaad1ba229dc913eda646b5f17d0661ac` | ✅ Audited |
| Vault | core_logic | arbitrum | n/a | 7 deployments: ethereum `0x9ef52d8953d184840f2c69096b7b3a7da7093685`; optimism `0xcc5df5c68d8c991035b6a437d4e00a99875228e4`; polygon `0xcc5df5c68d8c991035b6a437d4e00a99875228e4`; base `0xcc5df5c68d8c991035b6a437d4e00a99875228e4`; arbitrum [`0x75c6a251b422606bb132cae39526d3efed8e0d99`](./contracts/arbitrum-42161/0x75c6a251b422606bb132cae39526d3efed8e0d99/); arbitrum `0xcc5df5c68d8c991035b6a437d4e00a99875228e4`; arbitrum `0xd0f3db630d275ba26c9b91a5d2d21bff2a40532b` | ✅ Audited |
| WithdrawVault | operational_periphery | arbitrum | n/a | 4 deployments: polygon `0xe2c7925b1173013a59b8573daa3eda6c613ded45`; arbitrum [`0x6562d6dcfa8e7e3c6772a4d619eec2029f11c21f`](./contracts/arbitrum-42161/0x6562d6dcfa8e7e3c6772a4d619eec2029f11c21f/); arbitrum `0xa541a6a25e98605a23e5428bb0a2d6f97a2b8528`; arbitrum `0xe2c7925b1173013a59b8573daa3eda6c613ded45` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Airdrop | operational_periphery | polygon | n/a | 4 deployments: polygon [`0x1bd704634a64654c2ff203823772561b2c49157d`](./contracts/polygon-137/0x1bd704634a64654c2ff203823772561b2c49157d/); arbitrum [`0x1bd704634a64654c2ff203823772561b2c49157d`](./contracts/arbitrum-42161/0x1bd704634a64654c2ff203823772561b2c49157d/); arbitrum `0xd2c7cb9ce342cc2ff5f6f97545265404033eee77`; arbitrum `0xfba9a6623d4fb1ad7f2c277e91c20b6452003dfa` | ⚠️ Unaudited |
| MockERC20 | token | arbitrum | n/a | 4 deployments: arbitrum [`0x1a5f8fd6892132c4a297d353a49601148bd7aae8`](./contracts/arbitrum-42161/0x1a5f8fd6892132c4a297d353a49601148bd7aae8/); arbitrum `0x29da6400df2fcb389228edec172d67e468d44311`; arbitrum `0x8e99c0d406435bda93dd9ee0fa4c23e2967933d0`; arbitrum `0x982521492faa51da81c81d9bad2c0d95c3093370` | ⚠️ Unaudited |
| zkToken | token | arbitrum | n/a | 11 deployments: ethereum `0x7336c89ff7af86131d336d504e677db0eb338a16`; polygon `0xa6c17e2c8a3ad6307ae159d1cbc9e33b4d53958e`; polygon `0xdfdaa3b21234ecece29d84a885d29180a47c3f2d`; base `0xdfdaa3b21234ecece29d84a885d29180a47c3f2d`; arbitrum [`0x3f80a2628104ffdfd207daa06203c55f4aad2232`](./contracts/arbitrum-42161/0x3f80a2628104ffdfd207daa06203c55f4aad2232/); arbitrum `0x443d48c2c0b709b05a21d94bc85b561b4c657978`; arbitrum `0x804a5ecfcd547cbd0e90514f116e2a94152054ae`; arbitrum `0x90d0d2b0d054aa0a6575cd50a3a2d6e737960d2f`; arbitrum `0xa6c17e2c8a3ad6307ae159d1cbc9e33b4d53958e`; arbitrum `0xc683ddbeedfe419373cddf239238b838ae89ffc6`; arbitrum `0xdfdaa3b21234ecece29d84a885d29180a47c3f2d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (54)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1bd704634a64654c2ff203823772561b2c49157d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb60b1d1f6399e2177ef60df7ae9312940a5e543` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc5df5c68d8c991035b6a437d4e00a99875228e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x034049f439901f7035de9a2bba3d6ebcafb4e1b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x03472107c1aa8eb40ff02417406c6353bd8eb61f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x075a9fe036d997bcb80761aaebaf7d017930f1dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11587f1d2dcd3bb14415bcc8fabfd54e63550e9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1386225f29dccf1b24aa1adc487613a27bee39bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19e270ab53e23c88209c2c22880532d7fa5889e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a33c7d30915dfbbf24ef291c002a7d0be5daf0b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1b9a2a883d07b4fbf79fb09b9fa2b20b449da7fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1d5cbcc2cff51123d91d24bdb33c179379de397d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x219a8d1e051d1dc7d789c385b5de0a23931cf7fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21bfa705cc2e82c6833b1b6eae3a134af5efc0ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x22a190fb6a77ba2a4ecb7cb553dcf38b156d75b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26492749cf1302062f9c35b1a0632f619bb4b93a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26feeca3280df39764aac54d85ed3a4b321729d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2a447358e273555a9eced1106b0cba5dfb6a99a4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x38512d6e62296f2d1aee9fe6690b3d5b81a5117f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3c601f4571c7e42b5faa7927a557fdbcd91580f0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f44201f3d2ba0c2611db3761f8c48ab0ee7cabb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f9d757d49e476e76e60fb2d8eea4a8a5384002e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x500ca194ceac60be73b693ee96a1dc2c3735ccf1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x596b1fdafa7d26229e40a2c7cb083bcef6ff1af7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5ddb3d0f37b0879a854c1d8768c52dce45a987fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x64addcee9193d2f637c388c0eecb86e65794c06e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65d616afcd1888e46f8599ef13bdca19f7d03869` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c050ca6c2642fd2e85d558e07d6642c3e8a8f3c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6decd57699628a68f88d52d858f22aa828bf7770` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x751af3acbde7b103007202a2eab409d74975f6cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x81a33b729fddc1fb46ea79e1943b0d683346a9a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x89ced520ac8fc549f9191aee5edf95e524779839` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a9a074298941604527209598dc7a3719b5b64a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8d147ce9f6ea1232b914fc70ac67f2e2c3572c41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x902fb44d48796da6087778275605af2e5d9bb5b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa350be7aef0753f4f84af0646f502e7aa0090795` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa3f3587958041cefac79ce83cc9901e3546bf67a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa7159b7d10d46521df30fd7e6357edb6e201ed93` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaaf459fac2fb4df8115fef5c910e6197e45bd254` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf652bb771bb63f8463987585cc876d547782088` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc39e527d1d8b8f5a893587744c2dbbc770b8a90` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc28af0650a080402b4e47fe6632dea943db6b222` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc3e9006559cb209a987e99257986aa5ce324f829` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcbc3016e5d1d46e1d7c8deacfc4a28626e24097c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc2608a0fa5f06b2406e45cc426a6dd84b36b490` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6a6e056c581be696ada9c2ec62020260da02ea1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd7ca3239ba2f1a38168d7b72c0053a1537612338` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7699c0a66976aa016d3a219e62bdca13fda73e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1f278d4bb1073cd44159fa275cc0ed0b0461093` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf527bda1dace0a27b9a10b4f8d0584d742512da5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf879888aabcb2eca93b85aed8928721b19124da9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf893439fcb0d111ca1f32982159a9c5ceac3e9e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfd5f0727f652b4425cda1f5453adeade8194333d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff60b79f86edbce76f7e113182cee7c64758f4fc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.openzeppelin.com/news/zerobase-token-audit](https://www.openzeppelin.com/news/zerobase-token-audit) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [ZeroBase_V2_audit_report_2025-09-16.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2025/ZeroBase_V2_audit_report_2025-09-16.pdf) | Salus Security | Audit | 2025-09 | fresh | Direct | contract_name | 4 | n/a |
| [PeckShield-Audit-Report-ZKFI-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ZKFI-v1.0.pdf) | PeckShield | Audit | 2025-02 | aging | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 2 | n/a |
| [ZeroBase_report_2024-12-24.pdf](https://github.com/Salusec/Salus-audit/blob/main/2024/ZeroBase_report_2024-12-24.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x1bd704634a64654c2ff203823772561b2c49157d`](./contracts/polygon-137/0x1bd704634a64654c2ff203823772561b2c49157d/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a5f8fd6892132c4a297d353a49601148bd7aae8`](./contracts/arbitrum-42161/0x1a5f8fd6892132c4a297d353a49601148bd7aae8/) | MockERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3f80a2628104ffdfd207daa06203c55f4aad2232`](./contracts/arbitrum-42161/0x3f80a2628104ffdfd207daa06203c55f4aad2232/) | zkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 54 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=10

Zero-match audit list:

- [4681] www.openzeppelin.com/news/zerobase-token-audit

Fork inheritance lineage and inherited audits are included when available.
