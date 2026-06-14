# Agentic Audit Brief: ZEROBASE CeDeFi

## Project Overview

- Project: ZEROBASE CeDeFi (`zerobase-cedefi`)
- Website: [https://app.zerobase.pro/](https://app.zerobase.pro/)
- Lifecycle: active (Tier 0, 89.6% below peak)
- Generated: 2026-06-14T04:38:34.656Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-d641
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 34 unique implementations (105 raw deployments)
- DeFi Llama TVL: $56,776,831.24
- On-chain TVL (included contracts): $1,036.51
- TVL by chain: Ethereum $1,035.88 | Optimism $0.63

## Project Description

ZEROBASE CeDeFi is a zk-powered stablecoin staking and CeDeFi yield protocol tied to prover-node security and ZKP generation. Users stake or deposit stablecoins into vault/staking flows and can withdraw through the protocol, while deposited funds are used for CeDeFi yield generation including arbitrage activity via Binance.

### Architecture

The protocol consists of a single product family with multiple vault instances sharing the same core logic, deployed across different chains to facilitate basis trading.

## Audit Coverage Summary

- Verified implementations audited: 4/6 (66.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 4
- Unverified implementations: 28
- Unique implementations: 34
- Raw deployments: 105
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Staleness: 2 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Salus Security | Tier 2 | 4 | 66.7% | 2025-09 |
| PeckShield | Tier 2 | 2 | 33.3% | 2025-02 |
| unknown | Tier 2 | 2 | 33.3% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | arbitrum | 7 deployments: ethereum `0x9ef52d...093685`; optimism `0xcc5df5...5228e4`; polygon `0xcc5df5...5228e4`; base `0xcc5df5...5228e4`; arbitrum [`0x75c6a2...8e0d99`](./contracts/arbitrum-42161/0x75c6a251b422606bb132cae39526d3efed8e0d99/); arbitrum `0xcc5df5...5228e4`; arbitrum `0xd0f3db...40532b` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MockERC20 | token | arbitrum | 4 deployments: arbitrum [`0x1a5f8f...d7aae8`](./contracts/arbitrum-42161/0x1a5f8fd6892132c4a297d353a49601148bd7aae8/); arbitrum `0x29da64...d44311`; arbitrum `0x8e99c0...7933d0`; arbitrum `0x982521...093370` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Utils | unknown | arbitrum | 18 deployments: ethereum `0x8724d1...c9c117`; ethereum `0xa07f34...0661ac`; ethereum `0xa6c17e...53958e`; optimism `0xa07f34...0661ac`; bsc `0xcc5df5...5228e4`; polygon `0xa07f34...0661ac`; base `0xa07f34...0661ac`; arbitrum [`0x254bd9...1045dd`](./contracts/arbitrum-42161/0x254bd92fae14e595ad2cf6652941684aa01045dd/); arbitrum `0x887b00...d13f19`; arbitrum `0xa07f34...0661ac`; avalanche `0x3c601f...1580f0`; avalanche `0x4f9d75...84002e`; avalanche `0x596b1f...ff1af7`; avalanche `0x64addc...94c06e`; avalanche `0x65d616...d03869`; avalanche `0x751af3...75f6cf`; avalanche `0xaaf459...5bd254`; avalanche `0xf87988...124da9` | ✅ Audited (bytecode match) |
| WithdrawVault | unknown | avalanche | 16 deployments: ethereum `0xc4a718...1498d4`; ethereum `0xe2c792...3ded45`; optimism `0xe2c792...3ded45`; polygon `0xe2c792...3ded45`; base `0xe2c792...3ded45`; arbitrum `0x6562d6...11c21f`; arbitrum `0xa541a6...2b8528`; arbitrum `0xe2c792...3ded45`; avalanche [`0x034721...8eb61f`](./contracts/avalanche-43114/0x03472107c1aa8eb40ff02417406c6353bd8eb61f/); avalanche `0x22a190...6d75b1`; avalanche `0x38512d...a5117f`; avalanche `0x81a33b...46a9a8`; avalanche `0xbc39e5...0b8a90`; avalanche `0xcbc301...24097c`; avalanche `0xcc2608...36b490`; avalanche `0xff60b7...58f4fc` | ✅ Audited (bytecode match) |
| zkToken | unknown | avalanche | 19 deployments: ethereum `0x1ee6e9...bb917f`; ethereum `0x7336c8...338a16`; ethereum `0xdfdaa3...7c3f2d`; optimism `0xa6c17e...53958e`; optimism `0xdfdaa3...7c3f2d`; polygon `0xa6c17e...53958e`; polygon `0xdfdaa3...7c3f2d`; base `0xdfdaa3...7c3f2d`; arbitrum `0x3f80a2...ad2232`; arbitrum `0x443d48...657978`; arbitrum `0x804a5e...2054ae`; arbitrum `0x90d0d2...960d2f`; arbitrum `0xa6c17e...53958e`; arbitrum `0xc683dd...89ffc6`; arbitrum `0xdfdaa3...7c3f2d`; avalanche [`0x034049...b4e1b6`](./contracts/avalanche-43114/0x034049f439901f7035de9a2bba3d6ebcafb4e1b6/); avalanche `0x264927...b4b93a`; avalanche `0x2a4473...6a99a4`; avalanche `0xf527bd...512da5` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Airdrop | unknown | ethereum | 13 deployments: ethereum [`0x1bd704...49157d`](./contracts/ethereum-1/0x1bd704634a64654c2ff203823772561b2c49157d/); ethereum `0xcb60b1...a5e543`; ethereum `0xcc5df5...5228e4`; optimism [`0x1bd704...49157d`](./contracts/optimism-10/0x1bd704634a64654c2ff203823772561b2c49157d/); polygon [`0x1bd704...49157d`](./contracts/polygon-137/0x1bd704634a64654c2ff203823772561b2c49157d/); base [`0x1bd704...49157d`](./contracts/base-8453/0x1bd704634a64654c2ff203823772561b2c49157d/); base `0xa6c17e...53958e`; arbitrum [`0x1bd704...49157d`](./contracts/arbitrum-42161/0x1bd704634a64654c2ff203823772561b2c49157d/); arbitrum `0xd2c7cb...3eee77`; arbitrum `0xfba9a6...003dfa`; avalanche `0x6decd5...bf7770`; avalanche `0xa350be...090795`; avalanche `0xd6a6e0...a02ea1` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | `0x075a9f...30f1dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x11587f...550e9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x138622...ee39bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x19e270...5889e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1a33c7...5daf0b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1b9a2a...9da7fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1d5cbc...de397d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x219a8d...1cf7fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x21bfa7...efc0ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x26feec...1729d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4f4420...e7cabb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x500ca1...35ccf1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5ddb3d...a987fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6c050c...8a8f3c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x89ced5...779839` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8a9a07...5b64a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8d147c...572c41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x902fb4...9bb5b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa3f358...6bf67a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa7159b...01ed93` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaf652b...782088` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc28af0...b6b222` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc3e900...24f829` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd7ca32...612338` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe7699c...da73e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf1f278...461093` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf89343...c3e9e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfd5f07...94333d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.openzeppelin.com/news/zerobase-token-audit](https://www.openzeppelin.com/news/zerobase-token-audit) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [ZeroBase_V2_audit_report_2025-09-16.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2025/ZeroBase_V2_audit_report_2025-09-16.pdf) | Salus Security | Audit | 2025-09 | fresh | Direct | contract_name | 39 | high |
| [PeckShield-Audit-Report-ZKFI-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ZKFI-v1.0.pdf) | PeckShield | Audit | 2025-02 | aging | Direct | contract_name | 7 | high |
| [PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 8 | high |
| [ZeroBase_report_2024-12-24.pdf](https://github.com/Salusec/Salus-audit/blob/main/2024/ZeroBase_report_2024-12-24.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 17 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1bd704...49157d`](./contracts/ethereum-1/0x1bd704634a64654c2ff203823772561b2c49157d/) | Airdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a5f8f...d7aae8`](./contracts/arbitrum-42161/0x1a5f8fd6892132c4a297d353a49601148bd7aae8/) | MockERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=71

Zero-match audit list:

- [4681] www.openzeppelin.com/news/zerobase-token-audit

Fork inheritance lineage and inherited audits are included when available.
