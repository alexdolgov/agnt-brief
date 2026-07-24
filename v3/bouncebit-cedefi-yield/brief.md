# Agentic Audit Brief: BounceBit CeDeFi Yield

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: BounceBit CeDeFi Yield (`bouncebit-cedefi-yield`)
- Website: [https://portal.bouncebit.io/](https://portal.bouncebit.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, bsc, ethereum
- Contract surface: 115 unique implementations (115 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $284,855,549.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for BounceBit CeDeFi Yield in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 115 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 107
- Unique implementations: 115
- Raw deployments: 115
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BBOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-127661 | `0xd459eceddafcc1d876a3be7290a2e16e801073a3` | ⚠️ Unaudited |
| BBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-127659 | `0x8b8d92bb45ec8225558096f99d6d75c2b49d6863` | ⚠️ Unaudited |
| BBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-127660 | `0xbc8570ae1dae11d8b439fa1845753bef2eda6eb1` | ⚠️ Unaudited |
| CefiTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-127656 | `0x403f10c86b4d6f33b0d5163073784f6d9e757475` | ⚠️ Unaudited |
| CefiTrove | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-127658 | `0x69b706f1c78a42404f9f2a2d982fe33fc4e40116` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-127655 | `0x13b037ab4b9056132cff7bd080b00bcae54707b2` | ⚠️ Unaudited |
| TokenVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-127657 | `0x4756c41be6212a8ebf1ee0fa951f47bd91cb580e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-127662 | `0x035d73d9a563334bf35e08bfb49ea39ed4316467` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (107)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00ec9dcaf6115be10ab36a49346a6b58faae91c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0456a550705e28eff2262ecea71f1e0d3e2405fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a1bf2cf3b7be87b0fe1896236c40e65da468699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dfac07977f1d578cd8292b2e0ddbda5cb9c8a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10738037981e9353bbed7f9a600f0c178f882c5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188dcd3c35b97ea00cf139e48f5864902474b597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d97484d503ea258d28121fb768fd229a76d4bb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ddd6e5ea766511cc0f348dc8d17578a821b680f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22d57cad8c699f456a1ac2315ebbd8ab36c77767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239acfbbb2f2dae87066c188b7612eb60940cb1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x266bfbe67fdcb37bb2d095e8d8dd6d4171facc74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27f3612a49232f2ffeb09a2b9a99f6af077e2e32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d4d60192c271d896c89294bd40ac6dda82c7cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e57e14f01ec7f1f457057841d1c1681c231d845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ef8810e04dffab19d366d97ed92507e618d7e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fa09b8e0e1d83e558e7bd65d6f4205a48b99d59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x313bdadc3ad85137e7614c487ccf2b44c34cf242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x343b8651bbfc4c228da19459e57bb3cbc540ff7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x346c0c6d1c262c3cbf839711055dd434f70089cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3492e01fddc9eebe21271a3a7b0582c2bf962ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36ab0723d58c84772c51cfead723a8d97f84b86b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373d0c84187b255956039f5da06cf4cc33c1602d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x378a09bc6aef1119f276c2f5d96439b75902be94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x394110daed5178b192a931badaf35b6c4d5b2191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b0a5b1137e9f5a570efc05aac73238795123efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e5eb362d95c4d90d2b15e6cb2309f5b0fd427b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4343725932c9e624a81c7644db1a4158b3af9a7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ef9d09f80be2248dc1f4f3c5ca1527f467abc5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54296045047550952eb63534e62fdb74ec9d9fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58d38973bf39fa157c0a69e2b1cdb8da59e500ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a442c996b738835160f7dd3ed89f3fffff8dbf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c59288274b9822afc744f54ac945ab86505025e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d362608ba63a9016b83d679c702801fa0dad008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eaf95ab0db85cb6308af2b835f16b311ab0c895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60ea7449517832e04ad6afff93a957c7622bc176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x616df74faa74efc2fbac59a1ad4839d8eaf06b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64219974afb062d0cab6f02be7c99acab362cb72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6555781cff384858a8c62c654831718338c12ad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf0df809172461bfa74b0b27b1096c96551127a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f7b27509b8d181d60466b79269f4366dc164a35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x746a14bf8adb15dbb49274038df4716bbe02b570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x750d07cd1b30dbf9cb6711b0baa91ed29a990c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75560a49a63261589723f35259a15dd9fe8a5918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d36d4b24f296e2d7291e031464927ca2643710a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d9cdf1ea5b2b13265452f205b08ab25a3ef7e4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e0629427b81f317a8026bf23d7d585046fa297f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x828431a7c7b8cba241c7d296b55420c85e91b641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x874f5253b3a44d2c15956b9b2709be774b28c0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87a2f86ea08108a614314ecc276956efb38f6afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8946bc3995fc81dc1a18eec9f50b5330c77461fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a4c7ca32bd1daff850d059b24b1bdf3e2fe107d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b6da978617aa64a68f202024b78beb88f4f2a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b74b1a332d3c47e6b40c9877c33cf3c3c73ecc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c083fab24a620b6a5fb178adbf7a5185e484f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cfdbba385142333d4dc0bfbfbad4c898b9471a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d2241881c693522441f41a6b6adc09a7a0eda9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90cecf3151241b4c79244275a8c6d3e2421f87ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x925997635574267d174c6dd1a2c86deedfa54aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92bd0149a4ab0b9db81637332f243f83223d7530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92c15b03d743aa330115dd0e964d34a9c1f2f9d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96e65d1ae193a15b19500aea8f7f739989c810ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc58229e0c712e6f3ef13a7f4fdec04dd9266bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cd35dd9a1de01fcf189a9e0993ac3a07779f14b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0bbfedcdb2f121f21d2cd73c08f5f2695926a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa23b2010c27a18d24d430a232480ef053ca39a7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2b283e4dbdfea5461c36a59e3b94b3ef2883085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6de49cc3755b5a202f153cffcabf6017be5d2aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91f756d5e01d8e8a6b6e2d1e73341fbec1f3355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa984e7a617eb726956b4ba628747f4a07b26af88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaea284e9a905f984d44c184e8206884ae0a95c4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb013912ffe31d6b9052b3a16074f4733452cc343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb16df6f4a58ecb26fab8e09a5195c062a08e21bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2046fd8d8407d3edb7f9acae9de4df54f61ee70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb27a43c99d59dee9bda8a593271e9bfa6df383fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4a04660d3efdf4c639890dd6ba527730e5a66c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6f92412f74f0b377d509f2ccd7a43a460765a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8868dc7104b04f64e1f989254cc7f6673a7c1a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8e87340b15bab856bc848903a0f18e64ced5d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb33e829d5befbc42a0fb5a818bdf537cab199f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcfe3b16544fbed78b4c4985ecbecdd3b7d8f4d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf86f3825d7d902267f31211949b7f4d0ad5105f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0434f9f5b521d188fda90b6c16c93137659e1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0906ea18fb306b5d87019f48089249bd0ad133a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc09214e9da832682fa1fcffa2d68ac010ef6f6a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0b49bc4971211ef2b76b42a6d279c5999cbb969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4f31a5e2a2bced46a96e87697c16f92658fd576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc57d89abe721690c07a3194e117c0454f614d80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc676be562b3fd237e687a293080827d875518ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc33b424b558998b0a2c92b303f33376208d9571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccb050fa18de867c89fdf4b9395b8dff6fcd0219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1c3ffd14e80540fa04668ca4a4f959c3debbaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd28ad834417fe7c04a3daff67bd069c86f012012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4def93a10ada7e14cadc6920b6cde01148d1813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd60fc40137a94291c5486d52170786958a2ed2b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb92b3d1f8d30ac7b9b22e536251917b4a5f489e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1ad57d3f6eaffe60ddccdb3e1ce94e02593b6e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe275e7294bb1199583c09305ce559a5897d9863a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedf3bed97b62d902735283c35e0b3e164ea21ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefeb783b6995d322053a36f4b7126b7b5256849f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf321e3ce65268b42b104677d5827e97533167dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf68655cfcf2c44daa3cbbaa7b23594937b5c8df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf737a1a8c11b272ce69fd6ee668bbc7fec3bb5ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7a043fa4ef03115d373f66630b7776e64e2aba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8523041a7adede5b340a60c6a6ba6e461a68dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf88e768715f9ebd180d7dcc3a0977b943a67e25a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa9b14dd537d4d41ba91be3914fd3ea77239210f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe32277d00e57d864b8bc687d0a442d663aa1df6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 107
- Live contracts: 0
- Unknown liveness contracts: 107
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=107

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x00ec9dcaf6115be10ab36a49346a6b58faae91c1` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0456a550705e28eff2262ecea71f1e0d3e2405fa` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a1bf2cf3b7be87b0fe1896236c40e65da468699` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0dfac07977f1d578cd8292b2e0ddbda5cb9c8a8c` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10738037981e9353bbed7f9a600f0c178f882c5f` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x188dcd3c35b97ea00cf139e48f5864902474b597` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d97484d503ea258d28121fb768fd229a76d4bb1` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ddd6e5ea766511cc0f348dc8d17578a821b680f` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22d57cad8c699f456a1ac2315ebbd8ab36c77767` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x239acfbbb2f2dae87066c188b7612eb60940cb1f` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x266bfbe67fdcb37bb2d095e8d8dd6d4171facc74` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x27f3612a49232f2ffeb09a2b9a99f6af077e2e32` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d4d60192c271d896c89294bd40ac6dda82c7cb4` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2e57e14f01ec7f1f457057841d1c1681c231d845` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ef8810e04dffab19d366d97ed92507e618d7e6d` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2fa09b8e0e1d83e558e7bd65d6f4205a48b99d59` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x313bdadc3ad85137e7614c487ccf2b44c34cf242` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x343b8651bbfc4c228da19459e57bb3cbc540ff7f` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x346c0c6d1c262c3cbf839711055dd434f70089cd` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3492e01fddc9eebe21271a3a7b0582c2bf962ada` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36ab0723d58c84772c51cfead723a8d97f84b86b` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x373d0c84187b255956039f5da06cf4cc33c1602d` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x378a09bc6aef1119f276c2f5d96439b75902be94` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x394110daed5178b192a931badaf35b6c4d5b2191` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b0a5b1137e9f5a570efc05aac73238795123efa` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e5eb362d95c4d90d2b15e6cb2309f5b0fd427b4` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4343725932c9e624a81c7644db1a4158b3af9a7c` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ef9d09f80be2248dc1f4f3c5ca1527f467abc5a` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54296045047550952eb63534e62fdb74ec9d9fa0` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58d38973bf39fa157c0a69e2b1cdb8da59e500ce` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a442c996b738835160f7dd3ed89f3fffff8dbf1` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c59288274b9822afc744f54ac945ab86505025e` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d362608ba63a9016b83d679c702801fa0dad008` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5eaf95ab0db85cb6308af2b835f16b311ab0c895` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60ea7449517832e04ad6afff93a957c7622bc176` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x616df74faa74efc2fbac59a1ad4839d8eaf06b4a` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64219974afb062d0cab6f02be7c99acab362cb72` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6555781cff384858a8c62c654831718338c12ad8` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6bf0df809172461bfa74b0b27b1096c96551127a` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f7b27509b8d181d60466b79269f4366dc164a35` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x746a14bf8adb15dbb49274038df4716bbe02b570` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x750d07cd1b30dbf9cb6711b0baa91ed29a990c70` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75560a49a63261589723f35259a15dd9fe8a5918` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d36d4b24f296e2d7291e031464927ca2643710a` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d9cdf1ea5b2b13265452f205b08ab25a3ef7e4b` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e0629427b81f317a8026bf23d7d585046fa297f` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x828431a7c7b8cba241c7d296b55420c85e91b641` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x874f5253b3a44d2c15956b9b2709be774b28c0d7` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87a2f86ea08108a614314ecc276956efb38f6afb` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8946bc3995fc81dc1a18eec9f50b5330c77461fe` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a4c7ca32bd1daff850d059b24b1bdf3e2fe107d` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b6da978617aa64a68f202024b78beb88f4f2a2b` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b74b1a332d3c47e6b40c9877c33cf3c3c73ecc4` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8c083fab24a620b6a5fb178adbf7a5185e484f0a` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8cfdbba385142333d4dc0bfbfbad4c898b9471a9` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d2241881c693522441f41a6b6adc09a7a0eda9f` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90cecf3151241b4c79244275a8c6d3e2421f87ee` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x925997635574267d174c6dd1a2c86deedfa54aa1` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x92bd0149a4ab0b9db81637332f243f83223d7530` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x92c15b03d743aa330115dd0e964d34a9c1f2f9d8` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96e65d1ae193a15b19500aea8f7f739989c810ea` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9cc58229e0c712e6f3ef13a7f4fdec04dd9266bf` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9cd35dd9a1de01fcf189a9e0993ac3a07779f14b` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa0bbfedcdb2f121f21d2cd73c08f5f2695926a4f` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa23b2010c27a18d24d430a232480ef053ca39a7a` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2b283e4dbdfea5461c36a59e3b94b3ef2883085` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6de49cc3755b5a202f153cffcabf6017be5d2aa` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa91f756d5e01d8e8a6b6e2d1e73341fbec1f3355` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa984e7a617eb726956b4ba628747f4a07b26af88` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaea284e9a905f984d44c184e8206884ae0a95c4b` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb013912ffe31d6b9052b3a16074f4733452cc343` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb16df6f4a58ecb26fab8e09a5195c062a08e21bc` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2046fd8d8407d3edb7f9acae9de4df54f61ee70` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb27a43c99d59dee9bda8a593271e9bfa6df383fe` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4a04660d3efdf4c639890dd6ba527730e5a66c0` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb6f92412f74f0b377d509f2ccd7a43a460765a68` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8868dc7104b04f64e1f989254cc7f6673a7c1a2` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8e87340b15bab856bc848903a0f18e64ced5d2a` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb33e829d5befbc42a0fb5a818bdf537cab199f3` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbcfe3b16544fbed78b4c4985ecbecdd3b7d8f4d6` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbf86f3825d7d902267f31211949b7f4d0ad5105f` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0434f9f5b521d188fda90b6c16c93137659e1ed` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0906ea18fb306b5d87019f48089249bd0ad133a` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc09214e9da832682fa1fcffa2d68ac010ef6f6a6` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0b49bc4971211ef2b76b42a6d279c5999cbb969` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc4f31a5e2a2bced46a96e87697c16f92658fd576` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc57d89abe721690c07a3194e117c0454f614d80c` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc676be562b3fd237e687a293080827d875518ae9` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc33b424b558998b0a2c92b303f33376208d9571` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xccb050fa18de867c89fdf4b9395b8dff6fcd0219` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf1c3ffd14e80540fa04668ca4a4f959c3debbaa` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd28ad834417fe7c04a3daff67bd069c86f012012` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd4def93a10ada7e14cadc6920b6cde01148d1813` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd60fc40137a94291c5486d52170786958a2ed2b1` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb92b3d1f8d30ac7b9b22e536251917b4a5f489e` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe1ad57d3f6eaffe60ddccdb3e1ce94e02593b6e9` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe275e7294bb1199583c09305ce559a5897d9863a` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xedf3bed97b62d902735283c35e0b3e164ea21ba7` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xefeb783b6995d322053a36f4b7126b7b5256849f` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf321e3ce65268b42b104677d5827e97533167dfd` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf68655cfcf2c44daa3cbbaa7b23594937b5c8df6` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf737a1a8c11b272ce69fd6ee668bbc7fec3bb5ba` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7a043fa4ef03115d373f66630b7776e64e2aba6` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8523041a7adede5b340a60c6a6ba6e461a68dd1` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf88e768715f9ebd180d7dcc3a0977b943a67e25a` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfa9b14dd537d4d41ba91be3914fd3ea77239210f` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe32277d00e57d864b8bc687d0a442d663aa1df6` | non_address_book | unknown | unknown | unverified | n/a | `0x681a12a2e496fbe469092d7ad029ff3b8cefaafb` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Smart Contract Audit Report](https://docs.bouncebit.io/assets/smart-contract-audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [First BounceBit TVL Audit Report](https://docs.bouncebit.io/assets/first-bouncebit-tvl-audit-report.md) | unknown | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [BounceBit-Vault_audit_report_2024-02-09.pdf](https://1316604192-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaNWumH92fd1205exOOBs%2Fuploads%2FKFpCcHfuzqSvO1yGpUJL%2FBounceBit-Vault_audit_report_2024-02-09.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [BounceBit BTC TVL Report 20240207.pdf](https://1316604192-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaNWumH92fd1205exOOBs%2Fuploads%2F0oZ4vafYh0ye8HRPsgVU%2FBounceBit%20BTC%20TVL%20Report%2020240207.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19615] Smart Contract Audit Report — no match: The provided text is a markdown page with a file reference but no actual audit report content. No contract names or audit date could be extracted.
- [19616] First BounceBit TVL Audit Report — no match: The report text does not list any specific smart contracts, source files, or modules in scope. It only mentions a CeFi+DeFi infrastructure and a TVL audit, but no contract names are identifiable.
- [19617] BounceBit-Vault_audit_report_2024-02-09.pdf — no match: Only one contract in scope: BounceBitVault. Addresses provided for BSC and Ethereum.
- [19618] BounceBit BTC TVL Report 20240207.pdf — no match: The provided text is an account statement for Bouncebit Ltd., not a smart contract audit report. No contracts, source files, or audit scope were found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| BounceBit-Vault_audit_report_2024-02-09.pdf | BounceBitVault | unmatched — not counted | — | listed in scope and findings target | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 107 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=3
- Match method counts: n/a

Zero-match audit list:

- [19615] Smart Contract Audit Report
- [19616] First BounceBit TVL Audit Report
- [19617] BounceBit-Vault_audit_report_2024-02-09.pdf
- [19618] BounceBit BTC TVL Report 20240207.pdf

Fork inheritance lineage and inherited audits are included when available.
