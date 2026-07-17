# Agentic Audit Brief: Verse

## Project Overview

- Project: Verse (`verse`)
- Website: [https://verse.bitcoin.com](https://verse.bitcoin.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.905Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 53 unique implementations (64 raw deployments)
- DeFi Llama TVL: $424,910.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 55 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens, 4 ERC721 NFTs, 4 Chainlink feeds; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 10 common project-authored base contract(s) (poolbase, poolsharetoken, liquidtransfer). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 145; live-surface contracts included: 64 (15 live, 49 unknown).
- Excluded by liveness: 81 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/4 (100.0%)
- Deployed-live implementations: 4 of 53 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/5
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 53
- Raw deployments: 64
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 40.0% | 2022-02 |
| CertiK | Tier 2 | 1 | 20.0% | 2023-02 |
| Quantstamp | Tier 2 | 1 | 20.0% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SimpleFarm | unknown | ethereum | n/a | 12 deployments: ethereum [`0x17bdceec80d3506e384db09e5d5696edf70605ef`](./contracts/ethereum-1/0x17bdceec80d3506e384db09e5d5696edf70605ef/); ethereum `0x29e9c97de8e04a2f40508f9c379cf4f4d53447f6`; ethereum `0x42535f228897d309e644523189d44cff8a961dc7`; ethereum `0x4ba48df24008429ae9140a01e0d002f5fa6a125d`; ethereum `0x4e1f1206f2b9a651ecf2d49c5d33761861d4910c`; ethereum `0x4efff28192029bdb1ac027c53674721875da6b10`; ethereum `0x8295e4b84335af685e596dbcd76bbbbadbf88b01`; ethereum `0xc5af93687088c28da839371f3249df757b219aa8`; ethereum `0xcb2e16623b91dff38b7e5d8cb66631b375d71a0e`; ethereum `0xd920556b0f3522bb1257923292a256f1e3023e07`; ethereum `0xdd5a9eec299b74b2db2d3430608c1c5a8d9598eb`; ethereum `0xded0c22acd80e7a4bd6ec91ced451fc83f04cab2` | ✅ Audited |
| SwapsFactory | unknown | ethereum | n/a | [`0xee3e9e46e34a27dc755a63e2849c9913ee1a06e2`](./contracts/ethereum-1/0xee3e9e46e34a27dc755a63e2849c9913ee1a06e2/) | ✅ Audited |
| SwapsRouter | unknown | ethereum | n/a | [`0xb4b0ea46fe0e9e8eab4afb765b527739f2718671`](./contracts/ethereum-1/0xb4b0ea46fe0e9e8eab4afb765b527739f2718671/) | ✅ Audited |
| VerseToken | unknown | ethereum | n/a | [`0x249ca82617ec3dfb2589c4c17ab7ec9765350a18`](./contracts/ethereum-1/0x249ca82617ec3dfb2589c4c17ab7ec9765350a18/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultWrapperSky | unknown | ethereum | n/a | [`0x4a9680835591125ec533574610290003043a60fb`](./contracts/ethereum-1/0x4a9680835591125ec533574610290003043a60fb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x02c4f00f928e70845cee2886c0e8eaf0574c650b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fb7c346a9f34c1b2d57a46f8b498a5b603c1f6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15729acc89f00cde5aa08685444f296f91e390c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x178efff26278e367cd42e049458b9442dc287f55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19c97f7c71ad3a76483c9da70914949d559b0138` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a38870d922a53a46899c582442d6ede3a791a70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e940ab19d6d2935aa3116a5d05535ada7ef690e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2437afe222c6fc258fe4194a18a9ea7682c6f77d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dedcda70c6724a5833a8e07c0103c0e5face529` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30621f688e34ffbebc848ff47fccf84d6f2b0408` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3489a8cc6923bd2e88a2835509eb1241b737929f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34ae0be093a2c82c63aaf763abb94b8343b56241` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bd4a56a9bac113d1636de4befcb329cd689df9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44cd20cecd1e8466477f2f11aa207f2623ebff17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46379639ae4bf1d21a97d6a5cdcbee557ea35fde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47a34870bc63d91396df1c723f807e8fd7f483c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a153378ba593132e32b2452bf4ed3ca63ec075d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f491d389a5bf7c56bd1e4d8af2280fd217c8543` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51d2a2898962599ee7cee081ba4ad826412e9380` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5214a738389192eb18980488f44bd45241999042` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x563ecdc511efe0d564f5a586a6d6e6ca633b9e68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59bddab3e5115a1678e6314584d0d1bc2737381e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6071fc2990b4c6e594c6489ea4cfb66a2f410f26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6139cf331c38a084aac5d84ad3aac41c98fe6c84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62b55165f666a90e49a3261f697577135b22f0ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x638c27794fc28ed00b16d045c6e81ffe869d07ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69656374d43a13e5215af7088f826e538abfa9a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69a9064a4b855a7d6362ea66e9e5f14c3425fc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b0f51c63b1b7d0c2246fe24a653f2c0eb74dd60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73a111479c60209b39284e1d74de1b18fe3a3c0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b4baf7026f5e24580eaa512a006874c2a5e1501` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bf50a2f1b687b6fb59906223684cc40a62f026c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b872eaeadcd890e0f75c78a2e2d5c4d5d442dfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c6d046cb4830bd84e388e08a7c6dac897255e39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9506720d769b0eb11b94b8280176df705431497f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa03594ade98801fba4c0f4f73eba95eeea3d5b3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa07b929556db4d393a3805a5712589db8f8ad501` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4032832ac9d9cc42666b389664a336926f5d367` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5ba62fc84660443f24999ce5679e84ba4ddf08a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaba5851d041540461f0e2b785ad97e0f2d2576cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad649227459960a27a34f1583965c590b99c0598` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb74480d5672f0a183309988797c60fa1b2643ed8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb67be4d8ce2375706233f00b78f7e062ec516bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde39dd59f3e3525bace5e7718a70d5646d20f14e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf196f3baeca704f13fa36f709d71daaf486a8377` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd28f809e48331924eade0363370e0cf1fd61da1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe441b0b26178fa030547bf8e98f855a5dd3ac82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfed1a3ce7307ad98228e6628ab89663713e18ffc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Bitcoin.com_final-audit-report.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/bitcoin.com/Bitcoin.com_final-audit-report.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 2 | high |
| [skynet.certik.com/projects/bitcoin-com](https://skynet.certik.com/projects/bitcoin-com) | CertiK | Audit | 2023-02 | stale | Direct | contract_name | 12 | medium |
| [verse-security-audit.pdf](https://www.getverse.com/verse-security-audit.pdf) | Quantstamp | Audit | 2022-05 | stale | Direct | contract_name | 1 | high |
| [single-token-lp-audit.pdf](https://verse.bitcoin.com/single-token-lp-audit.pdf) | Chainsulting | Audit | 2023-06 | stale | Direct | contract_name | 0 | n/a |
| [dynamic-rewards-farming-audit.pdf](https://verse.bitcoin.com/dynamic-rewards-farming-audit.pdf) | Softstack | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4a9680835591125ec533574610290003043a60fb`](./contracts/ethereum-1/0x4a9680835591125ec533574610290003043a60fb/) | VaultWrapperSky | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: extraction_exact=16

Zero-match audit list:

- [14110] single-token-lp-audit.pdf
- [14111] dynamic-rewards-farming-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
