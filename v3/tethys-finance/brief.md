# Agentic Audit Brief: Tethys Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Tethys Finance (`tethys-finance`)
- Website: [https://tethys.exchange/](https://tethys.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: metis
- Contract surface: 151 unique implementations (151 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $143,467.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Tethys Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across metis. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: accesscontrol (1), erc165 (1), erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 2; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 149 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 124
- Unique implementations: 151
- Raw deployments: 151
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

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe0bfe6bb92be41d2b80f24952a0b4e51f6ff9c04` | ⚠️ Unaudited |
| CDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x558f62915aaec88aa1b2348d9d14ebcf84db7660` | ⚠️ Unaudited |
| CosmicPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x388474fc9e8096d9d358566a8e8ed9b64f87c796` | ⚠️ Unaudited |
| Disperse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0a6d6a4964369429db4f00af226ffd51fbb958e9` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x15294ff72d7a3d21e52111a3d428d1964f93c63b` | ⚠️ Unaudited |
| MasterChef | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | unit-258548 | `0x54a8fb8c634ded694d270b78cb931ca6bf241e21` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x96a3dbbea8749eef68cbdec4486cacbcd9ef687c` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x855b693bc524f6f0ac29c2a772c541da6d4b636f` | ⚠️ Unaudited |
| OlympusProFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8ff40b0318cd3068062c30c476be48987932c505` | ⚠️ Unaudited |
| OlympusProFactoryStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4c87b16ff1b67c15ffaf2b779a8a7a5739af028c` | ⚠️ Unaudited |
| OPSubsidyRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe02ae21b448c1f7d7f133ba9f4db1868d0a47509` | ⚠️ Unaudited |
| OptiSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe6b6e95c05375a1e24d1ec3f6d43ed34e6ee1988` | ⚠️ Unaudited |
| SolidlyDexHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x52cd632e513ef1ebd3138d1339027676104466c1` | ⚠️ Unaudited |
| SphereSubsidyRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7310764840ac8644c4d2c77f0c1e2b1f9a4eec55` | ⚠️ Unaudited |
| StakedETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2dda3cacb47a2eef235702292a4836751dc99826` | ⚠️ Unaudited |
| StakedMETIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0c5dad5a58501135df4798a298f78ab8d1a5d97e` | ⚠️ Unaudited |
| StakedUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x63d4efead90914b50e1a14858eb638f87312e79f` | ⚠️ Unaudited |
| StyxPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xea1aac002ee2c9db41b80a27fad80632c4a89c4b` | ⚠️ Unaudited |
| Tethys | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | unit-258549 | `0x69fdb77064ec5c84fa2f21072973eb28441f43f3` | ⚠️ Unaudited |
| TethysChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5bfe0dcb06958ecc1096aab7169147b4d98bea96` | ⚠️ Unaudited |
| TethysMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xce202c4e6b5aeb92427f5a8005cb3636f4340702` | ⚠️ Unaudited |
| TethysPadToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1f25ee2720acc959095d16ce87d4859c0507b9bf` | ⚠️ Unaudited |
| TethysPartnershipRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x101aaeadd762eb6852f7333e57d5323faaefbd0a` | ⚠️ Unaudited |
| TethysRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe779ef0c7bf86f0c74d865f45b0935b0ece66522` | ⚠️ Unaudited |
| TethysTemple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5d0cef8e3a62f9cdb07c04f8b4188ddd5c26e20a` | ⚠️ Unaudited |
| TokenTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x46db4ea2f4ca6a664e850dbbbe5c0e4ae78ca600` | ⚠️ Unaudited |
| TrackAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdca3341b8a5943da1a3235a34d7120f4759092e8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (124)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0520677a71c057f53dabbd65dec5b52b29c40e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0b680aa7fc88cb5631ad8afaf6db7c9196b0f964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0c984c5c28044a51ad3f695d5f53cfba1e016e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0ea259581e3c969bc64a4406e11ba0ecc775ffa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x10239450efbaf2e8fb20b51ea851567a90ed980a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1519770d993dd3b3c8290c50a38c1b5c1693be07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1634ae79378cd803f3931540879751a690b443b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x170b5870314470f50ac3aa20081df0f95c765279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1cc4218a5b63bc3d24bbc1803e4a3d2863191d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1d5b6685cb5485207405bdcdd17a03af56690e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1f82e112424b8938d58a816f9be81e9131960eb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x20fb015e652c4ea89727bd6406c7d98616eaf0de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x23790ecbae74882e9c48e563da009f3ba2e85d0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2452a828aa50c317a5f1187048b0d96a975f6af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x267fd4984e87b28eb37d931a04b456a76afa8df3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2f371463ce2db39dadc0c78127a3dac28fb7814f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x31fb95e10fbaff28cd3be99556c8ee1c93ca398d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x333a7b0004823871fb0a68b46d8950bf971063d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x35139a6040810f96b3d389a52587679692fdbf3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x38b183519fa9680359f72c9b58205f5fa3a51885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3ad2f568ff593af295795be470e6541bef3961a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x41eda94eaf77d71928826a0ead5b9f51bc965223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x423405908081192c763fa9c1e19ace3cc5b575a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x468fdbacd15da2a58087e5c24f85741d1cd161e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x48fa0454d0bd7ef2bcb4aced3ea64d4b95e27e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4a33b6c1925b529a6dceac51bb24817d865b7ad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4aabaa991299fa93c0575fc6eb393d43892cf21c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4c906620bbd8ae19a037c4fd9ea3576a3f562cdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4d1f92b4bea505fa2a145b48b79963e0da0fa942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x504824d32c8715bc946cec3b486428c5bad0786e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x585dbc08203e4a6f041678e5678b4d7e9e1d6660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5aacc01f82fcf1b8c45d89a44ab9659a0dd10b21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5b270439d7eb29c21987e9969a2be156979ff49c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5df27d06d2fe5879ecf24e360ccd48ebca2c2ce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5ef003cfe5e1f361d0460c87493e8aa2d70d3536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5f0dfd2beaa0f9533655f2deaa133040b0cb31eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6578c05814089d59378562be30095a95e65e3886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x658dcd78729d01c61188744f8439577f5c9dc4c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x659d22af4885cf0da8d63d843c77a31e058534b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x67097d1c74e720a7fd150657be7b30349cfe3d5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6a0bdc7ec6f444081b94abd703f0ef7bcebab0de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6e6baed2f9fb683e705d3efceb9d79a3c5a783c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x716678968fd6e518cb1d56c9720fc8eeeba6ceab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x71933f46fd6bf57eeee81bde13f2f6d35dc01b1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x747d46df8b9256a53f67b13f5cb8d384c2b2978e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7891389941a2c9d5decd982b757dc54786539003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x79f237b37a2dfa3af2750e866146460bd23ee5fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7d94033a00ab11a580d975353d9d8e5701425da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x81cce7feef8b2e007e81a128271fbe115582167e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x84b3a268801f4e4e207fe0863baebae2566feb13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x85c246c5adc55be0e455ffe720712d7c57af8cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x86c084540ca4aad2ff7cff73fa16b316b0ee20fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8ada23da6d5c1299eefb5a033e96bc179f968883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8b81b91aeea63d6dfe4cd5cbf75e48306e526b05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8eef2f642cc2c70ae6cf1e75471f55e0ea81851d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x939fe893e728f6a7a0faae09f236c9a6f4b67a18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x93e177f95cce4ac8cb70124aea525aaf41ee2497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x97a33b2a49f35d50f91f42469bfafffa52cca314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x99588a1316a4713f3284293652eda187f966a5a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9be4c71b49f8977991ab0137c06000a7421cfd62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9c027936796a8cd11d5dd68be219fe2802890c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9d8cb5acfb431c9c5efb599f6ab318276fceda18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9da529602c224883e0867e0e78978705ad3a45eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9dc0de621182ef4d7004c721ab90ad2ebca5c5c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9f7d67629f9d9b1afc463e81111b68b92129181e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa2da6385c04c8003438e1a782831acf4662c63f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa4bf3204900d3f3ab46358eb6cd3cb679e31ca3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa4ce8ffc535ef63c1ac8dcd0eae7a8371b2e43e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xaa8ed0ddbf366488d08fa0a0e73b3f3a0304519e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xab547c223c75e819c07b257b89663b48064865e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xad25fcc36e3813566fdf04511cfe001366c7546d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb1529a664ebf0a993783b55744dde8fbd6c68074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb40b8887383be0e4031318cdb08e33e36ac7d398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb5614acd48b71257da12735ed3deda0b29f463f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb57161c5c2a43e6b802aad7c6942437862a9e204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb5e88a03886952352a605fff0626d47c58f758d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb63036c92179e167639200cd882c6444b31c7a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb6586b5652857ec3b9aebee8f24d7295f07c97e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb74a5e8b03546c51b52c75a4946e648163d6511a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb904f65168b192f813aadf11430b169cfbd3f3a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb90d80150965c9738f8ef64fbb7ecbbdd3b4c303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbad74bd92082a145588a831046fb2df0d9b16f49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbb3fc2013cff37bdf382f8ab074c9c719e87ae71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbd01213af610049f203b442ca42ab0184014c85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbdd802422c51c733a0e674533986217a3ff95cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbde7188e9289d7a4b47c567fbe1ad4d268656039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc569ed3e9a28325e13ff94cb69bbb9a86ddcaaa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc6028358251ce7773c12cb84fd6228c4a65d74b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc67e6424a4484d71b13e1e2bf2c8bf985bc34849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc827b461b7f02992b41b4c3a38e97a8f45bc1aa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcb90cfaf5236692375b39389b5265d97172d7cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcbb50b28c223381afa1d0970ab3c441831ccfe91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xce036aaccfb444d2f774e181aedf92b73ebdd102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd0adab1583b87cefa06ef3f9c79c88b6be40083b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd1fef32a93cc7d16e2d847890db1159318080c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd33ad8ca90021dc0db9dfc850c598a701e55a8a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd4b76d77bdd1855943052035c06fd0fef02d909e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd4f7db61ea22c2b89020293d48c8550816d71967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd671a17cf0ff57020ed7a6459d15f659cb7a267e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdc14d40533a1cbcfdc83964ec74b6ed0fbe60f8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdd238fbec87b639c18989f8ba350f8aa8a3532ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdd3ea1bee955ff9978195825f8b58cbac41a95ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdd4f17a1e1d6c245294ae4a37c865f69ac80bfa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xde85aaf49154a17d90871cac87d8e18d3c7fb694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdf907470dd13c9a7d2d1abfaace033dc2171a859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe2fb34edf8a392d17f560341357d3b1cadc7101d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe3c7b8805357110e4f95be1a122c95568df2fc53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe458daea1da380e710e21aa8e9737947bd2f1328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe75f31cccfd69943f67ef420f1652cec7446aa4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe9627c3072b2b30e793a92712bc8d38d81e66827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xea3590a275ea521ecf7f8c759855de78e8bb1522` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xeb3b64a01bda46f0f256bdd75772f1460bb65ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xebb04636b095df07d719dd3911a6df93e9d3d992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xee91915f429f0b1de4c000ecd3664eb47f2b2f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xeef07493e17725e91274d3eca9aa48a62f8f0c09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xefd99ec14fc201f3b42116dfe2953ad0a006884b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf159186fff34389f93240c0dcb6f3927dd105e62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf583e86e461ddadfb118d5ba18ec9284e1c25f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfab568c8bacee0eb92da2d8c97793edddc160bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfab9869e79e5203728c8d5f0539161058d7717f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfc0dc19090b0d5806e9c3d8f72a3561393c4079a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfc54bb67744e5e290103ee2023322e0aef6062d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfd7c32ce1a06ec620d7ef549544afedae3f4778b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfe4551b7d115f620f0f427cc855f39957e8045af` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 124
- Live contracts: 0
- Unknown liveness contracts: 124
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=124

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0520677a71c057f53dabbd65dec5b52b29c40e19` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x0b680aa7fc88cb5631ad8afaf6db7c9196b0f964` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x0c984c5c28044a51ad3f695d5f53cfba1e016e23` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x0ea259581e3c969bc64a4406e11ba0ecc775ffa8` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x10239450efbaf2e8fb20b51ea851567a90ed980a` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x1519770d993dd3b3c8290c50a38c1b5c1693be07` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x1634ae79378cd803f3931540879751a690b443b5` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x170b5870314470f50ac3aa20081df0f95c765279` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x1cc4218a5b63bc3d24bbc1803e4a3d2863191d41` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x1d5b6685cb5485207405bdcdd17a03af56690e2e` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x1f82e112424b8938d58a816f9be81e9131960eb3` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x20fb015e652c4ea89727bd6406c7d98616eaf0de` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x23790ecbae74882e9c48e563da009f3ba2e85d0e` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x2452a828aa50c317a5f1187048b0d96a975f6af9` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x267fd4984e87b28eb37d931a04b456a76afa8df3` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x2f371463ce2db39dadc0c78127a3dac28fb7814f` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x31fb95e10fbaff28cd3be99556c8ee1c93ca398d` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x333a7b0004823871fb0a68b46d8950bf971063d7` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x35139a6040810f96b3d389a52587679692fdbf3a` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x38b183519fa9680359f72c9b58205f5fa3a51885` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x3ad2f568ff593af295795be470e6541bef3961a2` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x41eda94eaf77d71928826a0ead5b9f51bc965223` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x423405908081192c763fa9c1e19ace3cc5b575a1` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x468fdbacd15da2a58087e5c24f85741d1cd161e6` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x48fa0454d0bd7ef2bcb4aced3ea64d4b95e27e74` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x4a33b6c1925b529a6dceac51bb24817d865b7ad8` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x4aabaa991299fa93c0575fc6eb393d43892cf21c` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x4c906620bbd8ae19a037c4fd9ea3576a3f562cdf` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x4d1f92b4bea505fa2a145b48b79963e0da0fa942` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x504824d32c8715bc946cec3b486428c5bad0786e` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x585dbc08203e4a6f041678e5678b4d7e9e1d6660` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x5aacc01f82fcf1b8c45d89a44ab9659a0dd10b21` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x5b270439d7eb29c21987e9969a2be156979ff49c` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x5df27d06d2fe5879ecf24e360ccd48ebca2c2ce5` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x5ef003cfe5e1f361d0460c87493e8aa2d70d3536` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x5f0dfd2beaa0f9533655f2deaa133040b0cb31eb` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x6578c05814089d59378562be30095a95e65e3886` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x658dcd78729d01c61188744f8439577f5c9dc4c5` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x659d22af4885cf0da8d63d843c77a31e058534b1` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x67097d1c74e720a7fd150657be7b30349cfe3d5b` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x6a0bdc7ec6f444081b94abd703f0ef7bcebab0de` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x6e6baed2f9fb683e705d3efceb9d79a3c5a783c1` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x716678968fd6e518cb1d56c9720fc8eeeba6ceab` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x71933f46fd6bf57eeee81bde13f2f6d35dc01b1e` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x747d46df8b9256a53f67b13f5cb8d384c2b2978e` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x7891389941a2c9d5decd982b757dc54786539003` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x79f237b37a2dfa3af2750e866146460bd23ee5fb` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x7d94033a00ab11a580d975353d9d8e5701425da7` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x81cce7feef8b2e007e81a128271fbe115582167e` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x84b3a268801f4e4e207fe0863baebae2566feb13` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x85c246c5adc55be0e455ffe720712d7c57af8cf3` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x86c084540ca4aad2ff7cff73fa16b316b0ee20fb` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x8ada23da6d5c1299eefb5a033e96bc179f968883` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x8b81b91aeea63d6dfe4cd5cbf75e48306e526b05` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x8eef2f642cc2c70ae6cf1e75471f55e0ea81851d` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x939fe893e728f6a7a0faae09f236c9a6f4b67a18` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x93e177f95cce4ac8cb70124aea525aaf41ee2497` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x97a33b2a49f35d50f91f42469bfafffa52cca314` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x99588a1316a4713f3284293652eda187f966a5a1` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x9be4c71b49f8977991ab0137c06000a7421cfd62` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x9c027936796a8cd11d5dd68be219fe2802890c6e` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x9d8cb5acfb431c9c5efb599f6ab318276fceda18` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x9da529602c224883e0867e0e78978705ad3a45eb` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x9dc0de621182ef4d7004c721ab90ad2ebca5c5c3` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0x9f7d67629f9d9b1afc463e81111b68b92129181e` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xa2da6385c04c8003438e1a782831acf4662c63f4` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xa4bf3204900d3f3ab46358eb6cd3cb679e31ca3a` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xa4ce8ffc535ef63c1ac8dcd0eae7a8371b2e43e4` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xaa8ed0ddbf366488d08fa0a0e73b3f3a0304519e` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xab547c223c75e819c07b257b89663b48064865e3` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xad25fcc36e3813566fdf04511cfe001366c7546d` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xb1529a664ebf0a993783b55744dde8fbd6c68074` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xb40b8887383be0e4031318cdb08e33e36ac7d398` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xb5614acd48b71257da12735ed3deda0b29f463f6` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xb57161c5c2a43e6b802aad7c6942437862a9e204` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xb5e88a03886952352a605fff0626d47c58f758d2` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xb63036c92179e167639200cd882c6444b31c7a84` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xb6586b5652857ec3b9aebee8f24d7295f07c97e3` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xb74a5e8b03546c51b52c75a4946e648163d6511a` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xb904f65168b192f813aadf11430b169cfbd3f3a6` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xb90d80150965c9738f8ef64fbb7ecbbdd3b4c303` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xbad74bd92082a145588a831046fb2df0d9b16f49` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xbb3fc2013cff37bdf382f8ab074c9c719e87ae71` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xbd01213af610049f203b442ca42ab0184014c85f` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xbdd802422c51c733a0e674533986217a3ff95cf5` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xbde7188e9289d7a4b47c567fbe1ad4d268656039` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xc569ed3e9a28325e13ff94cb69bbb9a86ddcaaa0` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xc6028358251ce7773c12cb84fd6228c4a65d74b0` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xc67e6424a4484d71b13e1e2bf2c8bf985bc34849` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xc827b461b7f02992b41b4c3a38e97a8f45bc1aa0` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xcb90cfaf5236692375b39389b5265d97172d7cf7` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xcbb50b28c223381afa1d0970ab3c441831ccfe91` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xce036aaccfb444d2f774e181aedf92b73ebdd102` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xd0adab1583b87cefa06ef3f9c79c88b6be40083b` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xd1fef32a93cc7d16e2d847890db1159318080c6c` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xd33ad8ca90021dc0db9dfc850c598a701e55a8a2` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xd4b76d77bdd1855943052035c06fd0fef02d909e` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xd4f7db61ea22c2b89020293d48c8550816d71967` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xd671a17cf0ff57020ed7a6459d15f659cb7a267e` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xdc14d40533a1cbcfdc83964ec74b6ed0fbe60f8b` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xdd238fbec87b639c18989f8ba350f8aa8a3532ac` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xdd3ea1bee955ff9978195825f8b58cbac41a95ab` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xdd4f17a1e1d6c245294ae4a37c865f69ac80bfa8` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xde85aaf49154a17d90871cac87d8e18d3c7fb694` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xdf907470dd13c9a7d2d1abfaace033dc2171a859` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xe2fb34edf8a392d17f560341357d3b1cadc7101d` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xe3c7b8805357110e4f95be1a122c95568df2fc53` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xe458daea1da380e710e21aa8e9737947bd2f1328` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xe75f31cccfd69943f67ef420f1652cec7446aa4b` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xe9627c3072b2b30e793a92712bc8d38d81e66827` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xea3590a275ea521ecf7f8c759855de78e8bb1522` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xeb3b64a01bda46f0f256bdd75772f1460bb65ec0` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xebb04636b095df07d719dd3911a6df93e9d3d992` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xee91915f429f0b1de4c000ecd3664eb47f2b2f6c` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xeef07493e17725e91274d3eca9aa48a62f8f0c09` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xefd99ec14fc201f3b42116dfe2953ad0a006884b` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xf159186fff34389f93240c0dcb6f3927dd105e62` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xf583e86e461ddadfb118d5ba18ec9284e1c25f85` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xfab568c8bacee0eb92da2d8c97793edddc160bd4` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xfab9869e79e5203728c8d5f0539161058d7717f9` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xfc0dc19090b0d5806e9c3d8f72a3561393c4079a` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xfc54bb67744e5e290103ee2023322e0aef6062d4` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xfd7c32ce1a06ec620d7ef549544afedae3f4778b` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |
| unverified unclassified | UnnamedContract<br>`0xfe4551b7d115f620f0f427cc855f39957e8045af` | non_address_book | unknown | unknown | unverified | n/a | `0x141d48801abc47213d7f714b77618e698adcbe44` |

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
| native | 24 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 124 |

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
