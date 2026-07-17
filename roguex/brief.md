# Agentic Audit Brief: Roguex

## Project Overview

- Project: Roguex (`roguex`)
- Website: [https://roguex.ai/](https://roguex.ai/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:48.814Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: blast
- Contract surface: 112 unique implementations (112 raw deployments)
- DeFi Llama TVL: $28,948.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 6 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (blastbase, peripheryimmutablestate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 115; live-surface contracts included: 112 (2 live, 110 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 112 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 110
- Unique implementations: 112
- Raw deployments: 112
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 50.0% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SwapRouter | unknown | blast | n/a | [`0x8e7a5187117f3dfbae028ac26db00a75ae41f095`](./contracts/blast-81457/0x8e7a5187117f3dfbae028ac26db00a75ae41f095/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FixSupplyToken | token | blast | n/a | [`0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f`](./contracts/blast-81457/0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (110)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | blast | n/a | `0x00a34805af198072c83df911811fad8f170276dc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x01a4c7475f416ba1b75927a67bb05638b275c74f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x03245900162b798726514d9c3c18c1c8eff2952f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x042c13c4dc9b4c1f67d308e47e199a4c2d7694d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x05956a4674945dee1e00442a53c562350282c340` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x090787f79911b19c8dbf1261abe4ff5b4b833bd7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x10e00e633c85d258b3285c818dd825ee51e09fe6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x142cde20f8b20ebaf60f7962657cd3bd6ce0748e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x18aa46961e952812c62b9ffc9aa7780aaadb3826` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1934dabb96325ae86b96d4260c6462a0e58cd9ea` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1c7ee1bc36b6ea5ded3fcdec8f29d24f46115f55` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1e3b2d80b96a1e6104b57e658d36e17a6b6c2782` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1ef53c45b070191cbd7c5fc88e2ddafaa29de1a9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1f4d8c5f5cb85e923bff7d73bf08795e68d4b648` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2140c5b4ef9cc6d18196c43eefa9dff3595467a2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x21f758179a1e40007234b6f3b0688d135864caf8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x29d1f2666f472cc2ad16795e4025c7322e4ffce8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2b8b05635170ab87d1ef1ec9600296b09e4179a0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2f1044fea1835438034933485bbd399990a7b76f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x31ddc8bb97067cc650dfc6ab97fd1b606d18f8e5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37dde1dc4f84a643de9b58129b65f42294f16692` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37e33b250985faf4dbdc607fa7454ca76b883a2a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37e4b06a104da219317621bd3633a849493ec901` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x386d7be5793b061f01601f606f28e1017cbc9e68` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x39bf013f97f6c8ebeb272549337ab6c467929033` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x41063ede6491249c3d58cd338b3078a1854bd6ac` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x42c542661054da28c92c81f0b5f3587b63d01399` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x43e09d5b3734e1cb5fdec2842d061c15ac12d24b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4caee163d1260b67b1d6629c1714210a650c7c5d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4dd10ea7aea76d9212263e2072f16d50e4374ab6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5506fa71d84585acd4a06ad5bfcb1e5f6d876967` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5ca3d8039d1956c6f59e8fdbaa81926f211201a8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5d9fe23c874782910ae44b56400e6a841d023380` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6064b55203b5c67e9da8b3755f60a0e8457939c4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6473c9491893ab6bf7e008be364ac0a64913a564` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x648aa4e686f538e77ef0deba5362009483edc5cb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x662267caa600d9f284356075c3504e78408a819b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x66a4c22451bb42ad8206e64f8c56929b4da5e217` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x68f49a152df3410715bfe83c3feb8a2455b871a6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6ba43e09deb63ed2db22b82bef3ae66907bfc59b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6c8019a2ea74002b74e6c2cdb60b1d2965fe7c46` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x717aa1606f1891f9dc124381a9ba16b51ffcf396` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x760807ca3de4b2434b28e511fb96790064f3b26d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x76ccda703018b97587a35c0b40084e248b688cf6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7765a725c822b6dda032bb8d1e86475c02d272b1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7db21990fd2d3f178ff187ca00ef4acf38de42a8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7f4701cf364f0481d37272590cbb5f809c8c3b0f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x84f7df1129b8cd21ab4920be6ead959e33ed6b86` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x859997d5686486b023b4fc375f6356fedf40a923` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8632a0b0095f6c6d51a03e245d93b25ed2b6f709` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x87d82c2d113e9c75289e0beb9e9a3cc2ffad704c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x88332d6e6ad87e2c72bf04c04a5057947d438885` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x88c8464c11193f2e2d4618521b935949d4dc8749` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x895df5646e3400e334994985201a714914dd87c4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8ae7ba560027bb04edcfc34bdfcd24e5dcd4d33b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8e26b6db3d8f80b90ce915c0b6b9d0c17839fdb4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8f833d4314377542107e79bf7005374a42c4499d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x90c1fccab2bd044f20f53574ef2b3ece270c0424` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x91f205cc8dbef51a89dd4821b13776b273f83380` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x93e069a379b1db74c10635893abec755cb8fd62e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9430d006eae8fcfb68b2d3f6015a551f20dcd55e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x946d5df1c585c0fb8a96191b00847e47d76598e3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x97bd39bd74619ae307a795757f2d163efd505c07` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9c6c26f5d308b22254a57a87744e0c018be20dc7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa005714099390813079f9fb3e7efcdc6a36e7e80` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa1d4abdb310d6f76d71aaf2c29e0ee66063fab8f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa5f57458d30e0780aa455c5d443729508d555249` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa7a567622ba35658ca10a55946ce523626bd23c5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xabcbe4cabb3891b23722675bd5b4a813bc6ec90f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xad74824c04b03a89204cfcf7567bb7d49f906a55` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb2f67ea43943e6c14580b9ecc88b3b05969ed4b3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb5954707ae5b573881b56795cfc84f0dd2a1c0a5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb81b69dc539ed055d0547aab96da7d1baec4d7ad` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb9f7da7f5e361030ef2625d5e2d7623d911aa2c2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbb731a4d6c563e8a48871479511930f98c37e6d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbc166b69128f7a2540ffbe8df7fa20aa10a656ec` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbd9215e002e4344c8333fc0bf4f5eced62bf9b85` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc1d22e673fbca772be2c5ebb86e7eac72c91d885` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc37b383b80cd1e29136fcbc54de77373cca96479` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc8cbb74fc79f85d1df0ab89d5a7b6766d237ebfc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc8e6bca27e0c2a2dd95f006e296fb4f339cb5bdb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc9bcbf1bb96c5b19513af64464dea8c69c790369` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xca584cbb74ff2b18eb35d1a2807106494f702a46` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcb4aa4ecf4ad798834a76ad6dae97bdd9107e03f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcc6a91e22841aba5e8df4e7542fe62086389771e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xccd7fe8d418e53f1515c45448d31125cec45b7ce` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcd16b287536ff7a761b3574066a91e95635481ec` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xce625adb9cb4e374d2893bef1832e39eba06fd1c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd4421f553fef04189df0d2df060cfe0b54d6c4d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd4c4ae8172253332f4d5e13aafc096cf35f33905` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd4d589602441ecd9833cb1e05e542474d4c95512` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd702783f90e4573b2906b558b625b53cedd72542` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xda8b685ceb09d7cb990ce155a3ea91b7d047e033` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdd84404e9741fb1ba2f52906b25126fae22b4243` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xde507d12b786724d727e5696daad509d9280168a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdf119e932877e61e5c2db627c70130d37e45814c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdf59b5accd3adc29badf1bd3ab4b8b163de5a277` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe2c86363e191e479cdf747afa10ea877fbdb5624` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe347894936b3a0382e7dddd7f59c53293631c500` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe430a4ab064d7adf85c554d55c7d2a0f994f38dc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe962d867d5b6b06b9c1a68a625d2ea44b4378d21` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xee75742dafe25220337009949c0c529f56904151` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xeed95f29121ddc9470fa619cba2022a00ca4ebee` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xef0537bc1fe54eadf9bfa197a15605233a68ead6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf0c2f7199ca0cdd073d6d2cc1a0f888d02afc62e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf0ca239cbb24f33fb92a9db1d47e62fed6cda8a4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf26bd9ba435395f26634c9be5b717c6d10675897` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf34d3b1bed56e94f7d09d739bbd3ed237f1fbe11` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfe0f3cb609fd464bbac395cfdbd9e7a5bc965d0b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfe4f65b03d02944995b31dc645a2a33021111df8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [RogueX Smart Contract Security Audit Report.pdf](https://github.com/LunaraySec/Report/blob/7a858deb336dccb7af7258f26dd8416fce5e6fc1/RogueX%20Smart%20Contract%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f`](./contracts/blast-81457/0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f/) | FixSupplyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 110 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
