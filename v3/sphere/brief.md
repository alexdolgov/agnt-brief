# Agentic Audit Brief: SPHERE

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: SPHERE (`sphere`)
- Website: [https://www.sphere.finance](https://www.sphere.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, kava, mantle, optimism, polygon
- Contract surface: 225 unique implementations (227 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,582,485.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SPHERE. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, base, bsc, ethereum, kava, mantle, optimism, polygon. Structural roles: 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: infra (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x93b0a33911de79b897eb0439f223935af5a60c24`, chain 10)
- UnnamedContract (`0x124e8498a25eb6407c616188632d40d80f8e50b0`, chain 56)
- UnnamedContract (`0x79e51953f023df68fc46170d1ee47fd5a49d3b6e`, chain 56)
- UnnamedContract (`0x62f594339830b90ae4c084ae7d223ffafd9658a7`, chain 137)
- UnnamedContract (`0xfdc0366b5a0dfe9fe1fb588897ad1705fdb375b0`, chain 5000)
- UnnamedContract (`0x6268a34936dc06a3a8d8b9caee25432913330270`, chain 8453)
- UnnamedContract (`0xe799961b76d65a32365d34289d5aea6c2242fc98`, chain 8453)
- UnnamedContract (`0xa6efac6a6715ccce780f8d9e7ea174c4d85dbe02`, chain 42161)
- TransparentUpgradeableProxy (`0x4af613f297ab00361d516454e5e46bc895889653`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 216 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 9 of 225 unique; 216 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 215
- Unique implementations: 225
- Raw deployments: 227
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 2 deployments: polygon `0x82e64f49ed5ec1bc6e43dad4fc8af9bb3a2312ee`; polygon `0xea1132120ddcdda2f119e99fa7a27a0d036f7ac9` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x8ffdf2de812095b1d19cb146e4c004587c0a0692`; arbitrum `0xe50fa9b3c56ffb159cb0fca61f5c9d750e8128c8` | ⚠️ Unaudited |
| BaseRewardPool4626 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39ee6fb813052e67260a3f95d3739b336aabd2c6` | ⚠️ Unaudited |
| ComposableStablePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd78a20c597e367a4e478a2411ceb790604d7c8f` | ⚠️ Unaudited |
| DebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc19669a405067927865b40ea045a2baabbbe57f5` | ⚠️ Unaudited |
| Pen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9008d70a5282a936552593f410abcbce2f891a97` | ⚠️ Unaudited |
| SphereLocker | unknown | project_anchor | own_supporting | 1 | polygon | unit-392844 | `0x4af613f297ab00361d516454e5e46bc895889653` | ⚠️ Unaudited |
| SphereToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d546026012bf75073d8a586f24a5d5ff75b9716` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x172370d5cd63279efa6d502dab29171933a610af` | ⚠️ Unaudited |
| WeightedPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf3312968c7d768c19107731100ece7d4780b47b2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (215)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392836 | `0x93b0a33911de79b897eb0439f223935af5a60c24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392840 | `0x124e8498a25eb6407c616188632d40d80f8e50b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392841 | `0x79e51953f023df68fc46170d1ee47fd5a49d3b6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x006d19454cf42744836f9cc0115744dda44bf5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00960e708d86cdba8f9c8e4856f4afd73d06351a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00dead8d27e0fe039ad92eb8768c8ebb0faa9e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x016e1474d985b5fb27de5a2d6d1a2a3810eef329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01726c732d7e2687f8a1cce33d5ae6696eff256a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0266cf77c4d9363e73efe9ac1cbd9a85df94e82e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x041f52c47b1f6a69c218b11e6af08463126b6c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04f5cbab9b50038a84a0bb076e56a15d60a183cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x055fd5072d92c8c42126de238563e57747783178` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a9b2df16b802b4207771c0f5e7d4ded95778908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0cf306ae637c16aa97d44c73ae000056117845f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d59561576a0759cbdb46093248c1e8d17bc108f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d9e1b6fee7cc44475dadddcc2d46d2897447f79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0daa6c0b6623dfb7ae780bb8664456aed34c336d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x102347b9f4a9650879969ebac4d599aee4e48dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1191d532052e0113a4dd278f7fb52bd301349c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x13f2554ceeab230c79e50f0cedbf591bceed810a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1712412a7c4556bfb5ffee753b112960df6348f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19eb8b517bf372cbb7d87b625f1324739f1cc37f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e8e245bbc463887f64771e86b3c5bb96521a96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20b5590575a79e00f1dbdcc48d89c865837f4b10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2136771cb571d24a5d3699cd368d340f4080708e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x22f5a1ec5aa6ccf02fd3cc13a56044a6d9f6c1e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x25f293d3e8e13a730d5aea96b7716970a40a5986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x277a4fef1edbf7040d80731cd0facd4cdbf4ded3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a6802e38a7d372b3219b22d7005dfdd1073738b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a71d8f8d46f5f7d115b7038680fc1e1563f38a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2afc299c1b911d504062555a19b9327ad2518437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d0c506b72b3041824b1e2f3cfb9f06eb3d1989c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2fca8c48f9dfba03105ff9f7da4ae393dc2b1a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30333dd940f92b27834e1795dc3a1dca5b25c5d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x313cd01aa05e1b5469009d96a712f090f8166be9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x319f68c7739ee4bd412be32e76fc8d911e9369bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35706c374f92f6e3ade1a298fed98a7d8a6e7d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x363381807a65b5af38ad119914fb3ecbefe29f01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37d30ca103e8626b804b613b6aabb64616f1e66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38f6ee1f22b58dfc52af0ff24aeaac255ea0e20f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b443e9b9b7f340c7b1417abfdc64132341873d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3cc82e1d61bd8c46071fe83d2b2182c82142098c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d30afdb7f17dd77f37fe5d4bc3d60bdd4fe4d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3f93191f9cf0fe47a970cb558e095da0331f3904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43f075372426987ebb52f794e6d47b56d8aa6b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44024545fb415eeef9c41a52278e9c70721e3b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x440465cd4d3acb94bba49d1f42c1118207d2207c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44c8ee6aa074bf2fb121a05773fba00af5d8f47c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4550ec24c030a294b3f31c847e493b27f826ff63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45802b017445a088d24bec32d8d6fa6ab0761f1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45d4d227863371b94bcb94e1375b604bc51cfd26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x473195e26c53692bdb669716f8f3c48277f52902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4866ad7663fb0d9979b87ddb1f4a2e1e4e983cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x496d8c7ebb12958472c015994cbb162f7876cf12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b01f320f8cdc8f670c10c1e3a27d1fee6a6d9d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c5ae7efbca9a2ff179b0ad1c3cb2206cb28b13d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4d9f834aa980e184004912ce280e9a3d4e322b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e4de8594ad39cd21971775504702d4b00a1451e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4fca083836b02b9987cd4df0bc93d4fe0837c428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x532505d9ed4aa7c0ceba2c1dc58236ba563af2fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x541ade40ebea79a843fdabad7c6ba03b20685451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x579ba9b6aae05d3600e2a9505cfba16c4aa8a9c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57bc5f620bde757c0a81350d21489dab1783fb36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59871ec5c218da8600e38b099e96656dede2f36e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59d052130ed90ec4fa095ec0ae43ebc64124d163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a1fa2851bcf42555b701bef1536b1e7025684f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a47983d9aa688e041a3a793ac6be12513bf4352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5af8f84aa2015e45bb4e7cbfff31678fe05f9482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b095392513167293f21a6b375ff51d4ccd45364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c8803c06aa6e4ba2a26c890d022a7a2f3b2889d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5e5c0c1306d722253acd8aad58f31755bed41690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5eeb6f21e7028d1a9b45d95149319e0dcb499301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6186d801d52dbeb5d653215a9c2d6f443ab5e075` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-392837 | `0x62f594339830b90ae4c084ae7d223ffafd9658a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x64e6784718d780836dcdf7389457ae785b40c6ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6595a28b503db98412c9f7556dd88bb3eed9f385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x68c08ac637fcac8e63060aaca89dba4c32fdd912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x69128968fe8a1e1f704ada79a299fa0a071a9cdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x69987d5c039a9e97531125f63928bc41a6a5855f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6a2028424f2cb48835eec68c0118406f78635dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6b2c137d90090e9caedcc88c363756551449eb2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73625a384b05e1e8d2c8a40599eae6c788f82306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x750d3727f97feb719219e0b152900c0ee7d6cd64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76d4af884f67df4627ed563ef56a67d5a4194f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e96bbeb1c13978f7fe5c50ae1e332148bb14277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83d62d36fd98331abc322c9d5726b549bed05852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83d6c49a89df051f7ad531a6f7e6f46fbadb254a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83e738d7c7c052bba7bb74c47dcaad881ca3e17b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8473db6be5249a3a6059772fb025693f56718011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8585c936b6e9faa0c92980a858521f2b633c562a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x85911c382fea86869d28a60b8538b6f211be17d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x873d8beb7dd53c2f44ea35ba38eda2316e3f8e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88ee2b5daebe3024162d8a0bec2f2bc1f56453d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x89e8842dd3852b707df1cdf9c22f66dd473cb4ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a928708d730a3feeaa64c90ad337c5b1504caaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d90da10ab77d044529eb8440c15c098fede0303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f1389a33620e6cdcf0f0bd81ff0643f48285685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9210ff7696238121c2037d02bb7faa3b91123518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x988ebe51c951fda540aa6456346581725bd3271a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x991b73fb44a6b618efbf3403924c09530ee4d5dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a29081a2e7f29415574b913aaa66cc855475301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a56f822babfbfdc2f25cb34eb952ff38af869d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b3c6c7c174065e364a617f7e3f585db8539d871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c8e5f5ed5b8d5a848e33820b6db9964e3ece8f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9ec3076752818367ac4cf48bc3e21c9a52e626b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9fc54525aa70d1e910cfa61f5974a586f4b8a70c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0d29d57a6627d8d20711db9423920cada0da170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6d12c719707a70f734494a127f6cb385dfee3cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa73e3ea69d0962d157791ef275fc485c3ff2c5d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa8d16f239ab0b1f48ae84aa1f0409b50f7aeb8dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa9f6a31d65d9f8212d2b434fc1abf551bdd2d5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac4615358241577ead3523bf81f1adc1a6f192fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xadf5b20ad4f1dfdaedb5a50d0a4d569ba3c0e26f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2f5e50822e9f8c27fe5bdec82d9a63561e1560d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4df4e2ea1afa77c03fcdc935c4edd9714c853b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5a4a9fc3e1834450eb2848636d3d9cde9ad69a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5e0ee01331c821959b989ebaaacf662e0b3db98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb756aecba735f07cd025c6548c887fb841afb334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe0e1e40414b785668ce614b4f54e29a890786a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbecb6345dfc3c27df9a6d867c8cdc8b9a4294bb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbfcb7128b5cef9566843849ecd7183cd86a388a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6ada0b4da5f6bba745e5c76128f8d72c019a469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc747db6ebd5dfc93c7d2f4af208a9618beec46a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb4e3285058628a49e1787efd935d03158d047fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcbede3efbbec35c324146ef0ecf94de152282d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce9667f0f4559b8b1a495a4df709cd7d86fb3a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce9b431f4dba139f4593299c5dbbcf76686892c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd23d2ddf32bd231b676b72e1d6bd6596b2921c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd36181e0e26c3e25427d3b7438cceca799b1cb71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd3bf3187fc74d798691c5eb2cfb55f45efc52f95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd499f414fc04b2018320a1d36229489ddbfdc6ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd6d61eac8e0fc123c5eda4bf31d834a34c7f4d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd918ee56e167a298c298982e6308840f4045a02b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdac020bd602c0fff2a45ed7416bf501be3db20ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdcf2a7b1d480dbc954962bb501c29ae1aecb7642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe070c4ca57c3c1a2ee5bef179c8e862a0a328a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3507695444f3b157f14ca170f03af8d2674ee5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3663a3694dd35e00803e2d3b868f8ecf0a8ef62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe5e8824f82fa32ad3753943c73ed1f427818ff73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe787d1478326c457654eb0ae6f9242ce867e6c2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8b90ac327764e21fa834e1588be9aac3e4e5018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe9b71c25de0cb2631f7365098d2f239295c3ea04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb2d34992a628b3584a7ca6807e59eab43c75727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed12da6e221500a4fd06cce2a9ff17d218ec6361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xedc0dc1c41666e83efc332f91743cb31ad146f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xedd95fc293af0b682c46c4c1eef03e0cb635d104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0aff41b542b6642981831adc6da1702f191cf5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf1d8aef4ac2c9fb6da1344d01a4519b0aa60d1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf48bab0cdec505f7a8647f18b0522c29409995d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5fea9003bac162f7b33dda7ce6dcd5291aa6dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf87dca41f73e0e2abb0463a77db3a489db276571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9c740a00e0cac2bd053d5c5cd23a5122e318ad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa9fe82bdf89a15d7f073d74868b526249cb3ed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfaa17cddb2ea5711d7afc9119e08d2f3d9c17b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbc77909b0208040b3e9494eb7d3d71a31aa37f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd3d5747ee99b7cbadd9acc67c1ab2d01a901f33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe28da33c260023356d3c5d2fe86134811d2ab2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kava | n/a | `0x489e54eec6c228a1457975eb150a7efb8350b5be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-392839 | `0xfdc0366b5a0dfe9fe1fb588897ad1705fdb375b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x097fb90c089b49a72b5f5e9fd3d645ff760a28a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x09daf529d20dfbde28a82dcfa51115c4eb322652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b2129e4f27c1496b72855dc20a88fc3957b65e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b5e7775856c4e240ae46704178d96fab244c5f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0f2b0add294b4b716bb9015df87b2c11a835b692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a566eda6f5ec95e5cad8daf673433983ce79193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f17fe8aeb6036a4a342b3542d5fcc6b83b1bef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22a7651b041e69fa0224b6a17fc2edb11b95295d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25f110699fe8360c98a48a2cc42c3732328aca8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x297e37aaabf57ebe0260476a2a1d70baa61dffb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d450b96abe5de161e1780c08af55b2d3a5a741f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f79ad2fa60929251f98b3fc59c5a5ca03224287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x30c142e05a0191729ec75637bb3b0b216f8c9f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c4863670b76d18aaeac8b0c399e5fb71190dd04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f00fe26f7e4a54290548dd8bc4a440c3ffb0fc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f6ce2d732f1ee8e3d03330c8f50e6e302d6b2fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x406b944401f4e097f2d0241f2cf596141efb3d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x446beecf9a5ceb5b24d186af58f8c83a9861039d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x453463dece809d06c5f8364c7d0ed392d8ca6b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x47dd0fdd8305ce3581ebb25dadb9cb425a1d2c16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5208c0c4c95a4636efc403960969a4a4b4ccdfc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56c55f7cbb9ef6e84fd4db3d0e097ec04a7651bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x576e43660cd804f74573de9d4b26b3752e251a3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6179ea56e4d7d98a71234f26c1c0522db5978f1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392842 | `0x6268a34936dc06a3a8d8b9caee25432913330270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6afa834bf44ff8ab7ef89fd417853e9b13fbfb52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c91d2fc21232a449d17ae7585fb78d50aa159f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e406d5bceddfc1e5417afd9292cf2ec1c1349ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73aa010e4141d7981444b36e2f31cc6c24d7b399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a004e02177da08df4e4eec15a0f75fb5de6af04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x839a3389f8e22fc490df906a6cd56e8b2e8ae5c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8937bcacf292248edb8d979313282cf1ab4551ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8af0d9ed7f9072e7077a1c9c0cbb60d194237e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e6dd2eee506d707505376b611e64978bacb73cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d012a241f25da2ed2d0afd148725a2a742cf1c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0d1fc6106aee908f50d6c7ed3c25d3c13dec2a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa94aa0b59b77c83d1cd169cccab54d66d0b92cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa9d2c05cf4bd19c0ae35b89838b0bb2e574d596b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb62ada95290c448b05490f3444a9e0ab2099803c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb783f0d2abbda2e1853c44890ad76535f5b2b1ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb846be857f2b74126d1a7d14e907e933a70ff522` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb3d55d11b28c080d12d534b3213a07a42bd1858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbffc680a9aa46b8b19228497e77888da6b944b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc6adec0b31b618aab54b3d375bfde3b5e2f00bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc98d074e865c2039b978cf61e88d003e6dfec1c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf9a7bd7fb2d6de299a8402aaa1c086471c9cb4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1fbf5280d2bd15f0dcf7449ddb77d8cac60ffb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6612dc0a45d3e00ffb3d6ef669dccc897b29dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6ed8146cea4253d45ba2924869f1b216a2bf668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7367ab1f20cd640c6db479255be9f12745d0f43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392843 | `0xe799961b76d65a32365d34289d5aea6c2242fc98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xebd48e5d8f0578128f4e25d88ff983d10e21a8d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefaa597277ce531e52018d42224ab579bbe31a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf910acc24b6d481de0b9ca0dc18ed95a97389719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb9fdbefd4f082d37f519f0dc6c0d617db7c05fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392838 | `0xa6efac6a6715ccce780f8d9e7ea174c4d85dbe02` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 206
- Live contracts: 0
- Unknown liveness contracts: 206
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=206

Showing first 200 of 206 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x006d19454cf42744836f9cc0115744dda44bf5b0` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x00960e708d86cdba8f9c8e4856f4afd73d06351a` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x00dead8d27e0fe039ad92eb8768c8ebb0faa9e20` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x016e1474d985b5fb27de5a2d6d1a2a3810eef329` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x01726c732d7e2687f8a1cce33d5ae6696eff256a` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x0266cf77c4d9363e73efe9ac1cbd9a85df94e82e` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x041f52c47b1f6a69c218b11e6af08463126b6c57` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x04f5cbab9b50038a84a0bb076e56a15d60a183cb` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x055fd5072d92c8c42126de238563e57747783178` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x0a9b2df16b802b4207771c0f5e7d4ded95778908` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x0cf306ae637c16aa97d44c73ae000056117845f7` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x0d59561576a0759cbdb46093248c1e8d17bc108f` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x0d9e1b6fee7cc44475dadddcc2d46d2897447f79` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x0daa6c0b6623dfb7ae780bb8664456aed34c336d` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x102347b9f4a9650879969ebac4d599aee4e48dd1` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x1191d532052e0113a4dd278f7fb52bd301349c14` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x13f2554ceeab230c79e50f0cedbf591bceed810a` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x1712412a7c4556bfb5ffee753b112960df6348f3` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x19eb8b517bf372cbb7d87b625f1324739f1cc37f` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x1e8e245bbc463887f64771e86b3c5bb96521a96c` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x20b5590575a79e00f1dbdcc48d89c865837f4b10` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x2136771cb571d24a5d3699cd368d340f4080708e` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x22f5a1ec5aa6ccf02fd3cc13a56044a6d9f6c1e5` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x25f293d3e8e13a730d5aea96b7716970a40a5986` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x277a4fef1edbf7040d80731cd0facd4cdbf4ded3` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x2a6802e38a7d372b3219b22d7005dfdd1073738b` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x2a71d8f8d46f5f7d115b7038680fc1e1563f38a2` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x2afc299c1b911d504062555a19b9327ad2518437` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x2d0c506b72b3041824b1e2f3cfb9f06eb3d1989c` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x2fca8c48f9dfba03105ff9f7da4ae393dc2b1a06` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x30333dd940f92b27834e1795dc3a1dca5b25c5d7` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x313cd01aa05e1b5469009d96a712f090f8166be9` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x319f68c7739ee4bd412be32e76fc8d911e9369bc` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x35706c374f92f6e3ade1a298fed98a7d8a6e7d04` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x363381807a65b5af38ad119914fb3ecbefe29f01` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x37d30ca103e8626b804b613b6aabb64616f1e66d` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x38f6ee1f22b58dfc52af0ff24aeaac255ea0e20f` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x3b443e9b9b7f340c7b1417abfdc64132341873d4` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x3cc82e1d61bd8c46071fe83d2b2182c82142098c` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x3d30afdb7f17dd77f37fe5d4bc3d60bdd4fe4d7c` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x3f93191f9cf0fe47a970cb558e095da0331f3904` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x43f075372426987ebb52f794e6d47b56d8aa6b51` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x44024545fb415eeef9c41a52278e9c70721e3b1f` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x440465cd4d3acb94bba49d1f42c1118207d2207c` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x44c8ee6aa074bf2fb121a05773fba00af5d8f47c` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x4550ec24c030a294b3f31c847e493b27f826ff63` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x45802b017445a088d24bec32d8d6fa6ab0761f1f` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x45d4d227863371b94bcb94e1375b604bc51cfd26` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x473195e26c53692bdb669716f8f3c48277f52902` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x4866ad7663fb0d9979b87ddb1f4a2e1e4e983cd2` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x496d8c7ebb12958472c015994cbb162f7876cf12` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x4b01f320f8cdc8f670c10c1e3a27d1fee6a6d9d8` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x4c5ae7efbca9a2ff179b0ad1c3cb2206cb28b13d` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x4d9f834aa980e184004912ce280e9a3d4e322b27` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x4e4de8594ad39cd21971775504702d4b00a1451e` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x4fca083836b02b9987cd4df0bc93d4fe0837c428` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x532505d9ed4aa7c0ceba2c1dc58236ba563af2fe` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x541ade40ebea79a843fdabad7c6ba03b20685451` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x579ba9b6aae05d3600e2a9505cfba16c4aa8a9c1` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x57bc5f620bde757c0a81350d21489dab1783fb36` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x59871ec5c218da8600e38b099e96656dede2f36e` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x59d052130ed90ec4fa095ec0ae43ebc64124d163` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x5a1fa2851bcf42555b701bef1536b1e7025684f2` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x5a47983d9aa688e041a3a793ac6be12513bf4352` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x5af8f84aa2015e45bb4e7cbfff31678fe05f9482` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x5b095392513167293f21a6b375ff51d4ccd45364` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x5c8803c06aa6e4ba2a26c890d022a7a2f3b2889d` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x5e5c0c1306d722253acd8aad58f31755bed41690` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x5eeb6f21e7028d1a9b45d95149319e0dcb499301` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x6186d801d52dbeb5d653215a9c2d6f443ab5e075` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x64e6784718d780836dcdf7389457ae785b40c6ec` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x6595a28b503db98412c9f7556dd88bb3eed9f385` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x68c08ac637fcac8e63060aaca89dba4c32fdd912` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x69128968fe8a1e1f704ada79a299fa0a071a9cdf` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x69987d5c039a9e97531125f63928bc41a6a5855f` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x6a2028424f2cb48835eec68c0118406f78635dcb` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x6b2c137d90090e9caedcc88c363756551449eb2c` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x73625a384b05e1e8d2c8a40599eae6c788f82306` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x750d3727f97feb719219e0b152900c0ee7d6cd64` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x76d4af884f67df4627ed563ef56a67d5a4194f6e` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x7e96bbeb1c13978f7fe5c50ae1e332148bb14277` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x83d62d36fd98331abc322c9d5726b549bed05852` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x83d6c49a89df051f7ad531a6f7e6f46fbadb254a` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x83e738d7c7c052bba7bb74c47dcaad881ca3e17b` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x8473db6be5249a3a6059772fb025693f56718011` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x8585c936b6e9faa0c92980a858521f2b633c562a` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x85911c382fea86869d28a60b8538b6f211be17d6` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x873d8beb7dd53c2f44ea35ba38eda2316e3f8e59` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x88ee2b5daebe3024162d8a0bec2f2bc1f56453d8` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x89e8842dd3852b707df1cdf9c22f66dd473cb4ce` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x8a928708d730a3feeaa64c90ad337c5b1504caaf` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x8d90da10ab77d044529eb8440c15c098fede0303` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x8f1389a33620e6cdcf0f0bd81ff0643f48285685` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x9210ff7696238121c2037d02bb7faa3b91123518` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x988ebe51c951fda540aa6456346581725bd3271a` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x991b73fb44a6b618efbf3403924c09530ee4d5dc` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x9a29081a2e7f29415574b913aaa66cc855475301` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x9a56f822babfbfdc2f25cb34eb952ff38af869d8` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x9b3c6c7c174065e364a617f7e3f585db8539d871` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x9c8e5f5ed5b8d5a848e33820b6db9964e3ece8f4` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x9ec3076752818367ac4cf48bc3e21c9a52e626b8` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0x9fc54525aa70d1e910cfa61f5974a586f4b8a70c` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xa0d29d57a6627d8d20711db9423920cada0da170` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xa6d12c719707a70f734494a127f6cb385dfee3cd` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xa73e3ea69d0962d157791ef275fc485c3ff2c5d8` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xa8d16f239ab0b1f48ae84aa1f0409b50f7aeb8dc` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xa9f6a31d65d9f8212d2b434fc1abf551bdd2d5e5` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xac4615358241577ead3523bf81f1adc1a6f192fd` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xadf5b20ad4f1dfdaedb5a50d0a4d569ba3c0e26f` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xb2f5e50822e9f8c27fe5bdec82d9a63561e1560d` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xb4df4e2ea1afa77c03fcdc935c4edd9714c853b1` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xb5a4a9fc3e1834450eb2848636d3d9cde9ad69a1` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xb5e0ee01331c821959b989ebaaacf662e0b3db98` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xb756aecba735f07cd025c6548c887fb841afb334` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xbe0e1e40414b785668ce614b4f54e29a890786a3` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xbecb6345dfc3c27df9a6d867c8cdc8b9a4294bb2` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xbfcb7128b5cef9566843849ecd7183cd86a388a5` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xc6ada0b4da5f6bba745e5c76128f8d72c019a469` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xc747db6ebd5dfc93c7d2f4af208a9618beec46a3` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xcb4e3285058628a49e1787efd935d03158d047fc` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xcbede3efbbec35c324146ef0ecf94de152282d8d` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xce9667f0f4559b8b1a495a4df709cd7d86fb3a0e` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xce9b431f4dba139f4593299c5dbbcf76686892c9` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xd23d2ddf32bd231b676b72e1d6bd6596b2921c32` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xd36181e0e26c3e25427d3b7438cceca799b1cb71` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xd3bf3187fc74d798691c5eb2cfb55f45efc52f95` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xd499f414fc04b2018320a1d36229489ddbfdc6ad` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xd6d61eac8e0fc123c5eda4bf31d834a34c7f4d42` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xd918ee56e167a298c298982e6308840f4045a02b` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xdac020bd602c0fff2a45ed7416bf501be3db20ed` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xdcf2a7b1d480dbc954962bb501c29ae1aecb7642` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xe070c4ca57c3c1a2ee5bef179c8e862a0a328a22` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xe3507695444f3b157f14ca170f03af8d2674ee5e` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xe3663a3694dd35e00803e2d3b868f8ecf0a8ef62` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xe5e8824f82fa32ad3753943c73ed1f427818ff73` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xe787d1478326c457654eb0ae6f9242ce867e6c2b` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xe8b90ac327764e21fa834e1588be9aac3e4e5018` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xe9b71c25de0cb2631f7365098d2f239295c3ea04` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xeb2d34992a628b3584a7ca6807e59eab43c75727` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xed12da6e221500a4fd06cce2a9ff17d218ec6361` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xedc0dc1c41666e83efc332f91743cb31ad146f99` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xedd95fc293af0b682c46c4c1eef03e0cb635d104` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xf0aff41b542b6642981831adc6da1702f191cf5e` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xf1d8aef4ac2c9fb6da1344d01a4519b0aa60d1af` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xf48bab0cdec505f7a8647f18b0522c29409995d5` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xf5fea9003bac162f7b33dda7ce6dcd5291aa6dec` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xf87dca41f73e0e2abb0463a77db3a489db276571` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xf9c740a00e0cac2bd053d5c5cd23a5122e318ad1` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xfa9fe82bdf89a15d7f073d74868b526249cb3ed1` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xfaa17cddb2ea5711d7afc9119e08d2f3d9c17b6f` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0xfbc77909b0208040b3e9494eb7d3d71a31aa37f0` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xfd3d5747ee99b7cbadd9acc67c1ab2d01a901f33` | non_address_book | unknown | unknown | unverified | n/a | `0x92f90ad1a939bd4f5cd39514480be3f1f89a0e3e` |
| unverified unclassified | UnnamedContract<br>`0xfe28da33c260023356d3c5d2fe86134811d2ab2f` | non_address_book | unknown | unknown | unverified | n/a | `0x7754d8b057cc1d2d857d897461dac6c3235b4aae` |
| unverified unclassified | UnnamedContract<br>`0x097fb90c089b49a72b5f5e9fd3d645ff760a28a4` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x09daf529d20dfbde28a82dcfa51115c4eb322652` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x0b2129e4f27c1496b72855dc20a88fc3957b65e9` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x0b5e7775856c4e240ae46704178d96fab244c5f4` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x0f2b0add294b4b716bb9015df87b2c11a835b692` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x1a566eda6f5ec95e5cad8daf673433983ce79193` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x1f17fe8aeb6036a4a342b3542d5fcc6b83b1bef2` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x22a7651b041e69fa0224b6a17fc2edb11b95295d` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x25f110699fe8360c98a48a2cc42c3732328aca8a` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x297e37aaabf57ebe0260476a2a1d70baa61dffb0` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x2d450b96abe5de161e1780c08af55b2d3a5a741f` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x2f79ad2fa60929251f98b3fc59c5a5ca03224287` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x30c142e05a0191729ec75637bb3b0b216f8c9f7c` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x3c4863670b76d18aaeac8b0c399e5fb71190dd04` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x3f00fe26f7e4a54290548dd8bc4a440c3ffb0fc9` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x3f6ce2d732f1ee8e3d03330c8f50e6e302d6b2fb` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x406b944401f4e097f2d0241f2cf596141efb3d0d` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x446beecf9a5ceb5b24d186af58f8c83a9861039d` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x453463dece809d06c5f8364c7d0ed392d8ca6b9a` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x47dd0fdd8305ce3581ebb25dadb9cb425a1d2c16` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x5208c0c4c95a4636efc403960969a4a4b4ccdfc5` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x56c55f7cbb9ef6e84fd4db3d0e097ec04a7651bd` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x576e43660cd804f74573de9d4b26b3752e251a3f` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x6179ea56e4d7d98a71234f26c1c0522db5978f1a` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x6afa834bf44ff8ab7ef89fd417853e9b13fbfb52` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x6c91d2fc21232a449d17ae7585fb78d50aa159f6` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x6e406d5bceddfc1e5417afd9292cf2ec1c1349ed` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x73aa010e4141d7981444b36e2f31cc6c24d7b399` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x7a004e02177da08df4e4eec15a0f75fb5de6af04` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x839a3389f8e22fc490df906a6cd56e8b2e8ae5c1` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x8937bcacf292248edb8d979313282cf1ab4551ce` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x8af0d9ed7f9072e7077a1c9c0cbb60d194237e7d` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x8e6dd2eee506d707505376b611e64978bacb73cf` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0x9d012a241f25da2ed2d0afd148725a2a742cf1c6` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0xa0d1fc6106aee908f50d6c7ed3c25d3c13dec2a5` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0xa94aa0b59b77c83d1cd169cccab54d66d0b92cd8` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0xa9d2c05cf4bd19c0ae35b89838b0bb2e574d596b` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0xb62ada95290c448b05490f3444a9e0ab2099803c` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0xb783f0d2abbda2e1853c44890ad76535f5b2b1ab` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0xb846be857f2b74126d1a7d14e907e933a70ff522` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0xbb3d55d11b28c080d12d534b3213a07a42bd1858` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0xbffc680a9aa46b8b19228497e77888da6b944b2d` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0xc6adec0b31b618aab54b3d375bfde3b5e2f00bec` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0xc98d074e865c2039b978cf61e88d003e6dfec1c3` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0xcf9a7bd7fb2d6de299a8402aaa1c086471c9cb4a` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0xe1fbf5280d2bd15f0dcf7449ddb77d8cac60ffb1` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |
| unverified unclassified | UnnamedContract<br>`0xe6612dc0a45d3e00ffb3d6ef669dccc897b29dec` | non_address_book | unknown | unknown | unverified | n/a | `0x443af6e1195bbf12876be3da891ad5c67c0efc56` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Solidity Finance](https://sourcehat.com/audits/SphereFinance) | SourceHat | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Certik](https://skynet.certik.com/projects/sphere-finance) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18139] Solidity Finance — no match: Only one contract (SphereToken) is in scope. Audit date is April 8, 2022 (updated date).
- [18140] Certik — no match: Only one contract file (SphereToken.sol) is explicitly listed as audited. The report is a Skynet project insight page, not a full audit report, but the audited file is clearly stated.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Solidity Finance | SphereToken | unmatched — not counted | — | Listed in audit findings and contract overview; commit hash provided. | no |
| Certik | SphereToken | unmatched — not counted | — | Listed under Audited Files/SHA256 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x4af613f297ab00361d516454e5e46bc895889653` | SphereLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 215 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [18139] Solidity Finance
- [18140] Certik

Fork inheritance lineage and inherited audits are included when available.
