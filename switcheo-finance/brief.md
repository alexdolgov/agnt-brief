# Agentic Audit Brief: Switcheo Finance

## Project Overview

- Project: Switcheo Finance (`switcheo-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.233Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 34 unique implementations (75 raw deployments)
- DeFi Llama TVL: $950,669.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 43 project-authored contract(s) across 1 chain(s); 17 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 9 common project-authored base contract(s) (abstracttoken, token, basictoken). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 98; live-surface contracts included: 75 (61 live, 14 unknown).
- Excluded by liveness: 23 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/19 (0.0%)
- Deployed-live implementations: 20 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 34
- Raw deployments: 75
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlephSync | unknown | ethereum | n/a | [`0x166fd4299364b21c7567e163d85d78d2fb2f8ad5`](./contracts/ethereum-1/0x166fd4299364b21c7567e163d85d78d2fb2f8ad5/) | ⚠️ Unaudited |
| AmpleforthWrapper | unknown | ethereum | n/a | [`0xb2b9d7ba7b7e5fb4e51a8bac83fd43e90c947dc5`](./contracts/ethereum-1/0xb2b9d7ba7b7e5fb4e51a8bac83fd43e90c947dc5/) | ⚠️ Unaudited |
| BalancerGovernanceToken | token | ethereum | n/a | [`0xba100000625a3754423978a60c9317c58a424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| BCAPToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x403506af39e41e2226440ad5fb44c6200b180158`](./contracts/ethereum-1/0x403506af39e41e2226440ad5fb44c6200b180158/); ethereum `0xef6dd40eff935626ee2ba971a90e6897e4cbbf8b` | ⚠️ Unaudited |
| CelsiusToken | token | ethereum | n/a | [`0xaaaebe6fe48e54f431b0c390cfaf0b017d09d42d`](./contracts/ethereum-1/0xaaaebe6fe48e54f431b0c390cfaf0b017d09d42d/) | ⚠️ Unaudited |
| DuskToken | token | ethereum | n/a | [`0x940a2db1b7008b6c776d4faaca729d6d4a4aa551`](./contracts/ethereum-1/0x940a2db1b7008b6c776d4faaca729d6d4a4aa551/) | ⚠️ Unaudited |
| EIP20 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27702a26126e0b3702af63ee09ac4d1a084ef628`](./contracts/ethereum-1/0x27702a26126e0b3702af63ee09ac4d1a084ef628/); ethereum `0xc0134b5b924c2fca106efb33c45446c466fbe03e` | ⚠️ Unaudited |
| GigaWattToken | token | ethereum | n/a | [`0x84119cb33e8f590d75c2d6ea4e6b0741a7494eda`](./contracts/ethereum-1/0x84119cb33e8f590d75c2d6ea4e6b0741a7494eda/) | ⚠️ Unaudited |
| INSToken | token | ethereum | n/a | [`0x5b2e4a700dfbc560061e957edec8f6eeeb74a320`](./contracts/ethereum-1/0x5b2e4a700dfbc560061e957edec8f6eeeb74a320/) | ⚠️ Unaudited |
| KyberNetworkCrystal | unknown | ethereum | n/a | [`0xdd974d5c2e2928dea5f71b9825b8b646686bd200`](./contracts/ethereum-1/0xdd974d5c2e2928dea5f71b9825b8b646686bd200/) | ⚠️ Unaudited |
| LEO | unknown | ethereum | n/a | [`0x2af5d2ad76741191d15dfe7bf6ac92d4bd912ca3`](./contracts/ethereum-1/0x2af5d2ad76741191d15dfe7bf6ac92d4bd912ca3/) | ⚠️ Unaudited |
| LogERC20 | token | ethereum | n/a | [`0x047f18e7f21aa714c6a5f4b346318eb384434a4b`](./contracts/ethereum-1/0x047f18e7f21aa714c6a5f4b346318eb384434a4b/) | ⚠️ Unaudited |
| LUCToken | token | ethereum | n/a | [`0x5dbe296f97b23c4a6aa6183d73e574d02ba5c719`](./contracts/ethereum-1/0x5dbe296f97b23c4a6aa6183d73e574d02ba5c719/) | ⚠️ Unaudited |
| OneWorldOnlineToken | token | ethereum | n/a | [`0xfdbc1adc26f0f8f8606a5d63b7d3a3cd21c22b23`](./contracts/ethereum-1/0xfdbc1adc26f0f8f8606a5d63b7d3a3cd21c22b23/) | ⚠️ Unaudited |
| SocialMediaMarketToken | token | ethereum | n/a | [`0x78eb8dc641077f049f910659b6d580e80dc4d237`](./contracts/ethereum-1/0x78eb8dc641077f049f910659b6d580e80dc4d237/) | ⚠️ Unaudited |
| StandardToken | token | ethereum | n/a | [`0x4a220e6096b25eadb88358cb44068a3248254675`](./contracts/ethereum-1/0x4a220e6096b25eadb88358cb44068a3248254675/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0x6e109e9dd7fa1a58bc3eff667e8e41fc3cc07aef`](./contracts/ethereum-1/0x6e109e9dd7fa1a58bc3eff667e8e41fc3cc07aef/) | ⚠️ Unaudited |
| Wallet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3792d288d9f0993971f23e4758acb719f285f6ef`](./contracts/ethereum-1/0x3792d288d9f0993971f23e4758acb719f285f6ef/); ethereum `0xecf8db4968a8817e21bdd5ecda830e413089b534` | ⚠️ Unaudited |
| WrapperLock | unknown | ethereum | n/a | 39 deployments: ethereum [`0x058e2bec45b24cf4a5d9d8c780731ea4f5f09ed7`](./contracts/ethereum-1/0x058e2bec45b24cf4a5d9d8c780731ea4f5f09ed7/); ethereum `0x1488f99d305990694e19b3e72f6f0307cfa1df4e`; ethereum `0x1a9b2d827f26b7d7c18fec4c1b27c1e8deeba26e`; ethereum `0x23b7b48bc4041d262505d3967aea87db0379f0e7`; ethereum `0x274bbd862606b7011fa961ecb5a697b9fdf804cf`; ethereum `0x37830160c2d98b3aea292aa6dc984f1a6d90946c`; ethereum `0x38ae374ecf4db50b0ff37125b591a04997106a32`; ethereum `0x3b4d5a7dd02dc866dd60aeb872dfbfe37564c684`; ethereum `0x4007e9dd4df666bbb942833ea176a7b6a3e037d1`; ethereum `0x4c24a4dfb0c67916d47b4726958eb66b63bdd268`; ethereum `0x5501c4c4b63728806ed9f0663d1eb012aa06c8ca`; ethereum `0x5d173723236e6f844eed04f4fba72db5e32adb7c`; ethereum `0x60f8526f09caaf0008187945ccd88bc43790042c`; ethereum `0x680bf2eebf0ad9b183ac2ff88d16f5a4e41480e9`; ethereum `0x69391cca2e38b845720c7deb694ec837877a8e53`; ethereum `0x70b04d0684ea9dc0c8e244e0a1453744350f3864`; ethereum `0x752d048e1f1dcf38735191b75dc49603e6ed6deb`; ethereum `0x7d5a230dd6b5cd24308566e8e4074c1d615862b3`; ethereum `0x8747265bf3cd756a08a3dd2e61eb933d5167982f`; ethereum `0x8a710857478a59bf0d2b53056a68ef386a153dc9`; ethereum `0x8aa72dd6045505836f643b39b82e70fd705f9686`; ethereum `0x8bffb657e0481d8cdf9801f1b160e9e0125b5148`; ethereum `0x99416180ae5d41c0e912985576094cd8c3a218fa`; ethereum `0xa216c4d91c856e768d7a4570c2f2a9fa77cd8d78`; ethereum `0xab02feb027f0fabc2b27d3719406e19c581767dc`; ethereum `0xab056a8119bb91ca50631bd319ee3df654bebfa2`; ethereum `0xaee07ea8aa8b25f70c6e8268bd448dd182693782`; ethereum `0xb0abd4cc5195560209492b6854c666d7cff8c03c`; ethereum `0xb33ce6b1e48f450b4c6d4c0a3f281237eeea2dec`; ethereum `0xbcf2a47893bc51662fb9f14c3afbfe82b129eef9`; ethereum `0xc94ec1f80c4423ae0cecb4296b5de530219f0f9d`; ethereum `0xcf67d7a481ceeca0a77f658991a00366fed558f7`; ethereum `0xd7a7afe4b20611f2c839ec5cd340f27fe08c949c`; ethereum `0xd9ebebfdab08c643c5f2837632de920c70a56247`; ethereum `0xe82cfc4713598dc7244368cf5aca1b102a04ce33`; ethereum `0xea7abb773104745798ee36b1978b64f2bf061b3f`; ethereum `0xeb52a95695ffa4cf411b804455287f0717884899`; ethereum `0xf58825b4c26ae1289a0e3e4aedf49921809dc953`; ethereum `0xff6b71c745d80a0f57053d9d1fe6269da7cdbbfc` | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | n/a | [`0xaa7427d8f17d87a28f5e1ba3adbb270badbe1011`](./contracts/ethereum-1/0xaa7427d8f17d87a28f5e1ba3adbb270badbe1011/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x011e4e836cdd6103016af8d30bbe8e5d12c5f05e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x038fa5f9afed6edb92a424b0a9ec2fcf0cf72197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03d75ef57b05ebaf49b0fab5f2512c5dee4bdd97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1da1a54ad312076d58975797fa11370a397a3c64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4214c9ac9d7dfb0a81706676567359c9290af981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6eb97237b8bc26e8057793200207bb0a2a83c347` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72390f06331bb65c347d2077d7e6c85a60c8ff32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c905e6d89627fb75cbf8aff95c0457fcb229540` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x836344f76075c66506b19727b3a8f6b8cbd35dc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6e9bc740f07eb3a2278170b7fef2912b4c9a3c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb775ef59d05ec8eab4b1cc3c303d3ae9040b57e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8ced007bc0d7621e85e9d4c0496127416bc07d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebbacef92a0893cb394772ef3c2616a9941c3ce0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1deeddc6b464750bb2a56636e0fffce03455b0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity_Switcheo_SWITCHEOs_Audit.pdf (also discovered via alternate URL)](https://www.chainsecurity.com/reports/Switcheo/ChainSecurity_Switcheo_SWITCHEOs_Audit.pdf) | ChainSecurity | Audit | 2018-11 | stale | Direct | n/a | 0 | n/a |
| [ChainSecurity_Switcheo.pdf](https://github.com/ChainSecurity/audits/blob/master/ChainSecurity_Switcheo.pdf) | ChainSecurity | Audit | 2018-11 | stale | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://www.chainsecurity.com/security-audit/switcheo) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x166fd4299364b21c7567e163d85d78d2fb2f8ad5`](./contracts/ethereum-1/0x166fd4299364b21c7567e163d85d78d2fb2f8ad5/) | AlephSync | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2b9d7ba7b7e5fb4e51a8bac83fd43e90c947dc5`](./contracts/ethereum-1/0xb2b9d7ba7b7e5fb4e51a8bac83fd43e90c947dc5/) | AmpleforthWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x403506af39e41e2226440ad5fb44c6200b180158`](./contracts/ethereum-1/0x403506af39e41e2226440ad5fb44c6200b180158/) | BCAPToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaaaebe6fe48e54f431b0c390cfaf0b017d09d42d`](./contracts/ethereum-1/0xaaaebe6fe48e54f431b0c390cfaf0b017d09d42d/) | CelsiusToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x940a2db1b7008b6c776d4faaca729d6d4a4aa551`](./contracts/ethereum-1/0x940a2db1b7008b6c776d4faaca729d6d4a4aa551/) | DuskToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27702a26126e0b3702af63ee09ac4d1a084ef628`](./contracts/ethereum-1/0x27702a26126e0b3702af63ee09ac4d1a084ef628/) | EIP20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84119cb33e8f590d75c2d6ea4e6b0741a7494eda`](./contracts/ethereum-1/0x84119cb33e8f590d75c2d6ea4e6b0741a7494eda/) | GigaWattToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b2e4a700dfbc560061e957edec8f6eeeb74a320`](./contracts/ethereum-1/0x5b2e4a700dfbc560061e957edec8f6eeeb74a320/) | INSToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd974d5c2e2928dea5f71b9825b8b646686bd200`](./contracts/ethereum-1/0xdd974d5c2e2928dea5f71b9825b8b646686bd200/) | KyberNetworkCrystal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2af5d2ad76741191d15dfe7bf6ac92d4bd912ca3`](./contracts/ethereum-1/0x2af5d2ad76741191d15dfe7bf6ac92d4bd912ca3/) | LEO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x047f18e7f21aa714c6a5f4b346318eb384434a4b`](./contracts/ethereum-1/0x047f18e7f21aa714c6a5f4b346318eb384434a4b/) | LogERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dbe296f97b23c4a6aa6183d73e574d02ba5c719`](./contracts/ethereum-1/0x5dbe296f97b23c4a6aa6183d73e574d02ba5c719/) | LUCToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdbc1adc26f0f8f8606a5d63b7d3a3cd21c22b23`](./contracts/ethereum-1/0xfdbc1adc26f0f8f8606a5d63b7d3a3cd21c22b23/) | OneWorldOnlineToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78eb8dc641077f049f910659b6d580e80dc4d237`](./contracts/ethereum-1/0x78eb8dc641077f049f910659b6d580e80dc4d237/) | SocialMediaMarketToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a220e6096b25eadb88358cb44068a3248254675`](./contracts/ethereum-1/0x4a220e6096b25eadb88358cb44068a3248254675/) | StandardToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e109e9dd7fa1a58bc3eff667e8e41fc3cc07aef`](./contracts/ethereum-1/0x6e109e9dd7fa1a58bc3eff667e8e41fc3cc07aef/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3792d288d9f0993971f23e4758acb719f285f6ef`](./contracts/ethereum-1/0x3792d288d9f0993971f23e4758acb719f285f6ef/) | Wallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x058e2bec45b24cf4a5d9d8c780731ea4f5f09ed7`](./contracts/ethereum-1/0x058e2bec45b24cf4a5d9d8c780731ea4f5f09ed7/) | WrapperLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa7427d8f17d87a28f5e1ba3adbb270badbe1011`](./contracts/ethereum-1/0xaa7427d8f17d87a28f5e1ba3adbb270badbe1011/) | WrapperLockEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21333] ChainSecurity_Switcheo_SWITCHEOs_Audit.pdf
- [21334] ChainSecurity_Switcheo.pdf
- [24515] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
