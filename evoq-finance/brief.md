# Agentic Audit Brief: Evoq Finance

## Project Overview

- Project: Evoq Finance (`evoq-finance`)
- Website: [https://evoq.finance](https://evoq.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:13.682Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: bsc
- Contract surface: 16 unique implementations (52 raw deployments)
- DeFi Llama TVL: $268.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 30 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 15 common project-authored base contract(s) (vtokeninterface, vtokenstorage, interestratemodel). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 85; live-surface contracts included: 52 (52 live, 0 unknown).
- Excluded by liveness: 33 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/16 (0.0%)
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 52
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Comptroller | unknown | bsc | n/a | 7 deployments: bsc [`0x3f66e044dfd1ccc834e55624b5f6e9e75ab36000`](./contracts/bsc-56/0x3f66e044dfd1ccc834e55624b5f6e9e75ab36000/); bsc `0x8008a0897eb2df2c078034ca638b8f0c0a6ade3b`; bsc `0xb49416b2fb86eed9152f6a53c02bf34c965e8436`; bsc `0xba469fba7ea40d237b92bf30625513700f0afa47`; bsc `0xe21257a08dfcadde5211dcd8fe4c5525006f2032`; bsc `0xe734df2995dfc1f00a400a4ccd763e92e8bc43f3`; bsc `0xf6c14d4dfe45c132822ce28c646753c54994e59c` | ⚠️ Unaudited |
| Diamond | unknown | bsc | n/a | [`0xfd36e2c2a6789db23113685031d7f16329158384`](./contracts/bsc-56/0xfd36e2c2a6789db23113685031d7f16329158384/) | ⚠️ Unaudited |
| GovernorAlpha | unknown | bsc | n/a | [`0x406f48f47d25e9caa29f17e7cfbd1dc6878f078f`](./contracts/bsc-56/0x406f48f47d25e9caa29f17e7cfbd1dc6878f078f/) | ⚠️ Unaudited |
| VAI | unknown | bsc | n/a | [`0x4bd17003473389a42daf6a0a729f6fdb328bbbd7`](./contracts/bsc-56/0x4bd17003473389a42daf6a0a729f6fdb328bbbd7/) | ⚠️ Unaudited |
| VAIController | unknown | bsc | n/a | 2 deployments: bsc [`0x004065d34c6b18ce4370ced1cebde94865dbfafe`](./contracts/bsc-56/0x004065d34c6b18ce4370ced1cebde94865dbfafe/); bsc `0x9817823d5c4023efb6173099928f17bb77cd1d69` | ⚠️ Unaudited |
| VAIController | unknown | bsc | n/a | 4 deployments: bsc [`0x16c8ee0aab1fdee76cc1906c831e08b97729ec6d`](./contracts/bsc-56/0x16c8ee0aab1fdee76cc1906c831e08b97729ec6d/); bsc `0x58c64758fce6eb2802858147d7e6e25ac42a79db`; bsc `0x793ff22b882665ca492843962ad945caf5440f3c`; bsc `0x90b6c1d06e288753fe36f8e2c051853ce4987131` | ⚠️ Unaudited |
| VAIVault | core_logic | bsc | n/a | [`0x0667eed0a0aab930af74a3dfedd263a73994f216`](./contracts/bsc-56/0x0667eed0a0aab930af74a3dfedd263a73994f216/) | ⚠️ Unaudited |
| VAIVault | unknown | bsc | n/a | [`0x7680c89eb3e58dec4d38093b4803be2b7f257360`](./contracts/bsc-56/0x7680c89eb3e58dec4d38093b4803be2b7f257360/) | ⚠️ Unaudited |
| VBep20Delegate | unknown | bsc | n/a | 22 deployments: bsc [`0x08ceb3f4a7ed3500ca0982bcd0fc7816688084c3`](./contracts/bsc-56/0x08ceb3f4a7ed3500ca0982bcd0fc7816688084c3/); bsc `0x151b1e2635a717bcdc836ecd6fbb62b674fe3e1d`; bsc `0x1610bc33319e9398de5f57b33a5b184c806ad217`; bsc `0x26da28954763b92139ed49283625cecaf52c6f94`; bsc `0x2ff3d0f6990a40261c66e1ff2017acbc282eb6d0`; bsc `0x334b3ecb4dca3593bccc3c7ebd1a1c1d1780fbf1`; bsc `0x57a5297f2cb2c0aac9d554660acd6d385ab50c6b`; bsc `0x5c9476fcd6a4f9a3654139721c949c2233bbbbc8`; bsc `0x5f0388ebc2b94fa8e123f404b79ccf5f40b29176`; bsc `0x650b940a1033b8a1b1873f78730fcfc73ec11f1f`; bsc `0x86ac3974e2bd0d60825230fa6f355ff11409df5c`; bsc `0x882c173bc7ff3b7786ca16dfed3dfffb9ee7847b`; bsc `0x95c78222b3d6e262426483d42cfa53685a67ab9d`; bsc `0x972207a639cc1b374b893cc33fa251b55ceb7c07`; bsc `0x9a0af7fdb2065ce470d72664de73cae409da28ec`; bsc `0xb248a295732e0225acd3337607cc01068e3b9c10`; bsc `0xc4ef4229fec74ccfe17b2bdef7715fac740ba0ba`; bsc `0xec3422ef92b2fb59e84c8b02ba73f1fe84ed8d71`; bsc `0xeca88125a5adbe82614ffc12d0db554e2e2867c8`; bsc `0xf508fcd89b8bd15579dc79a6827cb4686a3592c8`; bsc `0xf91d58b5ae142dacc749f58a49fcbac340cb0343`; bsc `0xfd5840cd36d94d7229439859c0112a4185bc0255` | ⚠️ Unaudited |
| VBep20Delegate | unknown | bsc | n/a | 4 deployments: bsc [`0x13f816511384d3534783241ddb5751c4b7a7e148`](./contracts/bsc-56/0x13f816511384d3534783241ddb5751c4b7a7e148/); bsc `0xdefa73a6c622f40e73e6ce0baf9e5fd76996b069`; bsc `0xf9f48874050264664bf3d383c7289a0a5bd98896`; bsc `0xfa990cafd2a3c971149c71969bf7c8613f54af05` | ⚠️ Unaudited |
| VBNB | unknown | bsc | n/a | [`0xa07c5b74c9b40447a954e1466938b865b6bbea36`](./contracts/bsc-56/0xa07c5b74c9b40447a954e1466938b865b6bbea36/) | ⚠️ Unaudited |
| VenusLens | unknown | bsc | n/a | 3 deployments: bsc [`0x595e9ddfebd47b54b996c839ef3dd97db3ed19ba`](./contracts/bsc-56/0x595e9ddfebd47b54b996c839ef3dd97db3ed19ba/); bsc `0x892d8e61b5151a1e200a64bd5f766784771d7355`; bsc `0xfb0f09db330dc842a6637bfb959209424bbfe8c7` | ⚠️ Unaudited |
| VenusPriceOracle | unknown | bsc | n/a | [`0x516c18dc440f107f12619a6d2cc320622807d0ee`](./contracts/bsc-56/0x516c18dc440f107f12619a6d2cc320622807d0ee/) | ⚠️ Unaudited |
| VToken | unknown | bsc | n/a | [`0x9a8ade92b2d71497b6f19607797f2697cf30f03a`](./contracts/bsc-56/0x9a8ade92b2d71497b6f19607797f2697cf30f03a/) | ⚠️ Unaudited |
| VTreasury | operational_periphery | bsc | n/a | [`0xf322942f644a996a617bd29c16bd7d231d9f35e9`](./contracts/bsc-56/0xf322942f644a996a617bd29c16bd7d231d9f35e9/) | ⚠️ Unaudited |
| XVS | unknown | bsc | n/a | [`0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63`](./contracts/bsc-56/0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1lMosZQvcDvGoX60d-h8C0YxJD_IhyxJD/view](https://drive.google.com/file/d/1lMosZQvcDvGoX60d-h8C0YxJD_IhyxJD/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Evoq Finance_Zokyo_audit_report_Jan9th_2025.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Evoq%20Finance/Evoq%20Finance_Zokyo_audit_report_Jan9th_2025.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [drive.google.com/file/u/1/d/1lMosZQvcDvGoX60d-h8C0YxJD_IhyxJD/view](https://drive.google.com/file/u/1/d/1lMosZQvcDvGoX60d-h8C0YxJD_IhyxJD/view?usp=drive_link) | HashDit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x3f66e044dfd1ccc834e55624b5f6e9e75ab36000`](./contracts/bsc-56/0x3f66e044dfd1ccc834e55624b5f6e9e75ab36000/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfd36e2c2a6789db23113685031d7f16329158384`](./contracts/bsc-56/0xfd36e2c2a6789db23113685031d7f16329158384/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x406f48f47d25e9caa29f17e7cfbd1dc6878f078f`](./contracts/bsc-56/0x406f48f47d25e9caa29f17e7cfbd1dc6878f078f/) | GovernorAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4bd17003473389a42daf6a0a729f6fdb328bbbd7`](./contracts/bsc-56/0x4bd17003473389a42daf6a0a729f6fdb328bbbd7/) | VAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x004065d34c6b18ce4370ced1cebde94865dbfafe`](./contracts/bsc-56/0x004065d34c6b18ce4370ced1cebde94865dbfafe/) | VAIController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x16c8ee0aab1fdee76cc1906c831e08b97729ec6d`](./contracts/bsc-56/0x16c8ee0aab1fdee76cc1906c831e08b97729ec6d/) | VAIController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0667eed0a0aab930af74a3dfedd263a73994f216`](./contracts/bsc-56/0x0667eed0a0aab930af74a3dfedd263a73994f216/) | VAIVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7680c89eb3e58dec4d38093b4803be2b7f257360`](./contracts/bsc-56/0x7680c89eb3e58dec4d38093b4803be2b7f257360/) | VAIVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x08ceb3f4a7ed3500ca0982bcd0fc7816688084c3`](./contracts/bsc-56/0x08ceb3f4a7ed3500ca0982bcd0fc7816688084c3/) | VBep20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13f816511384d3534783241ddb5751c4b7a7e148`](./contracts/bsc-56/0x13f816511384d3534783241ddb5751c4b7a7e148/) | VBep20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa07c5b74c9b40447a954e1466938b865b6bbea36`](./contracts/bsc-56/0xa07c5b74c9b40447a954e1466938b865b6bbea36/) | VBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x595e9ddfebd47b54b996c839ef3dd97db3ed19ba`](./contracts/bsc-56/0x595e9ddfebd47b54b996c839ef3dd97db3ed19ba/) | VenusLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x516c18dc440f107f12619a6d2cc320622807d0ee`](./contracts/bsc-56/0x516c18dc440f107f12619a6d2cc320622807d0ee/) | VenusPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9a8ade92b2d71497b6f19607797f2697cf30f03a`](./contracts/bsc-56/0x9a8ade92b2d71497b6f19607797f2697cf30f03a/) | VToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf322942f644a996a617bd29c16bd7d231d9f35e9`](./contracts/bsc-56/0xf322942f644a996a617bd29c16bd7d231d9f35e9/) | VTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63`](./contracts/bsc-56/0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63/) | XVS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13115] drive.google.com/file/d/1lMosZQvcDvGoX60d-h8C0YxJD_IhyxJD/view
- [13116] Evoq Finance_Zokyo_audit_report_Jan9th_2025.pdf
- [13117] drive.google.com/file/u/1/d/1lMosZQvcDvGoX60d-h8C0YxJD_IhyxJD/view

Fork inheritance lineage and inherited audits are included when available.
