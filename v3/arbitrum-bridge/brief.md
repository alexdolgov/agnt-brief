# Agentic Audit Brief: Arbitrum Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 32 (0 matched; 32 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Arbitrum Bridge (`arbitrum-bridge`)
- Website: [https://portal.arbitrum.io/bridge](https://portal.arbitrum.io/bridge)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum
- Contract surface: 270 unique implementations (270 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $2,579,897,257.65
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Arbitrum Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0000000000000000000000000000000000000066`, chain 42161)
- UnnamedContract (`0x5288c571fd7ad117bea99bf60fe0846c4e84f933`, chain 42161)
- UnnamedContract (`0x842ec2c7d803033edf55e478f461fc547bc54eb2`, chain 42161)
- UnnamedContract (`0xb90e53fd945cd28ec4728cbfb566981dd571eb8b`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/92 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 4 own, 22 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 244 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 4 of 270 unique; 266 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 269
- Unique implementations: 270
- Raw deployments: 270
- Audits discovered: 32 (32 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 17 aging, 14 stale, 1 unknown
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
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | arbitrum | n/a | `0x912ce59144191c1204e64559fe8253a0e49e6548` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (269)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379353 | `0x0000000000000000000000000000000000000064` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379354 | `0x0000000000000000000000000000000000000065` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379355 | `0x0000000000000000000000000000000000000066` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379356 | `0x0000000000000000000000000000000000000068` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379357 | `0x000000000000000000000000000000000000006b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379358 | `0x000000000000000000000000000000000000006c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379359 | `0x000000000000000000000000000000000000006d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379360 | `0x000000000000000000000000000000000000006e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379361 | `0x000000000000000000000000000000000000006f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379362 | `0x0000000000000000000000000000000000000070` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379363 | `0x0000000000000000000000000000000000000071` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379364 | `0x0000000000000000000000000000000000000072` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379365 | `0x00000000000000000000000000000000000000c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01b370d9b1ed1591c64c9a4b0faff193af5fa928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x026d77f3d0f5dd4c095fecbc802cf99290a883fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06ea6ad1037d251a23c7534171331313421b8358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x079840cc8959ef60d414e5afc6ed0493b8eaf514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08aa1648fc9d862a28aad015eeaa1ee2c2483838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08b1395a2ee51073d6b9ebf9e97fbeb09dcacaf1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379366 | `0x096760f208390250649e3e8763348e783aef5562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09824fe72bff474d16d9c2774432e381bbd60662` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379367 | `0x09e9222e96e7b4ae2a407b98d48e330053351eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09fd6132aaf7cadb02bebc375ad82eaeb2631aae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09fda6447fa7758ea9245ac78ca3c9ba68cbfd3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ae4dd666748bf0f6db5c149eab1d8ad27820a6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f728dd0217e26120a304b3fa554c3ba2b2af535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1135265fe014d3fa32b3507e325642b92affeaeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12a132e2341ae7d24cf77ada0b5503e11a15a447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12b1389fbf261e781bdc3094d28636abfb03c5b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13be515e44eefaf3ebefad684f1fbb574ac0a494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13e7746ece329d4290b56692b968f7f0913c8942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1499ebe4b56a37e0068a2b3265bb54c4fe8d896f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x165bd50aa051637bd659e1eada63c954b48cde17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17a8d893d2ba9e31dfff9b46ae11fa3dded5115c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17e7f68ce50a77e55c7834ddf31aef86403b8010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18cc27b3a95a6fdef9eaa391eff28f48f42ffe3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18ed2d5bf7c5943bfd20a2995b9879e30c9e8dda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18fd37a4fb9e1f06d9383958afd236771f15a8cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19431dc37098877486532250fb3158140717c00c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1aa699687b6add34ce80885b732e75885d89af43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bed37fedfe8b2721a69a559313d2b58d16ecd77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c6accd9d66f3b993928e7439c9a2d67b94a445f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d720642e63cb0f50be637e16e0f78b2d1b93f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d7b00c67e933ffca847a24381960ff8e91de197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d901dd7a5efe421c3c437b147040e5af22e6a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1dcf7d03574fbc7c205f41f2e116ee094a652e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1dfa102bc097446bb2b836082367991de24a1c64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e03aa1e483fce52643a801d840a22f5eee709ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ed80b2542758ed63dd9ea539ee87aefd4274d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ef281cd6bd48affd9c44cb590858fcff92de821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x211a5579d21e1938b2b5ff87a3f7896933543e97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x230b6fec9107a0b0476477a66c4d621f9a0d1746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x234e937f1a2926737b0084fb7498772579497735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23a87a6b30d5e75f069fea7964c870a7630ebdf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23d1171380e3cbaa161f6eb31e3a3c6b548a467a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26368445c0e5ae17838d626347a000fbacc84553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26a1be24dde0571da03022493be9fd013ca62dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26f26dc12bb3eb302317675129a7d16f11a8367c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a6dd4433ffa96dc1755814fc0d9cc83a5f68dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ab445728a7db4fb767457383ca23396a4b5611a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b0e04dc90e3fa58165cb41e2834b44a56e766af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d592c021e9216f68035c5f86128df0a3e9bd6c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e0c12e2478a0dec2ef6c2ccc2ed8d4fed3597d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379374 | `0x2f5624dc8800dfa0a82ac03509ef8bb8e7ac000e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fb33d8e4a8e989e7814d914973096736ed718b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x302275067251f5fcdb9359bda735fd8f7a4a54c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31127a9c0308d8e3f6db5158a14ad674f22946d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31c8dc074d8a31cdd33925405719931457ed61f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31faaab44e74eb408d1fc69a14806b4b9ca09da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33c1514bf90e202d242c299b37c60f908aa206d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3525f734fce1a26a6cefffca43538290dc239771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35751b4c43461902dc98a03e1bd711fd2b816dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3930ad9a21da38e63d52b43b0c530cb0aaccb389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3de02cf69192f4805ede47d7fa5efa614c5a6593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e9a459089758e760bea267abb9485ee5b47a909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x408e208e8f7dcde6804f4e31f90e3272ee04502d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x413aa082995f0d7672c4d564624ddebd221c8d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42b5929fdc3503e4cb31a72f247f081843afea3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x435e77c59db2b9036ac6be684b77d1667699437c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43c2668d46c82911d977ffcab8c1a13cb03a2add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44624a5eda4acdf8e9c262b0bf600c031686f5ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x45fcb351851071c7107ca158f2bd3cd4510dec2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x466aa18ce75f1a3039d4c06a3c31786d0d0386c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x474b3de6d993bad662e68ef2aea050bb67847a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4811500e0d376fa8d2ea3ccb7c61e0afb4f5a7f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48b9379913888fb7f4a58a2b584a7ca1ec4fe5bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4998b99dd376a0cfff0e4b7f1ee0056f79910e64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49c9e7c42cb6fb4f133e4648871d12936b05f3bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a5b394be885de0dca45aaf7fa7152457f82ebc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ab216d2bbecaa7517a1615505c8f7078ef1c123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c240987d6fe4fa8c7a0004986e3db563150ca55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ca08847418de7860a6da0de2e5536f1cd78458a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ca8c773aff136fe9448946b6ebc25ad7673451d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f681ebb93dc2a820685ea74d881e2a4d044681e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51882b52bcc3ef8008f9f7772b0229ea2551fddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51dedbd2f190e0696afbee5e60bfde96d86464ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x526a6e634ad36bb0007c4422586c135f1f9b525a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379382 | `0x5288c571fd7ad117bea99bf60fe0846c4e84f933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52d5181dd67ac17176127e670e5baee4d47c6c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54e0923782b701044444de5d8c3a45ac890b0881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55b64943f7518ab3185a645c6c6fc175f6443ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56411606380fd9ef28db1aac3897bd4a24f26606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x583f8ba007580c83efb4b02c66694096cd5c56d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5aa806015fec88669bf7dad746bb4adc1e79bced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c4d02b13378d0db345c62b3cc9811d6f9c6baf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ca988f213efbcb86ed7e2aacb0c15c91e648f8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f49069667541fc85f48514aca6c10c7e33cd9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f89646f93e360217ad7cad73a44298abc4aca9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fafdbc0c1b87c39c101c53666bf7cbd7eae3e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fcb496a31b7ae91e7c9078ec662bd7a55cd3079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x606bb75b1f910f82086557aa14ed2dc0beb85d6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x609aa0dbb59606a9f51133c4f5f2a83d88267d73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60d9a46f24d5a35b95a78dd3e793e55d94ee0660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61006c8566fac9a3315f646da4624c00bbcf15e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x621f7268e0c981af0c1062cbd56a0e05b35bbed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6284bd731aea4ee3c576d095960b8689bd7c9eca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6448c74ff1c94df19a24545f0b9ea67f847f3ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64a0ddf7469d52828a026b98a76f194637daad2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x660ea1675f7323dc3ba0c8ddfb593225eb01e3c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x676d824b9c9e79c3da2b76600db942fb8f901db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69a6de0b9bec9edb33805167327a6abef0c69fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b9a2769b259f36fbd503fec0bbf4408459a3876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c21303f5986180b1394d2c89f3e883890e2867b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379391 | `0x6c411ad3e74de3e7bd422b94a27770f5b86c623b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c7508874c4db742fbf2f3b293621d94062ecfe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6db2bf00c397024516683ff3613b771f30543e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e031b6e9f667ed6953e627276fbbefa4c28529a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7259f157f9d7e2a401e4fabc9f44ad1519d16f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x731e8e1fcde329475643d6eb8653e224be10f213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x74a5c491e9ed0263ba218aba13694d4d0e5fccc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x760c1b5fe95b2c66d67662ec544975bdbb129645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76600101e42dd9355d29741288407923268c06ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7785047a920b43d23d181c6e68fa9405c874997c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x782bc330ea15c57fc0e3d4959c2f8a38278703e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78b101ec9736c4ab06b0833f01fd4c011f7ca612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79607f00e61e6d7c0e6330bd7e9c4ac320d50fc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x796822909dcefdc433da071c7f75001452310a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a299ad29499736994aa3a9afa3f476445faeb2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7cf7e521b9259676c069599cd4de3d20104e06de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d42f098e79de006cfab475cfd50bdf2310d7ae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7deda2425ec2d4ea0df689a78de2fbf002075576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ecfbaa8742fdf5756dac92fbc8b90a19b8815bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ed9c3a779be8b742abfc17a2f15353ecbce3e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ef5b5a0aaf44fca9e6a678e2b0464a7e074327f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7efcb76d0e2e776a298aaa603d433336e5f8b6ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f6dbaed9905c3b01030d3ad5aa93846ecbbfa44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f7c304843e6b933c01a0462cad0acc2fbb865e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x800da62be6626127f71b34e795286c34c04d6712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81f6f682ca9bb29d759ce12d7067e1c6ef533096` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379401 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x841a23c7c4e20515eaf03debd8ab60f12b5cc13e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x841a6e8230ca0f563a841eb6bf8dfe129672bdc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379403 | `0x842ec2c7d803033edf55e478f461fc547bc54eb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8457c9fb027f3125e82caceb596d07f90c4ebe3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x850f050c65b34966895ada26a4d06923901916db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x862d1993aee44fe8fd6e13074be7712edfac4b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86c239f206a0878fb07243abb4afa932e6ace911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86cfdebdff5387137f4dc425835c281bbf9ff452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86e93e21ad108cae7ade482c34c230bfd94d4a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8838b7f8bafc208c4b2255bc0321527166654c95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x893af2923a6ad9a784f1a72dc6af7f4a34266814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89af7c4c2198c426cfe6e86de0680a0850503e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b73ef238adab31ebc7c05423d243c345241a22f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379404 | `0x8b9d9490a68b1f16ac8a21ddae5fd7ab9d708c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8da371823a4937e5f371b7b53876ee34d5d5e520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e91b13eb6234083894b66a3cb6a61acece74397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f2cdfd7c96a7026c617e66ebca389c5d4e3b168` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379406 | `0x8f59c7a53b883563b34cbbb6ff021b03973e823a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f6406781cc955398c45a48dcefeebdb2c8e2caa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90b02d9f861017844f30dfbdf725b6aa84e63822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90d68b056c411015eae3ec0b98ad94e2c91419f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x917e701b4f4ff29dd5e0e1585e88d59147069d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93b1a8c9f084fbe7972baea73535bed3d32748c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x950d054ba5fd67c7902d0e4125095ac6e7b06a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x958985cf2c54f99ba4a599221a8090c1f9cee9a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9625ee87a85cf1d5ee31f0883df27a5c8770312e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x964177232be7c9e530054b3274b8b9d332b24df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99761fac22fce23498f8004ac4025f822fedce95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99a2a31300816c1fa3f40818ac9280fe7271f878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ad8b2564445f3cde1897aa0ad406cfab7f5d2c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ae2cae3db7b10f9962026633120e50bb26d6077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9bb78f4d5fd55c576ffe2aa9b71f1e441163adb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c84a387930853d963892d299153b0d5840dc1f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9cad81628ab7d8e239f1a5b497313341578c5f71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d924ffe6d66ca0727657734a615cc9730925c49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ea06b8753bca071a5c57002ab84598577fb08c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f5f2da42be9833654c1d702e2e8cfffc7a0a6a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9fd20d42cf52b1a0def8e95ad8d2e92b58eca51b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0d6e6b1b950acc748b45f3419fead4b52f7389a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2bc63c7a53f8588a5224db873998217082faf7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa40a8987d58d693b99bf8a2cf699f95fd886db50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6d1ce7210353e431ce79f41bcfa9ea3ae507b98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7fc2f965ffed9b12137a7d59066eee15755fe35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8531c989b2f8531e123f1daf2edae83bf4aa190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xadd9602e9810ed220a5316e2fa45d5ab12591c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf58472d08d7dbccc73d5f58d26b2bd9ef43a5c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf86a539bd69dcf9d1bf7560a8a7930e73099d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb040b105a4a0c7a9cc290164accbc32855368322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb08ca18499389abfdf7b14b09bd2bd4d56d7fbbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb143feae3d2a522c2f03c95d39fe9b0174c77c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb20107bfb36d3b5aca534acafbd8857b10b402a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb23214f241bdeb275f7dcbfbb1ea79349101d4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb28c89b6997f025bd35205b99a7968c264cce353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb642058a41d414d9de3f36d14051623e557f1052` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb7cebd39c39f263293edb7896d5d9a1720fead4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379421 | `0xb90e53fd945cd28ec4728cbfb566981dd571eb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba8b7fb486eb8698c980194e934404c2ae07806c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd33dc46dfc6af9637137c59b97ba93b3799994a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd4dc8c28c1d5d579fabfc9cb21b5734d568b6dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe95d0ee267f3e90606537b1c8a6fb36d2dc1ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbed55eb1a34ba94c1152369cc71571815eba509e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc08a4543b011fd4f1efc9e26521f4e157433b3b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3d915129b03895d904fbf067d03f3d23a57c535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4ee800ec42ecc1206c54eec13955dd2506f0f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc555b2f1d559fbb854569b33640990d178f94747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc65c22564a8c90a0e51c67b55a5e4fbb4261a6a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379429 | `0xc840838bc438d73c16c2f8b22d2ce3669963cd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8c95b8b35772ce4bf9e602336082696c2dc0db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9f70e309c659af9f947ac235e9132d6d40a5cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca4f67ccda20221b627edcf2aa1952433bbb5937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf66f830c4e5e1904b599ed61249601901e55d89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd106ec93d2c1adaa65c4b17ffc7bb166ce30ddae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd35dccd471cb5136004da35660e0573b6cd791d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3de403eaddf791104918e9c9336b434ae7dda01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379435 | `0xd570ace65c43af47101fc6250fd6fc63d1c22a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5fddac0bc78c5d7fd1fc0f66b05d697029d9946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd86d418d881fd718fa197e399bf74cdd61dd3acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd89d54007079071cba859127318b9f34eeb78049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8a9d0a84e4ca6aea88b79ee0b4c7db5ad7e82fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9e17c6012a50f8725acda0196cecaa40657e8cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdbe3e840569a0446cdfebc65d7d429c5da5537b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd1299069f6aed87371862386835cba6a137e83c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd262dfdf2fce29696f54ec5bb82c6994ec2f639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd91f6e88576fec4a38a518da39c92e13cbb6446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdeacdfbd55a3628ce2cf402860f41cd7ac0556bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf0eacc3f37356df320e5b5db16c7ed7a6b596dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf94f0474f205d086dbc2e66d69a856fcf520622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfcc5a8acda6d68c24487f99fef21f9ac36988d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe10a2c03501f073952c5e7d3476b16efe8f2a03c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe51e82ddb45da069e5c22bb0926856e35e196cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe58a2deb5718f9aaf2c1ddd0e366ed076d204cc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe60081476e505f14c231a7efa47e607ff50daeb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6f640e138c10c35306faf9d68efb4e003300232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe80eb0238029333e368e0bddb7acdf1b9cb28278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8709022b9c9d7347856c75910fe07e10c904446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebb11bbd7d72165fac86bb5ab1b07a602540b286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebc8470d53865a7cf4b3eba5548bfa29d095559c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xecf65049cc8c1fcd66a6fa7302f4826971fc52fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee9e5546a11cb5b4a86e92da05f2ef75c26e4754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef52d1f5a41890ba460d145e39745df612069df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf02e431607a3e0fa8d65c4fd9dd348109a965e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0afb013feb9e51cdedb02d17ac96180d6d5c55f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf16dc087a88825d62319469c796b441d67a08933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1d831aa5b0b3032cf2c58cdf7bd58f598202320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf39a8a43cffa0513cc057d290fa3e7a57dcd8d46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf40c24ba346aa459ed28e196d4a46cf17174bd6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf48cbc0e2bd8d9ed8d76a54a3672bbb6e07cf6d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4d69939895e5f1d1ddca96e5f93a878c80368c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4d7a9f07fb5a910aadfdba555269b4a486e2dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5f5bc097ca8f4be96d8cde86c96bd2d81fd2585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6dddf2c0c61571d2bd6f76f696287638ff012b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8e5e5562c2c12d8690786f5c9fa65f20f6bd881` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379443 | `0xf916bfe431b7a7aae083273f5b862e00a15d60f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf93353c1fe24225b6c82b284b2b6dbb924690515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9725312bd91ccfa3ad797e78a8a10b6d692fcd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9fbfc857d51ff51fedd4ea88efc29039871dccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfad0d420fff503a40e9cdcb90ff0328e46f06c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd2df65294ef9a2611091ff119cc703c13f1d39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfeb2537afd8519d16d0ccea741a70f97f3d4288b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 243
- Live contracts: 0
- Unknown liveness contracts: 243
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=243

Showing first 200 of 243 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x01b370d9b1ed1591c64c9a4b0faff193af5fa928` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x08aa1648fc9d862a28aad015eeaa1ee2c2483838` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x12a132e2341ae7d24cf77ada0b5503e11a15a447` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x13e7746ece329d4290b56692b968f7f0913c8942` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1e03aa1e483fce52643a801d840a22f5eee709ba` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x435e77c59db2b9036ac6be684b77d1667699437c` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x43c2668d46c82911d977ffcab8c1a13cb03a2add` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x621f7268e0c981af0c1062cbd56a0e05b35bbed0` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x676d824b9c9e79c3da2b76600db942fb8f901db5` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6e031b6e9f667ed6953e627276fbbefa4c28529a` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8e91b13eb6234083894b66a3cb6a61acece74397` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9625ee87a85cf1d5ee31f0883df27a5c8770312e` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdfcc5a8acda6d68c24487f99fef21f9ac36988d8` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf93353c1fe24225b6c82b284b2b6dbb924690515` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x06ea6ad1037d251a23c7534171331313421b8358` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x09824fe72bff474d16d9c2774432e381bbd60662` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0ae4dd666748bf0f6db5c149eab1d8ad27820a6a` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1135265fe014d3fa32b3507e325642b92affeaeb` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x13be515e44eefaf3ebefad684f1fbb574ac0a494` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17a8d893d2ba9e31dfff9b46ae11fa3dded5115c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17e7f68ce50a77e55c7834ddf31aef86403b8010` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x18ed2d5bf7c5943bfd20a2995b9879e30c9e8dda` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x18fd37a4fb9e1f06d9383958afd236771f15a8cb` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x19431dc37098877486532250fb3158140717c00c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1c6accd9d66f3b993928e7439c9a2d67b94a445f` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1d720642e63cb0f50be637e16e0f78b2d1b93f16` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1d901dd7a5efe421c3c437b147040e5af22e6a43` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x211a5579d21e1938b2b5ff87a3f7896933543e97` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x230b6fec9107a0b0476477a66c4d621f9a0d1746` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x23d1171380e3cbaa161f6eb31e3a3c6b548a467a` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x26f26dc12bb3eb302317675129a7d16f11a8367c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2a6dd4433ffa96dc1755814fc0d9cc83a5f68dec` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2b0e04dc90e3fa58165cb41e2834b44a56e766af` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2e0c12e2478a0dec2ef6c2ccc2ed8d4fed3597d1` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2fb33d8e4a8e989e7814d914973096736ed718b5` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x302275067251f5fcdb9359bda735fd8f7a4a54c0` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x31faaab44e74eb408d1fc69a14806b4b9ca09da2` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x408e208e8f7dcde6804f4e31f90e3272ee04502d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x413aa082995f0d7672c4d564624ddebd221c8d0d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x44624a5eda4acdf8e9c262b0bf600c031686f5ae` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x45fcb351851071c7107ca158f2bd3cd4510dec2d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4811500e0d376fa8d2ea3ccb7c61e0afb4f5a7f1` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4998b99dd376a0cfff0e4b7f1ee0056f79910e64` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4ab216d2bbecaa7517a1615505c8f7078ef1c123` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4c240987d6fe4fa8c7a0004986e3db563150ca55` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4ca8c773aff136fe9448946b6ebc25ad7673451d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x526a6e634ad36bb0007c4422586c135f1f9b525a` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x52d5181dd67ac17176127e670e5baee4d47c6c9e` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5ca988f213efbcb86ed7e2aacb0c15c91e648f8d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x606bb75b1f910f82086557aa14ed2dc0beb85d6b` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x609aa0dbb59606a9f51133c4f5f2a83d88267d73` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x60d9a46f24d5a35b95a78dd3e793e55d94ee0660` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x660ea1675f7323dc3ba0c8ddfb593225eb01e3c1` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6b9a2769b259f36fbd503fec0bbf4408459a3876` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6c21303f5986180b1394d2c89f3e883890e2867b` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7259f157f9d7e2a401e4fabc9f44ad1519d16f25` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7785047a920b43d23d181c6e68fa9405c874997c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7a299ad29499736994aa3a9afa3f476445faeb2c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7deda2425ec2d4ea0df689a78de2fbf002075576` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7efcb76d0e2e776a298aaa603d433336e5f8b6ab` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7f7c304843e6b933c01a0462cad0acc2fbb865e7` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x800da62be6626127f71b34e795286c34c04d6712` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x841a23c7c4e20515eaf03debd8ab60f12b5cc13e` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x850f050c65b34966895ada26a4d06923901916db` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x89af7c4c2198c426cfe6e86de0680a0850503e06` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8b73ef238adab31ebc7c05423d243c345241a22f` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8f6406781cc955398c45a48dcefeebdb2c8e2caa` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x90b02d9f861017844f30dfbdf725b6aa84e63822` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x90d68b056c411015eae3ec0b98ad94e2c91419f1` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x917e701b4f4ff29dd5e0e1585e88d59147069d29` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x958985cf2c54f99ba4a599221a8090c1f9cee9a5` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x99a2a31300816c1fa3f40818ac9280fe7271f878` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ad8b2564445f3cde1897aa0ad406cfab7f5d2c1` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c84a387930853d963892d299153b0d5840dc1f5` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9cad81628ab7d8e239f1a5b497313341578c5f71` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ea06b8753bca071a5c57002ab84598577fb08c1` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa8531c989b2f8531e123f1daf2edae83bf4aa190` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb20107bfb36d3b5aca534acafbd8857b10b402a8` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb23214f241bdeb275f7dcbfbb1ea79349101d4b0` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb28c89b6997f025bd35205b99a7968c264cce353` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb7cebd39c39f263293edb7896d5d9a1720fead4b` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbd4dc8c28c1d5d579fabfc9cb21b5734d568b6dc` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbe95d0ee267f3e90606537b1c8a6fb36d2dc1ce6` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbed55eb1a34ba94c1152369cc71571815eba509e` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc555b2f1d559fbb854569b33640990d178f94747` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc65c22564a8c90a0e51c67b55a5e4fbb4261a6a3` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xca4f67ccda20221b627edcf2aa1952433bbb5937` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd106ec93d2c1adaa65c4b17ffc7bb166ce30ddae` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdd1299069f6aed87371862386835cba6a137e83c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdeacdfbd55a3628ce2cf402860f41cd7ac0556bd` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdf94f0474f205d086dbc2e66d69a856fcf520622` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe10a2c03501f073952c5e7d3476b16efe8f2a03c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe60081476e505f14c231a7efa47e607ff50daeb5` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe8709022b9c9d7347856c75910fe07e10c904446` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xee9e5546a11cb5b4a86e92da05f2ef75c26e4754` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xef52d1f5a41890ba460d145e39745df612069df5` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf0afb013feb9e51cdedb02d17ac96180d6d5c55f` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf39a8a43cffa0513cc057d290fa3e7a57dcd8d46` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf40c24ba346aa459ed28e196d4a46cf17174bd6c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf9fbfc857d51ff51fedd4ea88efc29039871dccf` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x026d77f3d0f5dd4c095fecbc802cf99290a883fc` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x079840cc8959ef60d414e5afc6ed0493b8eaf514` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x08b1395a2ee51073d6b9ebf9e97fbeb09dcacaf1` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x09fd6132aaf7cadb02bebc375ad82eaeb2631aae` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x09fda6447fa7758ea9245ac78ca3c9ba68cbfd3d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0f728dd0217e26120a304b3fa554c3ba2b2af535` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x12b1389fbf261e781bdc3094d28636abfb03c5b3` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1499ebe4b56a37e0068a2b3265bb54c4fe8d896f` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x165bd50aa051637bd659e1eada63c954b48cde17` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x18cc27b3a95a6fdef9eaa391eff28f48f42ffe3f` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1aa699687b6add34ce80885b732e75885d89af43` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1bed37fedfe8b2721a69a559313d2b58d16ecd77` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1d7b00c67e933ffca847a24381960ff8e91de197` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1dcf7d03574fbc7c205f41f2e116ee094a652e93` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1dfa102bc097446bb2b836082367991de24a1c64` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1ed80b2542758ed63dd9ea539ee87aefd4274d01` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1ef281cd6bd48affd9c44cb590858fcff92de821` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x234e937f1a2926737b0084fb7498772579497735` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x23a87a6b30d5e75f069fea7964c870a7630ebdf2` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x26368445c0e5ae17838d626347a000fbacc84553` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x26a1be24dde0571da03022493be9fd013ca62dc5` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ab445728a7db4fb767457383ca23396a4b5611a` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2d592c021e9216f68035c5f86128df0a3e9bd6c8` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x31127a9c0308d8e3f6db5158a14ad674f22946d7` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x31c8dc074d8a31cdd33925405719931457ed61f4` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x33c1514bf90e202d242c299b37c60f908aa206d4` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3525f734fce1a26a6cefffca43538290dc239771` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x35751b4c43461902dc98a03e1bd711fd2b816dab` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3930ad9a21da38e63d52b43b0c530cb0aaccb389` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3de02cf69192f4805ede47d7fa5efa614c5a6593` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3e9a459089758e760bea267abb9485ee5b47a909` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x42b5929fdc3503e4cb31a72f247f081843afea3a` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x466aa18ce75f1a3039d4c06a3c31786d0d0386c8` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x474b3de6d993bad662e68ef2aea050bb67847a77` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x48b9379913888fb7f4a58a2b584a7ca1ec4fe5bc` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x49c9e7c42cb6fb4f133e4648871d12936b05f3bd` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4a5b394be885de0dca45aaf7fa7152457f82ebc9` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4ca08847418de7860a6da0de2e5536f1cd78458a` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4f681ebb93dc2a820685ea74d881e2a4d044681e` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x51882b52bcc3ef8008f9f7772b0229ea2551fddc` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x51dedbd2f190e0696afbee5e60bfde96d86464ec` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x54e0923782b701044444de5d8c3a45ac890b0881` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x55b64943f7518ab3185a645c6c6fc175f6443ec6` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x56411606380fd9ef28db1aac3897bd4a24f26606` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x583f8ba007580c83efb4b02c66694096cd5c56d1` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5aa806015fec88669bf7dad746bb4adc1e79bced` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5c4d02b13378d0db345c62b3cc9811d6f9c6baf7` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5f49069667541fc85f48514aca6c10c7e33cd9a2` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5f89646f93e360217ad7cad73a44298abc4aca9a` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5fafdbc0c1b87c39c101c53666bf7cbd7eae3e35` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5fcb496a31b7ae91e7c9078ec662bd7a55cd3079` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x61006c8566fac9a3315f646da4624c00bbcf15e4` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6284bd731aea4ee3c576d095960b8689bd7c9eca` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6448c74ff1c94df19a24545f0b9ea67f847f3ebf` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x64a0ddf7469d52828a026b98a76f194637daad2c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x69a6de0b9bec9edb33805167327a6abef0c69fd2` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6c7508874c4db742fbf2f3b293621d94062ecfe3` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6db2bf00c397024516683ff3613b771f30543e4d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x731e8e1fcde329475643d6eb8653e224be10f213` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x74a5c491e9ed0263ba218aba13694d4d0e5fccc7` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x760c1b5fe95b2c66d67662ec544975bdbb129645` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x76600101e42dd9355d29741288407923268c06ed` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x782bc330ea15c57fc0e3d4959c2f8a38278703e8` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x78b101ec9736c4ab06b0833f01fd4c011f7ca612` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x79607f00e61e6d7c0e6330bd7e9c4ac320d50fc9` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x796822909dcefdc433da071c7f75001452310a67` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7cf7e521b9259676c069599cd4de3d20104e06de` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7d42f098e79de006cfab475cfd50bdf2310d7ae8` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7ecfbaa8742fdf5756dac92fbc8b90a19b8815bf` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7ed9c3a779be8b742abfc17a2f15353ecbce3e00` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7ef5b5a0aaf44fca9e6a678e2b0464a7e074327f` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7f6dbaed9905c3b01030d3ad5aa93846ecbbfa44` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x81f6f682ca9bb29d759ce12d7067e1c6ef533096` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x841a6e8230ca0f563a841eb6bf8dfe129672bdc5` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8457c9fb027f3125e82caceb596d07f90c4ebe3c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x862d1993aee44fe8fd6e13074be7712edfac4b9c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86c239f206a0878fb07243abb4afa932e6ace911` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86cfdebdff5387137f4dc425835c281bbf9ff452` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86e93e21ad108cae7ade482c34c230bfd94d4a8b` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8838b7f8bafc208c4b2255bc0321527166654c95` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x893af2923a6ad9a784f1a72dc6af7f4a34266814` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8da371823a4937e5f371b7b53876ee34d5d5e520` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8f2cdfd7c96a7026c617e66ebca389c5d4e3b168` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x93b1a8c9f084fbe7972baea73535bed3d32748c6` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x950d054ba5fd67c7902d0e4125095ac6e7b06a72` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x964177232be7c9e530054b3274b8b9d332b24df5` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x99761fac22fce23498f8004ac4025f822fedce95` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ae2cae3db7b10f9962026633120e50bb26d6077` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9bb78f4d5fd55c576ffe2aa9b71f1e441163adb9` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d924ffe6d66ca0727657734a615cc9730925c49` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9f5f2da42be9833654c1d702e2e8cfffc7a0a6a5` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9fd20d42cf52b1a0def8e95ad8d2e92b58eca51b` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa0d6e6b1b950acc748b45f3419fead4b52f7389a` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa2bc63c7a53f8588a5224db873998217082faf7c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa40a8987d58d693b99bf8a2cf699f95fd886db50` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa6d1ce7210353e431ce79f41bcfa9ea3ae507b98` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa7fc2f965ffed9b12137a7d59066eee15755fe35` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xadd9602e9810ed220a5316e2fa45d5ab12591c88` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaf58472d08d7dbccc73d5f58d26b2bd9ef43a5c2` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaf86a539bd69dcf9d1bf7560a8a7930e73099d18` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Manual audit seed](https://docs.arbitrum.io/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_05_06_trail_of_bits_arbos_40_nitro_summary_report-769a942c08fe0f917eef523cba81a459.pdf) | Trail of Bits | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_04_18_trail_of_bits_reward_distributor_fixes_security_review-95acad5683bf61562ac3cedea313e749.pdf) | Trail of Bits | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [view](https://docs.arbitrum.io/assets/files/2025_03_11_trail_of_bits_sequencer_liveness_security_review-298b2cd6810968ed840dff94df1e0c0e.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_28_trail_of_bits_security_council_rotation_security_review-6feca69ad7afe171104ecabaefe8971a.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [view](https://docs.arbitrum.io/assets/files/2025_02_28_trail_of_bits_disable_gateway_action_security_review-11ed2e1370d062c2ade5e5d6b085a8f3.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_14_trail_of_bits_custom_fee_token_exchange_rate_security_review-640d7ef454d21c739e50c594fac727d9.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_14_trail_of_bits_geth_14_4_security_review-f24eef2e97e06e030fd5c1cc3a54ce5d.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_02_trail_of_bits_custom_fee_erc20_bridge_security_review-ccd6d481c1f7d41436a3ceb474bcd0f3.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_12_26_trail_of_bits_bold_fixes_security_review-95c9ee3b07ccb11e59e57744ddc017d2.pdf) | Trail of Bits | Audit | 2024-12 | aging | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_10_30_trail_of_bits_security_audit_nitro_contracts_with_bold-90984d87c800f448601b84972e544e1d.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_10_23_trail_of_bits_security_audit_arbos32_emergency_fixes-d3e018abb506e80f9625508dbaab2358.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_10_07_trail_of_bits_security_audit_bold_optimized_history_commitments-025bd74c8af33bb436e606b55a3ef550.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_09_25_trail_of_bits_security_audit_timeboost_auction_contracts-2a8dbdf7b139db4224d30d6d1015aa85.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_09_05_open_zeppelin_security_audit_stylus_rust_sdk-a78b94ded01f4e5f96dfd55a47158680.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_29_trail_of_bits_security_audit_orbit_and_governance_upgrade_actions_v2_1-8d6150a317148e1bfcf428b4e2c8ef2d.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_29_trail_of_bits_security_audit_usdc_custom_gateway_and_arbos_upgrade_at_timestamp_action-f490e6aa741551bfbf4b2349fcc82579.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_05_trail_of_bits_security_audit_bold_and_dac_rewards_updates-d0d6028126d4539be649eb05db5380c4.pdf) | Code4rena | Contest | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_01_trail_of_bits_security_audit_custom_fee_token-7ce514634632f4735a710c81b55f2d27.pdf) | Trail of Bits | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_07_26_trail_of_bits_security_audit_arbos_31-4538d946ebcd4187b211a868b6e8ea08.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_07_26_trail_of_bits_security_audit_arbos30_nitro_upgrade-d3b44d44e482a44a1710c80014a6630a.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [view](https://docs.arbitrum.io/assets/files/2024_06_17_code4rena_security_audit_arbos30_nitro_upgrade-3663f40614e5dadebbf4ef0e6a8e5c1e.pdf) | Code4rena | Contest | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | medium |
| [view](https://docs.arbitrum.io/assets/files/2024_06_10_trail_of_bits_security_audit_stylus-f2f68cbe59f5ac1c085292f6811c8ac9.pdf) | Trail of Bits | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_05_02_trail_of_bits_security_audit_bold_delay_buffer-7329f073827e7e12aede9a9203db1e01.pdf) | Trail of Bits | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_20_chainsecurity_security_audit_nova_fee_router_update_arbos_31-12a4328ecb6f0966acacb54da8f49698.pdf) | ChainSecurity | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_03_18_trail_of_bits_security_audit_l1_l3_teleporter-76736686c28613a9473c149615f94765.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2023_08_02_trail_of_bits_security_audit_challenge_protocol_v2-b63429218c10faec79c4834f8582f9d3.pdf) | Code4rena | Contest | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [view](https://docs.arbitrum.io/assets/files/2023_06_23_trail_of_bits_security_audit_governance_report_governance_token_bridge-ca76b55fb6c017c17ef78d0721f7e714.pdf) | Trail of Bits | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [view](https://docs.arbitrum.io/assets/files/2022_10_22_trail_of_bits_security_audit_nitro_2_of_2-11d8ca6bdf6e154c9b62e401b3220b1e.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_06_24_consensys_diligence_security_audit_nitro_contracts-b89f0db3702d3eec15a9211233ace9a6.pdf) | Consensys Diligence | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 57 | high |
| [view](https://docs.arbitrum.io/assets/files/2022_03_14_trail_of_bits_security_audit_nitro_1_of_2-d777111730bd602222978f7d98713d40.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [view](https://docs.arbitrum.io/assets/files/2021_11_05_consensys_diligence_security_audit_core_contracts_token_bridge-664fbe3e5a14a41acaee4af64ae06100.pdf) | Consensys Diligence | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 51 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [23981] Manual audit seed — no match: The provided text is a table of audit reports with auditor, date, and code description, but no specific contract names or file paths are listed. The descriptions are too generic (e.g., 'ArbOS 60 & 61', 'Reward Distributor Fixes') to extract contract names.
- [23982] view — no match: The audit report does not contain a scope section listing specific smart contracts. The targets are repositories (Nitro, go-ethereum) and PRs, not individual contracts. No contract names are explicitly mentioned as in scope.
- [23983] view — no match: The report explicitly states the scope is changes to the reward distributor contract and mentions two contracts in the code quality appendix: RewardDistributor and ChildToParentRewardRouter.
- [23984] view — no match: The audit report focuses on the Arbitrum Sequencer, which is not a smart contract but a Go-based component. No smart contracts, source files, or modules are explicitly listed in scope. The only file references are tx_options.go and tx_pre_checker.go, but these are Go source files, not smart contracts. The report does not contain a scope section with contract names.
- [23985] view — no match: Only one contract explicitly in scope: SecurityCouncilManager.sol. The report mentions PR #322 and commits, but no other contract names.
- [23986] view — no match: The report does not list specific contract names in scope; it only mentions a governance action and a PR with a commit hash.
- [23987] view — no match: The report does not list specific contract names or file paths in scope; it only mentions 'Nitro contracts' and 'infrastructure smart contract–related changes' without naming individual contracts.
- [23988] view — no match: The audit report does not contain any smart contracts; it reviews changes to go-ethereum (Geth) and ArbOS, which are not smart contracts.
- [23989] view — no match: Scope includes ERC20Bridge upgrade, Orbit action (NitroContracts2Point1Point3UpgradeAction), and EIP-7702 fixes. Contracts mentioned in findings and code snippets are included.
- [23990] view — no match: Extracted contracts from findings targets and project targets section. Audit date from cover page.
- [23991] view — no match: The report scope is the Nitro Contracts repository with specific changes to BoLD contracts. Only Inbox is explicitly targeted in findings; ERC20Inbox and AbsInbox are referenced as containing similar functions. No other contracts are named in scope.
- [23992] view — no match: Extracted 5 governance/emergency action contracts from the Executive Summary. No other contracts were explicitly listed in scope; the report focuses on fixes and governance actions.
- [23993] view — no match: The report covers the BoLD protocol's optimized history commitment feature. The main file in scope is history_commitment.go, with structs HistoryCommitter, Commitment, and History. The audit date is October 7, 2024.
- [23994] view — no match: Extracted contracts from scope table and findings. Audit date from cover page.
- [23995] view — no match: The audit report lists the repository and specific files in scope. The extracted names are the crate/module names derived from the file paths. The audit date is explicitly stated on the cover page.
- [23996] view — no match: Extracted contract names from findings targets and project targets section. Audit date from cover page.
- [23997] view — no match: Extracted contracts from findings targets and code snippets. Audit date from cover page.
- [23998] view — no match: Extracted contract names from Project Targets, Project Coverage, Detailed Findings, and Mutation Testing sections. Audit date from cover page and delivery date.
- [23999] view — no match: Extracted contracts from Project Targets and Detailed Findings sections. Audit date from cover page.
- [24000] view — no match: Audit scope defined by PRs; only two Solidity contracts explicitly named as targets in findings.
- [24001] view — no match: The report lists many Go files in scope but only one Solidity contract (CacheManager) is explicitly named as a target. The Go files are not smart contracts but part of the node software.
- [24002] view — no match: The report does not have a dedicated scope section; contract names were extracted from findings and file paths mentioned throughout the report. The audit date is taken from the report title 'Arbitrum BoLD Findings & Analysis Report 2024-06-17'.
- [24003] view — no match: Extracted contract names from the Project Targets section and from file paths mentioned in findings. The audit date is from the cover page.
- [24004] view — no match: Extracted contract names from scope table and findings targets. Audit date from cover page.
- [24005] view — no match: Three contracts explicitly listed in scope under src/FeeRouter/ directory. Audit date from cover page: March 20, 2024.
- [24006] view — no match: Extracted from Project Targets section and detailed findings. The audit report covers L1-L3 Teleporter contracts with main contracts L1Teleporter, L2Forwarder, and interface IL1Teleporter.
- [24007] view — no match: Extracted contract names from Project Targets section and detailed findings. Audit date from cover page and delivery date.
- [24008] view — no match: Extracted contract names from Project Coverage section and detailed findings. Audit date from cover page and final report delivery date.
- [24009] view — no match: Extracted contract names from Project Targets and Project Coverage sections. Audit date from cover page and final report delivery date.
- [24010] view — no match: Extracted from ConsenSys Diligence audit report for Arbitrum Nitro Smart Contracts. Scope includes all files in contracts/src/ of the Nitro repository. Audit date is May 2022, represented as last day of month.
- [24011] view — no match: Extracted contract names from Project Targets and Project Coverage sections. Audit date from cover page and report readout meeting date.
- [24012] view — no match: Extracted from Arbitrum audit report by ConsenSys Diligence. Scope includes arb-bridge-eth and arb-bridge-peripherals packages. Date is November 2021, approximated to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| view | RewardDistributor | unmatched — not counted | — | listed in scope and code quality recommendations | no |
| view | ChildToParentRewardRouter | unmatched — not counted | — | listed in code quality recommendations | no |
| view | SecurityCouncilManager | unmatched — not counted | — | Target in finding TOB-SC-ROT-1 | no |
| view | ERC20Bridge | unmatched — not counted | — | mentioned as patched version in scope description | no |
| view | NitroContracts2Point1Point3UpgradeAction | unmatched — not counted | — | target of finding TOB-ARBFIX-1 | no |
| view | Inbox | unmatched — not counted | — | referenced in finding code snippet | no |
| view | ProxyAdmin | unmatched — not counted | — | used in upgrade function | no |
| view | TransparentUpgradeableProxy | unmatched — not counted | — | used in upgrade function | no |
| view | IInbox | unmatched — not counted | — | interface used in perform function | no |
| view | IERC20Bridge | unmatched — not counted | — | interface used in perform function | no |
| view | IERC20Bridge_v2 | unmatched — not counted | — | interface used in perform function | no |
| view | ExpressLaneAuction | unmatched — not counted | — | Target in findings 1 and 2 | no |
| view | SetValidatorsAction | unmatched — not counted | — | Target in finding 3, described as a smart contract with perform function | no |
| view | Inbox | unmatched — not counted | — | Target in findings 1 and 2 | no |
| view | ERC20Inbox | unmatched — not counted | — | Mentioned in finding 1 as containing depositERC20 function | no |
| view | AbsInbox | unmatched — not counted | — | Mentioned in finding 1 as containing _createRetryableTicket function | no |
| view | L1ModuleRootArbOneAction | unmatched — not counted | — | mentioned in Executive Summary as governance action to upgrade ArbOS | no |
| view | L1ModuleRootNovaAction | unmatched — not counted | — | mentioned in Executive Summary as governance action to upgrade ArbOS | no |
| view | L2ArbOS32Action | unmatched — not counted | — | mentioned in Executive Summary as governance action to upgrade ArbOS | no |
| view | SetInkPriceOneAction | unmatched — not counted | — | mentioned in Executive Summary as emergency action to disable Stylus | no |
| view | SetWasmMaxStackDepthZeroAction | unmatched — not counted | — | mentioned in Executive Summary as emergency action to disable Stylus | no |
| view | HistoryCommitter | unmatched — not counted | — | Target: history_commitment.go in finding 1 | no |
| view | Commitment | unmatched — not counted | — | Mentioned in code quality recommendations as optimized implementation | no |
| view | History | unmatched — not counted | — | Mentioned in code quality recommendations as unoptimized implementation | no |
| view | ExpressLaneAuction | unmatched — not counted | — | listed in scope and findings | no |
| view | Balance | unmatched — not counted | — | listed in findings | no |
| view | IExpressLaneAuction | unmatched — not counted | — | referenced in findings | no |
| view | Burner | unmatched — not counted | — | mentioned in fix status of finding 3 | no |
| view | stylus-proc | unmatched — not counted | — | listed in scope | no |
| view | stylus-sdk | unmatched — not counted | — | listed in scope | no |
| view | mini-alloc | unmatched — not counted | — | listed in scope | no |
| view | erc20 | unmatched — not counted | — | listed in scope | no |
| view | erc721 | unmatched — not counted | — | listed in scope | no |
| view | single_call | unmatched — not counted | — | listed in scope | no |
| view | EnableFastConfirmAction | unmatched — not counted | — | Target in finding TOB-ORBUPG-001 and TOB-ORBUPG-002 | no |
| view | UpgradeAndEnableFastConfirmAction | unmatched — not counted | — | Mentioned in finding TOB-ORBUPG-001 description | no |
| view | L1ArbitrumGateway | unmatched — not counted | — | mentioned in finding 2 target | no |
| view | L2USDCGateway | unmatched — not counted | — | mentioned in finding 2 target | no |
| view | L2ArbitrumGateway | unmatched — not counted | — | mentioned in finding 2 code snippets | no |
| view | ArbChildToParentRewardRouter | unmatched — not counted | — | listed in Detailed Findings section 1 | no |
| view | OpChildToParentRewardRouter | unmatched — not counted | — | listed in Detailed Findings section 1 | no |
| view | ParentToChildRewardRouter | unmatched — not counted | — | listed in Detailed Findings section 1 | no |
| view | EdgeChallengeManager | unmatched — not counted | — | listed in Project Coverage and Mutation Testing sections | no |
| view | EdgeChallengeManagerLib | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | EdgeStakingPool | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | AssertionStakingPool | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | RollupCore | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | RollupUserLogic | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | RollupAdminLogic | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | ChallengeEdgeLib | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | Rollup | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | ERC20Bridge | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | L1OrbitERC20Gateway | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | L1AtomicTokenBridgeCreator | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | RollupUserLogic | unmatched — not counted | — | Target in finding TOB-STY-2 | no |
| view | RollupAdminLogic | unmatched — not counted | — | Target in finding TOB-STY-2 | no |
| view | CacheManager | unmatched — not counted | — | mentioned in finding TOB-ARBOS30-5 target | no |
| view | DelayBuffer | unmatched — not counted | — | mentioned in M-01 finding | no |
| view | SequencerInbox | unmatched — not counted | — | mentioned in M-01 finding | no |
| view | Bridge | unmatched — not counted | — | mentioned in M-01 finding | no |
| view | EdgeChallengeManagerLib | unmatched — not counted | — | mentioned in H-02 and L-01 findings | no |
| view | RollupAdminLogic | unmatched — not counted | — | mentioned in L-03 and L-06 findings | no |
| view | RollupUserLogic | unmatched — not counted | — | mentioned in H-01 and L-08 findings | no |
| view | RollupCore | unmatched — not counted | — | mentioned in L-09 finding | no |
| view | ArrayUtilsLib | unmatched — not counted | — | mentioned in L-07 finding | no |
| view | BOLDUpgradeAction | unmatched — not counted | — | mentioned in M-02 finding | no |
| view | EdgeChallengeManager | unmatched — not counted | — | mentioned in L-04 finding | no |
| view | Machine | unmatched — not counted | — | listed in scope as part of stylus-contracts repository | no |
| view | OneStepProver0 | unmatched — not counted | — | listed in scope as part of stylus-contracts repository | no |
| view | OneStepProofEntry | unmatched — not counted | — | listed in scope as part of stylus-contracts repository | no |
| view | Value | unmatched — not counted | — | listed in scope as part of stylus-contracts repository | no |
| view | ArbWasm | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | ArbOwner | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | Programs | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | DataPricer | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | EvmApiRequestor | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | StorageCache | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | Node | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | LiveConfig | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | ValidationNode | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | AssertionStakingPool | unmatched — not counted | — | listed in scope and findings | no |
| view | EdgeChallengeManager | unmatched — not counted | — | listed in scope and findings | no |
| view | BOLDUpgradeAction | unmatched — not counted | — | listed in findings | no |
| view | Error | unmatched — not counted | — | listed in findings | no |
| view | DelayBuffer | unmatched — not counted | — | listed in findings (test file, but DelayBuffer library is referenced) | no |
| view | ChildToParentRewardRouter | unmatched — not counted | — | listed in scope table | no |
| view | DistributionInterval | unmatched — not counted | — | listed in scope table | no |
| view | ParentToChildRewardRouter | unmatched — not counted | — | listed in scope table | no |
| view | L1Teleporter | unmatched — not counted | — | listed in scope and findings | no |
| view | L2Forwarder | unmatched — not counted | — | listed in findings | no |
| view | IL1Teleporter | unmatched — not counted | — | listed in findings | no |
| view | EdgeChallengeManagerLib | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | ChallengeEdgeLib | unmatched — not counted | — | mentioned in Project Coverage | no |
| view | MerkleTreeLib | unmatched — not counted | — | mentioned in findings | no |
| view | EdgeChallengeManager | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | RollupUserLogic | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | RollupCore | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | prefix_proofs.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | inclusion_proofs.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | commitments.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | edge_tracker.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | edge_tracker_transition_table.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | tree.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | ancestors.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | path_timer.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | watcher.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | assertion_chain.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | L1ArbitrumToken | unmatched — not counted | — | listed in Project Coverage section | no |
| view | TokenDistributor | unmatched — not counted | — | listed in Project Coverage section | no |
| view | FixedDelegateErc20Wallet | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L1ArbitrumTimelock | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L2ArbitrumGovernor | unmatched — not counted | — | listed in Project Coverage section | no |
| view | ArbitrumVestingWallet | unmatched — not counted | — | listed in Project Coverage section | no |
| view | UpgradeExecutor | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L1ArbitrumMessenger | unmatched — not counted | — | listed in Project Coverage section | no |
| view | Util | unmatched — not counted | — | listed in Project Coverage section | no |
| view | ArbitrumTimelock | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L2GovernanceFactory | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L2ArbitrumGateway | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L1ReverseCustomGateway | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L2CustomGateway | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L1ERC20Gateway | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L1ArbitrumGateway | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L1CustomGateway | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L1GatewayRouter | unmatched — not counted | — | listed in Project Coverage section | no |
| view | StandardArbERC20 | unmatched — not counted | — | mentioned in finding 15 | no |
| view | BytesParser | unmatched — not counted | — | mentioned in finding 15 | no |
| view | L1ReverseToken | unmatched — not counted | — | mentioned in finding 13 | no |
| view | IArbToken | unmatched — not counted | — | mentioned in finding 13 | no |
| view | L1MintableToken | unmatched — not counted | — | mentioned in finding 13 | no |
| view | Inbox | unmatched — not counted | — | listed in Project Coverage section | no |
| view | SequencerInbox | unmatched — not counted | — | listed in Project Coverage section and finding TOB-ArbOS-12 | no |
| view | Bridge | unmatched — not counted | — | listed in Project Coverage section | no |
| view | HashProofHelper | unmatched — not counted | — | listed in Project Coverage section and finding TOB-ArbOS-9 | no |
| view | NitroMigrator | unmatched — not counted | — | listed in Project Coverage section and finding TOB-ArbOS-9 | no |
| view | ArbOS | unmatched — not counted | — | listed in Project Targets and Project Coverage sections | no |
| view | RollupAdmin | unmatched — not counted | — | mentioned in finding TOB-ArbOS-14 | no |
| view | Sequencer | unmatched — not counted | — | mentioned in Appendix F code quality recommendations | no |
| view | Bridge | unmatched — not counted | — | listed in scope | no |
| view | Inbox | unmatched — not counted | — | listed in scope | no |
| view | Outbox | unmatched — not counted | — | listed in scope | no |
| view | SequencerInbox | unmatched — not counted | — | listed in scope | no |
| view | ChallengeManager | unmatched — not counted | — | listed in scope | no |
| view | OneStepProofEntry | unmatched — not counted | — | listed in scope | no |
| view | RollupAdminLogic | unmatched — not counted | — | listed in scope | no |
| view | RollupUserLogic | unmatched — not counted | — | listed in scope | no |
| view | ERC20RollupUserLogic | unmatched — not counted | — | listed in scope | no |
| view | AbsRollupUserLogic | unmatched — not counted | — | listed in scope | no |
| view | RollupCore | unmatched — not counted | — | listed in scope | no |
| view | RollupEventBridge | unmatched — not counted | — | listed in scope | no |
| view | BridgeCreator | unmatched — not counted | — | listed in scope | no |
| view | ValidatorUtils | unmatched — not counted | — | listed in scope | no |
| view | ValidatorWalletCreator | unmatched — not counted | — | listed in scope | no |
| view | ValidatorWallet | unmatched — not counted | — | listed in scope | no |
| view | RollupCreator | unmatched — not counted | — | listed in scope | no |
| view | ArbitrumProxy | unmatched — not counted | — | listed in scope | no |
| view | AdminFallbackProxy | unmatched — not counted | — | listed in scope | no |
| view | SecondaryLogicUUPSUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | DoubleLogicERC1967Upgrade | unmatched — not counted | — | listed in scope | no |
| view | GasRefundEnabled | unmatched — not counted | — | listed in scope | no |
| view | MerkleLib | unmatched — not counted | — | listed in scope | no |
| view | MerkleProofLib | unmatched — not counted | — | listed in scope | no |
| view | Deserialize | unmatched — not counted | — | listed in scope | no |
| view | Machine | unmatched — not counted | — | listed in scope | no |
| view | ValueLib | unmatched — not counted | — | listed in scope | no |
| view | GlobalStateLib | unmatched — not counted | — | listed in scope | no |
| view | MachineLib | unmatched — not counted | — | listed in scope | no |
| view | ChallengeLib | unmatched — not counted | — | listed in scope | no |
| view | NodeLib | unmatched — not counted | — | listed in scope | no |
| view | IGasRefunder | unmatched — not counted | — | listed in scope | no |
| view | IInbox | unmatched — not counted | — | listed in scope | no |
| view | IOutbox | unmatched — not counted | — | listed in scope | no |
| view | IBridge | unmatched — not counted | — | listed in scope | no |
| view | ISequencerInbox | unmatched — not counted | — | listed in scope | no |
| view | IChallengeManager | unmatched — not counted | — | listed in scope | no |
| view | IRollupAdmin | unmatched — not counted | — | listed in scope | no |
| view | IRollupUser | unmatched — not counted | — | listed in scope | no |
| view | IRollupUserERC20 | unmatched — not counted | — | listed in scope | no |
| view | IRollupUserAbs | unmatched — not counted | — | listed in scope | no |
| view | IRollupCore | unmatched — not counted | — | listed in scope | no |
| view | IChallengeResultReceiver | unmatched — not counted | — | listed in scope | no |
| view | IMessageProvider | unmatched — not counted | — | listed in scope | no |
| view | IERC1822Proxiable | unmatched — not counted | — | listed in scope | no |
| view | UUPSUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | UUPSNotUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | OwnableUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | PausableUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | DelegateCallAware | unmatched — not counted | — | listed in scope | no |
| view | ContextUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | Initializable | unmatched — not counted | — | listed in scope | no |
| view | AddressUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | ERC1967Upgrade | unmatched — not counted | — | listed in scope | no |
| view | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| view | ProxyAdmin | unmatched — not counted | — | listed in scope | no |
| view | Proxy | unmatched — not counted | — | listed in scope | no |
| view | Inbox | unmatched — not counted | — | listed in Project Coverage: Ethereum Smart Contracts | no |
| view | SequencerInbox | unmatched — not counted | — | listed in Project Coverage: Ethereum Smart Contracts | no |
| view | Bridge | unmatched — not counted | — | listed in Project Coverage: Ethereum Smart Contracts | no |
| view | OneStepProver | unmatched — not counted | — | listed in Project Coverage: Ethereum Smart Contracts | no |
| view | OneStepProver0 | unmatched — not counted | — | mentioned in findings TOB-NITRO-WAVM-1, TOB-NITRO-WAVM-2, TOB-NITRO-WAVM-3, TOB-NITRO-WAVM-4, TOB-NITRO-WAVM-5 | no |
| view | Rollup | unmatched — not counted | — | listed in Project Coverage: Ethereum Smart Contracts | no |
| view | ChallengeManager | unmatched — not counted | — | listed in Project Coverage: Ethereum Smart Contracts | no |
| view | AdminFallbackProxy | unmatched — not counted | — | mentioned in finding TOB-NITRO-SC-1 | no |
| view | ArbRetryableTx | unmatched — not counted | — | mentioned in finding TOB-NITRO-ARBOS-2 | no |
| view | ArbSys | unmatched — not counted | — | mentioned in finding TOB-NITRO-ARBOS-6 | no |
| view | ArbAggregator | unmatched — not counted | — | mentioned in finding TOB-NITRO-ARBOS-21 | no |
| view | Bridge | unmatched — not counted | — | listed in scope | no |
| view | Inbox | unmatched — not counted | — | listed in scope | no |
| view | Outbox | unmatched — not counted | — | listed in scope | no |
| view | Rollup | unmatched — not counted | — | listed in scope | no |
| view | AdminFacet | unmatched — not counted | — | listed in scope | no |
| view | UserFacet | unmatched — not counted | — | listed in scope | no |
| view | RollupCreator | unmatched — not counted | — | listed in scope | no |
| view | BridgeCreator | unmatched — not counted | — | listed in scope | no |
| view | NodeFactory | unmatched — not counted | — | listed in scope | no |
| view | ChallengeFactory | unmatched — not counted | — | listed in scope | no |
| view | RollupAdminFacet | unmatched — not counted | — | listed in scope | no |
| view | RollupUserFacet | unmatched — not counted | — | listed in scope | no |
| view | Challenge | unmatched — not counted | — | listed in scope | no |
| view | L1Router | unmatched — not counted | — | listed in scope | no |
| view | L2Router | unmatched — not counted | — | listed in scope | no |
| view | L1GatewayRouter | unmatched — not counted | — | listed in scope | no |
| view | L2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| view | L1ArbitrumGateway | unmatched — not counted | — | listed in scope | no |
| view | L2ArbitrumGateway | unmatched — not counted | — | listed in scope | no |
| view | L1WETHGateway | unmatched — not counted | — | listed in scope | no |
| view | L2WETHGateway | unmatched — not counted | — | listed in scope | no |
| view | L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| view | L2ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| view | L1CustomGateway | unmatched — not counted | — | listed in scope | no |
| view | L2CustomGateway | unmatched — not counted | — | listed in scope | no |
| view | StandardArbERC20 | unmatched — not counted | — | listed in scope | no |
| view | L2GatewayToken | unmatched — not counted | — | listed in scope | no |
| view | aeWETH | unmatched — not counted | — | listed in scope | no |
| view | aeERC20 | unmatched — not counted | — | listed in scope | no |
| view | TransferAndCallToken | unmatched — not counted | — | listed in scope | no |
| view | BeaconProxyFactory | unmatched — not counted | — | listed in scope | no |
| view | ClonableBeaconProxy | unmatched — not counted | — | listed in scope | no |
| view | GasRefunder | unmatched — not counted | — | listed in scope | no |
| view | SequencerInbox | unmatched — not counted | — | listed in scope | no |
| view | OldOutbox | unmatched — not counted | — | listed in scope | no |
| view | Whitelist | unmatched — not counted | — | listed in scope | no |
| view | AddressAliasHelper | unmatched — not counted | — | listed in scope | no |
| view | MerkleLib | unmatched — not counted | — | listed in scope | no |
| view | GatewayRouter | unmatched — not counted | — | listed in scope | no |
| view | ITokenGateway | unmatched — not counted | — | listed in scope | no |
| view | IArbToken | unmatched — not counted | — | listed in scope | no |
| view | IWETH9 | unmatched — not counted | — | listed in scope | no |
| view | IOneStepProof | unmatched — not counted | — | listed in scope | no |
| view | OneStepProof | unmatched — not counted | — | listed in scope | no |
| view | OneStepProof2 | unmatched — not counted | — | listed in scope | no |
| view | Machine | unmatched — not counted | — | listed in scope | no |
| view | RollupEventBridge | unmatched — not counted | — | listed in scope | no |
| view | ValidatorWalletCreator | unmatched — not counted | — | listed in scope | no |
| view | RetryableTicketCreator | unmatched — not counted | — | listed in scope | no |
| view | ProxySetter | unmatched — not counted | — | listed in scope | no |
| view | L1ArbitrumMessenger | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 269 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 32
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 257 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=24, low=6, medium=2
- Match method counts: n/a

Zero-match audit list:

- [23981] Manual audit seed
- [23982] view
- [23983] view
- [23984] view
- [23985] view
- [23986] view
- [23987] view
- [23988] view
- [23989] view
- [23990] view
- [23991] view
- [23992] view
- [23993] view
- [23994] view
- [23995] view
- [23996] view
- [23997] view
- [23998] view
- [23999] view
- [24000] view
- [24001] view
- [24002] view
- [24003] view
- [24004] view
- [24005] view
- [24006] view
- [24007] view
- [24008] view
- [24009] view
- [24010] view
- [24011] view
- [24012] view

Fork inheritance lineage and inherited audits are included when available.
