# Agentic Brief: Exactly

## Project Overview

- **Project:** Exactly (exactly)
- **Website:** exact.ly
- **Category:** Lending
- **Chains (topography):** 1, 10, 8453
- **Chains (DeFiLlama):** 1, 10
- **TVL:** $5,360,852 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** dead - latest deployment 2023-08-21
- **Audit history:** 40 audits; most recent 2026-05-03 (2 days ago)
- **Tier:** 4 - project_dead_or_rugged (Excluded)
- **Commercial fit:** mid_tvl_commercial_target

Exactly has 117 deployed contract rows in current topography. This brief renders the 117 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

**Lifecycle warning:** dead. Source: project_lifecycle_status_v1. Outreach not recommended without operator review.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 117 contracts across 3 chains. 32 have TP audit coverage (27.4%); 85 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Auditor | core | core | audited (TP) | [0xaeb62e...027e](https://etherscan.io/address/0xaeb62e6f27bc103702e7bc879ae98bcea56f027e) |
| DebtManager | controller | controller | audited (TP) | [0x7f8421...6601](https://etherscan.io/address/0x7f8421fe6c09b02eaf6905a27863be66268c6601) |
| DebtManager | controller | controller | audited (TP) | [0xe94e00...2567](https://etherscan.io/address/0xe94e0068ea2b8ed9490d29bb534d1ba996412567) |
| InterestRateModel | core | core | audited (TP) | [0x1586c0...9409](https://etherscan.io/address/0x1586c0aea22b2a7a943d7af5a097bdab3f809409) |
| InterestRateModel | core | core | audited (TP) | [0x3fd0a9...9afc](https://etherscan.io/address/0x3fd0a9afae344000c53e5862b350a17775b39afc) |
| InterestRateModel | core | core | audited (TP) | [0x9c36ff...77c6](https://etherscan.io/address/0x9c36ff0412ab4c03606eb1fefb8cac177b1577c6) |
| InterestRateModel | core | core | audited (TP) | [0xe296e3...ee83](https://etherscan.io/address/0xe296e3ae5e1db00f1b9710e6ad885215873cee83) |
| Market | vault_pool | vault_pool | unmatched | [0x3c6bd2...2b54](https://etherscan.io/address/0x3c6bd2ffb9cb007e469cdd7b08d79102b5ae2b54) |
| Market | vault_pool | vault_pool | unmatched | [0x810221...9392](https://etherscan.io/address/0x810221fc9ec7d0ee775983ade221d302e4ad9392) |
| Market | vault_pool | vault_pool | unmatched | [0x86f6d8...4bf9](https://etherscan.io/address/0x86f6d8b717d49527db3126f31bdd3b0047694bf9) |
| Market | vault_pool | vault_pool | unmatched | [0xa6b60f...3825](https://etherscan.io/address/0xa6b60fb117809b05263c126691c707fb19713825) |
| Market | vault_pool | vault_pool | unmatched | [0xf972f7...4e72](https://etherscan.io/address/0xf972f71332af1b7967ad21921b8ef4de84c94e72) |
| MarketETHRouter | vault_pool | vault_pool | audited (TP) | [0x884988...056c](https://etherscan.io/address/0x884988e0bfb0d6a18f664329acd0402b2fb6056c) |
| TimelockController | governance | governance | unmatched | [0x92024c...b58b](https://etherscan.io/address/0x92024c4bda9da602b711b9abb610d072018eb58b) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x163538...98ff](https://etherscan.io/address/0x163538e22f4d38c1eb21b79939f3d2ee274198ff) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x29babf...0258](https://etherscan.io/address/0x29babff3eba7b517a75109ea8fd6d1eab4a10258) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x310a26...fe01](https://etherscan.io/address/0x310a2694521f75c7b2b64b5937c16ce65c3efe01) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x3843c4...29e1](https://etherscan.io/address/0x3843c41da1d7909c86fad51c47b9a97cf62a29e1) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x660e2f...f928](https://etherscan.io/address/0x660e2fc185a9ffe722af253329ceaad4c9f6f928) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x8644c0...9435](https://etherscan.io/address/0x8644c0fded361d1920e068ba4b09996e26729435) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xc4d450...c7ef](https://etherscan.io/address/0xc4d4500326981eacd020e20a81b1c479c161c7ef) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xf880bb...9ac0](https://etherscan.io/address/0xf880bb912b652a594abac1a9d79c968754d09ac0) |
| unnamed | unknown | unknown | unmatched | [0x04ba04...35d3](https://etherscan.io/address/0x04ba04737c435d9c2b8d93eef579b42201a735d3) |
| unnamed | unknown | unknown | unmatched | [0x0d337f...95c1](https://etherscan.io/address/0x0d337f4d28abd8f542ed1cf0d5d45e32db3e95c1) |
| unnamed | unknown | unknown | unmatched | [0x179c07...592e](https://etherscan.io/address/0x179c07e1bc481b221c1fe9cb9e0af5918e8e592e) |
| unnamed | unknown | unknown | unmatched | [0x205625...4de0](https://etherscan.io/address/0x2056256190ed2f7e72f54cad73fdb37610974de0) |
| unnamed | unknown | unknown | unmatched | [0x22ba6b...2c43](https://etherscan.io/address/0x22ba6b356303ad14b3da2e1e268dadcb07352c43) |
| unnamed | unknown | unknown | unmatched | [0x2a8740...e78b](https://etherscan.io/address/0x2a8740e29ff6ce3b4c0745382be5bedbce12e78b) |
| unnamed | unknown | unknown | unmatched | [0x2db2d7...1cc0](https://etherscan.io/address/0x2db2d7b015d97ca600fc70b28d8dc8d20cc31cc0) |
| unnamed | unknown | unknown | unmatched | [0x3a2807...c7d6](https://etherscan.io/address/0x3a2807d02a49b122927a34424a8aba5df0b7c7d6) |
| unnamed | unknown | unknown | unmatched | [0x4a8c77...3bb9](https://etherscan.io/address/0x4a8c77802753d6715dfa8568e3498bc0bc3c3bb9) |
| unnamed | unknown | unknown | unmatched | [0x4d8975...680d](https://etherscan.io/address/0x4d897583ea1f121826569059681a04e490a9680d) |
| unnamed | unknown | unknown | unmatched | [0x54b3f1...4c38](https://etherscan.io/address/0x54b3f1d30a79636aa77a656d30bfe441f2634c38) |
| unnamed | unknown | unknown | unmatched | [0x72795c...c2da](https://etherscan.io/address/0x72795c6f67783bb35c23164a0b54f9de0f46c2da) |
| unnamed | unknown | unknown | unmatched | [0x734e2a...6116](https://etherscan.io/address/0x734e2abad752193b5cd9bc3894dda4e4a9dc6116) |
| unnamed | unknown | unknown | unmatched | [0x7a722e...160e](https://etherscan.io/address/0x7a722eee3c4e3d5156090d10017c7ce9a77c160e) |
| unnamed | unknown | unknown | unmatched | [0x979f31...886f](https://etherscan.io/address/0x979f31bd9c0e7e8178c7328672fd5dbc03e9886f) |
| unnamed | unknown | unknown | unmatched | [0xa5df45...55da](https://etherscan.io/address/0xa5df45a240eebe3745062c616688a2aafa6a55da) |
| unnamed | unknown | unknown | unmatched | [0xaad51e...347e](https://etherscan.io/address/0xaad51eaea66cad89d2d2a2e9389cb1ba919b347e) |
| unnamed | unknown | unknown | unmatched | [0xaefcdb...c60e](https://etherscan.io/address/0xaefcdbd18eabe4d6bd769d6ad649a18a9b9ec60e) |
| unnamed | unknown | unknown | unmatched | [0xb5fa37...2c6c](https://etherscan.io/address/0xb5fa37e4fdebcebae31a68cd673201a2c1e32c6c) |
| unnamed | unknown | unknown | unmatched | [0xb957a4...9fab](https://etherscan.io/address/0xb957a4aa46f859b14c745b8356c28b8361319fab) |
| unnamed | unknown | unknown | unmatched | [0xcc3f41...371e](https://etherscan.io/address/0xcc3f41204a1324dd91f1dbfc46208535293a371e) |
| unnamed | unknown | unknown | unmatched | [0xcf830a...b452](https://etherscan.io/address/0xcf830a26cb28e499d5e7346eb668821933ecb452) |
| unnamed | unknown | unknown | unmatched | [0xd588e1...9976](https://etherscan.io/address/0xd588e11b7089300fbf08b4222b906ed53c199976) |
| unnamed | unknown | unknown | unmatched | [0xd6e103...4d4c](https://etherscan.io/address/0xd6e103a328b78514c1c76ece2cc922bf80794d4c) |
| unnamed | unknown | unknown | unmatched | [0xe61bde...665a](https://etherscan.io/address/0xe61bdef3fff4c3cf7a07996dcb8802b5c85b665a) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Auditor | core | core | audited (TP) | [0x3f55a3...3c46](https://optimistic.etherscan.io/address/0x3f55a319d2fd003f87a96c1c3484121936243c46) |
| DebtManager | controller | controller | audited (TP) | [0xd75947...1bc1](https://optimistic.etherscan.io/address/0xd759479b3a07fab64edb668d702293079e8c1bc1) |
| EscrowedEXA | core | core | audited (TP) | [0x2d550e...e280](https://optimistic.etherscan.io/address/0x2d550e003fde3e3114b1bbd03a25f2498c51e280) |
| EXA | core | core | unmatched | [0x3f6cd7...e07a](https://optimistic.etherscan.io/address/0x3f6cd7982b83e10eb1a41c4c8c1ae27d0cfbe07a) |
| GnosisSafeL2 | governance | governance | unmatched | [0xfb1bff...91ea](https://optimistic.etherscan.io/address/0xfb1bffc9d739b8d520daf37df666da4c687191ea) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x23fd46...5019](https://optimistic.etherscan.io/address/0x23fd464e0b0ee21cedeb929b19cabf9bd5215019) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x8a1c05...02f2](https://optimistic.etherscan.io/address/0x8a1c05c4462b3554814a637e940b3342ffbe02f2) |
| InterestRateModel | core | core | audited (TP) | [0x1a4fc2...2d4d](https://optimistic.etherscan.io/address/0x1a4fc2a7a5f17dc0806d1f324b2bc76c9d142d4d) |
| InterestRateModel | core | core | audited (TP) | [0x3fdf2b...bcda](https://optimistic.etherscan.io/address/0x3fdf2b9474c6c01ccfe7ab2c44855a6ee008bcda) |
| InterestRateModel | core | core | audited (TP) | [0x6ccec8...96b2](https://optimistic.etherscan.io/address/0x6ccec84e6e3879c6430745ea3d40c968c75e96b2) |
| InterestRateModel | core | core | audited (TP) | [0x8130c8...09ed](https://optimistic.etherscan.io/address/0x8130c8b5625dd68b5c7eead3a4cae2921dff09ed) |
| InterestRateModel | core | core | audited (TP) | [0xcc54de...ba01](https://optimistic.etherscan.io/address/0xcc54de39c45000b01074e4970ca0af9d3eb2ba01) |
| InterestRateModel | core | core | audited (TP) | [0xe8cf7c...a018](https://optimistic.etherscan.io/address/0xe8cf7c80518cb3b6e4b5eb6d45cf13e7038aa018) |
| Market | vault_pool | vault_pool | unmatched | [0x0bcea5...4d00](https://optimistic.etherscan.io/address/0x0bcea5139048557c89d394c3d003f2de382d4d00) |
| Market | vault_pool | vault_pool | unmatched | [0x225561...09d9](https://optimistic.etherscan.io/address/0x225561cfa7ff5a44756ca184c3554882667809d9) |
| Market | vault_pool | vault_pool | unmatched | [0x3e5a70...4c2a](https://optimistic.etherscan.io/address/0x3e5a7019e3e59f355e2575556cf8baf83f3f4c2a) |
| Market | vault_pool | vault_pool | unmatched | [0x448ddd...120c](https://optimistic.etherscan.io/address/0x448dddb964de96b5ad183777f5e420384e4d120c) |
| Market | vault_pool | vault_pool | unmatched | [0x6fc143...8024](https://optimistic.etherscan.io/address/0x6fc143c9e6b9dcbc4023cc1f7d87eedb419f8024) |
| Market | vault_pool | vault_pool | unmatched | [0x7d3dff...4c96](https://optimistic.etherscan.io/address/0x7d3dff15129716a41eff2c64d225f69872e84c96) |
| Market | vault_pool | vault_pool | unmatched | [0x87581e...c53e](https://optimistic.etherscan.io/address/0x87581e1540ae45056c0ed59530c783a6e0a9c53e) |
| Market | vault_pool | vault_pool | unmatched | [0x8b6049...1b96](https://optimistic.etherscan.io/address/0x8b60497274ff470786a0b5636379aad8580c1b96) |
| Market | vault_pool | vault_pool | unmatched | [0xad973e...8da5](https://optimistic.etherscan.io/address/0xad973ef23cd21dd9b38dc84132adcb4ff64f8da5) |
| Market | vault_pool | vault_pool | unmatched | [0xb4610b...a2aa](https://optimistic.etherscan.io/address/0xb4610b34ca99fa8c48844faa667fae1686a4a2aa) |
| Market | vault_pool | vault_pool | unmatched | [0xcaa613...40b3](https://optimistic.etherscan.io/address/0xcaa6136c4f85bca3b309b28e559fd3a27e0c40b3) |
| Market | vault_pool | vault_pool | unmatched | [0xce46bc...0f38](https://optimistic.etherscan.io/address/0xce46bc1f3edb054dacf2087255670090cdd60f38) |
| MarketETHRouter | vault_pool | vault_pool | audited (TP) | [0x884988...056c](https://optimistic.etherscan.io/address/0x884988e0bfb0d6a18f664329acd0402b2fb6056c) |
| ProtoStaker | staking | staking | unmatched | [0xa76fd3...8ca5](https://optimistic.etherscan.io/address/0xa76fd3efea52575fe84294a92518f92810d18ca5) |
| RewardsController | rewards | rewards | audited (TP) | [0x0399cf...5f7f](https://optimistic.etherscan.io/address/0x0399cf66d74106d438d5770dce8c0f7071a95f7f) |
| RewardsController | rewards | rewards | audited (TP) | [0x0b9d4a...bc7a](https://optimistic.etherscan.io/address/0x0b9d4ab484f95090074008ae59db1fab6606bc7a) |
| StakedEXA | staking | staking | audited (TP) | [0x33c69e...82a1](https://optimistic.etherscan.io/address/0x33c69e5c0a7a2bad42d178ec11b881acdbe682a1) |
| TimelockController | governance | governance | unmatched | [0x92024c...b58b](https://optimistic.etherscan.io/address/0x92024c4bda9da602b711b9abb610d072018eb58b) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x057e3e...4d04](https://optimistic.etherscan.io/address/0x057e3efca6f9e7094584b176f3e69a4f4b594d04) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x1e925d...c01b](https://optimistic.etherscan.io/address/0x1e925de1c68ef83bd98ee3e130ef14a50309c01b) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x22ab31...533f](https://optimistic.etherscan.io/address/0x22ab31cd55130435b5efbf9224b6a9d5ec36533f) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x29babf...0258](https://optimistic.etherscan.io/address/0x29babff3eba7b517a75109ea8fd6d1eab4a10258) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x6926b4...a8bb](https://optimistic.etherscan.io/address/0x6926b434cce9b5b7966ae1bfeef6d0a7dcf3a8bb) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x6f748f...b322](https://optimistic.etherscan.io/address/0x6f748fd65d7c71949ba6641b3248c4c191f3b322) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x81c9a7...4873](https://optimistic.etherscan.io/address/0x81c9a7b55a4df39a9b7b5f781ec0e53539694873) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xa430a4...cedb](https://optimistic.etherscan.io/address/0xa430a427bd00210506589906a71b54d6c256cedb) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xaeb62e...027e](https://optimistic.etherscan.io/address/0xaeb62e6f27bc103702e7bc879ae98bcea56f027e) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xbd1ba7...e031](https://optimistic.etherscan.io/address/0xbd1ba78a3976cab420a9203e6ef14d18c2b2e031) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xbea586...bc18](https://optimistic.etherscan.io/address/0xbea586a167853adddef12818f264f1f9823fbc18) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xc4d450...c7ef](https://optimistic.etherscan.io/address/0xc4d4500326981eacd020e20a81b1c479c161c7ef) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xceed2b...752b](https://optimistic.etherscan.io/address/0xceed2bfe740f02db6094ebe89ff93b1031be752b) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xf05385...0c90](https://optimistic.etherscan.io/address/0xf05385bc0b38e941f65d3031e1695bfbf8d60c90) |
| unnamed | unknown | unknown | unmatched | [0xea2127...391f](https://optimistic.etherscan.io/address/0xea2127b14d05229cb3d4b75b42052e556ab7391f) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| InterestRateModel | core | core | audited (TP) | [0x163538...98ff](https://basescan.org/address/0x163538e22f4d38c1eb21b79939f3d2ee274198ff) |
| InterestRateModel | core | core | audited (TP) | [0x406e73...35a4](https://basescan.org/address/0x406e73c6eb2308e0557c031354c4a6f3374e35a4) |
| InterestRateModel | core | core | audited (TP) | [0xe963cd...53b7](https://basescan.org/address/0xe963cdf1ec0bb86f009d764d6ee3feb6697453b7) |
| InterestRateModel | core | core | audited (TP) | [0xf9b612...80f2](https://basescan.org/address/0xf9b612ffe3fab24e74026d2b5d13cbcead6380f2) |
| MarketETHRouter | vault_pool | vault_pool | audited (TP) | [0x81c9a7...4873](https://basescan.org/address/0x81c9a7b55a4df39a9b7b5f781ec0e53539694873) |
| TimelockController | governance | governance | unmatched | [0x92024c...b58b](https://basescan.org/address/0x92024c4bda9da602b711b9abb610d072018eb58b) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x0aeb0b...597c](https://basescan.org/address/0x0aeb0bcb919858c0a4dcec3eed879985034a597c) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x1dcf89...0f75](https://basescan.org/address/0x1dcf89dfa88363ef33d49dd591b1ee5e84dd0f75) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x52ee52...a0c4](https://basescan.org/address/0x52ee5238e5676598551c8d2bbccb62c72fc3a0c4) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x61edac...2e4b](https://basescan.org/address/0x61edacb54aa8a689013682529df8914c87692e4b) |
| TransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0x85c21f...af4f](https://basescan.org/address/0x85c21fa8aee39891e115e2b28c3db2de5b0aaf4f) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x8c2f35...73e4](https://basescan.org/address/0x8c2f35c8076bcb5d4b696bae11aca0ac0dd873e4) |
| UpgradeableModularAccount | proxy | proxy | unmatched | [0x004600...a61e](https://basescan.org/address/0x0046000000000151008789797b54fdb500e2a61e) |
| UpgradeableModularAccount | proxy | proxy | unmatched | [0x0ee4ad...a294](https://basescan.org/address/0x0ee4ad318a9367a21d83aeb8da753243a93ea294) |
| UpgradeableModularAccount | proxy | proxy | unmatched | [0x108a60...612f](https://basescan.org/address/0x108a60fbf7bd2549ae6ce93fa7813b8a23a9612f) |
| UpgradeableModularAccount | proxy | proxy | unmatched | [0x13a394...1e9c](https://basescan.org/address/0x13a3947bc05f2d1c5fb6c7a77eba86c85eb41e9c) |
| UpgradeableModularAccount | proxy | proxy | unmatched | [0x1b3bbd...1385](https://basescan.org/address/0x1b3bbdcd63aabc29bff45ef7e509b0bccf351385) |
| UpgradeableModularAccount | proxy | proxy | unmatched | [0x78a60c...e006](https://basescan.org/address/0x78a60c09d5d5809d575378aea10677ffa671e006) |
| VerifiedAuditor | core | core | audited (TP) | [0x79e30d...b107](https://basescan.org/address/0x79e30d4d61224dce20f2d84f99edb2452565b107) |
| VerifiedMarket | vault_pool | vault_pool | audited (TP) | [0x03859f...4489](https://basescan.org/address/0x03859fa7549449a7dde7663e5c06a38c5b0d4489) |
| VerifiedMarket | vault_pool | vault_pool | audited (TP) | [0x50b818...873a](https://basescan.org/address/0x50b8186fe470e125b3a7c3f3d6b0f7fa7310873a) |
| VerifiedMarket | vault_pool | vault_pool | audited (TP) | [0xb4b6d4...0b77](https://basescan.org/address/0xb4b6d4e969001dccc6bf50c4f4bd394fb4ed0b77) |
| VerifiedMarket | vault_pool | vault_pool | audited (TP) | [0xbd1ba7...e031](https://basescan.org/address/0xbd1ba78a3976cab420a9203e6ef14d18c2b2e031) |
| unnamed | unknown | unknown | unmatched | [0xaf8be3...ae14](https://basescan.org/address/0xaf8be39ea35498073f0ffbd8038fd995d863ae14) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

1 factory templates detected. 0 are docs-listed; 1 are RPC-enumerated but not docs-listed.

### TransparentUpgradeableProxy - base

- **Template address:** [0x52ee52...a0c4](https://basescan.org/address/0x52ee5238e5676598551c8d2bbccb62c72fc3a0c4)
- **Confidence:** untethered
- **Instance count:** 5
- **Sample instances:** [0x0ee4ad...a294](https://basescan.org/address/0x0ee4ad318a9367a21d83aeb8da753243a93ea294), [0x108a60...612f](https://basescan.org/address/0x108a60fbf7bd2549ae6ce93fa7813b8a23a9612f), [0x13a394...1e9c](https://basescan.org/address/0x13a3947bc05f2d1c5fb6c7a77eba86c85eb41e9c), [0x1b3bbd...1385](https://basescan.org/address/0x1b3bbdcd63aabc29bff45ef7e509b0bccf351385), [0x78a60c...e006](https://basescan.org/address/0x78a60c09d5d5809d575378aea10677ffa671e006)
- **Template audit coverage:** UC

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 30 proxies on 1, 10, 8453. 28 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 2 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0xe61bde...665a, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 117 | 32 | 85 | 27.4% |
| **Total** | 117 | 32 | 85 | 27.4% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2024-07-25 | Sherlock | 2024.07.25 - Final - Exactly Protocol Update - Staking Contract Audit Report | unspecified | direct | not available |
| 2024-05-04 | Sherlock | 2024.05.04 - Final - Exactly Protocol Audit Report | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | ABDK%20Protocol%20Update%20(Oct 25) | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | Chainsafe%20Staking%20Contract%20(Aug 24) | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | Coinspect%205th%20audit%20(Mar 23) | unspecified | direct | not available |
| unknown | OpenZeppelin | OpenZeppelin%20EscrowedEXA%20(Oct 23) | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://certificate.quantstamp.com/full/exactly-web-authn-owner-plugin/195741fd-c62b-4a88-87b8-020dd454bd59/index.html](https://certificate.quantstamp.com/full/exactly-web-authn-owner-plugin/195741fd-c62b-4a88-87b8-020dd454bd59/index.html) - audit_report_link
- [https://docs.exact.ly/guides/protocol/auditor](https://docs.exact.ly/guides/protocol/auditor) - audit_report_link
- [https://docs.exact.ly/guides/protocol/auditor.md](https://docs.exact.ly/guides/protocol/auditor.md) - audit_report_link
- [https://docs.exact.ly/security/audits.md](https://docs.exact.ly/security/audits.md) - audit_report_link
- [https://docs.exact.ly/security/bug-bounty-program](https://docs.exact.ly/security/bug-bounty-program) - audit_report_link
- [https://drive.google.com/drive/folders/1kFtAx9oi-lmPhfpTDuXFajgZkQ1S3sEU](https://drive.google.com/drive/folders/1kFtAx9oi-lmPhfpTDuXFajgZkQ1S3sEU) - audit_report_link
- [https://drive.google.com/drive/folders/1u6KQVrghW8qGpU1cDZBz1ZkBYn5-mIwz?usp=sharing](https://drive.google.com/drive/folders/1u6KQVrghW8qGpU1cDZBz1ZkBYn5-mIwz?usp=sharing) - audit_report_link
- [https://drive.google.com/drive/folders/1UairaFzVVL3ffS9AfDN0dkoBksh0CC4N?usp=sharing](https://drive.google.com/drive/folders/1UairaFzVVL3ffS9AfDN0dkoBksh0CC4N?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/17ya_6rp5LWqlfe0M8JW9fcn5LYUzxzxU/view?usp=drive_link](https://drive.google.com/file/d/17ya_6rp5LWqlfe0M8JW9fcn5LYUzxzxU/view?usp=drive_link) - audit_report_link
- [https://drive.google.com/file/d/1CC0OpfrV2wPHkUNpItDsnhO9F8UNlk3Z/view?usp=drive_link](https://drive.google.com/file/d/1CC0OpfrV2wPHkUNpItDsnhO9F8UNlk3Z/view?usp=drive_link) - audit_report_link
- [https://drive.google.com/file/d/1e0fsq7ZoUBOb3pTwsG5x3cY4yJ5RDrWx/view?usp=drive_link](https://drive.google.com/file/d/1e0fsq7ZoUBOb3pTwsG5x3cY4yJ5RDrWx/view?usp=drive_link) - audit_report_link
- [https://drive.google.com/file/d/1HXc3gGrvzhEiSrSluxEN6BZeGNXpanKJ/view?usp=drive_link](https://drive.google.com/file/d/1HXc3gGrvzhEiSrSluxEN6BZeGNXpanKJ/view?usp=drive_link) - audit_report_link
- [https://drive.google.com/file/d/1IZj11ngiH_PsgSWv_d_YVSnjFudxdfep/view?usp=drive_link](https://drive.google.com/file/d/1IZj11ngiH_PsgSWv_d_YVSnjFudxdfep/view?usp=drive_link) - audit_report_link
- [https://drive.google.com/file/d/1j40Q0Sxc7arFY3n9EAsdxH18Fb4RqE9P/view?usp=drive_link](https://drive.google.com/file/d/1j40Q0Sxc7arFY3n9EAsdxH18Fb4RqE9P/view?usp=drive_link) - audit_report_link
- [https://drive.google.com/file/d/1KRm8Ehbtj1BfmM8ICkwRbBA3k8tEl-Vq/view?usp=drive_link](https://drive.google.com/file/d/1KRm8Ehbtj1BfmM8ICkwRbBA3k8tEl-Vq/view?usp=drive_link) - audit_report_link
- [https://drive.google.com/file/d/1lLqsnWKDhHSUW9AowTgHSDF19IZrUIGh/view?usp=drive_link](https://drive.google.com/file/d/1lLqsnWKDhHSUW9AowTgHSDF19IZrUIGh/view?usp=drive_link) - audit_report_link
- [https://drive.google.com/file/d/1ukXCNW6rL706pEpWUKTv-K--yNuHy1JO/view?usp=drive_link](https://drive.google.com/file/d/1ukXCNW6rL706pEpWUKTv-K--yNuHy1JO/view?usp=drive_link) - audit_report_link
- [https://drive.google.com/file/d/1yjNsnV1mtymH1lHOAbt6ynFG2s9R3YQ0/view?usp=drive_link](https://drive.google.com/file/d/1yjNsnV1mtymH1lHOAbt6ynFG2s9R3YQ0/view?usp=drive_link) - audit_report_link
- [https://drive.google.com/file/d/1Z6DNqlUCTXIAVfpXJgG2q-7B7sDrbMUt/view?usp=drive_link](https://drive.google.com/file/d/1Z6DNqlUCTXIAVfpXJgG2q-7B7sDrbMUt/view?usp=drive_link) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%201st%20audit%20(Oct-22).pdf](https://github.com/exactly/audits/blob/main/ABDK%201st%20audit%20(Oct-22).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%202nd%20audit%20(May-23).pdf](https://github.com/exactly/audits/blob/main/ABDK%202nd%20audit%20(May-23).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%20EscrowedEXA%20(Sep-23).pdf](https://github.com/exactly/audits/blob/main/ABDK%20EscrowedEXA%20(Sep-23).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%20Installments%20Router%20and%20New%20Market%20Roles%20(Apr-24).pdf](https://github.com/exactly/audits/blob/main/ABDK%20Installments%20Router%20and%20New%20Market%20Roles%20(Apr-24).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%20Interest%20Rate%20Model%20v2%20(Feb-24).pdf](https://github.com/exactly/audits/blob/main/ABDK%20Interest%20Rate%20Model%20v2%20(Feb-24).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%20Interest%20Rate%20Model%20v2%20(Mar-24).pdf](https://github.com/exactly/audits/blob/main/ABDK%20Interest%20Rate%20Model%20v2%20(Mar-24).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%20PeripheralContracts%201st%20audit%20(Sep-23).pdf](https://github.com/exactly/audits/blob/main/ABDK%20PeripheralContracts%201st%20audit%20(Sep-23).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%20Protocol%20Update%20(Oct-25).pdf](https://github.com/exactly/audits/blob/main/ABDK%20Protocol%20Update%20(Oct-25).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%20Rewards%20Controller%20Update%20(Mar-25)pdf.pdf](https://github.com/exactly/audits/blob/main/ABDK%20Rewards%20Controller%20Update%20(Mar-25)pdf.pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%25201st%2520audit%2520(Oct-22).pdf](https://github.com/exactly/audits/blob/main/ABDK%25201st%2520audit%2520(Oct-22).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%25202nd%2520audit%2520(May-23).pdf](https://github.com/exactly/audits/blob/main/ABDK%25202nd%2520audit%2520(May-23).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%2520EscrowedEXA%2520(Sep-23).pdf](https://github.com/exactly/audits/blob/main/ABDK%2520EscrowedEXA%2520(Sep-23).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%2520Installments%2520Router%2520and%2520New%2520Market%2520Roles%2520(Apr-24).pdf](https://github.com/exactly/audits/blob/main/ABDK%2520Installments%2520Router%2520and%2520New%2520Market%2520Roles%2520(Apr-24).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%2520Interest%2520Rate%2520Model%2520v2%2520(Feb-24).pdf](https://github.com/exactly/audits/blob/main/ABDK%2520Interest%2520Rate%2520Model%2520v2%2520(Feb-24).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%2520Interest%2520Rate%2520Model%2520v2%2520(Mar-24).pdf](https://github.com/exactly/audits/blob/main/ABDK%2520Interest%2520Rate%2520Model%2520v2%2520(Mar-24).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%2520PeripheralContracts%25201st%2520audit%2520(Sep-23).pdf](https://github.com/exactly/audits/blob/main/ABDK%2520PeripheralContracts%25201st%2520audit%2520(Sep-23).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%2520Protocol%2520Update%2520(Oct-25).pdf](https://github.com/exactly/audits/blob/main/ABDK%2520Protocol%2520Update%2520(Oct-25).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/ABDK%2520Rewards%2520Controller%2520Update%2520(Mar-25)pdf.pdf](https://github.com/exactly/audits/blob/main/ABDK%2520Rewards%2520Controller%2520Update%2520(Mar-25)pdf.pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/Chainsafe%201st%20audit%20(May-22).pdf](https://github.com/exactly/audits/blob/main/Chainsafe%201st%20audit%20(May-22).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/Chainsafe%202nd%20audit%20(Oct-22).pdf](https://github.com/exactly/audits/blob/main/Chainsafe%202nd%20audit%20(Oct-22).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/Chainsafe%20Interest%20Rate%20Model%20v2%20(Mar-24).pdf](https://github.com/exactly/audits/blob/main/Chainsafe%20Interest%20Rate%20Model%20v2%20(Mar-24).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/Chainsafe%20Staking%20Contract%20(Aug-24).pdf](https://github.com/exactly/audits/blob/main/Chainsafe%20Staking%20Contract%20(Aug-24).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/Chainsafe%25201st%2520audit%2520(May-22).pdf](https://github.com/exactly/audits/blob/main/Chainsafe%25201st%2520audit%2520(May-22).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/Chainsafe%25202nd%2520audit%2520(Oct-22).pdf](https://github.com/exactly/audits/blob/main/Chainsafe%25202nd%2520audit%2520(Oct-22).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/Chainsafe%2520Interest%2520Rate%2520Model%2520v2%2520(Mar-24).pdf](https://github.com/exactly/audits/blob/main/Chainsafe%2520Interest%2520Rate%2520Model%2520v2%2520(Mar-24).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/Chainsafe%2520Staking%2520Contract%2520(Aug-24).pdf](https://github.com/exactly/audits/blob/main/Chainsafe%2520Staking%2520Contract%2520(Aug-24).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/Coinspect%201st%20audit%20(Nov-21).pdf](https://github.com/exactly/audits/blob/main/Coinspect%201st%20audit%20(Nov-21).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/Coinspect%202nd%20audit%20(May-22).pdf](https://github.com/exactly/audits/blob/main/Coinspect%202nd%20audit%20(May-22).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/Coinspect%203rd%20audit%20(Oct-22).pdf](https://github.com/exactly/audits/blob/main/Coinspect%203rd%20audit%20(Oct-22).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/Coinspect%204th%20audit%20(Oct-22).pdf](https://github.com/exactly/audits/blob/main/Coinspect%204th%20audit%20(Oct-22).pdf) - audit_report_link
- [https://github.com/exactly/audits/blob/main/Coinspect%205th%20audit%20(Mar-23).pdf](https://github.com/exactly/audits/blob/main/Coinspect%205th%20audit%20(Mar-23).pdf) - audit_report_link

### Audit Reports (full list)

- 2024-07-25 - Sherlock - 2024.07.25 - Final - Exactly Protocol Update - Staking Contract Audit Report
- 2024-05-04 - Sherlock - 2024.05.04 - Final - Exactly Protocol Audit Report
- unknown - discovery-ingest-placeholder - ABDK%20Protocol%20Update%20(Oct 25)
- unknown - discovery-ingest-placeholder - Chainsafe%20Staking%20Contract%20(Aug 24)
- unknown - discovery-ingest-placeholder - Coinspect%205th%20audit%20(Mar 23)
- unknown - OpenZeppelin - OpenZeppelin%20EscrowedEXA%20(Oct 23)

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/exactly.json
- **Source code:** not fetched in v1

### Excluded Contracts (summary counts)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| infrastructure blocklist | 0 | Summary from p2 provenance classifications |
| shared deployer contamination | 0 | Summary from p2 provenance classifications |
| opaque enrichment only | 0 | Summary from p2 provenance classifications |
| deployer expansion untethered | 0 | Summary from p2 provenance classifications |
| factory rpc expansion untethered | 0 | Summary from p2 provenance classifications |
| considered but unpromoted docs only | 0 | Summary from p2 provenance classifications |
| never evaluated docs only | 0 | Summary from p2 provenance classifications |
| external placeholder docs only | 0 | Summary from p2 provenance classifications |

### Data Availability Notes

- **Provenance classification:** not run for this project.
- **Multisig / timelock metadata:** not extracted by current pipeline.
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $3,889,019.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:44:41.642Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- 1 factory templates are RPC-enumerated but not docs-listed. Verify template intent before treating instances as audit targets.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $3,889,019.
