# Agentic Audit Brief: Homora V2

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Homora V2 (`homora-v2`)
- Website: [https://homora-v2.alphaventuredao.io/](https://homora-v2.alphaventuredao.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, bsc, ethereum, fantom, optimism
- Contract surface: 516 unique implementations (516 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $110,273,717.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Homora V2 in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 55 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 461 discovered implementations shown in the inventory but excluded from coverage (55 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 515
- Unique implementations: 516
- Raw deployments: 516
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| AlphaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144062 | `0xa1faa113cbe53436df28ff0aee54275c13b40975` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (515)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003756fc5e1908fba1af693cba81bd8885b44888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0079d39858de26f4a48aee061a27d01daffd18f1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x00b1a4e7f217380a7c9e6c12f327ac4a1d9b6a14` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x011535fd795fd28c749363e080662d62fbb456a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020edc614187f9937a1efeee007656c6356fb13a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0333effa7b23f3efd83518ac518a85c562a8f5dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046427fa6b924739cd98ee507cb0db34c7a66c2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04c3098931bda90cc307ea37b421953b3384ee6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05123318cc3c4c70fefeca0837ac2d0f9974bdca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055b81dd269fceb9a31fde7ba003c604eaf3cb4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x059dc78eaff8ae7f6b885e779ac15816d2ee8d62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05e7b38931948e10171e643e5f3004dcd0bef22b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x06799a1e4792001aa9114f0012b9650ca28059a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08bd64bfc832f1c2b3e07e634934453ba7fa2db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090ece252cec5998db765073d07fac77b8e60cb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x094048819a6172a189122d2f5d35ffa1d70a81a3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0b8f60be035cc5b1982ed2145c6bfc05f863ddc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e444ed30988e481b65debd633556abc21a766bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ed16f5c29e93c11c2b970c84e40eab15d11ce5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f431a00fab97f38e223b556b116caac97d73838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10329e8b804dae89e535f93e1907274418fd75d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x109bfde650bb8fb7709ceefc2af81013238289fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1137c31918328eeb88b7f84ab3bdba6d9d376b87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11d9ffff264baf0a891c8310edf9899fd3e3a4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x124fc2970c4dc1cacb813187e6c1a0d2f01c6c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1299a041e20d01f15afd602a704a7bbec91fd5e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a1b67bc18ecb3a4c3b55b527af237bc6596507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1358241c3f136155a8c4922c07c187df4c6adae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1368581bb74c87119a84979f8652e28932ce925e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x142f809c4714e4fa76389a534adf0468caca0864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14c6e4b1280c9cb955e4712238c1522f7842d4cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14f66f8c283d004f4195cd041746b6b5fa823e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16878a349054cbcd8a03c475f26beacd07eba3f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18864491083dc4588a9eecbeb28f22a9bf45dad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b1db87e728a2c22d596e331caabb0c99790113e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b640ec69c2ba730246c645b744f06d768fa89d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c4413ac634d96faee6b64ee98c2bfbcc85dfc4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1debf8e2ddfc4764376e8e4ed5bc8f1b403d2629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e416f2cafdf458b88f86f3a27ae30920289aad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e5bddd0cdf8839d6b27b34927869ef0ad7bf692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e93baa4cc2fa342ab9b859bb53c8bfcaed14013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x201687712c2a0c4669518d838cbbedcea77f98ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x213844bed1d389d64e1a95a660035cae80f7f49d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21c630b7824d15bcdfeefa73cbd4e49cafe9f836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x220c9e1836096f2e8effed0896dde153179ab542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23091694539a083940eb4236215cc82a619fe475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23324a5b4e737440a3b29159bf0b1e39ad93f5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2527f768956f5af65e694d4db6b580c83cdbf73c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e4014fc1b5c3604b29fa86c98aae68c4d86e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2684811b8c3859145cfb928d52dd0694fcf305fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x279e7e72f3c20ce1c59557e1b9f8bbfdd673fc7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x296d278e7a48fed3fcb8b86b8f71b0fd78818c66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29797c05706689b41d8024cb42996ab36b5bc815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aa297c3208bd98a9a477514d3c80ace570a6dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2abba23bdc48245f5f68661e390da243755b569f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ac898a9a03a7f105dd6ea29b993cc6f4852a0d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b0bd4e157a188d41ce4f85984ae43c9a332b76c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bfbbf98b531853a5e4437f0ec1f2d6f4efc4aa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c6cb90ee4a86bcda1da34a964c2fe94191dbb85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x322bb7e977b6603b03be7bf8c917a1a222d7f137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325a606c8c043ef1e2d07ea6faae543aef7b13cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33bf0bb8e1405dc440eccb97ffd92fef438c8a27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3614644ae157280b5c1d17ae686c153a204aaf3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36a5e6139199b8220f3733a2ad29c8059b1834b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36fc5549464aeb4306479c5a5579604d5a3b212d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3702bbba321c2fe7be4731f558d2d60fa20eeff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3721dcd1c1793f945006a967a91da81562d1b588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373ae78a14577682591e088f2e78ef1417612c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373d22e4fcd14d06d03a89e048f8870f15fb1fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x376d16c7de138b01455a51da79ad65806e9cd694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37bceb01eafddfe8d36fde3d3b6a380f7e1a452c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3843b9bafe891998f048d898b43b1b3c53d0adc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39a95b08b12268adf3371e810b6b9f3e3eeb5478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3afdb0877206dea0a57e4e4d18a00059cb6dd897` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6f46b1b11f49c02aeb53cfad53f905633c3b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b98d7ea442d52ea45d25d9802102ae493287a1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bf0941df09903805720a75ed61788fedea7211e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cb92d8ef3c6246cb40c960fec416d7ce3818039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1f2feb27738609a22aa8b192a1a9138c445aa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ecd838f6a5ef357237cdd226bab90255549ec71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f9dd1b039a19a7cb1dd016527e8566bce185936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40b686db4feea08e7d24f3dedfb90d78a51e9409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x415ef78155668d7725223a9399b81d4676d5bdc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4189214c21b17ae9ebacb17e463735a57073cb80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42d7b319807c50f8719698e52315742ad6f00c5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431d5e112623fada0d2aac1f76c03d7b760daa49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43b763064146244fd282eee70752b43a41f279f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43c425fb2b00a991a51b18c217d749e393bf1ab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4426aff67c6226eaeea4f33a8368cf214459c558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x466c427cc426a88ae2a596ab48a085dd72258354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469121173eb44a5cdbd727ad8de2c15db1c64e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4803e45218016ad186ed7edb5d289527f177beaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x483747e40bdb6ab28b4b4ea73b9d62d4d44c509e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x487e0ae63bfd8364a11e840900baad92d5af7c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x496aa991cf3952264f284355371cd190ddcc8588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49991481a9ab4a3e2c42c7787f1bf51fc8bb0561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49a0e2e8a67cd6b5a3beed227995a01948f9a2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49c849760786061d556eba4d0bf96d7ee2d571d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1f0ce67303ca233515980219beaeeb389132f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b3c4c225899ee8b572fa4617522e678ec7c1d89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d38b1ac1fad488e22282db451613edd10434bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e323c6476738eecde646ecb61b6be0c2d848461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ec23befb01b9903d58c4bea096d65927e9462cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fa357f4d442deba3369f6ea1a20eec54fa2543a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x4fb70edda7f67bdbe225df7c91483c45699293f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x503c7c38a2dfb371274cf359a284f3314f976c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50779dc635a91121bfef791e9da16fec7bd04b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5196e0a4fb2a459856e1d41ab4975316bbdf19f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x525d911b9459966ed6e90f3d44613bc17dfc8be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5460779ad8aba29023f4f4e27af4c02b0b1549f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55c76259c7fd1ab1149496114a18e3faeb3711eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x565bec6dc8b350a5871daa97d5dc3ac90f3ef338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56f126d7ff657b35d1de60d7d19737f0f4feab75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x587fd08d2979659534d301944b105559ce072ad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58c7f81b6f1bedebdcdea589cc2497ed140eebab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58cc5c8e863759ba2aaae2bcaee84ce22404b5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x593d49c82feadc0f5a756a4a4d673573ea0baba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59aaa3466794cb40183ac96d2762ff74fd773a3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac9e279bf39159984f08e625d54357686cf5d1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b364b290399c7f4274304d06d31b7a891873675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c546a258a9748d009ad669f7325ebbbb2fec73b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f5cd91070960d13ee549c9cc47e7a4cd00457bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f8c47b5613b58a2dec567c7b0f5bed9022a0520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x603069c10dbdc7951168dcc9e9069eeecb261607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60d50a4cf051938d797c3c49fea66112c4ee6a28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61b7379fe7d3367969d7c37f644a7ce0643a7f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x636478dceca0308ec6b39e3ab1e6b9ebf00cd01c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x666f5214b69fdc1bb677632e353be2e3c047c05d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67b66c99d3eb37fa76aa3ed1ff33e8e39f0b9c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68076327b91ed5aace79a0ab26015ea930810d72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6928b5a0d957258383d680a555cd767251fe1eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697349dfdda56936c716a243524810506c2898b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6985854aaf1ed1652109a6a85cb0204de39f9ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a509005cc88d7ba933a6a2849192d90a5b2e682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b4f168e91452a0ac2cff9f4f745f5efad09861c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6be987c6d72e25f02f6f061f94417d83a6aa13fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cd5ae50e14a02698bf15e0f2f5d66ff8b16bdea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cdd8cbcffb3821be459f6fcac647a447e56c999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f80c10eafa1d3f7d8cc9f36bf39d301c7a7ad86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x713df2ddda9c7d7bda98a9f8fcd82c06c50fbd90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73205dbea5d52cafcbe01cc486a0bf86749a6c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x737aad349312f36b43041737d648051a39f146e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x759034a7e6428430c7383c10b01515ef38b61ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7599a3c5a4eaba41863126df4b14b8b20606fffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x762c1e3c84b74468739207b861508037b743a6a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77f1bb89a19f9c7b29d87717a9db20c8b7271eea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78422ccea3f7d27a2645ae3e8f1b46e68c0b508d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7920c2e12ce43603d0a2436b8709aa4389034f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79eacce598871b4e66bab1544c87f1e2aff54f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ace79e10bb16eca25868ea34ee8868a16df0188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b40f1467d605aad8d8f0789b0e99754d91490ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c05fbca6373a873e9a63c1f4f5e538304247209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cbe919c33abda60248f645b8981b9eb5381ded2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e9d6038bdae20a6403b2163fbc0550ae6e4b737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec7b0dc7e0abc218fa1f51d5a2e69ec88e90337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f1dccd54eedb5bd10ec70a6a394aa541583cb8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81796c4602b82054a727527cd16119807b8c7608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83490c3c061590223089fd0d3fa3dd794e1de85a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8448bde9e8643e1adbe610eee0b2efd4b16b830c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x858d6353a52c25c53df1869230282d22b41f5790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x885e76f542eb83557d8be7b7515a63ac2dd8448f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8897ca3e1b9bc5d5d715b653f186cc7767bd4c66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88a3e23c0eafcc8de2e595d15b9059ceab539b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8918248c6623c69d4b958c3860f8bf8bd703eaa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x894d1ca4c14fa5729641c4bdc461431913422b02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b57560152374c04b0eb384de8f963dc7c0c8fd8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8b947d8448cffb89ef07a6922b74fbabac219795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b9f4584cda15e1c142063b39f02252a7649b544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d4958f312ac3009d3804dc659d6a439d34e2821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8de16d5884a418f1034f78045da47f2cae4012a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a3777ab22e1c5f6d1ff2bcc6c4aa6ab1dea14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f03517cfc7b0f86ffe94b60683c01326efb16a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f8ae884e582d3d9947017233cdaea5a823627eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901d4774cde5a660f37f1236391e2f6a9952cc7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x905df4462e4217589f9598f37e527067a1ce73a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90b5f08283565de70f7ed78116469abb6b030aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x914c687ffdab6e1b47a327e7e4c10e4a058e009d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92d44a079b24ddee8065b1ee12d73a7c2f62309e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9331c0192e6c3e19510c6f01be6bbf7befc205c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94207cb2a02f0dbc16040b6692ee1cb999e85d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x942d9e12bc440fe9c374e67dfb0328fb1fbfcd3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9446614037a839730a92e28a7ec870344b7b8f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9473fe71d643512750bf7c89fe116b9a59a2c91b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x951e95b6de638b2a74cefd9cec869ca7a8e2c43c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ab3ca8133b47f16f47f6a79410680fe87a6139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x963280ed3624da9565582e419f527fcd5e7d5a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97a49f8eec63c0dfeb9db4c791229477962dc692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97bbb2c0c9f4b63dfadef21da0ef68d1eef46218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9809d5148c91f3b43df14cc33125e173438b9c16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x984888a35de1a9387f60090cfc71ceb46d953e68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98a39b20a6907acd7e7710ae80b696c54d4b2dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c666810ba4bf9a4c2318ce60cb2c279ee2cf56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c154a18d98c9e53d431cc66e3966d45174896f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d722e4088753c1518fefaf0267da86ab38b6081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e2a9457de74690c50c6d703471f23d31b950fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e6aca6b13a0bc3364d035ff6d97ff4db319f88a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f3556e290393f086e9cafb7732ed1dc609970d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f440181f3c8092a5a4c1daa62c8ee3342890762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f73e638a1de6464ad953ec21a12701de10e69cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fd317e712b86cc59d411690bca66a48ce6498e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa00d01a8bc87f8d63ac50621190722280991a6a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa04f9a596475bc8756f1a891902e4df8d3489da5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0fe022d098f92e561aadabe59ab6f15c4a4fe9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1137192ec0d4b204e523717875f49c5e6886546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1af884b54e72951443407afe0ff8dcfc4d97546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1af895e5d5898a7000752ae6f4161f03fe11182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1dc7ce03cb285aca8bde9c27d1e5d4731871814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa210fbd1e9aa6b354391fb15e469ec583bcc8d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa22c6345abc19086d903b70ba88ac1cd295e2634` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa2caea05ff7b98f10ad5ddc837f15905f33feb60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2d3e7fc0ef83d28fcabc8fb621d8990bfe48115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa398b342298882ffd49f46e411ead3d20d0560af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa575163c0da0bec6887b5bc01be7231fa7cb2c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa57f64458d85073911263e4e92c9913805c45d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6bae2f3ee27271b55779bc6071fa101431dc8da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7abe0969589032f98ae8d037623bc12221b69fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa86e0b83831e9e235016ba710bebe754d1602457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8854bd26ee44ad3c78792d68564b96ad0a45245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8f70a2b021094746ffdeacab15105e5cfe6dc9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaad6414d2008e0fba776dd7db89f041d164f1c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab6d6a9f4bd6731f4a9d8c27e3d63ae84813123f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacd4e6d35f96a30c4f7923f95139e275eb783e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf220eedd98c879d4a31308bd0bc26298aedb4fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb004229fc9a8f22aac373923d40ac7f3887863d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb024b46dcafe360064b3c1c0336c9bb6381d4a7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb050eb83022b0c06228ca78c9cce4de206fc7726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0942ab3bd38fe3128f09a613de80cd70a90c94d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb09c0a4469b862c51391d85c5a4f64db41a3c7d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0fa71bb6d388f673aed7bc528c6f67c84e3ca15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1a12c64017c00f055c9a46ed25adf7a942f7f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1d2aa59be030b14fbcc7e3f23fda12f611fef3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb35e6a063cc00c66408284d60765c52e70394772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb39f78e505e0959c96a38c91987713bad8519480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4fb6ffc9990e0f4ffa2395343a43e59ed5f405f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb55f46d5bd3e6609b39707afbabd8a61ffed9d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5613129117cf464b63fea37e91789fb45f39826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb59ecdf6c2aea5e67fafbaf912b26658d43295ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb601361832518d31a18462ce243226811674b987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6922671fc24bfe36589d3ecc051f0364dc67308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6ce73a7a1c88a0775600f1953713810885a86dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb80c75b574715404db4b5097688b3338fe637953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb96abafe296b51fd245d3c80d2a0e97f933b3285` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xba5ebaf3fc1fcca67147050bf80462393814e54b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcec1a239be826a0a9501fbb7fac11d42211744e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe615dfed36d753999f367458671a4954f7b43e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebbff645d666445f39900f33201405e1cdaf130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef2d458ff41302b57cb1e5fb5f320f053b606f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf11da1f5828741c6f84d1d860a3f8ce75483a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1b8db1125150a3bcbcd932c4bdb4b498b85c20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc207be77051492f89aa7d650a6f03dc76fbf00a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc294d18b9e63ca5b69432507fb511e8bc2e975d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc320980c7da44e418648ccf050a7ab38e6b17d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc331687fd71bb1d7f2e237091f8888ddcad50c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc43dc00e5e4cfc8c8092ec4a5d363170c6d14ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc45916dd98e95cfa2a9f1f4b31bcba1b35c61031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4635854480fff80f742645da0310e9e59795c63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4cec1a714ad2658df2060134ce03caeb1865912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4fe42313ff313cd4f858c4e796fe0d4931198c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67ded0ec78b849e17771b2e8a7e303b4dad6dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc681cad10f227ef506a352b3dc5ff6c676b8636f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6d05f8d77a80a04e69ad055ff7f1a599b459ead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc842cc25fe89f0a60fe9c1fd6483b6971020eb3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc99ebcb52c18ff5423d31fd02cf29b4a8069a407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e34665d67ce3b3601c4d57dd1a34b7596370dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0eb3ed6e605c5de7634bb508db4bd20426fe6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca229d31506116ff19c4b5e3a7765bab170c6fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1792b0552a718c16a03cefd6b1db30362dbdae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb98f10700cb24fd904e2267958daa88e5bd4896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd912be8943fd58bede3859a56048f2a8475b865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdd77927d50c7e35b12b3994e2a5a976519d468e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcefc20228d1d754cc1dcdb9741fe0259ba8d235d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd02c88a50230d93dbdbbf5cb6e4052ac16fef05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd04eb2ba1990e109b351b047095de5902e9c1dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0b461581774eb196281dd36e22df586851cd568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c72caf0f8a83d52808fbd0ecd856733586fb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd211d67aadb8dae5d057f5fb041e6f6b3d75ab85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd29e369886b583319a37eb7d8d420ff031c0373b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2dadd442727b7172ddab1b73b726a1ef9dbb51f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3843b60e69f958ef93bec299467e6ed301cbeeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3ea1b6de0ed59bec8b768d2cdc995002c7de95a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57bb198a08da5416f3e2cf645af4564f9afcb51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5b582c5cd81500d0b4750d8cbfb51e7275eb50a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd80ce6816f263c3ca551558b2034b61bc9852b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd84f554a24977cf7bda60fc11d6358c432007814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd893d453b9c7d0b6114b059c12df2a69fc4dadab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9003455a5b4a3e853d069e88f368fd9b7247eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9618e0f09eb7e122565489c5d79ddde7da22284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9b7aa15079bfebe25b13fd55b855c20dfb3d15d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9ff46475dbbfb5315ebd8bcfd9b5669bde02d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaae9bfc72f39c68a85d169765e159ce7eb278ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb90a1a31ff72976b6f2f009e77131673404180b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc5e8ef4845776b1a65ff402d1fb76323875e0c5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdc9c7a2bae15dd89271ae5701a6f4db147baa44c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce3ab478450b101eba5f86b74e014e45d2d385b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddb250005689a98ac7a844261713ef213b9e34ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde58495cf0763c0a918b7a9e22bfb5c2aaf115f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf00594a2456c38af24a2600115999bcf096994f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdff0d5f17ae42f9c6f1dfc1d94568f650d36c6e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe28d9df7718b0b5ba69e01073fe82254a9ed2f98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4c09dbe7f94261758a1a59cf6841ddd2ffff460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe500cc1fba63ec67de52776dd16513861dbcd8d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe50507d828c0e38bc32ecfb4c296d0b173db3c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe520679df7e32600d9b2caf50bd5a4337ea3cf89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe52557bf7315fd5b38ac0ff61304cb33bb973603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6ca413f65c263a6e5aef1c8a60164b41fcc5177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8d63ee2697146d67554c1c3081ea1310d589a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe932326d463d56ca40b4aaa3572a1052b544f908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe992e83b268f63ee508c6d292a54dff91c1eb57f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe994ca9616499d067bda00edae0f7a0cf74bd916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea2b4ab299541053152398ee42b0875f2d6870df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec07e5b45c17017add64e2cdcb4e3d0b3a4f3ee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec576a07b8d6db1d8e0ccb7a931d5c92ba647f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed01c3f1c5b06fcdafccd37abb11e7d907f5e471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedd9d44e302b0bfa693d0179a1ee14dde48306a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee8389d235e092b2945fe363e97cdbed121a0439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeea3311250fe4c3268f8e684f7c87a82ff183ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeed9cfb1e69792aaee0bf55f6af617853e9f29b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeffe76b48a9f676c26b17ba27c426afe25aa15a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf047fbea321de61426437d8ebf5598d7b2673aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0cb358be145bdad4f441f6a568f76a3de5a70b7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf1f32c8eeb06046d3cc3157b8f9f72b09d84ee5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3bb390eef9eb54b03cf7b8c95c8992fae567924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4622fa91cf2efa51ce317139e31112444305775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6090bcf0be8e9b256364b015222b2d58bfc8fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf768171561b616ccb42b1a87f5caa5645d9338f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf904d497a789f3d801f115ff1bc9c292d13d359f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf98ed25a82f1731578e016fa0145fffa0dc517c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9eb24b83b51fbc0bcb1204221c8c9f1cef33994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaac07b4b0c65df4be52d14aad7ccf3b5e57e154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd974984d2d3b9e114a9712e673527687887f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd262a40f4bd6d3f7251d193abb3c1c14817e4ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd97f5bc8ee51fa655f53a21005d0f5653b971c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdb4f97953150e47c8606758c13e70b5a789a7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe80c685ec7375238362ab9541fb75b4de8af739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x04838757a56e9c9f70f9a7c55783c15f54a56662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x080a165204af7665dc980bd093125125a2bca375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e4cb26058c2049827dce451cd4170f55031adae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0ed5d133a837e8544ad77e0cef5eedb8d9e415c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x118007d4aca8a811d03dc4dfba220d4822ded4c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x14bc6cf95a8befd4b07e0f824c60bc1401fe9d23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1d4764832a4b71c1ac00fc894840d2a930111836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2a479730f40963036f40b27c035d1fb78eadbfc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2fcb7d1157057da794bf0694c40948ce4dc1fb90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3405163d6aaa6a80e210a568c06210d5b1925d2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3927e7255b6007f0f93c7b6f7514e0aff332c641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3bb5753e5d5ad58c193f254c5f1c484f817db3ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x436af0355e23e3eea22c7bfca966bfa848ffb835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4580371d0525b66b1c29e825e648b39a3aa0301e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x471d3da2eb7d91149da5e0dd4ce523267237380b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4791a60f71a105b3aa9285c333e3440869f74558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5634d59532969871d9b8c727ec28cf816275db90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8fd641a26c373f0b9baafe5aeafcc977458b6153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x928f13d14fbdd933d812fcf777d9e18397d425de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x95716752c7d05c4264c33560ae4d0c4390eca860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x983c57bf4867d8fb13166825ea0464bc6c10b4cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa809b61acd108514e8060e0bcc06153ec70e3b77` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0xaf8c59de82f10d21749952b3d44ccf6ab97ca0c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0bba70beb9d536f1a19d9e2ad6160ce6acff1ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb4a105f2ef6357c2a679880e048f050ad17b9a8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xba514d50c4abb55a632999f14f71f9a189b22c7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbcb8b7ce255ad6268924407342b78c065df5986d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0xbf956ecdbd08d9aea6ef0cdd305d054859ebc130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc3445eb36b59d618315d9df8f8e3a53bf28f5bef` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0xc781cf972ab97601efecffa53202a410f52fef92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcb4dd5b7e83bc8f411a2ff49c64c33653a580249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd110a686d3175a1ba8aa56eb003c907686392d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd1994a2fc29b4acb1be5b8089f14ac1db15b5a7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd237cb8794f8dc36e1618d1b93c8c070c3dec5c3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0xffa51a5ec855f8e38dd867ba503c454d8bbc5ab9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x04a65eaae1c6005a6522f5fd886f53fce9f8a895` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x060e91a44f16dfcc1e2c427a0383596e1d2e886f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x0e4cb26058c2049827dce451cd4170f55031adae` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x188daa19208b369ce74a5959661db003431f011c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x2fcb7d1157057da794bf0694c40948ce4dc1fb90` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x31634294a0532347d6e543449436b2ab4d20c48c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x755294a6093aabe389c59e9c9937cf7d614e7d0a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x8fd641a26c373f0b9baafe5aeafcc977458b6153` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x900e2aa94a2176a84d45962132f7898861aaca26` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x928f13d14fbdd933d812fcf777d9e18397d425de` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x977791a64ae5b96090403ee8f529934dff7fb662` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xba514d50c4abb55a632999f14f71f9a189b22c7d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xbf956ecdbd08d9aea6ef0cdd305d054859ebc130` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xcfd1acd468112317a04844a445106b23169c38d4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xd4159936fadf8c8f28db68dbb67bc5afe978a82c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xeca630046220e1284d89188dbb4f17328e83fa7a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xed0dcec4d50b6374971ad7c7180f80775eaff1ef` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xeeb9b7c60749fec168abe7382981428d6ac00c2f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xf8311a422da44f4b98b87eaff02ecdea506d608c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x011993c940a639efac34bd54f24d2cf3e3002214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01804ef6b9b193b23b9431afe1c52803ca6525d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x032ba65c71c82d2e6dcf91cad148adc64a5f02a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0332fb5bd76c5b6c4a73a677b8d84cb9f65c141f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x05edd168030a821d6afdbd6b1134348870e08520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x060e91a44f16dfcc1e2c427a0383596e1d2e886f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x094532967bf224da829bb5d1d6e710277be376b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a13e34e64ce192fb7515671375018f61b4232ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b8f60be035cc5b1982ed2145c6bfc05f863ddc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f431a00fab97f38e223b556b116caac97d73838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1261330330294208198d946c63f2d5dbbdf30069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1289f2e9a1ad1c0bb110b549dfa44bbdc4bac4f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a05352c3fb1040a2af751ad5fd5f8e7cbea5d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1de90c0ce3d940412c3ba7322a257f7bdcc00ceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ef5cb3881e9297a02d9976a0df5ec0ccf5bfeec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x200996212aeb554d0939340ace5c16db4d9eea0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x214eba69f9a815e50a6dc1585262ff0c5b44a05c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21c630b7824d15bcdfeefa73cbd4e49cafe9f836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x281fa037844fbd3d31835fc37ea6b1a972b88749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2889416151dd1cfd91257e53a2b87389c22fa455` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x28f1bdbc52ad1aaab71660f4b33179335054be6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29d411f5bac5feed785de5c85d52857185f62d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32ae7786c2ed7f6375e078d7344af7e5a08d62fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35d9f9ea86e86e2c8c3d1e24e116797139114178` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x376d16c7de138b01455a51da79ad65806e9cd694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x377da1791e2225740599a3c447c50861f7b27f49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ef2a0a3017709529d362ea3ca28194c8f3f039a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40348b3b414edfd342e33b13e825d41807dcb8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40b686db4feea08e7d24f3dedfb90d78a51e9409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x461067b031b612bb4e1fdedc62c8f0a8f61902d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47f6992feca2ecd96747505c6a17c3b6f878d553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x496aa991cf3952264f284355371cd190ddcc8588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x49bc2a4d9cf07ff0de4a69eb153907d163e7a3f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5108e704b16094c79cb526aa2a69bb9b41bc1821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5196e0a4fb2a459856e1d41ab4975316bbdf19f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x556b00966842b1e9046c85766788d373b2e85749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55c76259c7fd1ab1149496114a18e3faeb3711eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x573a89fbc6b4a5b11a55dc9814a1018a3a9cd0ca` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x5842728ab97c8920c210fa88a2edccae1c80d720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5966b91d6db3ecf38883afd1e7b85cd6c2d26e17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fc20fcd1b50c5e1196ac790dadcfcdd416bb0c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x628811cf4fa3ea35f691909e0504735855a9f665` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x652a76731a6db7249a7aeb43f824ebfc022488d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x671f78b5b9e8f38f5df0e626dca2c4e09eee2724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69491fd9a6d9e32f32113cc076b1b69d8b9ebd3f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x6ecb26f5c2d167f5e724f24eda63020b61c289ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x732c57d2dc1a8f1da0c6ab525275887598c89822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7424ddc7ac9f60b3d0f7bca9e438dc2c1d44d043` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x74a750b929ffd9141262d1542381366d139fe234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74a94113237a229a63d0dc028a5abb02a190ffe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7723993c1baa141f5decfc8bf5dbad47aaddec86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77f1bb89a19f9c7b29d87717a9db20c8b7271eea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x788cea33c2fb6b7582d6a7b59cefc7becd6a96d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79ef2ae6027feb0342dc9956814c300666705eb3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x7a5ff9c975c315174ecd431e9dac80adfac1e3b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e19a96dade634cfc3e83f20cd5e67626815b5e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e265c6fb81341611eeda46a237956bee666d969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f7c811c889108c89f539a21d150b5d5fc616545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x801b1b8a8440b9ae348d0e49315dfa59d340932d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x80cf6555aef946dc57bc3917daad1f793799fe0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x858d6353a52c25c53df1869230282d22b41f5790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8639d751701d0a4698839fe4006e29b1d82a621f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8951bf4dabbc707d653dd2ea5a0efa5c30e1bcf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8baa405bbae2e7c9868711356b063d22a2b7b4bb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x8bbaf67ceb8eed2d5afc5d7786deeaba8268fd4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c716045dca07cfcfc65ac6fe704a6b165d199da` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x8df47fc33df77ae0526cdac4a0ca89739ef9f1cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f03517cfc7b0f86ffe94b60683c01326efb16a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f26efb26f394d4ff948ec42c9eac345482f51c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92d44a079b24ddee8065b1ee12d73a7c2f62309e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93cbc7e54969aa57e911825aa729ec80df648fbf` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x966bbec3ac35452133b5c236b4139c07b1e2c9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b3fe61f1525d0a746becf0fb9894320518837ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa006f17ae082281f03fb7e00c45584fced9195db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa0b8adc61e76e2b3961eb66e2e37840e02053591` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa45e83329f8530bde96acde855bae8e9f96ec52f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa575163c0da0bec6887b5bc01be7231fa7cb2c0b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xa67cf61b0b9bc39c6df04095a118e53bfb9303c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa6bae2f3ee27271b55779bc6071fa101431dc8da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7ebb3cebe95579e2fa19c801bdedf63da7d1c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa820ac9a47125f990a1ba18ce32f718a89453481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaafa80367975dad6f5243382f26d2eab978973fe` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xab80758cec0a69a49ed1c9b3f114cf98118643f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac421234cef608d7b566bf15d34696816dbf2348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadb5174d52af48074bc9248917587c1f2dd1fef3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xb2df53045cf398715a8b2c94f679b4dcb11a0bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb41de9c1f50697cc3fd63f24ede2b40f6269cbcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6daa7383da04385ee9ac7973306b5c4d223e773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb79bd85f9928a6120b8e52f5c355c5de68f7fbe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba4ce43391e62327974e79ad6b2e2c923dc756f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbae3ceb56e40525612c100c514488d903007c9cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb4a2134872bff0f07bd52470b621232b79395a2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xbc648e5f7bfd01306ed96476c34f25a7d28ac82b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbca8c68641ccf93b6d3db9e703ed76574fa46687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc12f721884cb014d9ba6f860224001576fc6947f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xc32cb9d28b257ce286f4a1c01222171f55a6f7f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc420fcdf4de68411aa01124370a622410088053a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4fe42313ff313cd4f858c4e796fe0d4931198c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc681cad10f227ef506a352b3dc5ff6c676b8636f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc76d8b725dfc40e0794d79eeaebb338b117c0ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc842cc25fe89f0a60fe9c1fd6483b6971020eb3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8ebd1be27d506bd96c7a1dcc50b1e4d7678abf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc7fa582a4e2969dd2957d5326fae6b1d5c78b2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd25c2adcc025ddaf6c02e24dfddb779ac7a540a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2cd881fd35ae249f7d9b4e3f2de397ec603697e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd3843b60e69f958ef93bec299467e6ed301cbeeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5ffc83ec97fad4539fe8ac7b293a4f70c138636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd79d48841626c96ad6804a9ae0a1542568d5197c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xd885e488eae40c9f9e4867e1dc7ae26684083150` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xda255a9126fca3a2db4bbb991816f3e6564c003c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb90a1a31ff72976b6f2f009e77131673404180b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xdbc2aa11aa01baa22892de745c661db9f204b2cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe13b4e4d0b3648770d625dcfd7bd4f96b3cac479` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xe2f6c8c5ae8f07d0a2e16a7e43fbab476257b9ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe4c09dbe7f94261758a1a59cf6841ddd2ffff460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe4d8cd0c4bda9a0fab537b93c7b391ad5a9ebe75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe4eb988bdaca6b2a6ba383a14bdd15dad2720094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefcef638512e462e5123be671db715ae1418a1d2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xeff3168dcf49126d185ef561c793fe6d95a049a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1810f333ed66790898fd374a95bffb949423bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf40d48bb67508538bfab8091a919d2659a944b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf9eb24b83b51fbc0bcb1204221c8c9f1cef33994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf9fbee019c660f1aa2510cdcf78f1e5244558447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa5c860ee75e66ee37b9d1e3c2020c77b32ca8df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfcd7ebc3a42d65fe77988171999cfbb7c4a85523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd332a482142de82ebd3aa121489a77f82a65de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfff45c0b77d7c0c33a97a879576f0550b6842bff` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 460
- Live contracts: 0
- Unknown liveness contracts: 460
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=460

Showing first 200 of 460 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | unverified unclassified | UnnamedContract<br>`0x01804ef6b9b193b23b9431afe1c52803ca6525d5` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0332fb5bd76c5b6c4a73a677b8d84cb9f65c141f` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x094532967bf224da829bb5d1d6e710277be376b8` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1a05352c3fb1040a2af751ad5fd5f8e7cbea5d40` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1ef5cb3881e9297a02d9976a0df5ec0ccf5bfeec` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x200996212aeb554d0939340ace5c16db4d9eea0a` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x214eba69f9a815e50a6dc1585262ff0c5b44a05c` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x281fa037844fbd3d31835fc37ea6b1a972b88749` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x29d411f5bac5feed785de5c85d52857185f62d6c` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x32ae7786c2ed7f6375e078d7344af7e5a08d62fe` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x35d9f9ea86e86e2c8c3d1e24e116797139114178` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x377da1791e2225740599a3c447c50861f7b27f49` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x47f6992feca2ecd96747505c6a17c3b6f878d553` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x628811cf4fa3ea35f691909e0504735855a9f665` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x671f78b5b9e8f38f5df0e626dca2c4e09eee2724` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x788cea33c2fb6b7582d6a7b59cefc7becd6a96d1` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x79ef2ae6027feb0342dc9956814c300666705eb3` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7e19a96dade634cfc3e83f20cd5e67626815b5e8` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x80cf6555aef946dc57bc3917daad1f793799fe0c` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8639d751701d0a4698839fe4006e29b1d82a621f` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8951bf4dabbc707d653dd2ea5a0efa5c30e1bcf1` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x93cbc7e54969aa57e911825aa729ec80df648fbf` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9b3fe61f1525d0a746becf0fb9894320518837ef` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa006f17ae082281f03fb7e00c45584fced9195db` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa0b8adc61e76e2b3961eb66e2e37840e02053591` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa820ac9a47125f990a1ba18ce32f718a89453481` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xaafa80367975dad6f5243382f26d2eab978973fe` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xadb5174d52af48074bc9248917587c1f2dd1fef3` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb79bd85f9928a6120b8e52f5c355c5de68f7fbe8` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xba4ce43391e62327974e79ad6b2e2c923dc756f8` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbca8c68641ccf93b6d3db9e703ed76574fa46687` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc76d8b725dfc40e0794d79eeaebb338b117c0ea9` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcc7fa582a4e2969dd2957d5326fae6b1d5c78b2a` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd2cd881fd35ae249f7d9b4e3f2de397ec603697e` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd5ffc83ec97fad4539fe8ac7b293a4f70c138636` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd79d48841626c96ad6804a9ae0a1542568d5197c` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe13b4e4d0b3648770d625dcfd7bd4f96b3cac479` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xefcef638512e462e5123be671db715ae1418a1d2` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf1810f333ed66790898fd374a95bffb949423bb0` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfa5c860ee75e66ee37b9d1e3c2020c77b32ca8df` | non_address_book | unknown | unknown | unverified | n/a | `0x1826316aec2f2d400086b3cadfcb291238010efa` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x032ba65c71c82d2e6dcf91cad148adc64a5f02a7` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x060e91a44f16dfcc1e2c427a0383596e1d2e886f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0a13e34e64ce192fb7515671375018f61b4232ee` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0b8f60be035cc5b1982ed2145c6bfc05f863ddc1` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0f431a00fab97f38e223b556b116caac97d73838` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1261330330294208198d946c63f2d5dbbdf30069` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1289f2e9a1ad1c0bb110b549dfa44bbdc4bac4f5` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1de90c0ce3d940412c3ba7322a257f7bdcc00ceb` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x21c630b7824d15bcdfeefa73cbd4e49cafe9f836` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2889416151dd1cfd91257e53a2b87389c22fa455` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3ef2a0a3017709529d362ea3ca28194c8f3f039a` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x40348b3b414edfd342e33b13e825d41807dcb8b2` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x40b686db4feea08e7d24f3dedfb90d78a51e9409` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x461067b031b612bb4e1fdedc62c8f0a8f61902d4` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x496aa991cf3952264f284355371cd190ddcc8588` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x49bc2a4d9cf07ff0de4a69eb153907d163e7a3f0` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5108e704b16094c79cb526aa2a69bb9b41bc1821` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5196e0a4fb2a459856e1d41ab4975316bbdf19f8` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x556b00966842b1e9046c85766788d373b2e85749` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x55c76259c7fd1ab1149496114a18e3faeb3711eb` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x573a89fbc6b4a5b11a55dc9814a1018a3a9cd0ca` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5966b91d6db3ecf38883afd1e7b85cd6c2d26e17` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5fc20fcd1b50c5e1196ac790dadcfcdd416bb0c7` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x69491fd9a6d9e32f32113cc076b1b69d8b9ebd3f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x732c57d2dc1a8f1da0c6ab525275887598c89822` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7424ddc7ac9f60b3d0f7bca9e438dc2c1d44d043` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x74a94113237a229a63d0dc028a5abb02a190ffe0` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7723993c1baa141f5decfc8bf5dbad47aaddec86` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x77f1bb89a19f9c7b29d87717a9db20c8b7271eea` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7e265c6fb81341611eeda46a237956bee666d969` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7f7c811c889108c89f539a21d150b5d5fc616545` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x801b1b8a8440b9ae348d0e49315dfa59d340932d` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x858d6353a52c25c53df1869230282d22b41f5790` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8baa405bbae2e7c9868711356b063d22a2b7b4bb` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8c716045dca07cfcfc65ac6fe704a6b165d199da` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8f03517cfc7b0f86ffe94b60683c01326efb16a8` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8f26efb26f394d4ff948ec42c9eac345482f51c8` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x92d44a079b24ddee8065b1ee12d73a7c2f62309e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa45e83329f8530bde96acde855bae8e9f96ec52f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa575163c0da0bec6887b5bc01be7231fa7cb2c0b` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa6bae2f3ee27271b55779bc6071fa101431dc8da` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa7ebb3cebe95579e2fa19c801bdedf63da7d1c78` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xac421234cef608d7b566bf15d34696816dbf2348` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb41de9c1f50697cc3fd63f24ede2b40f6269cbcb` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb6daa7383da04385ee9ac7973306b5c4d223e773` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbae3ceb56e40525612c100c514488d903007c9cd` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbb4a2134872bff0f07bd52470b621232b79395a2` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc12f721884cb014d9ba6f860224001576fc6947f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc420fcdf4de68411aa01124370a622410088053a` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc4fe42313ff313cd4f858c4e796fe0d4931198c1` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc681cad10f227ef506a352b3dc5ff6c676b8636f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc842cc25fe89f0a60fe9c1fd6483b6971020eb3a` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc8ebd1be27d506bd96c7a1dcc50b1e4d7678abf1` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd25c2adcc025ddaf6c02e24dfddb779ac7a540a3` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd3843b60e69f958ef93bec299467e6ed301cbeeb` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdb90a1a31ff72976b6f2f009e77131673404180b` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe4c09dbe7f94261758a1a59cf6841ddd2ffff460` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe4d8cd0c4bda9a0fab537b93c7b391ad5a9ebe75` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe4eb988bdaca6b2a6ba383a14bdd15dad2720094` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf40d48bb67508538bfab8091a919d2659a944b16` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf9eb24b83b51fbc0bcb1204221c8c9f1cef33994` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf9fbee019c660f1aa2510cdcf78f1e5244558447` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfcd7ebc3a42d65fe77988171999cfbb7c4a85523` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfd332a482142de82ebd3aa121489a77f82a65de4` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfff45c0b77d7c0c33a97a879576f0550b6842bff` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0333effa7b23f3efd83518ac518a85c562a8f5dc` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x04c3098931bda90cc307ea37b421953b3384ee6a` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x055b81dd269fceb9a31fde7ba003c604eaf3cb4f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0f431a00fab97f38e223b556b116caac97d73838` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1137c31918328eeb88b7f84ab3bdba6d9d376b87` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1299a041e20d01f15afd602a704a7bbec91fd5e3` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x21c630b7824d15bcdfeefa73cbd4e49cafe9f836` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2684811b8c3859145cfb928d52dd0694fcf305fc` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b0bd4e157a188d41ce4f85984ae43c9a332b76c` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c6cb90ee4a86bcda1da34a964c2fe94191dbb85` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x322bb7e977b6603b03be7bf8c917a1a222d7f137` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x376d16c7de138b01455a51da79ad65806e9cd694` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3bf0941df09903805720a75ed61788fedea7211e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3cb92d8ef3c6246cb40c960fec416d7ce3818039` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40b686db4feea08e7d24f3dedfb90d78a51e9409` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x496aa991cf3952264f284355371cd190ddcc8588` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x49991481a9ab4a3e2c42c7787f1bf51fc8bb0561` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b3c4c225899ee8b572fa4617522e678ec7c1d89` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e323c6476738eecde646ecb61b6be0c2d848461` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5196e0a4fb2a459856e1d41ab4975316bbdf19f8` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x55c76259c7fd1ab1149496114a18e3faeb3711eb` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56f126d7ff657b35d1de60d7d19737f0f4feab75` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c546a258a9748d009ad669f7325ebbbb2fec73b` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60d50a4cf051938d797c3c49fea66112c4ee6a28` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6cd5ae50e14a02698bf15e0f2f5d66ff8b16bdea` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77f1bb89a19f9c7b29d87717a9db20c8b7271eea` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x858d6353a52c25c53df1869230282d22b41f5790` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f03517cfc7b0f86ffe94b60683c01326efb16a8` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x92d44a079b24ddee8065b1ee12d73a7c2f62309e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e2a9457de74690c50c6d703471f23d31b950fc2` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1af884b54e72951443407afe0ff8dcfc4d97546` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa398b342298882ffd49f46e411ead3d20d0560af` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa575163c0da0bec6887b5bc01be7231fa7cb2c0b` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6bae2f3ee27271b55779bc6071fa101431dc8da` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1d2aa59be030b14fbcc7e3f23fda12f611fef3d` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb6ce73a7a1c88a0775600f1953713810885a86dc` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc4fe42313ff313cd4f858c4e796fe0d4931198c1` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc681cad10f227ef506a352b3dc5ff6c676b8636f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc842cc25fe89f0a60fe9c1fd6483b6971020eb3a` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0b461581774eb196281dd36e22df586851cd568` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0c72caf0f8a83d52808fbd0ecd856733586fb9e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3843b60e69f958ef93bec299467e6ed301cbeeb` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd57bb198a08da5416f3e2cf645af4564f9afcb51` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd9618e0f09eb7e122565489c5d79ddde7da22284` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd9b7aa15079bfebe25b13fd55b855c20dfb3d15d` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd9ff46475dbbfb5315ebd8bcfd9b5669bde02d55` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb90a1a31ff72976b6f2f009e77131673404180b` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde58495cf0763c0a918b7a9e22bfb5c2aaf115f9` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf00594a2456c38af24a2600115999bcf096994f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4c09dbe7f94261758a1a59cf6841ddd2ffff460` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe500cc1fba63ec67de52776dd16513861dbcd8d5` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf9eb24b83b51fbc0bcb1204221c8c9f1cef33994` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfbd974984d2d3b9e114a9712e673527687887f1d` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x003756fc5e1908fba1af693cba81bd8885b44888` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0079d39858de26f4a48aee061a27d01daffd18f1` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x020edc614187f9937a1efeee007656c6356fb13a` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x046427fa6b924739cd98ee507cb0db34c7a66c2e` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x05123318cc3c4c70fefeca0837ac2d0f9974bdca` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x059dc78eaff8ae7f6b885e779ac15816d2ee8d62` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x05e7b38931948e10171e643e5f3004dcd0bef22b` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x08bd64bfc832f1c2b3e07e634934453ba7fa2db2` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x090ece252cec5998db765073d07fac77b8e60cb2` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x094048819a6172a189122d2f5d35ffa1d70a81a3` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e444ed30988e481b65debd633556abc21a766bf` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ed16f5c29e93c11c2b970c84e40eab15d11ce5d` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10329e8b804dae89e535f93e1907274418fd75d8` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x109bfde650bb8fb7709ceefc2af81013238289fc` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x11d9ffff264baf0a891c8310edf9899fd3e3a4af` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x124fc2970c4dc1cacb813187e6c1a0d2f01c6c53` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x12a1b67bc18ecb3a4c3b55b527af237bc6596507` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1358241c3f136155a8c4922c07c187df4c6adae2` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1368581bb74c87119a84979f8652e28932ce925e` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x142f809c4714e4fa76389a534adf0468caca0864` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x14c6e4b1280c9cb955e4712238c1522f7842d4cc` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x14f66f8c283d004f4195cd041746b6b5fa823e16` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x16878a349054cbcd8a03c475f26beacd07eba3f7` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18864491083dc4588a9eecbeb28f22a9bf45dad1` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b1db87e728a2c22d596e331caabb0c99790113e` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b640ec69c2ba730246c645b744f06d768fa89d8` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c4413ac634d96faee6b64ee98c2bfbcc85dfc4a` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1debf8e2ddfc4764376e8e4ed5bc8f1b403d2629` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e416f2cafdf458b88f86f3a27ae30920289aad4` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e5bddd0cdf8839d6b27b34927869ef0ad7bf692` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e93baa4cc2fa342ab9b859bb53c8bfcaed14013` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x201687712c2a0c4669518d838cbbedcea77f98ef` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x213844bed1d389d64e1a95a660035cae80f7f49d` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x220c9e1836096f2e8effed0896dde153179ab542` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23091694539a083940eb4236215cc82a619fe475` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23324a5b4e737440a3b29159bf0b1e39ad93f5a6` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2527f768956f5af65e694d4db6b580c83cdbf73c` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25e4014fc1b5c3604b29fa86c98aae68c4d86e06` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x279e7e72f3c20ce1c59557e1b9f8bbfdd673fc7d` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x296d278e7a48fed3fcb8b86b8f71b0fd78818c66` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29797c05706689b41d8024cb42996ab36b5bc815` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2aa297c3208bd98a9a477514d3c80ace570a6dee` | non_address_book | unknown | unknown | unverified | n/a | `0xb593d82d53e2c187dc49673709a6e9f806cdc835` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://www.openzeppelin.com/news/alpha-homora-v2) | OpenZeppelin | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20563] DL audit link — no match: All contracts listed in the scope section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | Governable | unmatched — not counted | — | listed in scope | no |
| DL audit link | HomoraBank | unmatched — not counted | — | listed in scope | no |
| DL audit link | AggregatorOracle | unmatched — not counted | — | listed in scope | no |
| DL audit link | BalancerPairOracle | unmatched — not counted | — | listed in scope | no |
| DL audit link | CoreOracle | unmatched — not counted | — | listed in scope | no |
| DL audit link | CurveOracle | unmatched — not counted | — | listed in scope | no |
| DL audit link | ProxyOracle | unmatched — not counted | — | listed in scope | no |
| DL audit link | UniswapV2Oracle | unmatched — not counted | — | listed in scope | no |
| DL audit link | UsingBaseOracle | unmatched — not counted | — | listed in scope | no |
| DL audit link | BalancerSpellV1 | unmatched — not counted | — | listed in scope | no |
| DL audit link | BasicSpell | unmatched — not counted | — | listed in scope | no |
| DL audit link | CurveSpellV1 | unmatched — not counted | — | listed in scope | no |
| DL audit link | SushiswapSpellV1 | unmatched — not counted | — | listed in scope | no |
| DL audit link | UniswapV2SpellV1 | unmatched — not counted | — | listed in scope | no |
| DL audit link | WhitelistSpell | unmatched — not counted | — | listed in scope | no |
| DL audit link | WERC20 | unmatched — not counted | — | listed in scope | no |
| DL audit link | WLiquidityGauge | unmatched — not counted | — | listed in scope | no |
| DL audit link | WMasterChef | unmatched — not counted | — | listed in scope | no |
| DL audit link | WStakingRewards | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 515 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 19 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20563] DL audit link

Fork inheritance lineage and inherited audits are included when available.
