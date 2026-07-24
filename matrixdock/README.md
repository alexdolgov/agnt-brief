# Agentic Audit Brief: MatrixDock

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 13 (0 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: MatrixDock (`matrixdock`)
- Website: [https://www.matrixdock.com/home](https://www.matrixdock.com/home)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, hashkey, polygon
- Contract surface: 145 unique implementations (150 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $82,213,089.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MatrixDock. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc, ethereum, hashkey, polygon. Structural roles: 2 infra, 1 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: infra (2), core (1)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (2), chainlinkaggregator (1), ownable (1)
- Frameworks: openzeppelin (3), chainlink (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2103e845c5e135493bb6c2a4f0b8651956ea8682`, chain 1)
- UnnamedContract (`0x530824da86689c9c17cdc2871ff29b058345b44a`, chain 1)
- UnnamedContract (`0x67dcc9c33363cc0e650738528fe4fef1d658c7ee`, chain 1)
- UnnamedContract (`0xb2624f7e72788f1ebf1c7877c646732957bbf72e`, chain 1)
- UnnamedContract (`0xca241823d4bfe8b29610709db617407fbc9ae02b`, chain 1)
- UnnamedContract (`0x23ae4fd8e7844cdbc97775496ebd0e8248656028`, chain 56)
- UnnamedContract (`0xe310db5ff835127f4acd858a4e3ef96c1770298b`, chain 56)
- UnnamedContract (`0xfc9bd26e3dbd517e60245616ea02bcff21ea2ea2`, chain 56)
- UnnamedContract (`0x59c734c8753b596607cb8a72f1f51965c75417cc`, chain 137)
- UnnamedContract (`0xa7e22972a19dd924afeedf3db28033b146801081`, chain 137)
- UnnamedContract (`0x2577217c86ae2e8a5f70abb663b9231e5d47d15a`, chain 177)
- UnnamedContract (`0x31886417d9c9ad5e0712cedd7c61c56b747047f5`, chain 177)
- UnnamedContract (`0x5a3917c6607275cfaa87d2f26fac26bc9afbea67`, chain 177)
- FallbackReserveFeed (`0x20377b5e38e0e992bbdcf3502ec72ded6a5e28ab`, chain 1)
- MTokenMain (`0x123ffe0a3c62878dcbee2742227dc8990058d9e1`, chain 1)
- MTokenMessenger (`0x0be91692750982b4ba92dabc3985c548098f68c5`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 129 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 16 of 145 unique; 129 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 121
- Unique implementations: 145
- Raw deployments: 150
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BullionEnumerableNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x62bee1bc8cf74fbbbd1f8444a39ca1db4acc368c`; ethereum `0xe9e9431b1135a06850997288bd0323047cc0da51` | ⚠️ Unaudited |
| BullionNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a6ddc1ccc00b69e6fdc6228b50f0fa6dd2f9dc` | ⚠️ Unaudited |
| CCWSTBTMessager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a918b3a032174dd89c3d9e7f27ea0d7710bbf18` | ⚠️ Unaudited |
| CustomerManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0978aa6ed342ff8327e97415653f5af790e3f004` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0630f63329e3c4b675d8ba1b82c330f46319c755`; bsc `0x84fd5b549b3cd904c69aa0f3eee31f65e9c1e931` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0654cf3aa9dd54d5ffe3a6c21bb9205a3a39ec76`; bsc `0xd3bf966b4fefd1fe95b3266380161763e0e0befc` | ⚠️ Unaudited |
| FallbackReserveFeed | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246323 | `0x20377b5e38e0e992bbdcf3502ec72ded6a5e28ab` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x344363f85a25837b154dd1c03117fef0341a0e2f` | ⚠️ Unaudited |
| MTokenMain | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246337 | `0x123ffe0a3c62878dcbee2742227dc8990058d9e1` | ⚠️ Unaudited |
| MTokenMessager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ce2a00eb05b33b206b4057598f97ddc3028c7e` | ⚠️ Unaudited |
| MTokenMessagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x102874ca109a5a7e94a0385f1380cebc905fb878` | ⚠️ Unaudited |
| MTokenMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246338 | `0x0be91692750982b4ba92dabc3985c548098f68c5` | ⚠️ Unaudited |
| MTokenMessengerLZ | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb350d8decc3adf68c3856d46ab42976ca7a6386f`; ethereum `0xca494e058461fcca545fdc2d6bfd27feb499e6b8` | ⚠️ Unaudited |
| MTokenMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd20e49239aaedb8490c07a622c129a39296cef` | ⚠️ Unaudited |
| MTokenSide | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d0ba3daa950415b1f36c6fa6b98571325245010` | ⚠️ Unaudited |
| OKXSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08190f1cf3f2f067d5749dce1b27decd6e25c8ee` | ⚠️ Unaudited |
| STBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24f5b8e0e4a0a9ccdcc4fa05a9885a28140fc948` | ⚠️ Unaudited |
| StbtTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eb8f11ec17c160b0d51586b0e420faff07b6f47` | ⚠️ Unaudited |
| STBTv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f0868fd7b0844e374277ebc9a3e4979465a37aa` | ⚠️ Unaudited |
| TERPOC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2022be364c2c0b46bb693d154bfb8eb5476a877d`; ethereum `0xfdb6563b361bd602d9ba2a119eb9ec631ec97aed` | ⚠️ Unaudited |
| UpgradeableSTBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a67bf4815b4f28e879fd09671ef74ebd60528f` | ⚠️ Unaudited |
| WSTBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288a8005c53632d920045b7c7c2e54a3f1bc4c83` | ⚠️ Unaudited |
| XAUMDCAMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3681afa163e6263447abf565936a7225583289e2` | ⚠️ Unaudited |
| XAUMDCARouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31b19c0cedd24f5a0dd6471649b5698a85f57775` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (121)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1118e485c980ce2f89e6272a7cc569bc9c3d737a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20d76bfc20046139ba2f5bdcf358f683e276b55d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246324 | `0x2103e845c5e135493bb6c2a4f0b8651956ea8682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22276a1bd16bc3052b362c2e0f65aace04ed6f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29646a077f9fbc3db930efe35d4e15b06e2776b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b74c585df213931fa976ba416158d6063541065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3194e478b6d3ebee969470295f271727b62adf7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3284d4e1d51b64e0930cd48170a29981614176bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d4d251063ca62d7766816ac40ff893f5ea0856d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7d38d5aecf2a679390e8eb54021eacdabf0824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f877f18521bc1860ff00335abc85d26148a403a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f92247053508c7662c9a24ccd01229fe0ef7419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4055cf534682231e071aa4b664f84a7c25bc73ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c22ee375530b2b9723dad8a3f9ee324a787780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x448a838f6ff02cbb72860ffe52f973be585114b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4613e269008ff0ecfa07429c6bb12a6c6caa4168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x463f031f86bca6b027ae72bf03d460bf43b07286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480e16fa31559658546f39e06342021aeb12a7a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x497af358b2ec9f7499d71f646d8a7fe9e3e6c7e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246325 | `0x530824da86689c9c17cdc2871ff29b058345b44a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dd360d87468087c57f06dfe34f664f3f1e31f3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e072c6689610c66e49a3067a4b488b4e27bc744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6271e06d3562c67facbb1d040b50387bfd770bbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x669e964ba32f73eb882935dc9295a69fade7ef71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246326 | `0x67dcc9c33363cc0e650738528fe4fef1d658c7ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e32b7c91f306a3c5b644d6bdcefcf8c0776ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x717c27de5e93b0f8f9bacbabbf3da12db59e74e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7254bf1d8d73fa52e5ef0642015e719eee018896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x727157894e8ebf337e9f488839164f6057dce12a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f740a50e728e5c3827ba91c6c2b1dcbda5896be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815cd16c1e3a8e1e0e9fc2fc5bcba5d48e7d6f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86c6ed09471cb210afe6ffe1aa93f55ba016c1bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89c3d4eec234f8a8f3cdadfaa4648019e994089c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96a6a5d23cd3b65245a299a15c029ffcde6a9caa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99fde75655a8e9dfeb0f5f813cc2cb203cd3c7c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa12aa0706dcf0e841259a8459f1545dd9aed9301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6aec70a03462a0635a8c2d119195c444a7d6d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb14a1a3ac76d7ded169192f6101cda863bcdf901` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246327 | `0xb2624f7e72788f1ebf1c7877c646732957bbf72e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb999cab0a5d302906f86e0f5ed5f3ef6eef42359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba8275286e10489c4aee24a39b0d919c79c634e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc35cbc2842ada9743853ccf5e8b5eba42662510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0b71224ec684ed0ca9170d833894ac195c4025d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5937a7a9260643ca274b2ebf0c17ad130f3c946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc676d85f41552ce83337a2b8e746f869d2af4ac4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246328 | `0xca241823d4bfe8b29610709db617407fbc9ae02b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd110dbddcda1daec916c36bc06b30f73e81a272d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd389f627c30f5125cd1a36d51d71f3794102a899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7dbecfb1738da6812b6dfd0fe4c424cf7d184dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda29ad84566c3bfdee6009f6c0f6beb6686a71a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd25e75b9473f583be455355811ebf473cb05907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe639fe7f410c2c37be9b2be5df7890d1a79dfe56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe69799cf1f9245d5528cf9d2915b37f5c1c96594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7efc5060b6ad57b68f5911eca6c5cd1952da152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf561938c3bf47dd9a9c7a16301c9ee024f9f22be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8f99508c2e4378e9fe222ab07ee49bb12d85996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa357b5b104d0762ec948011b729129ac3995df2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd14e4f508ea2565beb6259c95e273b3038bf9ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08b145c9485ddf11444bc7d93e4888e15938a63d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x120c2ab4a4945ed089fd174e738ecb66c99caea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a2ea0d916e88670690df1bb4f4c5a8f590589e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cfa18cbd5efed20bf806ee175322174a2288c0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-246334 | `0x23ae4fd8e7844cdbc97775496ebd0e8248656028` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cf1ebb1560a007aebde8f24ad351b0c927db536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d542efd6bd2a8d3db53a639f1e5d054aab5823f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e233f557ddf6f7dd8796d7e422c44a8d8f71208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3aaa92e4c46d70994a521343cd939532743718fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d7e1fe08e90786d3eb49a36a812a14f4c7857fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x441f6edcf98b80a35592602331e9ae6bfb384727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4516d9f5dc30e12e789f3e2fa0e72b1e546f9a7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4896fb0844595981004f2afe28341cf2b6433560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x494814eef9c785c68965e375616d2d1e23b6dc18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50c26ddb4a4a72be4e9bb04910952beeec376bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x516a80e258b1e194bd5ecf07f1d1b1ffdbacdd65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x555e9bb55d87ac18993d73d9e2bb37ee7da2670d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x558091ed2e191e77d5b721c123cc7fcbdd2fefe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fba4b767f23c87ed92192c5a669a1ef886d9352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63ce3a7d63fe18068416ab108f39cbad5f70463e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x646b9c6c64764eda7fa85253be967c18eda53944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71294be2f69443d7b730b61ffed5c3b8fb16ead5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71fc71ef5751b1a6c23275c55a03687f681fe9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a0799bb729bcc752484ee2c38fec0df47ff810d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f64f9684be1b7f32544f4dbe0a5915fdf117ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80b5133b8a1ce096846cb82893dff5b8efc4003b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x818d49051947a85f295903df1a27b2028ec265e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88bfaaa980fab8fb57a0c9979e2abc21aa930f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x892d55df3391492e5b76fa36ec800c158060539f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a13cf6c976ed9464a513632187dc1f3e75bbf93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x904cfe17a8b3da177f5c80b580e46439aeeeec9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90bc42e14e4ef0406abb3906642a00585a51dd4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98aa17889ff37a0969aa163bf013bdd23225b900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x996f32b26481d8680071e157109542b3dc1eaa7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2c834362ae7165801983cb8a2687eccb699a7d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa79d2c2a58a02c96ab1b29188127b5839617920e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8d0b5b29ff70fc7425b0b59ef397db7381ffdb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa51bd15d06da9e75264ae1721e9dc29f740cd02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb549f04872c7aa059554d9ea4273ce4930cd8f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc532f29f3f299dd4d6ef7e1bcdd55b9ed61bd1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcceb8fee3126134586d8ee881ae1daca9611303a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf40ff3780ff1f8b6179136d6dfbe1301e2bef4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2061a9b27acdfd39638b0c319d025a812778dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd0068f6cf926f7f36c34ef7092d9a40505d32b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe19dd0a13134f00589c84753af0f9f3e5177585f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-246335 | `0xe310db5ff835127f4acd858a4e3ef96c1770298b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef3aaa83877aab9472601c4ff261559c7ea4cee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef7e1517122fa8a14b6a6709326524c4cb79bfab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf105d1d494336bdc3f65d2feecabc379f180d06d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa3672088f76a79cac31e045329deea11488e3c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-246336 | `0xfc9bd26e3dbd517e60245616ea02bcff21ea2ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3abc9a3d2cf52f0d49082faf86cab3f95691daf4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-246329 | `0x59c734c8753b596607cb8a72f1f51965c75417cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7035141304389ac0a52d0913c8f5d3fa287025ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b0e3a282d390bd50b1df51b6f1b90e86f0b2791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e7625469b6bf25b759f78649841bceffa5775fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-246330 | `0xa7e22972a19dd924afeedf3db28033b146801081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac5508b9feed4030f27d7010ae90e8d2cb986d47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd60fc175288b6659da1ea74c17101d34494e4096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xff7b8a8ae7f4bb8aedff2331ddc62c32a736a711` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-246331 | `0x2577217c86ae2e8a5f70abb663b9231e5d47d15a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-246332 | `0x31886417d9c9ad5e0712cedd7c61c56b747047f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-246333 | `0x5a3917c6607275cfaa87d2f26fac26bc9afbea67` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 113
- Live contracts: 0
- Unknown liveness contracts: 113
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=113

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x08b145c9485ddf11444bc7d93e4888e15938a63d` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x120c2ab4a4945ed089fd174e738ecb66c99caea0` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1a2ea0d916e88670690df1bb4f4c5a8f590589e8` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1cfa18cbd5efed20bf806ee175322174a2288c0d` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2cf1ebb1560a007aebde8f24ad351b0c927db536` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2d542efd6bd2a8d3db53a639f1e5d054aab5823f` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2e233f557ddf6f7dd8796d7e422c44a8d8f71208` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3aaa92e4c46d70994a521343cd939532743718fe` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3d7e1fe08e90786d3eb49a36a812a14f4c7857fc` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x441f6edcf98b80a35592602331e9ae6bfb384727` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4516d9f5dc30e12e789f3e2fa0e72b1e546f9a7e` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4896fb0844595981004f2afe28341cf2b6433560` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x494814eef9c785c68965e375616d2d1e23b6dc18` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x50c26ddb4a4a72be4e9bb04910952beeec376bd4` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x516a80e258b1e194bd5ecf07f1d1b1ffdbacdd65` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x555e9bb55d87ac18993d73d9e2bb37ee7da2670d` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x558091ed2e191e77d5b721c123cc7fcbdd2fefe6` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5fba4b767f23c87ed92192c5a669a1ef886d9352` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x63ce3a7d63fe18068416ab108f39cbad5f70463e` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x646b9c6c64764eda7fa85253be967c18eda53944` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x71294be2f69443d7b730b61ffed5c3b8fb16ead5` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x71fc71ef5751b1a6c23275c55a03687f681fe9ec` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7a0799bb729bcc752484ee2c38fec0df47ff810d` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7f64f9684be1b7f32544f4dbe0a5915fdf117ee9` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x80b5133b8a1ce096846cb82893dff5b8efc4003b` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x818d49051947a85f295903df1a27b2028ec265e8` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x84fd5b549b3cd904c69aa0f3eee31f65e9c1e931` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x88bfaaa980fab8fb57a0c9979e2abc21aa930f82` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x892d55df3391492e5b76fa36ec800c158060539f` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8a13cf6c976ed9464a513632187dc1f3e75bbf93` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x904cfe17a8b3da177f5c80b580e46439aeeeec9b` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x90bc42e14e4ef0406abb3906642a00585a51dd4e` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x98aa17889ff37a0969aa163bf013bdd23225b900` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x996f32b26481d8680071e157109542b3dc1eaa7c` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa2c834362ae7165801983cb8a2687eccb699a7d8` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa79d2c2a58a02c96ab1b29188127b5839617920e` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa8d0b5b29ff70fc7425b0b59ef397db7381ffdb3` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaa51bd15d06da9e75264ae1721e9dc29f740cd02` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb549f04872c7aa059554d9ea4273ce4930cd8f76` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbc532f29f3f299dd4d6ef7e1bcdd55b9ed61bd1e` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcceb8fee3126134586d8ee881ae1daca9611303a` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcf40ff3780ff1f8b6179136d6dfbe1301e2bef4c` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd2061a9b27acdfd39638b0c319d025a812778dd5` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd3bf966b4fefd1fe95b3266380161763e0e0befc` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdd0068f6cf926f7f36c34ef7092d9a40505d32b9` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe19dd0a13134f00589c84753af0f9f3e5177585f` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xef3aaa83877aab9472601c4ff261559c7ea4cee1` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xef7e1517122fa8a14b6a6709326524c4cb79bfab` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf105d1d494336bdc3f65d2feecabc379f180d06d` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfa3672088f76a79cac31e045329deea11488e3c3` | non_address_book | unknown | unknown | unverified | n/a | `0x93d84313e1ce20f8441f4c591a501639de363ef9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1118e485c980ce2f89e6272a7cc569bc9c3d737a` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20d76bfc20046139ba2f5bdcf358f683e276b55d` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22276a1bd16bc3052b362c2e0f65aace04ed6f99` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29646a077f9fbc3db930efe35d4e15b06e2776b4` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b74c585df213931fa976ba416158d6063541065` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3194e478b6d3ebee969470295f271727b62adf7b` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3284d4e1d51b64e0930cd48170a29981614176bb` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d4d251063ca62d7766816ac40ff893f5ea0856d` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d7d38d5aecf2a679390e8eb54021eacdabf0824` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f877f18521bc1860ff00335abc85d26148a403a` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f92247053508c7662c9a24ccd01229fe0ef7419` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4055cf534682231e071aa4b664f84a7c25bc73ee` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41c22ee375530b2b9723dad8a3f9ee324a787780` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x448a838f6ff02cbb72860ffe52f973be585114b2` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4613e269008ff0ecfa07429c6bb12a6c6caa4168` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x463f031f86bca6b027ae72bf03d460bf43b07286` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x480e16fa31559658546f39e06342021aeb12a7a0` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x497af358b2ec9f7499d71f646d8a7fe9e3e6c7e7` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5dd360d87468087c57f06dfe34f664f3f1e31f3e` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e072c6689610c66e49a3067a4b488b4e27bc744` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6271e06d3562c67facbb1d040b50387bfd770bbe` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x669e964ba32f73eb882935dc9295a69fade7ef71` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68e32b7c91f306a3c5b644d6bdcefcf8c0776ce9` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x717c27de5e93b0f8f9bacbabbf3da12db59e74e8` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7254bf1d8d73fa52e5ef0642015e719eee018896` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x727157894e8ebf337e9f488839164f6057dce12a` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f740a50e728e5c3827ba91c6c2b1dcbda5896be` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x815cd16c1e3a8e1e0e9fc2fc5bcba5d48e7d6f76` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86c6ed09471cb210afe6ffe1aa93f55ba016c1bb` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89c3d4eec234f8a8f3cdadfaa4648019e994089c` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96a6a5d23cd3b65245a299a15c029ffcde6a9caa` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99fde75655a8e9dfeb0f5f813cc2cb203cd3c7c8` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa12aa0706dcf0e841259a8459f1545dd9aed9301` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6aec70a03462a0635a8c2d119195c444a7d6d8c` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb14a1a3ac76d7ded169192f6101cda863bcdf901` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb999cab0a5d302906f86e0f5ed5f3ef6eef42359` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba8275286e10489c4aee24a39b0d919c79c634e3` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc35cbc2842ada9743853ccf5e8b5eba42662510` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0b71224ec684ed0ca9170d833894ac195c4025d` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc5937a7a9260643ca274b2ebf0c17ad130f3c946` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc676d85f41552ce83337a2b8e746f869d2af4ac4` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca494e058461fcca545fdc2d6bfd27feb499e6b8` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd110dbddcda1daec916c36bc06b30f73e81a272d` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd389f627c30f5125cd1a36d51d71f3794102a899` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd7dbecfb1738da6812b6dfd0fe4c424cf7d184dc` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda29ad84566c3bfdee6009f6c0f6beb6686a71a2` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdd25e75b9473f583be455355811ebf473cb05907` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe639fe7f410c2c37be9b2be5df7890d1a79dfe56` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe69799cf1f9245d5528cf9d2915b37f5c1c96594` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe7efc5060b6ad57b68f5911eca6c5cd1952da152` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe9e9431b1135a06850997288bd0323047cc0da51` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf561938c3bf47dd9a9c7a16301c9ee024f9f22be` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8f99508c2e4378e9fe222ab07ee49bb12d85996` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfa357b5b104d0762ec948011b729129ac3995df2` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd14e4f508ea2565beb6259c95e273b3038bf9ef` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfdb6563b361bd602d9ba2a119eb9ec631ec97aed` | non_address_book | unknown | unknown | unverified | n/a | `0x2598fc49d387e857b7a67de87267ddd4468c4ce6` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3abc9a3d2cf52f0d49082faf86cab3f95691daf4` | non_address_book | unknown | unknown | unverified | n/a | `0x1273febf985257ade0122862710f6c9db5e4dec9` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7035141304389ac0a52d0913c8f5d3fa287025ca` | non_address_book | unknown | unknown | unverified | n/a | `0x1273febf985257ade0122862710f6c9db5e4dec9` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8b0e3a282d390bd50b1df51b6f1b90e86f0b2791` | non_address_book | unknown | unknown | unverified | n/a | `0x1273febf985257ade0122862710f6c9db5e4dec9` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9e7625469b6bf25b759f78649841bceffa5775fd` | non_address_book | unknown | unknown | unverified | n/a | `0x1273febf985257ade0122862710f6c9db5e4dec9` |
| polygon | unverified unclassified | UnnamedContract<br>`0xac5508b9feed4030f27d7010ae90e8d2cb986d47` | non_address_book | unknown | unknown | unverified | n/a | `0x1273febf985257ade0122862710f6c9db5e4dec9` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd60fc175288b6659da1ea74c17101d34494e4096` | non_address_book | unknown | unknown | unverified | n/a | `0x1273febf985257ade0122862710f6c9db5e4dec9` |
| polygon | unverified unclassified | UnnamedContract<br>`0xff7b8a8ae7f4bb8aedff2331ddc62c32a736a711` | non_address_book | unknown | unknown | unverified | n/a | `0x1273febf985257ade0122862710f6c9db5e4dec9` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Matrixdock-STBT - Zellic Audit Report.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/Matrixdock-STBT%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Minter - Zellic Audit Report.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/Minter%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [TProtocol audit report.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/TProtocol%20audit%20report.pdf) | TProtocol | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [WSTBT - Zellic Audit Report.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/WSTBT%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [blocksec_matrixdock_v1.0-signed.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/blocksec_matrixdock_v1.0-signed.pdf) | BlockSec | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [blocksec_matrixdock_v1.1-signed.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/blocksec_matrixdock_v1.1-signed.pdf) | BlockSec | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [blocksec_matrixport_stbt_v1.1-signed.pdf](https://github.com/Matrixdock-STBT/STBT-contracts/blob/main/audit/blocksec_matrixport_stbt_v1.1-signed.pdf) | BlockSec | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [he-yue-shen-ji.md (also discovered via alternate URL)](https://matrixdock.gitbook.io/matrixdock-docs/huang-jin-dai-bi-xaum/zhi-neng-he-yue/he-yue-shen-ji.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [contract-audit.md (also discovered via alternate URL)](https://matrixdock.gitbook.io/matrixdock-docs/english/gold-token-xaum/smart-contract/contract-audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20819] Matrixdock-STBT - Zellic Audit Report.pdf — no match: Scope section 2.3 explicitly lists three contracts: STBT, UpgradeableSTBT, StbtTimelockController. Audit date is on cover page: February 7, 2023.
- [20820] Minter - Zellic Audit Report.pdf — no match: Only one contract (Minter) is in scope. The report also mentions STBT and timelock contracts but they are not listed in scope.
- [20821] TProtocol audit report.pdf — no match: Contracts explicitly listed in scope section of the audit report.
- [20822] WSTBT - Zellic Audit Report.pdf — no match: Only one contract (WSTBT) is in scope. STBT is mentioned as an underlying token but not in scope.
- [20823] blocksec_matrixdock_v1.0-signed.pdf — no match: The audit report clearly defines the scope as Minter.sol and WSTBT.sol contracts. The date is from the cover page.
- [20824] blocksec_matrixdock_v1.1-signed.pdf — no match: Scope explicitly lists Minter.sol and WSTBT.sol as the only contracts audited.
- [20825] blocksec_matrixport_stbt_v1.1-signed.pdf — no match: Scope section 1.1 explicitly states 'target of this audit is the STBT Contracts'. Two contracts identified: STBT and StbtTimelockController.
- [20826] he-yue-shen-ji.md — no match: The provided text only lists audit report files for different chains (EVM, SUI, Solana) but does not include the actual audit report content. No contract names or scope details are present.
- [20829] contract-audit.md — no match: The document is an index page listing audit reports for different chains (EVM, SUI, Solana) but does not contain the actual audit reports or any contract names in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Matrixdock-STBT - Zellic Audit Report.pdf | STBT | unmatched — not counted | — | listed in scope section 2.3 | no |
| Matrixdock-STBT - Zellic Audit Report.pdf | UpgradeableSTBT | unmatched — not counted | — | listed in scope section 2.3 | no |
| Matrixdock-STBT - Zellic Audit Report.pdf | StbtTimelockController | unmatched — not counted | — | listed in scope section 2.3 | no |
| Minter - Zellic Audit Report.pdf | Minter | unmatched — not counted | — | Scope section lists 'Minter Contract' as target | no |
| TProtocol audit report.pdf | InterestRateModel | unmatched — not counted | — | listed in scope | no |
| TProtocol audit report.pdf | iUSTP | unmatched — not counted | — | listed in scope | no |
| TProtocol audit report.pdf | LiquidatePool | unmatched — not counted | — | listed in scope | no |
| TProtocol audit report.pdf | migrator | unmatched — not counted | — | listed in scope | no |
| TProtocol audit report.pdf | rUSTP | unmatched — not counted | — | listed in scope | no |
| TProtocol audit report.pdf | rUSTPool | unmatched — not counted | — | listed in scope | no |
| TProtocol audit report.pdf | USTP | unmatched — not counted | — | listed in scope | no |
| WSTBT - Zellic Audit Report.pdf | WSTBT | unmatched — not counted | — | Scope section lists WSTBT contract; threat model module is WSTBT.sol | no |
| blocksec_matrixdock_v1.0-signed.pdf | Minter | unmatched — not counted | — | Section 1.1 explicitly states the audit covers Minter.sol and WSTBT.sol. | no |
| blocksec_matrixdock_v1.0-signed.pdf | WSTBT | unmatched — not counted | — | Section 1.1 explicitly states the audit covers Minter.sol and WSTBT.sol. | no |
| blocksec_matrixdock_v1.1-signed.pdf | Minter | unmatched — not counted | — | listed in scope section 1.1 | no |
| blocksec_matrixdock_v1.1-signed.pdf | WSTBT | unmatched — not counted | — | listed in scope section 1.1 | no |
| blocksec_matrixport_stbt_v1.1-signed.pdf | STBT | unmatched — not counted | — | Listed in scope section 1.1 as STBT Contracts, referenced in findings as STBT contract | no |
| blocksec_matrixport_stbt_v1.1-signed.pdf | StbtTimelockController | unmatched — not counted | — | Mentioned in finding 2.3.2 as StbtTimelockController contract | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x20377b5e38e0e992bbdcf3502ec72ded6a5e28ab` | FallbackReserveFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x123ffe0a3c62878dcbee2742227dc8990058d9e1` | MTokenMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0be91692750982b4ba92dabc3985c548098f68c5` | MTokenMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 121 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 18 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=2
- Match method counts: n/a

Zero-match audit list:

- [20819] Matrixdock-STBT - Zellic Audit Report.pdf
- [20820] Minter - Zellic Audit Report.pdf
- [20821] TProtocol audit report.pdf
- [20822] WSTBT - Zellic Audit Report.pdf
- [20823] blocksec_matrixdock_v1.0-signed.pdf
- [20824] blocksec_matrixdock_v1.1-signed.pdf
- [20825] blocksec_matrixport_stbt_v1.1-signed.pdf
- [20826] he-yue-shen-ji.md
- [20829] contract-audit.md

Fork inheritance lineage and inherited audits are included when available.
