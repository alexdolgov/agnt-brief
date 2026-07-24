# Agentic Audit Brief: Cog

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Cog (`cog`)
- Website: [https://www.cog.finance/](https://www.cog.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: scroll, sepolia
- Contract surface: 148 unique implementations (148 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $173,640.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Cog in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xab58996663b516f4542e80b3c05246f96f344645`, chain 534352)
- UnnamedContract (`0xadec0df8f4a1152f6ae19e4bc5fadf43ab8df59c`, chain 534352)
- CogPair (`0x41d54de8d81ee9232b67a4a936fc2e49b9853ce8`, chain 534352)
- CogPair (`0x91be2224d66fb320ea123e1889ef3cfaf460944d`, chain 534352)
- LoanRouter (`0x4671d3d57988dfd1b3832a03adb9a2fed95f86e2`, chain 534352)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 139 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 5 of 148 unique; 143 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 144
- Unique implementations: 148
- Raw deployments: 148
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
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
| CogFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xbabd55549c266c6755b99173fe7604238d04117d` | ⚠️ Unaudited |
| CogPair | unknown | project_anchor | own_supporting | 0 | scroll | unit-381747 | `0x41d54de8d81ee9232b67a4a936fc2e49b9853ce8` | ⚠️ Unaudited |
| CogPair | unknown | project_anchor | own_supporting | 0 | scroll | unit-381749 | `0x91be2224d66fb320ea123e1889ef3cfaf460944d` | ⚠️ Unaudited |
| LoanRouter | unknown | project_anchor | own_supporting | 0 | scroll | unit-381748 | `0x4671d3d57988dfd1b3832a03adb9a2fed95f86e2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (144)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0040c9fd4f4b39a590e78a7eedbd0db0fb4464e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x009808693aebb54e4c6d70c42e379af752f4d7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0151ea3f55a2f52aaa87b41be1cc188c593a7f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x01b92408b41fcebe5294b3677cfede4e385af8f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x039e25b6d3b1bfc2e2eb6e31fed6e6170b8d5cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x06ae33bf34d9645c67363f512d15171729a2964d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x09946c120c0ef7977a59b874e9b6b5cc29e7312b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0b714cd2deb431ba30c57bb2496e9797976db8b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0f10de59b89415ea16b577613c35d43f4fa79fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0f959cf1b2d56088b7cab62b07defed0bdb1a084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x11bbde3bee4f256c570569aee2f67be08cdee31f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1406d0e17fdbd8b66b3ada3fb1cd4cfa7cc806db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x14e91d85ebb0c38eee880eca311b08d3cce25c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x14f32dca5e50b49c5d362f284c077e24975f995d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x171865df096505f9268ddf8c84a7d3a8d5c8acb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x173fe2879af92070f4f4a985bc055a2f01d4fc3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1a6e79f309e01506e858a94950cc8a91ec4f23a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1af31ad42040657f81e6d53ec8d68db2851496a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1b45a0a5d8f5e87edd016b2c974eecc9e0b43871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1eb9792231d3dd371b53c8e3309e4b8e3612ac8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1ecc72d9f223e4d5158855073902d9da9d668954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1ed2ba21fd40f3e05c55df5c1a80ddb9b417a8b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x20a210626abdd40421aebbe50564c9488d97aac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x230a99d153bbb6678e74c0b41afc5ca16102fed3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x238bc1134e0e9ee4e01098b6d5c2842edaa8fe88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x26141b2d58e491d363d0e485cf9765d59bae69b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2c6de9c74d36bf628f0102d0f18407ec12371f35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2d9ab47c3441b4eb7d00ace98ff47010d4005341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2ee2c7282034626d6150ccc161f905382cc3605b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2f48272ccf4f6b77729a37385860a505283a5d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x31a344694fb72b2add71f302765c1707f5ae081f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x32c4c0fd63d61c9f02f641c8a248022517b495e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x32dd38a67670c1133920a4c6f7f8ccfaf60b6a2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x38b9cb1792aec828bfbc75c054ad96ff0877a07f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x396470b1c6a3e8af1be7be4e5d4878449ba3732d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3a2c96d68c182d75d0c9363aeec53a40cfecc58e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3dbe3204a63d5f9d2ad986e5af8027769c258306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3dd5c2acd2f41947e73b384ef52c049bac0b65d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x459ab8e050fa82f63bff581f0eb187512799c4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x480501d16841181d267a3a40b5b1f0126473ab31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x495c47651e814e4fe13e9ad096cd8c40bfc9c846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4988cad24b9f129d1ccbbf8fb45aebf66b925884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4d49dce3da051c6ca98c7c2d11961692519c4e65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4fa003607e2029d8c51649e40277f6e0fd9208b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4fc6393856abdb46d1fc829a8fed2696405e37f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x52aff48eb6a6c848002987a0c9c671a2ee70feee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x53a2d991ab5053d8f0a7fd93d4533ed6efc64674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x53c752dbb0e21d2da24ba42f37e7c58203fe004d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x54394ae127166d9e198528699e27a8e87e3636e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x57954b3ce72af4a290613b356848c4b098642c66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x584534025bc974d51e423e36f3ff2a68846b59fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x58e2c3068f2b4b3446a1ba299521e32063a16e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5c27e4353103e012396291883194fe82e1d603b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5c5da1cb58267c3baec06f3590104ccb4dad750c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5cfde2986fad91daa155a11ed79dcd076fbff8e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5e2fa28a049a8aca73c4e335046d2af61d800500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x60700aced6daa03abca72d8cce85bb5c65e042c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x664351b29069d0a89f150d9091ffc28c18481a3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6933e68095c321b689f825c1bfffe233f6e20f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x71692973baad51877ec7c867ebae9ddbd32cf615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x76aaf37b8b9cb03d84597d2187a02eb128684669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x76d9ad7d7c2ff52b3c75c8a143aab9dd490a18d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7708d0b1b418366f28c985f0d34ff1b0351111dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7852824b8be86eca5afd7077cda23e137a7bc5bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7a0952f6abfdbe56a802d1b0a7ec40634841aab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7a3f474b270b15a332bb53b6fa78847558efbdfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7b4d8d5f199eb3217b449f469c51f1eb5bbb8a4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7bfa359414212b02e137ff1f5577adf3efd06826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7dcf144d7f39d7ad7ae0e6f9e612379f73bd8e80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7dd282de5be83ac3d8017863104c10210e38c07e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x811da0342b167a83a08ffe2abe10e7ce287c3743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x815adb80a98dc0815db37cfb19cf3234c3e3d270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8659d0bfc0eba2439e4e00d1ceec9dc6f806665a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8670d281523dabdc69c229c788f5b6ad32794cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8a215fa674919c8404a9b75ead8f741e9459fdd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8c51396af2bf5fbf62e0f9a824746f29a16394f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8e785329c287199ef0007318c43bb08b1c87fe77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9145ad2c60d3113f04eb77fea68d8ad082854aa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x95ec85fa98b014e439695df6d728edd03f9ad521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x99ab3df7419eb5487dc0b85bb696dee525db9665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9a1fd96ac5654eda9b01f5e538baf10a9aa66dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9b3f229acc35a4d1fe019102bb47a9dbec7497c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa2d8f0527053757211a1878badea0779e5e5840c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa48a94af83dc3f5c06c2459db41227b97ed3c3a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa4e2e406a5e84bc109f1dd0850fbbcad10bf0fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa988c919d315a2e18c9860c6d96c35e83f4cdb41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa98f96cae1003597e6cfad612eeac77bcf9e2e9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381750 | `0xab58996663b516f4542e80b3c05246f96f344645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xab7a1d293fbd5e64263e649af9d05e56e6f226eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xad8d2253822ad072b1bf17109ea0ad9d24e83b7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381751 | `0xadec0df8f4a1152f6ae19e4bc5fadf43ab8df59c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xafe6ad4eb5372a6bdc240bb5b99cbb2e50fb3e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb1d387a8011035e6e6be220a9067612cad7a1ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb214336ce7ce9652c5f20435d38beef4d6e21050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb4b4585f6335d9c632aca8687403aff04f01e9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb528254bc2587b965ce8df62fb1b0f8ead2823d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb5b5d57668c70a36cc98c603903b5cb5fd34d5a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb7361dec2bdf575dd046d21159779f4f3a85c5e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb7b6d29693349834a3904e84da81af287ce4996a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb93374d07a64c3fccc3ae34b75a117529f7f9ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xbbe334b7139d6086838676a8e68d16d738af081e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xbdd97b73e7e75b7c65d998ec9afde3ed95c64fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc00b2530e1d997be7451683e0d22ea637edf4298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc1348beeb4d7cb539a90e5967d4f8986d407f968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc1ec5e8877a362f1f568234ffec56ee5578f7488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc24c50eb63736befb59d55d18d998d088d22ec37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc2637e8996a5a1639d19bd0d150c457ade7e5934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc41cb717c8a78f68a6131a306eb0ef1a4f825323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc6183d702324cf8757deb6869d41278db2143f4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc6a4d1090d71b9a905f1c939b91253d8bb2727ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc7a02ebbb73453da1aebba796d33f3176c457cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xcd44fecb08bb28405992358131fd5081a0f550d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xce0e798beb40c8e3f1b84a3fcb524b98ae671563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xce410e58c17419df31de1a57656df03777469512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xce4a790a2e1fba99d3c25d2096842bd21f57721a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd22d0c1c1973cccc8c31379453858fa155d7c9eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd71bf4a1717a31216886e73bd4b2c0540474d310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd92883aface456da119409caac160da844827fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xda0cf5234abbd784dae7a45ed16a8f55e257cd64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xdc449a8f58f3da188f12a2b9f89fc6b6d5ef9ad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xde7ca9804810f44a48a858fb1628e6520db06fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xdebcc35cf524e652bdf62dce406643005a0aba39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe019307fb1e1fa748806a11c15242059794452df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe2509abc8c5a8384cda8eede25c9e6de403db008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe49446520513e40a94a80432a221479136092180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe8788d95e67da5dcd2dddca2e2a81705f9d15f61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe8ec163c0c0a5ee8d2401912c47a5f985379f400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe9423eaacd7fff7773c4368a9bbfd382acea2c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe9bae0a376d577c58db1b0c837437d60a6428014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xeb1be2dfa259340939e7723d878a7eca914fc44f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xec487c5525f431f27d7f8ac56e1400beafd54ad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xee51b1eb2f75e0ca28af9706cdac93798fd5f5ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf060e888561d20cf26d9a2154cd2d9c469182138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf1d1557a3e5af950e28f117be453dc2de88cb048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf1e3ee576049883ad243f66518e82d98085fa17d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf2028f711fd264ea7106909a0256467a210fd890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf3fa53ba195f52fcd825d02f4a92354d492def84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf7f231a5a0c0ebf83c56a5376d60c11d7157025e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf9df4efc3f5f0e20715f38b409f35466d716bb03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfd06f359499154d5f977f63e7ed95bb0fdc9b66b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0x3a56859b3e176636095c142c87f73cc57b408b67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0x5339f8fdfc2a9be081fc1d924d9cf1473da46c68` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0x681cfac3f265b6041ff4648a1ccb214f1c0dcf38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0xa9e1ab5e6878621f80e03a4a5f8fb3705f4ffa2b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 138
- Live contracts: 0
- Unknown liveness contracts: 138
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=138

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0040c9fd4f4b39a590e78a7eedbd0db0fb4464e3` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x009808693aebb54e4c6d70c42e379af752f4d7d2` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x0151ea3f55a2f52aaa87b41be1cc188c593a7f80` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x01b92408b41fcebe5294b3677cfede4e385af8f9` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x039e25b6d3b1bfc2e2eb6e31fed6e6170b8d5cee` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x06ae33bf34d9645c67363f512d15171729a2964d` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x09946c120c0ef7977a59b874e9b6b5cc29e7312b` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x0b714cd2deb431ba30c57bb2496e9797976db8b5` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x0f10de59b89415ea16b577613c35d43f4fa79fa5` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x0f959cf1b2d56088b7cab62b07defed0bdb1a084` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x11bbde3bee4f256c570569aee2f67be08cdee31f` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x1406d0e17fdbd8b66b3ada3fb1cd4cfa7cc806db` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x14e91d85ebb0c38eee880eca311b08d3cce25c62` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x14f32dca5e50b49c5d362f284c077e24975f995d` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x171865df096505f9268ddf8c84a7d3a8d5c8acb4` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x173fe2879af92070f4f4a985bc055a2f01d4fc3f` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x1a6e79f309e01506e858a94950cc8a91ec4f23a0` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x1af31ad42040657f81e6d53ec8d68db2851496a4` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x1b45a0a5d8f5e87edd016b2c974eecc9e0b43871` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x1eb9792231d3dd371b53c8e3309e4b8e3612ac8e` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x1ecc72d9f223e4d5158855073902d9da9d668954` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x1ed2ba21fd40f3e05c55df5c1a80ddb9b417a8b5` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x20a210626abdd40421aebbe50564c9488d97aac0` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x230a99d153bbb6678e74c0b41afc5ca16102fed3` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x238bc1134e0e9ee4e01098b6d5c2842edaa8fe88` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x26141b2d58e491d363d0e485cf9765d59bae69b0` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x2c6de9c74d36bf628f0102d0f18407ec12371f35` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x2d9ab47c3441b4eb7d00ace98ff47010d4005341` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x2ee2c7282034626d6150ccc161f905382cc3605b` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x2f48272ccf4f6b77729a37385860a505283a5d33` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x31a344694fb72b2add71f302765c1707f5ae081f` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x32c4c0fd63d61c9f02f641c8a248022517b495e2` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x32dd38a67670c1133920a4c6f7f8ccfaf60b6a2a` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x38b9cb1792aec828bfbc75c054ad96ff0877a07f` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x396470b1c6a3e8af1be7be4e5d4878449ba3732d` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x3a2c96d68c182d75d0c9363aeec53a40cfecc58e` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x3dbe3204a63d5f9d2ad986e5af8027769c258306` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x3dd5c2acd2f41947e73b384ef52c049bac0b65d0` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x459ab8e050fa82f63bff581f0eb187512799c4cf` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x480501d16841181d267a3a40b5b1f0126473ab31` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x495c47651e814e4fe13e9ad096cd8c40bfc9c846` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x4988cad24b9f129d1ccbbf8fb45aebf66b925884` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x4d49dce3da051c6ca98c7c2d11961692519c4e65` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x4fa003607e2029d8c51649e40277f6e0fd9208b4` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x4fc6393856abdb46d1fc829a8fed2696405e37f4` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x52aff48eb6a6c848002987a0c9c671a2ee70feee` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x53a2d991ab5053d8f0a7fd93d4533ed6efc64674` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x53c752dbb0e21d2da24ba42f37e7c58203fe004d` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x54394ae127166d9e198528699e27a8e87e3636e9` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x57954b3ce72af4a290613b356848c4b098642c66` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x584534025bc974d51e423e36f3ff2a68846b59fb` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x58e2c3068f2b4b3446a1ba299521e32063a16e57` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x5c27e4353103e012396291883194fe82e1d603b1` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x5c5da1cb58267c3baec06f3590104ccb4dad750c` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x5cfde2986fad91daa155a11ed79dcd076fbff8e6` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x5e2fa28a049a8aca73c4e335046d2af61d800500` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x60700aced6daa03abca72d8cce85bb5c65e042c4` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x664351b29069d0a89f150d9091ffc28c18481a3c` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x6933e68095c321b689f825c1bfffe233f6e20f38` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x71692973baad51877ec7c867ebae9ddbd32cf615` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x76aaf37b8b9cb03d84597d2187a02eb128684669` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x76d9ad7d7c2ff52b3c75c8a143aab9dd490a18d2` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x7708d0b1b418366f28c985f0d34ff1b0351111dd` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x7852824b8be86eca5afd7077cda23e137a7bc5bb` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x7a0952f6abfdbe56a802d1b0a7ec40634841aab3` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x7a3f474b270b15a332bb53b6fa78847558efbdfd` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x7b4d8d5f199eb3217b449f469c51f1eb5bbb8a4c` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x7bfa359414212b02e137ff1f5577adf3efd06826` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x7dcf144d7f39d7ad7ae0e6f9e612379f73bd8e80` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x7dd282de5be83ac3d8017863104c10210e38c07e` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x811da0342b167a83a08ffe2abe10e7ce287c3743` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x815adb80a98dc0815db37cfb19cf3234c3e3d270` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x8659d0bfc0eba2439e4e00d1ceec9dc6f806665a` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x8670d281523dabdc69c229c788f5b6ad32794cee` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x8a215fa674919c8404a9b75ead8f741e9459fdd2` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x8c51396af2bf5fbf62e0f9a824746f29a16394f1` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x8e785329c287199ef0007318c43bb08b1c87fe77` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x9145ad2c60d3113f04eb77fea68d8ad082854aa0` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x95ec85fa98b014e439695df6d728edd03f9ad521` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x99ab3df7419eb5487dc0b85bb696dee525db9665` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x9a1fd96ac5654eda9b01f5e538baf10a9aa66dc5` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0x9b3f229acc35a4d1fe019102bb47a9dbec7497c7` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xa2d8f0527053757211a1878badea0779e5e5840c` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xa48a94af83dc3f5c06c2459db41227b97ed3c3a4` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xa4e2e406a5e84bc109f1dd0850fbbcad10bf0fd9` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xa988c919d315a2e18c9860c6d96c35e83f4cdb41` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xa98f96cae1003597e6cfad612eeac77bcf9e2e9f` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xab7a1d293fbd5e64263e649af9d05e56e6f226eb` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xad8d2253822ad072b1bf17109ea0ad9d24e83b7b` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xafe6ad4eb5372a6bdc240bb5b99cbb2e50fb3e57` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xb1d387a8011035e6e6be220a9067612cad7a1ba5` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xb214336ce7ce9652c5f20435d38beef4d6e21050` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xb4b4585f6335d9c632aca8687403aff04f01e9ec` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xb528254bc2587b965ce8df62fb1b0f8ead2823d5` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xb5b5d57668c70a36cc98c603903b5cb5fd34d5a1` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xb7361dec2bdf575dd046d21159779f4f3a85c5e4` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xb7b6d29693349834a3904e84da81af287ce4996a` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xb93374d07a64c3fccc3ae34b75a117529f7f9ce3` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xbbe334b7139d6086838676a8e68d16d738af081e` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xbdd97b73e7e75b7c65d998ec9afde3ed95c64fc8` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xc00b2530e1d997be7451683e0d22ea637edf4298` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xc1348beeb4d7cb539a90e5967d4f8986d407f968` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xc1ec5e8877a362f1f568234ffec56ee5578f7488` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xc24c50eb63736befb59d55d18d998d088d22ec37` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xc2637e8996a5a1639d19bd0d150c457ade7e5934` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xc41cb717c8a78f68a6131a306eb0ef1a4f825323` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xc6183d702324cf8757deb6869d41278db2143f4c` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xc6a4d1090d71b9a905f1c939b91253d8bb2727ae` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xc7a02ebbb73453da1aebba796d33f3176c457cbc` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xcd44fecb08bb28405992358131fd5081a0f550d0` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xce0e798beb40c8e3f1b84a3fcb524b98ae671563` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xce410e58c17419df31de1a57656df03777469512` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xce4a790a2e1fba99d3c25d2096842bd21f57721a` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xd22d0c1c1973cccc8c31379453858fa155d7c9eb` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xd71bf4a1717a31216886e73bd4b2c0540474d310` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xd92883aface456da119409caac160da844827fef` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xda0cf5234abbd784dae7a45ed16a8f55e257cd64` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xdc449a8f58f3da188f12a2b9f89fc6b6d5ef9ad1` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xde7ca9804810f44a48a858fb1628e6520db06fdf` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xdebcc35cf524e652bdf62dce406643005a0aba39` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xe019307fb1e1fa748806a11c15242059794452df` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xe2509abc8c5a8384cda8eede25c9e6de403db008` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xe49446520513e40a94a80432a221479136092180` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xe8788d95e67da5dcd2dddca2e2a81705f9d15f61` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xe8ec163c0c0a5ee8d2401912c47a5f985379f400` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xe9423eaacd7fff7773c4368a9bbfd382acea2c8f` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xe9bae0a376d577c58db1b0c837437d60a6428014` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xeb1be2dfa259340939e7723d878a7eca914fc44f` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xec487c5525f431f27d7f8ac56e1400beafd54ad8` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xee51b1eb2f75e0ca28af9706cdac93798fd5f5ff` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xf060e888561d20cf26d9a2154cd2d9c469182138` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xf1d1557a3e5af950e28f117be453dc2de88cb048` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xf1e3ee576049883ad243f66518e82d98085fa17d` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xf2028f711fd264ea7106909a0256467a210fd890` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xf3fa53ba195f52fcd825d02f4a92354d492def84` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xf7f231a5a0c0ebf83c56a5376d60c11d7157025e` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xf9df4efc3f5f0e20715f38b409f35466d716bb03` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |
| unverified unclassified | UnnamedContract<br>`0xfd06f359499154d5f977f63e7ed95bb0fdc9b66b` | non_address_book | unknown | unknown | unverified | n/a | `0x54a4c29196aad6fa77f9b4e35288e5234ac4f31a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [VAR_Cog230731.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/CogFinance/Cog-Isolated-Lending/main/audits/VAR_Cog230731.pdf) | Veridise | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [www.verilog.solutions/audits/cog_finance_v1_oracle](https://www.verilog.solutions/audits/cog_finance_v1_oracle) | Verilog Solutions | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21376] VAR_Cog230731.pdf — no match: Scope section 3.2 explicitly lists four files in src/ folder. Audit date from cover page.
- [21378] www.verilog.solutions/audits/cog_finance_v1_oracle — no match: The provided text is incomplete and does not contain any contract names, scope section, or audit date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| VAR_Cog230731.pdf | cog_factory | unmatched — not counted | — | listed in scope section 3.2 | no |
| VAR_Cog230731.pdf | cog_pair | unmatched — not counted | — | listed in scope section 3.2 | no |
| VAR_Cog230731.pdf | fuse_box | unmatched — not counted | — | listed in scope section 3.2 | no |
| VAR_Cog230731.pdf | loan_router | unmatched — not counted | — | listed in scope section 3.2 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 147 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [21376] VAR_Cog230731.pdf
- [21378] www.verilog.solutions/audits/cog_finance_v1_oracle

Fork inheritance lineage and inherited audits are included when available.
