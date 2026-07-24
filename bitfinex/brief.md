# Agentic Audit Brief: Bitfinex

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Bitfinex (`bitfinex`)
- Website: [https://www.bitfinex.com](https://www.bitfinex.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, ethereum, fantom, polygon
- Contract surface: 71 unique implementations (71 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $15,957,926,981.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Bitfinex in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2af5d2ad76741191d15dfe7bf6ac92d4bd912ca3`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 70 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 1 of 71 unique; 70 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 71
- Raw deployments: 71
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc61b9bb3a7a0767e3179713f3a5c7a9aedce193c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03d75ef57b05ebaf49b0fab5f2512c5dee4bdd97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x058e2bec45b24cf4a5d9d8c780731ea4f5f09ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e55c54249f25f70d519b7fb1c20e3331e7ba76d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1488f99d305990694e19b3e72f6f0307cfa1df4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a9b2d827f26b7d7c18fec4c1b27c1e8deeba26e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23b7b48bc4041d262505d3967aea87db0379f0e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x274bbd862606b7011fa961ecb5a697b9fdf804cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29c317dccc79ef77ef04bb7e9a852926050bc92d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380599 | `0x2af5d2ad76741191d15dfe7bf6ac92d4bd912ca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b2d7d874bbfb73f85b2f8a9ee0d9f3e93722622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd04bb68786834f199ce12074da7b8832129fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe43a28ad82a7fc5422ab8e9ea4efdeb1655f41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe468219e40b732ee43dc5c1d6295bd796e5705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37830160c2d98b3aea292aa6dc984f1a6d90946c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38ae374ecf4db50b0ff37125b591a04997106a32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b4d5a7dd02dc866dd60aeb872dfbfe37564c684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4007e9dd4df666bbb942833ea176a7b6a3e037d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4214c9ac9d7dfb0a81706676567359c9290af981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b9aa7a244b38ef56dff4d2df7e7a7013a59cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c24a4dfb0c67916d47b4726958eb66b63bdd268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54419bc42555b4bed712ade1e7942540e0cef543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5501c4c4b63728806ed9f0663d1eb012aa06c8ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d173723236e6f844eed04f4fba72db5e32adb7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60f8526f09caaf0008187945ccd88bc43790042c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64575dc58f1927dbf5633b3168d55a0012da340c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x651aa5ea257af3d6fd08aedca8c5a446edb7b7a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680bf2eebf0ad9b183ac2ff88d16f5a4e41480e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68818d468c0e1fefdc56824ab4f3f053a8a9a6c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69391cca2e38b845720c7deb694ec837877a8e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e109e9dd7fa1a58bc3eff667e8e41fc3cc07aef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eb97237b8bc26e8057793200207bb0a2a83c347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70b04d0684ea9dc0c8e244e0a1453744350f3864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752d048e1f1dcf38735191b75dc49603e6ed6deb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x768c42ff6f5805bd2631ac7cc9eabe3af17b4b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d5a230dd6b5cd24308566e8e4074c1d615862b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8714f686102f206a233f415d521194ec80d2a48a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8747265bf3cd756a08a3dd2e61eb933d5167982f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a710857478a59bf0d2b53056a68ef386a153dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aa72dd6045505836f643b39b82e70fd705f9686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bffb657e0481d8cdf9801f1b160e9e0125b5148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e9ac0de3ab634ce0e2f0e397efc5ce8a72a12b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dc6a333a99c0ede1cd346ccf079ea8451013db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99416180ae5d41c0e912985576094cd8c3a218fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa216c4d91c856e768d7a4570c2f2a9fa77cd8d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa7427d8f17d87a28f5e1ba3adbb270badbe1011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab02feb027f0fabc2b27d3719406e19c581767dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab056a8119bb91ca50631bd319ee3df654bebfa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaee07ea8aa8b25f70c6e8268bd448dd182693782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0abd4cc5195560209492b6854c666d7cff8c03c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb24ed9d62d4c660faf56a4cddada06c88b2d5ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2b9d7ba7b7e5fb4e51a8bac83fd43e90c947dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb33ce6b1e48f450b4c6d4c0a3f281237eeea2dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaea5bc6568dcb1f1c5aa24223a47333a6b3a8f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcf2a47893bc51662fb9f14c3afbfe82b129eef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ca38091061e3e5358a52d74730f16c60ca9c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc88b6573cc09fd48ffad73a9e09a0b3a93f095be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc94ec1f80c4423ae0cecb4296b5de530219f0f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf67d7a481ceeca0a77f658991a00366fed558f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6f9235b045f1dc189e2ffb3c65d9e5e9a135538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7a7afe4b20611f2c839ec5cd340f27fe08c949c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9ebebfdab08c643c5f2837632de920c70a56247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcdb42c9a256690bd153a7b409751adfc8dd5851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe82cfc4713598dc7244368cf5aca1b102a04ce33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe851048c101abbdac26615c44dcec4c051864125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea7abb773104745798ee36b1978b64f2bf061b3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb52a95695ffa4cf411b804455287f0717884899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf17ebb3a24dc6d6b56d38adf0df499c1cd9e5672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf58825b4c26ae1289a0e3e4aedf49921809dc953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd31fa7ac6f91506c984aa51147cbc0c87cee2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff6b71c745d80a0f57053d9d1fe6269da7cdbbfc` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 69
- Live contracts: 0
- Unknown liveness contracts: 69
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=69

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x03d75ef57b05ebaf49b0fab5f2512c5dee4bdd97` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x058e2bec45b24cf4a5d9d8c780731ea4f5f09ed7` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e55c54249f25f70d519b7fb1c20e3331e7ba76d` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1488f99d305990694e19b3e72f6f0307cfa1df4e` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a9b2d827f26b7d7c18fec4c1b27c1e8deeba26e` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23b7b48bc4041d262505d3967aea87db0379f0e7` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x274bbd862606b7011fa961ecb5a697b9fdf804cf` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29c317dccc79ef77ef04bb7e9a852926050bc92d` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b2d7d874bbfb73f85b2f8a9ee0d9f3e93722622` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2cd04bb68786834f199ce12074da7b8832129fe1` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2fe43a28ad82a7fc5422ab8e9ea4efdeb1655f41` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2fe468219e40b732ee43dc5c1d6295bd796e5705` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37830160c2d98b3aea292aa6dc984f1a6d90946c` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38ae374ecf4db50b0ff37125b591a04997106a32` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b4d5a7dd02dc866dd60aeb872dfbfe37564c684` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4007e9dd4df666bbb942833ea176a7b6a3e037d1` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4214c9ac9d7dfb0a81706676567359c9290af981` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42b9aa7a244b38ef56dff4d2df7e7a7013a59cbf` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c24a4dfb0c67916d47b4726958eb66b63bdd268` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54419bc42555b4bed712ade1e7942540e0cef543` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5501c4c4b63728806ed9f0663d1eb012aa06c8ca` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d173723236e6f844eed04f4fba72db5e32adb7c` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60f8526f09caaf0008187945ccd88bc43790042c` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64575dc58f1927dbf5633b3168d55a0012da340c` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x651aa5ea257af3d6fd08aedca8c5a446edb7b7a6` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x680bf2eebf0ad9b183ac2ff88d16f5a4e41480e9` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68818d468c0e1fefdc56824ab4f3f053a8a9a6c1` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69391cca2e38b845720c7deb694ec837877a8e53` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e109e9dd7fa1a58bc3eff667e8e41fc3cc07aef` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6eb97237b8bc26e8057793200207bb0a2a83c347` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70b04d0684ea9dc0c8e244e0a1453744350f3864` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x752d048e1f1dcf38735191b75dc49603e6ed6deb` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x768c42ff6f5805bd2631ac7cc9eabe3af17b4b41` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d5a230dd6b5cd24308566e8e4074c1d615862b3` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8714f686102f206a233f415d521194ec80d2a48a` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8747265bf3cd756a08a3dd2e61eb933d5167982f` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a710857478a59bf0d2b53056a68ef386a153dc9` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8aa72dd6045505836f643b39b82e70fd705f9686` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8bffb657e0481d8cdf9801f1b160e9e0125b5148` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e9ac0de3ab634ce0e2f0e397efc5ce8a72a12b8` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x93dc6a333a99c0ede1cd346ccf079ea8451013db` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99416180ae5d41c0e912985576094cd8c3a218fa` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa216c4d91c856e768d7a4570c2f2a9fa77cd8d78` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa7427d8f17d87a28f5e1ba3adbb270badbe1011` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab02feb027f0fabc2b27d3719406e19c581767dc` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab056a8119bb91ca50631bd319ee3df654bebfa2` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaee07ea8aa8b25f70c6e8268bd448dd182693782` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0abd4cc5195560209492b6854c666d7cff8c03c` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb24ed9d62d4c660faf56a4cddada06c88b2d5ddb` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2b9d7ba7b7e5fb4e51a8bac83fd43e90c947dc5` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb33ce6b1e48f450b4c6d4c0a3f281237eeea2dec` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbaea5bc6568dcb1f1c5aa24223a47333a6b3a8f5` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbcf2a47893bc51662fb9f14c3afbfe82b129eef9` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3ca38091061e3e5358a52d74730f16c60ca9c26` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc88b6573cc09fd48ffad73a9e09a0b3a93f095be` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc94ec1f80c4423ae0cecb4296b5de530219f0f9d` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf67d7a481ceeca0a77f658991a00366fed558f7` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6f9235b045f1dc189e2ffb3c65d9e5e9a135538` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd7a7afe4b20611f2c839ec5cd340f27fe08c949c` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd9ebebfdab08c643c5f2837632de920c70a56247` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdcdb42c9a256690bd153a7b409751adfc8dd5851` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe82cfc4713598dc7244368cf5aca1b102a04ce33` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe851048c101abbdac26615c44dcec4c051864125` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xea7abb773104745798ee36b1978b64f2bf061b3f` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb52a95695ffa4cf411b804455287f0717884899` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf17ebb3a24dc6d6b56d38adf0df499c1cd9e5672` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf58825b4c26ae1289a0e3e4aedf49921809dc953` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd31fa7ac6f91506c984aa51147cbc0c87cee2a2` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff6b71c745d80a0f57053d9d1fe6269da7cdbbfc` | non_address_book | unknown | unknown | unverified | n/a | `0xe1f3c653248de6894d683cb2f10de7ca2253046f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 70 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
