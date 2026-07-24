# Agentic Audit Brief: Switcheo Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Switcheo Finance (`switcheo-finance`)
- Website: [https://www.switcheo.com/](https://www.switcheo.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 54 unique implementations (108 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $950,669.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Switcheo Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 54 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 54
- Raw deployments: 108
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

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlephPaymentProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5c62734eca6c5f44f8aa122a05e5eef627eec0bd`; ethereum `0x6b55f32ea969910838defd03746ced5e2ae8cb8b` | ⚠️ Unaudited |
| AlephSync | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x166fd4299364b21c7567e163d85d78d2fb2f8ad5` | ⚠️ Unaudited |
| AmpleforthWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2b9d7ba7b7e5fb4e51a8bac83fd43e90c947dc5` | ⚠️ Unaudited |
| BalancerGovernanceToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba100000625a3754423978a60c9317c58a424e3d` | ⚠️ Unaudited |
| BCAPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x403506af39e41e2226440ad5fb44c6200b180158`; ethereum `0xef6dd40eff935626ee2ba971a90e6897e4cbbf8b` | ⚠️ Unaudited |
| CelsiusToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaaebe6fe48e54f431b0c390cfaf0b017d09d42d` | ⚠️ Unaudited |
| Crowdsale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x398e41ac3d5972b4bac2320cd130c7a25ca446f7` | ⚠️ Unaudited |
| DecenturionToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x001575786dfa7b9d9d1324ec308785738f80a951` | ⚠️ Unaudited |
| DuskToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x940a2db1b7008b6c776d4faaca729d6d4a4aa551` | ⚠️ Unaudited |
| EIP20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x27702a26126e0b3702af63ee09ac4d1a084ef628`; ethereum `0xc0134b5b924c2fca106efb33c45446c466fbe03e` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x651aa5ea257af3d6fd08aedca8c5a446edb7b7a6` | ⚠️ Unaudited |
| ExchangeEfx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcdb42c9a256690bd153a7b409751adfc8dd5851` | ⚠️ Unaudited |
| GigaWattToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84119cb33e8f590d75c2d6ea4e6b0741a7494eda` | ⚠️ Unaudited |
| INSToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b2e4a700dfbc560061e957edec8f6eeeb74a320` | ⚠️ Unaudited |
| KyberNetworkCrystal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd974d5c2e2928dea5f71b9825b8b646686bd200` | ⚠️ Unaudited |
| LEO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2af5d2ad76741191d15dfe7bf6ac92d4bd912ca3` | ⚠️ Unaudited |
| LEOController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf17ebb3a24dc6d6b56d38adf0df499c1cd9e5672` | ⚠️ Unaudited |
| LogERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047f18e7f21aa714c6a5f4b346318eb384434a4b` | ⚠️ Unaudited |
| LUCToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dbe296f97b23c4a6aa6183d73e574d02ba5c719` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e9ac0de3ab634ce0e2f0e397efc5ce8a72a12b8` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e55c54249f25f70d519b7fb1c20e3331e7ba76d` | ⚠️ Unaudited |
| NectarTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe851048c101abbdac26615c44dcec4c051864125` | ⚠️ Unaudited |
| OneTimeListingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8714f686102f206a233f415d521194ec80d2a48a`; ethereum `0xfd31fa7ac6f91506c984aa51147cbc0c87cee2a2` | ⚠️ Unaudited |
| OneWorldOnlineToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdbc1adc26f0f8f8606a5d63b7d3a3cd21c22b23` | ⚠️ Unaudited |
| PerkscoinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebe6a342a93102393edd9d2e458c689e5ac0bb3` | ⚠️ Unaudited |
| ProposalManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb24ed9d62d4c660faf56a4cddada06c88b2d5ddb` | ⚠️ Unaudited |
| SocialMediaMarketToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78eb8dc641077f049f910659b6d580e80dc4d237` | ⚠️ Unaudited |
| StandardToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a220e6096b25eadb88358cb44068a3248254675` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e109e9dd7fa1a58bc3eff667e8e41fc3cc07aef` | ⚠️ Unaudited |
| TokenListingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x29c317dccc79ef77ef04bb7e9a852926050bc92d`; ethereum `0x2b2d7d874bbfb73f85b2f8a9ee0d9f3e93722622`; ethereum `0x64575dc58f1927dbf5633b3168d55a0012da340c`; ethereum `0xc88b6573cc09fd48ffad73a9e09a0b3a93f095be` | ⚠️ Unaudited |
| TokenListingManagerAdvanced | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe468219e40b732ee43dc5c1d6295bd796e5705` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe43a28ad82a7fc5422ab8e9ea4efdeb1655f41` | ⚠️ Unaudited |
| TransferRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x68818d468c0e1fefdc56824ab4f3f053a8a9a6c1`; ethereum `0xc3ca38091061e3e5358a52d74730f16c60ca9c26` | ⚠️ Unaudited |
| TrustlessOTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x93dc6a333a99c0ede1cd346ccf079ea8451013db`; ethereum `0xbaea5bc6568dcb1f1c5aa24223a47333a6b3a8f5` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0faa28da415abdda123233a00b7cc7f8c56445b1` | ⚠️ Unaudited |
| Wallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x164e52345455a0e56ae164630fc6d454cfa483e6`; ethereum `0x1b1bf35321ec7773224bafd623fc6be703c5b218`; ethereum `0x3792d288d9f0993971f23e4758acb719f285f6ef`; ethereum `0x6dd1a58e5422bf0328e42f88c7d18c8d8ce11061`; ethereum `0xecf8db4968a8817e21bdd5ecda830e413089b534` | ⚠️ Unaudited |
| WrapperDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd04bb68786834f199ce12074da7b8832129fe1` | ⚠️ Unaudited |
| WrapperLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 39 deployments: ethereum `0x058e2bec45b24cf4a5d9d8c780731ea4f5f09ed7`; ethereum `0x1488f99d305990694e19b3e72f6f0307cfa1df4e`; ethereum `0x1a9b2d827f26b7d7c18fec4c1b27c1e8deeba26e`; ethereum `0x23b7b48bc4041d262505d3967aea87db0379f0e7`; ethereum `0x274bbd862606b7011fa961ecb5a697b9fdf804cf`; ethereum `0x37830160c2d98b3aea292aa6dc984f1a6d90946c`; ethereum `0x38ae374ecf4db50b0ff37125b591a04997106a32`; ethereum `0x3b4d5a7dd02dc866dd60aeb872dfbfe37564c684`; ethereum `0x4007e9dd4df666bbb942833ea176a7b6a3e037d1`; ethereum `0x4c24a4dfb0c67916d47b4726958eb66b63bdd268`; ethereum `0x5501c4c4b63728806ed9f0663d1eb012aa06c8ca`; ethereum `0x5d173723236e6f844eed04f4fba72db5e32adb7c`; ethereum `0x60f8526f09caaf0008187945ccd88bc43790042c`; ethereum `0x680bf2eebf0ad9b183ac2ff88d16f5a4e41480e9`; ethereum `0x69391cca2e38b845720c7deb694ec837877a8e53`; ethereum `0x70b04d0684ea9dc0c8e244e0a1453744350f3864`; ethereum `0x752d048e1f1dcf38735191b75dc49603e6ed6deb`; ethereum `0x7d5a230dd6b5cd24308566e8e4074c1d615862b3`; ethereum `0x8747265bf3cd756a08a3dd2e61eb933d5167982f`; ethereum `0x8a710857478a59bf0d2b53056a68ef386a153dc9`; ethereum `0x8aa72dd6045505836f643b39b82e70fd705f9686`; ethereum `0x8bffb657e0481d8cdf9801f1b160e9e0125b5148`; ethereum `0x99416180ae5d41c0e912985576094cd8c3a218fa`; ethereum `0xa216c4d91c856e768d7a4570c2f2a9fa77cd8d78`; ethereum `0xab02feb027f0fabc2b27d3719406e19c581767dc`; ethereum `0xab056a8119bb91ca50631bd319ee3df654bebfa2`; ethereum `0xaee07ea8aa8b25f70c6e8268bd448dd182693782`; ethereum `0xb0abd4cc5195560209492b6854c666d7cff8c03c`; ethereum `0xb33ce6b1e48f450b4c6d4c0a3f281237eeea2dec`; ethereum `0xbcf2a47893bc51662fb9f14c3afbfe82b129eef9`; ethereum `0xc94ec1f80c4423ae0cecb4296b5de530219f0f9d`; ethereum `0xcf67d7a481ceeca0a77f658991a00366fed558f7`; ethereum `0xd7a7afe4b20611f2c839ec5cd340f27fe08c949c`; ethereum `0xd9ebebfdab08c643c5f2837632de920c70a56247`; ethereum `0xe82cfc4713598dc7244368cf5aca1b102a04ce33`; ethereum `0xea7abb773104745798ee36b1978b64f2bf061b3f`; ethereum `0xeb52a95695ffa4cf411b804455287f0717884899`; ethereum `0xf58825b4c26ae1289a0e3e4aedf49921809dc953`; ethereum `0xff6b71c745d80a0f57053d9d1fe6269da7cdbbfc` | ⚠️ Unaudited |
| WrapperLockDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x54419bc42555b4bed712ade1e7942540e0cef543`; ethereum `0xd6f9235b045f1dc189e2ffb3c65d9e5e9a135538` | ⚠️ Unaudited |
| WrapperLockEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x42b9aa7a244b38ef56dff4d2df7e7a7013a59cbf`; ethereum `0x768c42ff6f5805bd2631ac7cc9eabe3af17b4b41`; ethereum `0xaa7427d8f17d87a28f5e1ba3adbb270badbe1011` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x011e4e836cdd6103016af8d30bbe8e5d12c5f05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038fa5f9afed6edb92a424b0a9ec2fcf0cf72197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03d75ef57b05ebaf49b0fab5f2512c5dee4bdd97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1da1a54ad312076d58975797fa11370a397a3c64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4214c9ac9d7dfb0a81706676567359c9290af981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eb97237b8bc26e8057793200207bb0a2a83c347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72390f06331bb65c347d2077d7e6c85a60c8ff32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c905e6d89627fb75cbf8aff95c0457fcb229540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x836344f76075c66506b19727b3a8f6b8cbd35dc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6e9bc740f07eb3a2278170b7fef2912b4c9a3c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb775ef59d05ec8eab4b1cc3c303d3ae9040b57e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8ced007bc0d7621e85e9d4c0496127416bc07d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebbacef92a0893cb394772ef3c2616a9941c3ce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1deeddc6b464750bb2a56636e0fffce03455b0f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 87
- Live contracts: 0
- Unknown liveness contracts: 87
- Source-verified contracts: 73
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=40, contamination review=11, source verified unclassified=22, unverified unclassified=14

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | source verified unclassified | Vesting<br>`0x0faa28da415abdda123233a00b7cc7f8c56445b1` | non_address_book | unknown | unknown | verified | n/a | `0x618bb3b255928ae6b2046df5c828fa1dc7e3c5f0` |
| ethereum | candidate review | BCAPToken<br>`0x403506af39e41e2226440ad5fb44c6200b180158` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | candidate review | BCAPToken<br>`0xef6dd40eff935626ee2ba971a90e6897e4cbbf8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | source verified unclassified | DecenturionToken<br>`0x001575786dfa7b9d9d1324ec308785738f80a951` | non_address_book | unknown | unknown | verified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | source verified unclassified | PerkscoinToken<br>`0x5ebe6a342a93102393edd9d2e458c689e5ac0bb3` | non_address_book | unknown | unknown | verified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | source verified unclassified | Wallet<br>`0x164e52345455a0e56ae164630fc6d454cfa483e6` | non_address_book | unknown | unknown | verified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | source verified unclassified | Wallet<br>`0x1b1bf35321ec7773224bafd623fc6be703c5b218` | non_address_book | unknown | unknown | verified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | source verified unclassified | Wallet<br>`0x6dd1a58e5422bf0328e42f88c7d18c8d8ce11061` | non_address_book | unknown | unknown | verified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x011e4e836cdd6103016af8d30bbe8e5d12c5f05e` | non_address_book | unknown | unknown | unverified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x038fa5f9afed6edb92a424b0a9ec2fcf0cf72197` | non_address_book | unknown | unknown | unverified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1da1a54ad312076d58975797fa11370a397a3c64` | non_address_book | unknown | unknown | unverified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72390f06331bb65c347d2077d7e6c85a60c8ff32` | non_address_book | unknown | unknown | unverified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c905e6d89627fb75cbf8aff95c0457fcb229540` | non_address_book | unknown | unknown | unverified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x836344f76075c66506b19727b3a8f6b8cbd35dc8` | non_address_book | unknown | unknown | unverified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6e9bc740f07eb3a2278170b7fef2912b4c9a3c0` | non_address_book | unknown | unknown | unverified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb775ef59d05ec8eab4b1cc3c303d3ae9040b57e7` | non_address_book | unknown | unknown | unverified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8ced007bc0d7621e85e9d4c0496127416bc07d2` | non_address_book | unknown | unknown | unverified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xebbacef92a0893cb394772ef3c2616a9941c3ce0` | non_address_book | unknown | unknown | unverified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf1deeddc6b464750bb2a56636e0fffce03455b0f` | non_address_book | unknown | unknown | unverified | n/a | `0xad8b03bb5576f31ff3fd29ebda4d5d920a5eafc9` |
| ethereum | source verified unclassified | AlephPaymentProcessor<br>`0x5c62734eca6c5f44f8aa122a05e5eef627eec0bd` | non_address_book | unknown | unknown | verified | n/a | `0xb6e45adfa0c7d70886bbfc990790d64620f1bae8` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x6b55f32ea969910838defd03746ced5e2ae8cb8b` | non_address_book | unknown | unknown | verified | n/a | `0xb6e45adfa0c7d70886bbfc990790d64620f1bae8` |
| ethereum | candidate review | AmpleforthWrapper<br>`0xb2b9d7ba7b7e5fb4e51a8bac83fd43e90c947dc5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x058e2bec45b24cf4a5d9d8c780731ea4f5f09ed7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x1488f99d305990694e19b3e72f6f0307cfa1df4e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x23b7b48bc4041d262505d3967aea87db0379f0e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x274bbd862606b7011fa961ecb5a697b9fdf804cf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x37830160c2d98b3aea292aa6dc984f1a6d90946c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x3b4d5a7dd02dc866dd60aeb872dfbfe37564c684` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x4007e9dd4df666bbb942833ea176a7b6a3e037d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x4c24a4dfb0c67916d47b4726958eb66b63bdd268` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x5501c4c4b63728806ed9f0663d1eb012aa06c8ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x5d173723236e6f844eed04f4fba72db5e32adb7c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x60f8526f09caaf0008187945ccd88bc43790042c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x680bf2eebf0ad9b183ac2ff88d16f5a4e41480e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x69391cca2e38b845720c7deb694ec837877a8e53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x70b04d0684ea9dc0c8e244e0a1453744350f3864` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x752d048e1f1dcf38735191b75dc49603e6ed6deb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x7d5a230dd6b5cd24308566e8e4074c1d615862b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x8747265bf3cd756a08a3dd2e61eb933d5167982f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x8a710857478a59bf0d2b53056a68ef386a153dc9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x8aa72dd6045505836f643b39b82e70fd705f9686` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x8bffb657e0481d8cdf9801f1b160e9e0125b5148` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0x99416180ae5d41c0e912985576094cd8c3a218fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xa216c4d91c856e768d7a4570c2f2a9fa77cd8d78` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xab02feb027f0fabc2b27d3719406e19c581767dc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xab056a8119bb91ca50631bd319ee3df654bebfa2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xaee07ea8aa8b25f70c6e8268bd448dd182693782` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xb0abd4cc5195560209492b6854c666d7cff8c03c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xb33ce6b1e48f450b4c6d4c0a3f281237eeea2dec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xbcf2a47893bc51662fb9f14c3afbfe82b129eef9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xc94ec1f80c4423ae0cecb4296b5de530219f0f9d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xcf67d7a481ceeca0a77f658991a00366fed558f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xd7a7afe4b20611f2c839ec5cd340f27fe08c949c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xd9ebebfdab08c643c5f2837632de920c70a56247` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xe82cfc4713598dc7244368cf5aca1b102a04ce33` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xea7abb773104745798ee36b1978b64f2bf061b3f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xeb52a95695ffa4cf411b804455287f0717884899` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xf58825b4c26ae1289a0e3e4aedf49921809dc953` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | candidate review | WrapperLock<br>`0xff6b71c745d80a0f57053d9d1fe6269da7cdbbfc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | contamination review | Exchange<br>`0x651aa5ea257af3d6fd08aedca8c5a446edb7b7a6` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | contamination review | ExchangeEfx<br>`0xdcdb42c9a256690bd153a7b409751adfc8dd5851` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | contamination review | LEOController<br>`0xf17ebb3a24dc6d6b56d38adf0df499c1cd9e5672` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | contamination review | MiniMeTokenFactory<br>`0x8e9ac0de3ab634ce0e2f0e397efc5ce8a72a12b8` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | contamination review | NectarController<br>`0x0e55c54249f25f70d519b7fb1c20e3331e7ba76d` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | contamination review | OneTimeListingManager<br>`0x8714f686102f206a233f415d521194ec80d2a48a` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | contamination review | ProposalManager<br>`0xb24ed9d62d4c660faf56a4cddada06c88b2d5ddb` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | contamination review | TokenListingManager<br>`0x29c317dccc79ef77ef04bb7e9a852926050bc92d` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | contamination review | TokenListingManagerAdvanced<br>`0x2fe468219e40b732ee43dc5c1d6295bd796e5705` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | contamination review | TransferRegistry<br>`0x68818d468c0e1fefdc56824ab4f3f053a8a9a6c1` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | source verified unclassified | NectarTreasury<br>`0xe851048c101abbdac26615c44dcec4c051864125` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | source verified unclassified | OneTimeListingManager<br>`0xfd31fa7ac6f91506c984aa51147cbc0c87cee2a2` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | source verified unclassified | TokenListingManager<br>`0x2b2d7d874bbfb73f85b2f8a9ee0d9f3e93722622` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | source verified unclassified | TokenListingManager<br>`0x64575dc58f1927dbf5633b3168d55a0012da340c` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | source verified unclassified | TokenListingManager<br>`0xc88b6573cc09fd48ffad73a9e09a0b3a93f095be` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | source verified unclassified | TokenVesting<br>`0x2fe43a28ad82a7fc5422ab8e9ea4efdeb1655f41` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | source verified unclassified | TransferRegistry<br>`0xc3ca38091061e3e5358a52d74730f16c60ca9c26` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | source verified unclassified | TrustlessOTC<br>`0x93dc6a333a99c0ede1cd346ccf079ea8451013db` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | source verified unclassified | TrustlessOTC<br>`0xbaea5bc6568dcb1f1c5aa24223a47333a6b3a8f5` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | source verified unclassified | WrapperDai<br>`0x2cd04bb68786834f199ce12074da7b8832129fe1` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | source verified unclassified | WrapperLockDai<br>`0x54419bc42555b4bed712ade1e7942540e0cef543` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | source verified unclassified | WrapperLockDai<br>`0xd6f9235b045f1dc189e2ffb3c65d9e5e9a135538` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | source verified unclassified | WrapperLockEth<br>`0x42b9aa7a244b38ef56dff4d2df7e7a7013a59cbf` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | source verified unclassified | WrapperLockEth<br>`0x768c42ff6f5805bd2631ac7cc9eabe3af17b4b41` | non_address_book | unknown | unknown | verified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x03d75ef57b05ebaf49b0fab5f2512c5dee4bdd97` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4214c9ac9d7dfb0a81706676567359c9290af981` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6eb97237b8bc26e8057793200207bb0a2a83c347` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | contamination review | Crowdsale<br>`0x398e41ac3d5972b4bac2320cd130c7a25ca446f7` | non_address_book | unknown | unknown | verified | n/a | `0xf5e38bbedc78efea055e0c56035adb320e64c4bc` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity_Switcheo_SWITCHEOs_Audit.pdf (also discovered via alternate URL)](https://www.chainsecurity.com/reports/Switcheo/ChainSecurity_Switcheo_SWITCHEOs_Audit.pdf) | ChainSecurity | Audit | 2018-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [ChainSecurity_Switcheo.pdf](https://github.com/ChainSecurity/audits/blob/master/ChainSecurity_Switcheo.pdf) | ChainSecurity | Audit | 2018-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Manual audit seed](https://www.chainsecurity.com/security-audit/switcheo) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21333] ChainSecurity_Switcheo_SWITCHEOs_Audit.pdf — no match: Only Broker.sol is explicitly listed in the scope section. No other contracts are mentioned as in scope.
- [21334] ChainSecurity_Switcheo.pdf — no match: Only Broker.sol is explicitly listed in the scope section. No other contracts are mentioned as in scope.
- [24515] Manual audit seed — no match: The provided text is a summary/overview of the audit report, not the full report. It does not list specific contract names, file paths, or a scope section. The audit date is also not present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_Switcheo_SWITCHEOs_Audit.pdf | Broker | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Switcheo.pdf | Broker | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: n/a

Zero-match audit list:

- [21333] ChainSecurity_Switcheo_SWITCHEOs_Audit.pdf
- [21334] ChainSecurity_Switcheo.pdf
- [24515] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
