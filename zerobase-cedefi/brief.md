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
| Utils | unknown | bsc | n/a | 2 deployments: bsc [`0xa07f34...0661ac`](./contracts/bsc-56/0xa07f347eaad1ba229dc913eda646b5f17d0661ac/); bsc `0xcc5df5...5228e4` | ✅ Audited |
| Utils | unknown | arbitrum | n/a | 9 deployments: ethereum `0x8724d1...c9c117`; ethereum `0xa07f34...0661ac`; ethereum `0xa6c17e...53958e`; optimism `0xa07f34...0661ac`; polygon `0xa07f34...0661ac`; base `0xa07f34...0661ac`; arbitrum [`0x254bd9...1045dd`](./contracts/arbitrum-42161/0x254bd92fae14e595ad2cf6652941684aa01045dd/); arbitrum `0x887b00...d13f19`; arbitrum `0xa07f34...0661ac` | ✅ Audited |
| Vault | core_logic | arbitrum | n/a | 7 deployments: ethereum `0x9ef52d...093685`; optimism `0xcc5df5...5228e4`; polygon `0xcc5df5...5228e4`; base `0xcc5df5...5228e4`; arbitrum [`0x75c6a2...8e0d99`](./contracts/arbitrum-42161/0x75c6a251b422606bb132cae39526d3efed8e0d99/); arbitrum `0xcc5df5...5228e4`; arbitrum `0xd0f3db...40532b` | ✅ Audited |
| WithdrawVault | operational_periphery | arbitrum | n/a | 4 deployments: polygon `0xe2c792...3ded45`; arbitrum [`0x6562d6...11c21f`](./contracts/arbitrum-42161/0x6562d6dcfa8e7e3c6772a4d619eec2029f11c21f/); arbitrum `0xa541a6...2b8528`; arbitrum `0xe2c792...3ded45` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Airdrop | operational_periphery | polygon | n/a | 4 deployments: polygon [`0x1bd704...49157d`](./contracts/polygon-137/0x1bd704634a64654c2ff203823772561b2c49157d/); arbitrum [`0x1bd704...49157d`](./contracts/arbitrum-42161/0x1bd704634a64654c2ff203823772561b2c49157d/); arbitrum `0xd2c7cb...3eee77`; arbitrum `0xfba9a6...003dfa` | ⚠️ Unaudited |
| MockERC20 | token | arbitrum | n/a | 4 deployments: arbitrum [`0x1a5f8f...d7aae8`](./contracts/arbitrum-42161/0x1a5f8fd6892132c4a297d353a49601148bd7aae8/); arbitrum `0x29da64...d44311`; arbitrum `0x8e99c0...7933d0`; arbitrum `0x982521...093370` | ⚠️ Unaudited |
| zkToken | token | arbitrum | n/a | 11 deployments: ethereum `0x7336c8...338a16`; polygon `0xa6c17e...53958e`; polygon `0xdfdaa3...7c3f2d`; base `0xdfdaa3...7c3f2d`; arbitrum [`0x3f80a2...ad2232`](./contracts/arbitrum-42161/0x3f80a2628104ffdfd207daa06203c55f4aad2232/); arbitrum `0x443d48...657978`; arbitrum `0x804a5e...2054ae`; arbitrum `0x90d0d2...960d2f`; arbitrum `0xa6c17e...53958e`; arbitrum `0xc683dd...89ffc6`; arbitrum `0xdfdaa3...7c3f2d` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x1bd704...49157d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb60b1...a5e543` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc5df5...5228e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x034049...b4e1b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x034721...8eb61f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x075a9f...30f1dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11587f...550e9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x138622...ee39bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19e270...5889e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a33c7...5daf0b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1b9a2a...9da7fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1d5cbc...de397d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x219a8d...1cf7fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21bfa7...efc0ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x22a190...6d75b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x264927...b4b93a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26feec...1729d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2a4473...6a99a4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x38512d...a5117f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3c601f...1580f0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f4420...e7cabb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f9d75...84002e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x500ca1...35ccf1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x596b1f...ff1af7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5ddb3d...a987fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x64addc...94c06e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65d616...d03869` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c050c...8a8f3c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6decd5...bf7770` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x751af3...75f6cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x81a33b...46a9a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x89ced5...779839` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a9a07...5b64a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8d147c...572c41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x902fb4...9bb5b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa350be...090795` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa3f358...6bf67a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa7159b...01ed93` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaaf459...5bd254` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf652b...782088` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc39e5...0b8a90` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc28af0...b6b222` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc3e900...24f829` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcbc301...24097c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc2608...36b490` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6a6e0...a02ea1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd7ca32...612338` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7699c...da73e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1f278...461093` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf527bd...512da5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf87988...124da9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf89343...c3e9e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfd5f07...94333d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff60b7...58f4fc` | ❓ Unverified |

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
| polygon | [`0x1bd704...49157d`](./contracts/polygon-137/0x1bd704634a64654c2ff203823772561b2c49157d/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a5f8f...d7aae8`](./contracts/arbitrum-42161/0x1a5f8fd6892132c4a297d353a49601148bd7aae8/) | MockERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3f80a2...ad2232`](./contracts/arbitrum-42161/0x3f80a2628104ffdfd207daa06203c55f4aad2232/) | zkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
