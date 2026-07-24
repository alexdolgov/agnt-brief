# Agentic Audit Brief: BabyDoge Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: BabyDoge Bridge (`babydoge-bridge`)
- Website: [https://bridge.babydoge.com/](https://bridge.babydoge.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, bsc
- Contract surface: 158 unique implementations (158 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $447,928.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for BabyDoge Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4693b62e5fc9c0a45f89d62e6300a03c85f43137`, chain 56)
- UnnamedContract (`0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c`, chain 56)
- UnnamedContract (`0xc9a0f685f39d05d835c369036251ee3aeaaf3c47`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 3 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 154 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 158 unique; 155 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 154
- Unique implementations: 158
- Raw deployments: 158
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeAssist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d09d3458cc150016f0fd7b079af41e17ce65909` | ⚠️ Unaudited |
| CoinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc748673057861a797275cd8a068abb95a902e8de` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x860e6cc13381988631c6eb4ad391294a2fc47d54` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58ecef26335af7b04a998105a6603b0dc475af33` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (154)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01f3a38e70c823427beec5b6babf6b33de264c0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01fef82e314c082ad1755d5fc9cd5a88ec9f83ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0267bb20d823b81a9634caa4cdb9e293d8de591f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x048e7f1991e823339347f712307a2c66317443ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x052a3f4a50139c49471b9d158ffd3504ae6dd111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0579db6324274c07a6b6e13024a3747b97778644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0608b0d2fdf03a00da4b56cf68d79005bdba7aff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06d97221979d487f33f40152d3e9943fd81579bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08f9ebf03e140842f042c846dfd86d788df0b685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b69970e23634188ce4f97ffe9015fb8aba900eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bc19ea45c7286cf559711364d8493df79c38982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c0676c862539d0351128fb1a06ff548a1cef3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x100bf9747eac74dfe1e3829cfeb3fcf99e9aff41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x103def784e1d0aaad0de95936610fd836bf31b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1551eac5d2edaa634f713a526866ad83b82b5209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1581ff6ecddeea0d4a074981f0ed6fb948c17add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1690f49adc4933f240388ad667f1e360890eecea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17fc398e845697111738e02c82c081f2e8502e83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b6878adfb16b949a8cef2fb28228afc84fcb6a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c9330698989a8f13f54310c2a2b08f321e652a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ca60d90e2fb7eb855770cf5f8837111df260b30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e8fda22458f4f70bea8f00e006d0cbc7c0b3b3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2003e0fe6795861b9fa8afaf45aa8329dd7f0196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21075607cd62043c566154c04cb0fa4229e83a5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x210dbf538ef70750e0eb6149005bf2d40d49d5b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x218c4c326a5bc505acb1a8a60fabb5f382f7882c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22b75c73569646a9eb424663c0d8c91199e45d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x256a07af61920143135fb25604cbb6bb587885e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x284670664b09ceaacf3edbb6ec62f3c04d0c3a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29809a217fc566e6b371da75f54dba9d601b3284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2986c5af35f14ed12b3954f92775381eaef5710f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2aecff84a28d0d0174d7d4fe496e278506834199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bc67fcf839c840f561fd8ce41bfb2acf2085ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cd856c548b938360b2726a3fb9552fdb8517b12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cea5408fd197cb9321eb91fc8c76a2285b907d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fd02cd307b66802995813c30760786453881069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fe5f9c2c4b3e63dc4585ef972a75c8b0d3d0489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36b34364e17373c05300bc3e827bf7cac34541be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3aea91e8574b9ca918aecbc86264a739f719c64f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cda751aa61609064551fc9cdb49b667af501d68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f82781318d34e2020090bd82ef616bf1ce5ebf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x401de96f07eaa22931ce643beeb42f0f02955153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x442fe7d734db5ff977676bf9f3dcc6b5910e2abe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x451583b6da479eaa04366443262848e27706f762` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-380081 | `0x4693b62e5fc9c0a45f89d62e6300a03c85f43137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46b9542f58bb814de24e0ea7316584ee3cdf0e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4841f42e484b76b759a618a47ee091ab989a2648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48ff73efb7de5f760825cc3399a1f8096aef72b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4957952ddaf965e09f73f123120e68018cd0a920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a0c815745e6152070ddd81baedd52f46b636f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b1496faba1a4faaff6bee62b27da9eac99525d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4be970e15b1916d28337a7ae5ae8df24143197eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c4c9bbd1754890684aeebe07f4e875565a314e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ca3416d5ea09c0802cf5634bb48d636f5033a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fc9d52977bc3000d233771197fa64d9df1c7608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x559a1b05a83611e118f9a4ba95f245a722291425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x560ad6d31a7c3f5fa174a07fa819832e1a102931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5740d7607f88010183051e5778c75a0097019094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59e3e5d6d6ad6300b2dc075efd79cb6660cd603a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5abc579b42088085cd4db9261f56d5249820702a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b883f02ce7d7b6e54cbc5c053559bd6c78cddd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c588dc96a8c916a1f76af8a5afbd036467621df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5cf2f6aacfeabcb3ffce1feaea7196b37dafc2ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62e9191af8cb4b35774a7ff2fd06a4705d2c0b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x630757bf02923a8714769fa8bb97508b8be06bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6348ad825a0ebac49021c61746eafcbefaa05bac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65f9d91288370278bf5d81a4bea3ea2612509a15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69616b7a951502c7543df4f9e753bbbdf2a21050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b2ce3f0af1dec26a3ae15125c771616bda4c967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ce1a3bb3c18c000047e763cc224cdad5947525e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d5dead694e9db55f574c2d44f2a22557241b3d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x708173b6f27ea291fadbb145360a262bab84a0ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7257e66b830441a9300e8ece6b8b1649e04016ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72fae1641d0bee6a42278cc88308e0391939afbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x750dc789552fb5fb21b452285ea5ade00c3dfd49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7751d14c5f6f195ed9199618fb8f8e522679dfcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x784810fc094d9abd351dc5da88f7dad29e79458f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78d5efd49d18654226ae0ca3178bd21f2955c61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f7b849062de2b56ebb513c7b8e0ca2c8dd93ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85de4c2cb948b793d9a7f9fa06aada0f83c8948e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89d3af2fabe0c56724932615f1f6c8291122fb4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89ea6282ebf290fd57fdb001dc0458789ceb1c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8bff3b364f7471cad0b7da45b5fe9fb5217ee81b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e0d303498e4e6b6966bba37e535a38ee1e185c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95e31fc43d5a84ba50807d7f742f8d0d9ed47e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96b5270ef07a5cb092fa4bb640854625669e6db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9869674e80d632f93c338bd398408273d20a6c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99a65159d17635f65bc7a21f162b7205ff8794ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ce45dbaf1de63be59d615a2fcefa766a1ffe796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d304bd1cea1c4dd69a958574740d43558f97983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9dc017fdce7eef9dd895f88ec6c44befc672ac59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e60c7adaace93210c4490032d4539d7bcd5b08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f0d4f965f8d7503046093f1bda6052efe6948b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa04fb9ff61bf63ffd0f60011b7190b8a8f247d44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1c14e5a8c2fd0fd7acad2b364e522781fb700c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabe1979e260c5ba4d93854d9e5c903c67b0b36fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac65072fc013442e14cce3c8dc47e10dee3e0683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac6c6c95a526653eb1b0384c257cb8311bb0693a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xacab3a648ea0ddf4cde6c793b3595a009e2b5654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xacde45a2de43eb5352db38220d3dc70a9eb17f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf7ad0d18e0b783a2c21c8147ce6e5e150fab7ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafdf2ecf064624619856ee97d7511d466ab0e22d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1542934de54a8b692b7788b78b505f37949300c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1739c4eaf50f27a61cce94376d3bd35ec302f3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5ed158d435fba023c630a1e4421651f17869c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7b9f23fe2c6749e9ea1209706c2c7dd72d1414b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8b61f1341dcf1a51e960455e7c7fc92a412d790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9e324fbb58baba3ba5efe703137f4cdf603698a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9fdf4702cdab2e7d7b2e1e2c8e4fc5d7e653e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb41e9798fafa48f62fdc5f5dcb4961980f19543` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-380082 | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd6fed49874273453dd452515b290657e446a645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbda7c402f9de8ad737cedc3ab7cbfecd53f29c74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbdc4ebb716287752c5de6e5a29e585c4140ffcbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc061e9da9aca273a7ccb3ff7ba1f3c64dbb51bdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc204758cd8f214e5108a5bade6e018a2fcac4e28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc231978220c7ffc3aaf9cea6c22d96c001ab1a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2e2aab0e09719f9d1f8d4549b54dad3044d2405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3c548cdc8cb1b8c48ab70ecfe4ae6d444fde155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc45f2301380f2cf1f90c38e3cca18f6e41134b3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc535c5924c33136e1e56221a1fb186e0ecb1381f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5ab742988d6a02251ef0ccf59bc6968914aa2d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5bf375d0a2051e55cd7d1415204004e807b62ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7ac77eec5afbf589808b6b5d47e8a14ea8c29c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8d3dc1271d58aa9de5ab7cbbc19ecaed100ba80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9117202c5e94db475b2af39e3c41c946e215592` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-380083 | `0xc9a0f685f39d05d835c369036251ee3aeaaf3c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf4b5e2ab674e30ccb37ad5ea926169bbde562a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd500763b3e62d80517b0cf9d8aab758bf5862749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd919528f994d84ebac04afb1f74d21d248559b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9d9671352c375b9c507a6e60ad99a256c04ce53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda907b358055de483a5f60c1688232f841158f52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb5d0ff37b6f03c38b4fd170b3e179db0a6d5752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde05208b3bd0c81faf4b7dab55de2abf713a9e80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1b202ca285eee7b50be4f1fa651f9da15603572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe571b6e182e11146fcf4f662daeed445d1ef10cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6180f81958d45572600577d91f5c9edc7fc4c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6616d8bd4bcc6f4d31027a71b0c1e9a0ada1ca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe681f024252587eca80d37dda792df171d343f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6de34f116d332fb7000922db7fa7627c31f3374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7c35e5d4cd772370e36da872a725916762df1c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe81ceae0c19b2ed8c6d075652da02c7cac1f9010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe88f66f221c75518f1cd0c127b63949068ec731e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9a1427d4c82428802cc57690b90659ec6c0276a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec3c3a24af737a7a9bb887f4a04e90a68d04a950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef09ad4ea69b72a144927e8e6219d2e5d33ff171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefef4ef553b91f0808d7c0b29e523eef4e19d82c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf345826f723c5acb785d23a8a197ad46d8566bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5a2cb466fa1bc037a463a53d5f889d9c86edd69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8f7ca3d611e1bb508a42941e6a495cc130c8fbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb03a41e365d8471dca8dfc40a8a1dc13eb61be1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfef7bb6b1521acf53985d5bc75c86b58ea823d03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff57372f16147117520d40fe777feda51b1226ba` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 150
- Live contracts: 0
- Unknown liveness contracts: 150
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=150

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x9f0d4f965f8d7503046093f1bda6052efe6948b8` | non_address_book | unknown | unknown | unverified | n/a | `0x0a584c40a38ea658a34ff11d491a0f8d7e8c6be6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x01f3a38e70c823427beec5b6babf6b33de264c0a` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x01fef82e314c082ad1755d5fc9cd5a88ec9f83ff` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0267bb20d823b81a9634caa4cdb9e293d8de591f` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x048e7f1991e823339347f712307a2c66317443ef` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x052a3f4a50139c49471b9d158ffd3504ae6dd111` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0579db6324274c07a6b6e13024a3747b97778644` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0608b0d2fdf03a00da4b56cf68d79005bdba7aff` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x06d97221979d487f33f40152d3e9943fd81579bb` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x08f9ebf03e140842f042c846dfd86d788df0b685` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0b69970e23634188ce4f97ffe9015fb8aba900eb` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0bc19ea45c7286cf559711364d8493df79c38982` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0c0676c862539d0351128fb1a06ff548a1cef3a5` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x100bf9747eac74dfe1e3829cfeb3fcf99e9aff41` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x103def784e1d0aaad0de95936610fd836bf31b9d` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1551eac5d2edaa634f713a526866ad83b82b5209` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1581ff6ecddeea0d4a074981f0ed6fb948c17add` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1690f49adc4933f240388ad667f1e360890eecea` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x17fc398e845697111738e02c82c081f2e8502e83` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1b6878adfb16b949a8cef2fb28228afc84fcb6a8` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1c9330698989a8f13f54310c2a2b08f321e652a0` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1ca60d90e2fb7eb855770cf5f8837111df260b30` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1e8fda22458f4f70bea8f00e006d0cbc7c0b3b3e` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2003e0fe6795861b9fa8afaf45aa8329dd7f0196` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x21075607cd62043c566154c04cb0fa4229e83a5e` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x210dbf538ef70750e0eb6149005bf2d40d49d5b2` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x218c4c326a5bc505acb1a8a60fabb5f382f7882c` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x22b75c73569646a9eb424663c0d8c91199e45d71` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x256a07af61920143135fb25604cbb6bb587885e3` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x284670664b09ceaacf3edbb6ec62f3c04d0c3a67` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x29809a217fc566e6b371da75f54dba9d601b3284` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2986c5af35f14ed12b3954f92775381eaef5710f` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2aecff84a28d0d0174d7d4fe496e278506834199` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2bc67fcf839c840f561fd8ce41bfb2acf2085ae5` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2cd856c548b938360b2726a3fb9552fdb8517b12` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2cea5408fd197cb9321eb91fc8c76a2285b907d9` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2fd02cd307b66802995813c30760786453881069` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2fe5f9c2c4b3e63dc4585ef972a75c8b0d3d0489` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x36b34364e17373c05300bc3e827bf7cac34541be` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3aea91e8574b9ca918aecbc86264a739f719c64f` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3cda751aa61609064551fc9cdb49b667af501d68` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3f82781318d34e2020090bd82ef616bf1ce5ebf8` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x401de96f07eaa22931ce643beeb42f0f02955153` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x442fe7d734db5ff977676bf9f3dcc6b5910e2abe` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x451583b6da479eaa04366443262848e27706f762` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x46b9542f58bb814de24e0ea7316584ee3cdf0e59` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4841f42e484b76b759a618a47ee091ab989a2648` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x48ff73efb7de5f760825cc3399a1f8096aef72b8` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4957952ddaf965e09f73f123120e68018cd0a920` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4a0c815745e6152070ddd81baedd52f46b636f06` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4b1496faba1a4faaff6bee62b27da9eac99525d9` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4be970e15b1916d28337a7ae5ae8df24143197eb` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4c4c9bbd1754890684aeebe07f4e875565a314e9` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4ca3416d5ea09c0802cf5634bb48d636f5033a1d` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4fc9d52977bc3000d233771197fa64d9df1c7608` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x559a1b05a83611e118f9a4ba95f245a722291425` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x560ad6d31a7c3f5fa174a07fa819832e1a102931` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5740d7607f88010183051e5778c75a0097019094` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x59e3e5d6d6ad6300b2dc075efd79cb6660cd603a` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5abc579b42088085cd4db9261f56d5249820702a` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5b883f02ce7d7b6e54cbc5c053559bd6c78cddd6` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5c588dc96a8c916a1f76af8a5afbd036467621df` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5cf2f6aacfeabcb3ffce1feaea7196b37dafc2ae` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x62e9191af8cb4b35774a7ff2fd06a4705d2c0b76` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x630757bf02923a8714769fa8bb97508b8be06bb7` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6348ad825a0ebac49021c61746eafcbefaa05bac` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x65f9d91288370278bf5d81a4bea3ea2612509a15` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x69616b7a951502c7543df4f9e753bbbdf2a21050` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6b2ce3f0af1dec26a3ae15125c771616bda4c967` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6ce1a3bb3c18c000047e763cc224cdad5947525e` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6d5dead694e9db55f574c2d44f2a22557241b3d0` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x708173b6f27ea291fadbb145360a262bab84a0ae` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7257e66b830441a9300e8ece6b8b1649e04016ef` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x72fae1641d0bee6a42278cc88308e0391939afbf` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x750dc789552fb5fb21b452285ea5ade00c3dfd49` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7751d14c5f6f195ed9199618fb8f8e522679dfcb` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x784810fc094d9abd351dc5da88f7dad29e79458f` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x78d5efd49d18654226ae0ca3178bd21f2955c61e` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7f7b849062de2b56ebb513c7b8e0ca2c8dd93ed7` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x85de4c2cb948b793d9a7f9fa06aada0f83c8948e` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x89d3af2fabe0c56724932615f1f6c8291122fb4f` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x89ea6282ebf290fd57fdb001dc0458789ceb1c4d` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8bff3b364f7471cad0b7da45b5fe9fb5217ee81b` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8e0d303498e4e6b6966bba37e535a38ee1e185c4` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x96b5270ef07a5cb092fa4bb640854625669e6db3` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9869674e80d632f93c338bd398408273d20a6c8e` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x99a65159d17635f65bc7a21f162b7205ff8794ab` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9ce45dbaf1de63be59d615a2fcefa766a1ffe796` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9d304bd1cea1c4dd69a958574740d43558f97983` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9dc017fdce7eef9dd895f88ec6c44befc672ac59` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9e60c7adaace93210c4490032d4539d7bcd5b08c` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa04fb9ff61bf63ffd0f60011b7190b8a8f247d44` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa1c14e5a8c2fd0fd7acad2b364e522781fb700c2` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xabe1979e260c5ba4d93854d9e5c903c67b0b36fb` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xac6c6c95a526653eb1b0384c257cb8311bb0693a` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xacab3a648ea0ddf4cde6c793b3595a009e2b5654` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xacde45a2de43eb5352db38220d3dc70a9eb17f0c` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaf7ad0d18e0b783a2c21c8147ce6e5e150fab7ac` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xafdf2ecf064624619856ee97d7511d466ab0e22d` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb1542934de54a8b692b7788b78b505f37949300c` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb1739c4eaf50f27a61cce94376d3bd35ec302f3e` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb5ed158d435fba023c630a1e4421651f17869c8d` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb7b9f23fe2c6749e9ea1209706c2c7dd72d1414b` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb8b61f1341dcf1a51e960455e7c7fc92a412d790` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb9e324fbb58baba3ba5efe703137f4cdf603698a` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb9fdf4702cdab2e7d7b2e1e2c8e4fc5d7e653e9c` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbb41e9798fafa48f62fdc5f5dcb4961980f19543` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbd6fed49874273453dd452515b290657e446a645` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbda7c402f9de8ad737cedc3ab7cbfecd53f29c74` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbdc4ebb716287752c5de6e5a29e585c4140ffcbc` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc204758cd8f214e5108a5bade6e018a2fcac4e28` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc231978220c7ffc3aaf9cea6c22d96c001ab1a68` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc2e2aab0e09719f9d1f8d4549b54dad3044d2405` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc3c548cdc8cb1b8c48ab70ecfe4ae6d444fde155` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc45f2301380f2cf1f90c38e3cca18f6e41134b3c` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc535c5924c33136e1e56221a1fb186e0ecb1381f` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc5ab742988d6a02251ef0ccf59bc6968914aa2d1` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc5bf375d0a2051e55cd7d1415204004e807b62ef` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc7ac77eec5afbf589808b6b5d47e8a14ea8c29c8` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc8d3dc1271d58aa9de5ab7cbbc19ecaed100ba80` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc9117202c5e94db475b2af39e3c41c946e215592` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcf4b5e2ab674e30ccb37ad5ea926169bbde562a0` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd500763b3e62d80517b0cf9d8aab758bf5862749` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd9d9671352c375b9c507a6e60ad99a256c04ce53` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xda907b358055de483a5f60c1688232f841158f52` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdb5d0ff37b6f03c38b4fd170b3e179db0a6d5752` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xde05208b3bd0c81faf4b7dab55de2abf713a9e80` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe1b202ca285eee7b50be4f1fa651f9da15603572` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe6180f81958d45572600577d91f5c9edc7fc4c11` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe6616d8bd4bcc6f4d31027a71b0c1e9a0ada1ca9` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe681f024252587eca80d37dda792df171d343f14` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe6de34f116d332fb7000922db7fa7627c31f3374` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe7c35e5d4cd772370e36da872a725916762df1c4` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe81ceae0c19b2ed8c6d075652da02c7cac1f9010` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe88f66f221c75518f1cd0c127b63949068ec731e` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe9a1427d4c82428802cc57690b90659ec6c0276a` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xec3c3a24af737a7a9bb887f4a04e90a68d04a950` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xef09ad4ea69b72a144927e8e6219d2e5d33ff171` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xefef4ef553b91f0808d7c0b29e523eef4e19d82c` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf345826f723c5acb785d23a8a197ad46d8566bb3` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf5a2cb466fa1bc037a463a53d5f889d9c86edd69` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf8f7ca3d611e1bb508a42941e6a495cc130c8fbf` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfb03a41e365d8471dca8dfc40a8a1dc13eb61be1` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xff57372f16147117520d40fe777feda51b1226ba` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x95e31fc43d5a84ba50807d7f742f8d0d9ed47e6b` | non_address_book | unknown | unknown | unverified | n/a | `0xeaf4a4ea17f24467dcd81520d7ea5b7ba54f2b7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd919528f994d84ebac04afb1f74d21d248559b62` | non_address_book | unknown | unknown | unverified | n/a | `0xeaf4a4ea17f24467dcd81520d7ea5b7ba54f2b7f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xac65072fc013442e14cce3c8dc47e10dee3e0683` | non_address_book | unknown | unknown | unverified | n/a | `0xf5e27e34b7b75f8b0860ed11d50c7ab0cef6538e` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc061e9da9aca273a7ccb3ff7ba1f3c64dbb51bdd` | non_address_book | unknown | unknown | unverified | n/a | `0xf5e27e34b7b75f8b0860ed11d50c7ab0cef6538e` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe571b6e182e11146fcf4f662daeed445d1ef10cc` | non_address_book | unknown | unknown | unverified | n/a | `0xf5e27e34b7b75f8b0860ed11d50c7ab0cef6538e` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfef7bb6b1521acf53985d5bc75c86b58ea823d03` | non_address_book | unknown | unknown | unverified | n/a | `0xf5e27e34b7b75f8b0860ed11d50c7ab0cef6538e` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/baby-doge-coin](https://skynet.certik.com/projects/baby-doge-coin?auditId=Baby%20Doge%20-%20Bridge) | CertiK | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Manual audit seed](https://skynet.certik.com/projects/baby-doge-coin) | CertiK | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21375] skynet.certik.com/projects/baby-doge-coin — no match: Extracted from the 'Audited Files/SHA256' section of the CertiK Skynet page. Only two contracts are explicitly listed as audited files. The audit date is taken from 'Last Audit was delivered on 8/7/2025'.
- [23933] Manual audit seed — no match: Extracted from 'Audited Files/SHA256' section listing two contracts. Date from 'Last Audit was delivered on 8/7/2025'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/baby-doge-coin | FarmDeployer721 | unmatched — not counted | — | listed in Audited Files/SHA256 | no |
| skynet.certik.com/projects/baby-doge-coin | ERC20FarmFixEnd | unmatched — not counted | — | listed in Audited Files/SHA256 | no |
| Manual audit seed | FarmDeployer721 | unmatched — not counted | — | Audited Files/SHA256 listing | no |
| Manual audit seed | ERC20FarmFixEnd | unmatched — not counted | — | Audited Files/SHA256 listing | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 154 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [21375] skynet.certik.com/projects/baby-doge-coin
- [23933] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
