# Agentic Audit Brief: Universal Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Universal Bridge (`universal-bridge`)
- Website: [https://www.universal.xyz](https://www.universal.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 88 unique implementations (182 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,509,351.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Universal Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across base, ethereum. Structural roles: 14 supporting. 14 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: supporting (14)
- Contract kinds: contract (13), abstract (1)
- Detected standards: erc1967proxy (14)
- Frameworks: openzeppelin (14), openzeppelin-upgradeable (14)
- Upgradeable-pattern rows: 14

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BeaconProxy (`0x20fbd133897ef802e0235db77bb19a071e257d41`, chain 8453)
- BeaconProxy (`0x2f15a6d380473f2a90519802c6b8635329aa6c50`, chain 8453)
- BeaconProxy (`0x4aae3050089658ee70d7e202bb06b739526f0177`, chain 8453)
- BeaconProxy (`0x6a2ed50496495f087cac3ae1aea3d540ad79ef28`, chain 8453)
- BeaconProxy (`0x7047865f343a616187d05ef860530805bdc2fa42`, chain 8453)
- BeaconProxy (`0x7383e814cf15fa06373654e6dd121d0d3b4f9e51`, chain 8453)
- BeaconProxy (`0x8c655ca4fe20c089d7d6823afd17ed6a377296e3`, chain 8453)
- BeaconProxy (`0x91b1b343ac321c0579ed33854e20a98ef881cc89`, chain 8453)
- BeaconProxy (`0xab1f3295c2cf4ea971170cfb1430a933f18bc455`, chain 8453)
- BeaconProxy (`0xba0020a82be4df8f5eafb5bf6e173ee792d1920b`, chain 8453)
- BeaconProxy (`0xdbbc41ffd1e4d219e2cfd5bfe9e4623cd4274532`, chain 8453)
- BeaconProxy (`0xdcc74175fb91f84326a95922ad4d95d1a20cd559`, chain 8453)
- BeaconProxy (`0xede6b57341c88652e5970229bd84fc316db1c85d`, chain 8453)
- BeaconProxy (`0xf5c9e46a87093fb29e40a9e498b078058bbadc74`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 87 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 97
- Confirmed-live implementations: 1 of 88 unique; 87 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 85
- Unique implementations: 88
- Raw deployments: 182
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x74ed5ed72df3bff374e4c87b8ff4bdebca954abe` | ⚠️ Unaudited |
| WrappedAssetV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 82 | base | n/a | 82 deployments: base `0x0340ff1765f0099b3bd1c4664ce03d8fd794fad1`; base `0x05f191a4aac4b358ab99db3a83a8f96216ecb274`; base `0x0935b271ca903ada3ffe1ac1353fc4a49e7ee87b`; base `0x0f813f4785b2360009f9ac9bf6121a85f109efc6`; base `0x12a063bef460bea2b4d0b504bd78bba58fb3da7e`; base `0x12e96c2bfea6e835cf8dd38a5834fa61cf723736`; base `0x135ff404ba56e167f58bc664156beaa0a0fd95ac`; base `0x16275fd42439a6671b188bdc3949a5ec61932c48`; base `0x17f8d5aa7779094c32536fecb177f93b33b3c3e2`; base `0x1b0dcc586323c0e10f8be72ecc104048f25fd625`; base `0x1b94330eec66ba458a51b0b14f411910d5f678d0`; base `0x1cff25b095cf6595afabe35dd7e5348666e57c11`; base `0x2198b777d5cb8cd5aa01d5c4d70f8f28fed9bc05`; base `0x239b9c1f24f3423062b0d364796e07ee905e9fce`; base `0x2615a94df961278dcbc41fb0a54fec5f10a693ae`; base `0x2f2041c267795a85b0de04443e7b947a6234fee8`; base `0x30f16e3273ab6e4584b79b76fd944e577e49a5c8`; base `0x31d664ebd97a50d5a2cd49b16f7714ab2516ed25`; base `0x378c326a472915d38b2d8d41e1345987835fab64`; base `0x3a51f2a377ea8b55faf3c671138a00503b031af3`; base `0x3a6b4b4f2250b8cce56ced4ca286a2ebe6f479a2`; base `0x3c07ef1bd575b5f5b1ffcb868353f5bc501ed482`; base `0x3c569273572706380785e079c8bc16df6a31bc51`; base `0x3d00283af5ab11ee7f6ec51573ab62b6fb6dfd8f`; base `0x3eb097375fc2fc361e4a472f5e7067238c547c52`; base `0x3ecb91ac996e8c55fe1835969a4967f95a07ca71`; base `0x40318ee213227894b5316e5ec84f6a5caf3bbedd`; base `0x444fa322da64a49a32d29ccd3a1f4df3de25cf52`; base `0x44951c66dfe920baed34457a2cfa65a0c7ff2025`; base `0x4b92ea5a2602fba275150db4201a6047056f6913`; base `0x508e751fdcf144910074cc817a16757f608db52a`; base `0x544f87a5aa41fcd725ef7c78a37cd9c1c4ba1650`; base `0x5a03841c2e2f5811f9e548cf98e88e878e55d99e`; base `0x5ed25e305e08f58afd7995eac72563e6be65a617`; base `0x6814e4be03aeb33fe135fe0e85ca6b0a03247519`; base `0x6ca225ae2c92c8a7e9c3162cfcaaa55ad0b09701`; base `0x6e934283dae5d5d1831cbe8d557c44c9b83f30ee`; base `0x71a67215a2025f501f386a49858a9ced2fc0249d`; base `0x7be0cc2cadcd4a8f9901b4a66244dcdd9bd02e0f`; base `0x83f31af747189c2fa9e5deb253200c505eff6ed2`; base `0x893adcbdc7fcfa0ebb6d3803f01df1ec199bf7c5`; base `0x8989377fd349adfa99e6ce3cb6c0d148dfc7f19e`; base `0x8ccf84de79df699a373421c769f1900aa71200b0`; base `0x8f2bd24a6406142cbae4b39e14be8efc8157d951`; base `0x90131d95a9a5b48b6a3ee0400807248becf4b7a4`; base `0x901754d839cf91eaa3ff7cb11408750fc94174e4`; base `0x9af46f95a0a8be5c2e0a0274a8b153c72d617e85`; base `0x9b8df6e244526ab5f6e6400d331db28c8fdddb55`; base `0x9c0e042d65a2e1ff31ac83f404e5cb79f452c337`; base `0xa260ba5fd9ff3fae55ac4930165a9c33519de694`; base `0xa2fd26586610955955b9a6e4be477433224a35bf`; base `0xa3a34a0d9a08ccddb6ed422ac0a28a06731335aa`; base `0xacbf16f82753f3d52a2c87e4eeda220c9a7a3762`; base `0xb0505e5a99abd03d94a1169e638b78edfed26ea4`; base `0xc5cdeb649ed1a7895b935acc8eb5aa0d7a8492be`; base `0xc79e06860aa9564f95e08fb7e5b61458d0c63898`; base `0xcb474f3dee195a951f3584b213d16d2d4d4ee503`; base `0xd01cb4171a985571deff48c9dc2f6e153a244d64`; base `0xd045be6ab98d17a161cfcfc118a8b428d70543ff`; base `0xd403d1624daef243fbcbd4a80d8a6f36affe32b2`; base `0xd61bcf79b26787ae993f75b064d2e3b3cc738c5d`; base `0xd6a34b430c05ac78c24985f8abee2616bc1788cb`; base `0xd6a746236f15e18053dd3ae8c27341b44cb08e59`; base `0xd76d45358b79564817aa87f02f3b85338b96f06a`; base `0xd7d5c59457d66fe800dba22b35e9c6c379d64499`; base `0xdb18fb11db1b972a54bd89ce04bad61855c07788`; base `0xdef3369cb0b783a5f8ee93aaf9674dde53c3ce2a`; base `0xdf5913632251585a55970134fad8a774628e9388`; base `0xe3ae3ee16a89973d67b678aad2c3be865dcc6880`; base `0xe5c436b0a34df18f1dae98af344ca5122e7d57c4`; base `0xe868c3d83ec287c01bcb533a33d197d9bfa79dad`; base `0xed1a31bb946f0b86cf9d34a1c90546ca75b091b0`; base `0xf081701af06a8d4ecf159c9c178b5ca6a78b5548`; base `0xf1143f3a8d76f1ca740d29d5671d365f66c44ed1`; base `0xf383074c4b993d1ccd196188d27d0ddf22ad463c`; base `0xf413af1169516a3256504977b8ed0248fbd48f23`; base `0xf56ce53561a9cc084e094952232bbfe1e5fb599e`; base `0xf653e8b6fcbd2a63246c6b7722d1e9d819611241`; base `0xfa15f1b48447d34b107c8a26cc065e1e872b1a9d`; base `0xfb3cb973b2a9e2e09746393c59e7fb0d5189d290`; base `0xfdca15bd55f350a36e63c47661914d80411d2c22`; base `0xfdf116c8bef1d4060e4117092298abff80b170ca` | ⚠️ Unaudited |
| WrappedAssetV2 | unknown | project_anchor | own_supporting | 14 | base | unit-259863 (14 proxies) | 14 deployments: base `0x20fbd133897ef802e0235db77bb19a071e257d41`; base `0x2f15a6d380473f2a90519802c6b8635329aa6c50`; base `0x4aae3050089658ee70d7e202bb06b739526f0177`; base `0x6a2ed50496495f087cac3ae1aea3d540ad79ef28`; base `0x7047865f343a616187d05ef860530805bdc2fa42`; base `0x7383e814cf15fa06373654e6dd121d0d3b4f9e51`; base `0x8c655ca4fe20c089d7d6823afd17ed6a377296e3`; base `0x91b1b343ac321c0579ed33854e20a98ef881cc89`; base `0xab1f3295c2cf4ea971170cfb1430a933f18bc455`; base `0xba0020a82be4df8f5eafb5bf6e173ee792d1920b`; base `0xdbbc41ffd1e4d219e2cfd5bfe9e4623cd4274532`; base `0xdcc74175fb91f84326a95922ad4d95d1a20cd559`; base `0xede6b57341c88652e5970229bd84fc316db1c85d`; base `0xf5c9e46a87093fb29e40a9e498b078058bbadc74` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (85)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0340ff1765f0099b3bd1c4664ce03d8fd794fad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05f191a4aac4b358ab99db3a83a8f96216ecb274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0935b271ca903ada3ffe1ac1353fc4a49e7ee87b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f813f4785b2360009f9ac9bf6121a85f109efc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a063bef460bea2b4d0b504bd78bba58fb3da7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12e96c2bfea6e835cf8dd38a5834fa61cf723736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x135ff404ba56e167f58bc664156beaa0a0fd95ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16275fd42439a6671b188bdc3949a5ec61932c48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17f8d5aa7779094c32536fecb177f93b33b3c3e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0dcc586323c0e10f8be72ecc104048f25fd625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b94330eec66ba458a51b0b14f411910d5f678d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cff25b095cf6595afabe35dd7e5348666e57c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2198b777d5cb8cd5aa01d5c4d70f8f28fed9bc05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239b9c1f24f3423062b0d364796e07ee905e9fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2615a94df961278dcbc41fb0a54fec5f10a693ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f2041c267795a85b0de04443e7b947a6234fee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f16e3273ab6e4584b79b76fd944e577e49a5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31d664ebd97a50d5a2cd49b16f7714ab2516ed25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x378c326a472915d38b2d8d41e1345987835fab64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a51f2a377ea8b55faf3c671138a00503b031af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a6b4b4f2250b8cce56ced4ca286a2ebe6f479a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c07ef1bd575b5f5b1ffcb868353f5bc501ed482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c569273572706380785e079c8bc16df6a31bc51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d00283af5ab11ee7f6ec51573ab62b6fb6dfd8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eb097375fc2fc361e4a472f5e7067238c547c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ecb91ac996e8c55fe1835969a4967f95a07ca71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40318ee213227894b5316e5ec84f6a5caf3bbedd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x444fa322da64a49a32d29ccd3a1f4df3de25cf52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44951c66dfe920baed34457a2cfa65a0c7ff2025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b92ea5a2602fba275150db4201a6047056f6913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x508e751fdcf144910074cc817a16757f608db52a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x544f87a5aa41fcd725ef7c78a37cd9c1c4ba1650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a03841c2e2f5811f9e548cf98e88e878e55d99e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed25e305e08f58afd7995eac72563e6be65a617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6814e4be03aeb33fe135fe0e85ca6b0a03247519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ca225ae2c92c8a7e9c3162cfcaaa55ad0b09701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e934283dae5d5d1831cbe8d557c44c9b83f30ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71a67215a2025f501f386a49858a9ced2fc0249d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7be0cc2cadcd4a8f9901b4a66244dcdd9bd02e0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83f31af747189c2fa9e5deb253200c505eff6ed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x893adcbdc7fcfa0ebb6d3803f01df1ec199bf7c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8989377fd349adfa99e6ce3cb6c0d148dfc7f19e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ccf84de79df699a373421c769f1900aa71200b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f2bd24a6406142cbae4b39e14be8efc8157d951` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90131d95a9a5b48b6a3ee0400807248becf4b7a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901754d839cf91eaa3ff7cb11408750fc94174e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9af46f95a0a8be5c2e0a0274a8b153c72d617e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8df6e244526ab5f6e6400d331db28c8fdddb55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c0e042d65a2e1ff31ac83f404e5cb79f452c337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa260ba5fd9ff3fae55ac4930165a9c33519de694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2fd26586610955955b9a6e4be477433224a35bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a34a0d9a08ccddb6ed422ac0a28a06731335aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacbf16f82753f3d52a2c87e4eeda220c9a7a3762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0505e5a99abd03d94a1169e638b78edfed26ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5cdeb649ed1a7895b935acc8eb5aa0d7a8492be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79e06860aa9564f95e08fb7e5b61458d0c63898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb474f3dee195a951f3584b213d16d2d4d4ee503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd01cb4171a985571deff48c9dc2f6e153a244d64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd045be6ab98d17a161cfcfc118a8b428d70543ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd403d1624daef243fbcbd4a80d8a6f36affe32b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd61bcf79b26787ae993f75b064d2e3b3cc738c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6a34b430c05ac78c24985f8abee2616bc1788cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6a746236f15e18053dd3ae8c27341b44cb08e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd76d45358b79564817aa87f02f3b85338b96f06a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7d5c59457d66fe800dba22b35e9c6c379d64499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb18fb11db1b972a54bd89ce04bad61855c07788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbbc41ffd1e4d219e2cfd5bfe9e4623cd4274532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdef3369cb0b783a5f8ee93aaf9674dde53c3ce2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf5913632251585a55970134fad8a774628e9388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ae3ee16a89973d67b678aad2c3be865dcc6880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5c436b0a34df18f1dae98af344ca5122e7d57c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe868c3d83ec287c01bcb533a33d197d9bfa79dad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed1a31bb946f0b86cf9d34a1c90546ca75b091b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xede6b57341c88652e5970229bd84fc316db1c85d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf081701af06a8d4ecf159c9c178b5ca6a78b5548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1143f3a8d76f1ca740d29d5671d365f66c44ed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf383074c4b993d1ccd196188d27d0ddf22ad463c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf413af1169516a3256504977b8ed0248fbd48f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf56ce53561a9cc084e094952232bbfe1e5fb599e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5c9e46a87093fb29e40a9e498b078058bbadc74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf653e8b6fcbd2a63246c6b7722d1e9d819611241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa15f1b48447d34b107c8a26cc065e1e872b1a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb3cb973b2a9e2e09746393c59e7fb0d5189d290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdca15bd55f350a36e63c47661914d80411d2c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdf116c8bef1d4060e4117092298abff80b170ca` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Alongside - Universal Contracts report - Final.pdf](https://github.com/r0bert-ethack/audits/blob/main/Alongside%20-%20Universal%20Contracts%20report%20-%20Final.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11340] Alongside - Universal Contracts report - Final.pdf — no match: The report title indicates 'Universal Contracts report (Fees update)' and the date range is 26/06/2024 - 08/07/2024. The audit covers WrapFactory and WrappedAsset contracts based on findings and context.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Alongside - Universal Contracts report - Final.pdf | WrapFactory | unmatched — not counted | — | mentioned in scope and findings | no |
| Alongside - Universal Contracts report - Final.pdf | WrappedAsset | unmatched — not counted | — | mentioned in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x20fbd133897ef802e0235db77bb19a071e257d41` | WrappedAssetV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 85 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [11340] Alongside - Universal Contracts report - Final.pdf

Fork inheritance lineage and inherited audits are included when available.
