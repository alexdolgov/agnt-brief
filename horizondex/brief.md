# Agentic Audit Brief: HorizonDEX

## Project Overview

- Project: HorizonDEX (`horizondex`)
- Website: [https://horizondex.io](https://horizondex.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.634Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: base, linea
- Contract surface: 32 unique implementations (38 raw deployments)
- DeFi Llama TVL: $60,314.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 42 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens, 2 ERC721 NFTs, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 13 common project-authored base contract(s) (basesplitcodefactory, ksadmin, routertokenhelper). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 34 (17 live, 17 unknown).
- Excluded by liveness: 16 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/16 (43.8%)
- Deployed-live implementations: 16 of 32 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/16
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 32
- Raw deployments: 38
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| DEFIMOON | Tier 2 | 7 | 43.8% | 2023-07 |
| Solidproof | Tier 2 | 5 | 31.3% | 2023-07 |
| unknown | Tier 2 | 5 | 31.3% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AntiSnipAttackPositionManager | governance | base | n/a | [`0xb3cc484a60bc300719aaefbd158a4e8e59d84555`](./contracts/base-8453/0xb3cc484a60bc300719aaefbd158a4e8e59d84555/) | ✅ Audited |
| AntiSnipAttackPositionManager | governance | linea | n/a | [`0x438670d41d5118003b2f42cc0466fbadd760dbf4`](./contracts/linea-59144/0x438670d41d5118003b2f42cc0466fbadd760dbf4/) | ✅ Audited |
| Factory | registry | linea | n/a | [`0x9fe607e5dcd0ea318dbb4d8a7b04fa553d6cb2c5`](./contracts/linea-59144/0x9fe607e5dcd0ea318dbb4d8a7b04fa553d6cb2c5/) | ✅ Audited |
| PrivateSaleOverflow | unknown | linea | n/a | [`0x81f76e9af21379cfa1bdfe7f5786c710300371cd`](./contracts/linea-59144/0x81f76e9af21379cfa1bdfe7f5786c710300371cd/) | ✅ Audited |
| PublicSaleOverflow | unknown | linea | n/a | [`0xba0869c4253c2be7f6b2cc3fb3081317532e0402`](./contracts/linea-59144/0xba0869c4253c2be7f6b2cc3fb3081317532e0402/) | ✅ Audited |
| Router | adapter | base | n/a | [`0x99aec509174cbf06f8f7e15ddeeb7bcc32363827`](./contracts/base-8453/0x99aec509174cbf06f8f7e15ddeeb7bcc32363827/) | ✅ Audited |
| Router | adapter | linea | n/a | [`0x272e156df8da513c69cb41cc7a99185d53f926bb`](./contracts/linea-59144/0x272e156df8da513c69cb41cc7a99185d53f926bb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Horizon | unknown | linea | n/a | [`0x0b1a02a7309dfbfad1cd4adc096582c87e8a3ac1`](./contracts/linea-59144/0x0b1a02a7309dfbfad1cd4adc096582c87e8a3ac1/) | ⚠️ Unaudited |
| LockedEpoch1HZN | unknown | linea | n/a | [`0x75d3aa57f7181bf4136438cc9cdddd86fd420a79`](./contracts/linea-59144/0x75d3aa57f7181bf4136438cc9cdddd86fd420a79/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | linea | n/a | [`0x649d0b066e2e68fb0497ad6128cd0edb903d6d5b`](./contracts/linea-59144/0x649d0b066e2e68fb0497ad6128cd0edb903d6d5b/) | ⚠️ Unaudited |
| PoolOracle | unknown | base | n/a | 2 deployments: base [`0x272e156df8da513c69cb41cc7a99185d53f926bb`](./contracts/base-8453/0x272e156df8da513c69cb41cc7a99185d53f926bb/); base `0x9fe607e5dcd0ea318dbb4d8a7b04fa553d6cb2c5` | ⚠️ Unaudited |
| PoolOracle | unknown | linea | n/a | 2 deployments: linea [`0x79756d90a882a1621ec35723849dac785694d93a`](./contracts/linea-59144/0x79756d90a882a1621ec35723849dac785694d93a/); linea `0xa749ad81913cdc19881ebeb64631df72be708335` | ⚠️ Unaudited |
| SwapRouter | adapter | linea | n/a | [`0xc3454bcb7164a83549022ffea307352d4afc7a11`](./contracts/linea-59144/0xc3454bcb7164a83549022ffea307352d4afc7a11/) | ⚠️ Unaudited |
| TokenPositionDescriptor | unknown | base | n/a | 2 deployments: base [`0x438670d41d5118003b2f42cc0466fbadd760dbf4`](./contracts/base-8453/0x438670d41d5118003b2f42cc0466fbadd760dbf4/); base `0xc67c9038020dbd5d0669f90ae62cb934eb8a8aeb` | ⚠️ Unaudited |
| TokenPositionDescriptor | unknown | linea | n/a | 2 deployments: linea [`0x94ddde405a00180891ed79dc1147f0d841c30d73`](./contracts/linea-59144/0x94ddde405a00180891ed79dc1147f0d841c30d73/); linea `0x99aec509174cbf06f8f7e15ddeeb7bcc32363827` | ⚠️ Unaudited |
| UsdPlusTokenV3 | token | linea | n/a | 2 deployments: linea [`0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13`](./contracts/linea-59144/0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13/); linea `0xb79dd08ea68a908a97220c76d19a6aa9cbde4376` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xa57c15e2ac3ee73cbc6f8c20634e8e909bfc4a32) | unknown | linea | n/a | 2 deployments: linea `0x079f127a3374c03c9642bb912cf93c5a8656261a`; linea `0xa57c15e2ac3ee73cbc6f8c20634e8e909bfc4a32` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1b41c3c79d343dfaf50c966c9ac24165b7244f58` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x22ccb8baa52066d2c04cc497e0455db84b042511` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2e1cba4a9f6e69d27e65046fc93b873b05f79a39` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5797a5f6a48ac5241582361db532c1c6012af732` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x58abb34a21c28cf188f68a27477ee2c46590b03a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6dfec8f16f723226452bebbdda719d562414122d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa171b85d6e246ddf7a0a90a0ec2ed10515455583` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa17dc9904dc37971c9d27b503c70a68b33d1ba3b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb3cc484a60bc300719aaefbd158a4e8e59d84555` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xba504ed13e6acd716ec765758d3e553b1a2900e9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcea30697bb2f13274471da958ca35442f4fd73b3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe8f6f02b0b938009a2c4ba9c765d3adbbbd428c4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xef34063a4856e0699108ba10ae92a9d2737ef06b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf1df26c4147f60b6c69c542cb3f9f12cf9972b9f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf7b48f136c7d060f5fc6f020f06418c53097f51b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Logo.png](https://github.com/solidproof/projects/blob/main/2023/Horizon%20DEX/Logo.png) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [HorizonDEX_SC Comparison Report_11.07.2023_SA-1644 (2).pdf](https://github.com/Horizon-Dex/Audits/blob/a1c7f31238a7b0d3390f37d178d855cf284cdcee/HorizonDEX_SC%20Comparison%20Report_11.07.2023_SA-1644%20(2).pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 1 | n/a |
| [Horizon-Dex.pdf](https://github.com/Defimoonorg/Audit-Report/blob/main/Horizon-Dex.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 5 | n/a |
| [Horizon-Sale_Reaudit.pdf](https://github.com/Horizon-Dex/Audits/blob/main/Horizon-Sale_Reaudit.pdf) | DEFIMOON | Audit | 2023-07 | stale | Direct | contract_name | 2 | high |
| [Horizon-Dex-Defimoon.pdf](https://github.com/Horizon-Dex/Audits/blob/main/Horizon-Dex-Defimoon.pdf) | Defimoon | Audit | 2023-07 | stale | Direct | contract_name | 5 | n/a |
| [SmartContract_Audit_Solidproof_HorizonDEX.pdf](https://github.com/Horizon-Dex/Audits/blob/main/SmartContract_Audit_Solidproof_HorizonDEX.pdf) | Solidproof | Audit | 2023-07 | stale | Direct | contract_name | 5 | n/a |
| [www.chainsecurity.com/security-audit/kyberswap-elastic](https://www.chainsecurity.com/security-audit/kyberswap-elastic) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Horizon DEX (GitHub directory)](https://github.com/solidproof/projects/tree/main/2023/Horizon%20DEX) | SOLIDProof | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Arbalest Vault (GitHub directory)](https://github.com/solidproof/projects/blob/main/2023/%20Arbalest%20Vault) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x0b1a02a7309dfbfad1cd4adc096582c87e8a3ac1`](./contracts/linea-59144/0x0b1a02a7309dfbfad1cd4adc096582c87e8a3ac1/) | Horizon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x75d3aa57f7181bf4136438cc9cdddd86fd420a79`](./contracts/linea-59144/0x75d3aa57f7181bf4136438cc9cdddd86fd420a79/) | LockedEpoch1HZN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x649d0b066e2e68fb0497ad6128cd0edb903d6d5b`](./contracts/linea-59144/0x649d0b066e2e68fb0497ad6128cd0edb903d6d5b/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x272e156df8da513c69cb41cc7a99185d53f926bb`](./contracts/base-8453/0x272e156df8da513c69cb41cc7a99185d53f926bb/) | PoolOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x79756d90a882a1621ec35723849dac785694d93a`](./contracts/linea-59144/0x79756d90a882a1621ec35723849dac785694d93a/) | PoolOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xc3454bcb7164a83549022ffea307352d4afc7a11`](./contracts/linea-59144/0xc3454bcb7164a83549022ffea307352d4afc7a11/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x438670d41d5118003b2f42cc0466fbadd760dbf4`](./contracts/base-8453/0x438670d41d5118003b2f42cc0466fbadd760dbf4/) | TokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x94ddde405a00180891ed79dc1147f0d841c30d73`](./contracts/linea-59144/0x94ddde405a00180891ed79dc1147f0d841c30d73/) | TokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13`](./contracts/linea-59144/0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13/) | UsdPlusTokenV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=16, extraction_exact=2

Zero-match audit list:

- [13240] Logo.png
- [13248] www.chainsecurity.com/security-audit/kyberswap-elastic
- [16192] Horizon DEX (GitHub directory)
- [16197] Arbalest Vault (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
