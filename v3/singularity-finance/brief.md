# Agentic Audit Brief: Singularity Finance

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

- Project: Singularity Finance (`singularity-finance`)
- Website: [https://singularityfinance.ai/](https://singularityfinance.ai/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, bsc, ethereum
- Contract surface: 208 unique implementations (546 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $4,251,071.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Singularity Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 208 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/51
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 0
- Unverified implementations: 157
- Unique implementations: 208
- Raw deployments: 546
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerodromeDynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: base `0x02c0671f5d725d67e06582b92a562e6faabae840`; base `0x0ae5d7f169b7971ee3090baed7441e3d37c38b26`; base `0x3393043be833d8c27a184f21cffa3947ed8971be`; base `0x34f503123065f83a7b3a9e345c386fbcc1e27d8b`; base `0x586125b036b9efc9e3461ce174d7b65c843aaed7`; base `0x5893c3ef2e1f81cf9ea043f56a8566ded8fb457c`; base `0x6bf610ab2897f1d1afa550b96f5971b8f78a3e81`; base `0x7ba35ee46bbbf75837913023ddd3fd540bf71f4b`; base `0x8ca67da97010c3dd25c0202ba14767c1050fb71d`; base `0x952cf03e87173816a13ef5f0d0c606ed08482067`; base `0xb1a6de0e50877e87bfc6bbed49e114cf3a732297`; base `0xc3a9f3396dd9a596644d78b3ac46a86b5b5eae64`; base `0xc448c74a82f6f0aeb0f07ef3781f4b86bbd1a5da`; base `0xdf6551ad178a23fc7000b0eca4435bae5479e2dd`; base `0xe0d6d104743d7d9ca9d8b3c2c981b21db2ca6b09` | ⚠️ Unaudited |
| AerodromeV3CLDynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1cf8db53f9d88b0c454926dbb29a94654f7ad44e` | ⚠️ Unaudited |
| BalanceQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8f2311f6ff8041e0f07500ed4256e91ecf3d0a3b`; base `0x9b96cb4f5dbf666e7b799cbca07a362180952c36` | ⚠️ Unaudited |
| DynaLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe134ebabda45dd54948e19cd0a259ccd5c8f71f` | ⚠️ Unaudited |
| DynaLiquidityFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a88b11fe2b7546272b0f09fa066d05998232ca9` | ⚠️ Unaudited |
| DynaLiquidityRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 16 deployments: base `0x0066fecdc377129232df0f0317f02e721a02ace6`; base `0x3de202f153334dc84673dd865fcb2bbd82ca71e2`; base `0x4b0cbbea0f3d00ecd72ee080305eff1b0dc006a6`; base `0x529275df5005fc9cd186683d95b698c92b632ffe`; base `0x531fdeed82f118f228bb115911ca083133467635`; base `0x6793bc246053f7fb660ac562abd9da61d107a9ff`; base `0x732e82ab4f202f3399221dc3b6a2a0732963c910`; base `0x760c206ffdb4199637752f9336abb9db692d9224`; base `0x82f22418de1b9b30e04afc0ce303cf7ebe8d1674`; base `0x94129c537074c004a7f2a52bbc777344e7db4f4c`; base `0x989f2cfc5346f654e22bf5eb04247c83b42b4d10`; base `0xa374deca2a7ba5463a5608eb08a572e6f0ac131d`; base `0xaa89a19bd0508f7ffd0e039193b060b9d6f90a6d`; base `0xcf3d724c90e90c32b95e7ab3647da3a76825e944`; base `0xf5ba7617ce1042f66e23d4994bac090ca62ad18a`; base `0xffeddb032791510581b2572de406c79a6b5aeb0f` | ⚠️ Unaudited |
| DynaRoutePreviewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x47f90644f4d3d769b5e4fac380b0052df45f4f2b`; base `0x5da52c8b9531dddc5ab4d13eeb850eda0b37a168`; base `0xc7b059a3bcc0651475159697bc2d0151477fb77c` | ⚠️ Unaudited |
| DynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff34882b3784703f4263662ac4a6afaf9902bad5` | ⚠️ Unaudited |
| DynaRouterMeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce3a64662e0dde328a291524b47ba49bbe373962` | ⚠️ Unaudited |
| DynaRouterNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6541603bac4abec39e618efdeaca63925175680` | ⚠️ Unaudited |
| DynaRouterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 20 deployments: base `0x1f1f97b9f57da4d4a1b8d184980cb13617972931`; base `0x2686e6971033d6fa1901810f53ab5a7376db5bf2`; base `0x2d4887cd800017892bb01102af090d08c06f8cef`; base `0x327b492be4aae6b9483957ec291d91d926fa674a`; base `0x56f5a6d09955b4dfca18707d5034f09f86c3a7d4`; base `0x5cc910ee43e7ef459e304e1852a61c73c550e303`; base `0x61687caa91b3e30222debf9689ce3b79dd25793e`; base `0x67408f0ae9ce3cfba8dd8fb1a8539283fc710ebd`; base `0x7390ccfe113d8ec18b2b3e7474e5ef4d55a9ae45`; base `0x73da01b89f617ceca30ddf8f22e62c3b0f2498c9`; base `0x82bccff6e13a5b6e4d56e33a2079b009255d40f9`; base `0x860d8e4ec968242820bafbf480be966cece8c9ce`; base `0x9b513f14b6967a35dc712a80d8868a0a8db11b59`; base `0xa8f65a5118afd7ee7a71031c1cebfa603b6e67f0`; base `0xaa94b1fc98eb7b2cb95889ac1e4e0b05abeca144`; base `0xbc3a0a3a4805f66cf221ab7e21a8c7539effd4c0`; base `0xd0bc8c70620a89d91e5e8cbc3286f128b5c1898b`; base `0xe4761031b22dc432d58c5d6e215609e582b61d3a`; base `0xe851a9813d3cd2e95356e4b6cf43e4c52c1ec367`; base `0xfe8ccf54b010460bc943ce50293862d9772e6a4d` | ⚠️ Unaudited |
| DynaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x000bd9b6b6104ec9a360e323b42e0fad7128a771`; base `0x620b2f171825e9be731532b3ddcee161abe6e660`; base `0x9a3fba281b004882497d29b863c244619f2574b7`; base `0xa37f48577a9141bd94e7d6a2c976852c77d2baa2`; base `0xc0cf88750b5323e5f08626483cff5e7d546ca30d`; base `0xc6b3345612ad9f385d5c8ffd1ece98f7318ecf52`; base `0xd8147edf1e00fa717ae0c3d6aa6fa270e8554ed0`; base `0xddfdce3f69d5287a55e476e2facb9c6252afc64c` | ⚠️ Unaudited |
| DynaVaultLib | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x3b94afa809b113ef118c6d4ffc009fdf1a51ee08`; base `0x4c3df500989df0f6670b99018811b94d591cc5a0`; base `0x6c331b1f8028a2b9cee2fc83169acc26e6a2e7c5`; base `0x8c38cc2e23cac44640d260cf45b864e8da1d8a22`; base `0xaee26e4806acebf827a6bfc85a855d3dc6b74adc`; base `0xbde3a6a26eb44701d3874d67ea9530bc6c084399`; base `0xbec6da78d6102b7a1542887357099f8214366014`; base `0xfece3c717046e101997ca0351bb1698203888597` | ⚠️ Unaudited |
| DynaVaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: base `0x30cb8e3b9c79b2f7304aefe89eb39de380c58273`; base `0x478675aa4121c07825167bbb25a44aadd22bef7f`; base `0x4c168f4cc5a9c648f985b363bd528f21d6b198dd`; base `0x57dcc5558eb76acd922f402ba900beaca885c406`; base `0x67aaf2fa4420fb0922da630315734d69f99ea1dc`; base `0x84f0fe6e62670dedf9a3e0aa8065b1a536c2b843`; base `0x95cf606f7e499549d83bd3c8a1e5d97fdf36688b`; base `0xac18003cc118160e381c44979ba3dd63b52fae77`; base `0xc3bad1194fd89babc3250cb423b20d51a75250ac`; base `0xc9572eba0edb16a61a1eb0ae9271ceb01c0fca53`; base `0xdf34fca020cff534eb712617bc5159105add1915`; base `0xf461d8525077487611d3a1db2a55b8901c2da673` | ⚠️ Unaudited |
| ERC4626DynaZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: base `0x21d4afb6137d3ec375af5e03f66eb03cfdaa12df`; base `0x34cb4883c3f1c823bd3d90cc9eb66b098422e20e`; base `0x49a064e6914e3179b3a1f4bb502df49a65eeafcf`; base `0x5b9aef19c95ffb422a06313ab2804fc7920b3be7`; base `0x604786e7e95e90288f654369b15b6ba227693c1d`; base `0x687b905b5a79dff5d07a6a0d1371490d8e679bd4`; base `0x6f836aebfdd32ef3786bc9f85d9dc15f1b18429a`; base `0x8a1217655655e7d991ab44403159bb070771be10`; base `0xad51bb11ccc0df248b78385edec508167830c5d1`; base `0xc23c6c92658ed1aa35e5ef72f2db7f00b09ee5fc`; base `0xc44b51ac1327f0de9945931833168c6e3999f235`; base `0xd7bb9fa68be9a22b241e6c8544dc82bcd2e5b32f`; base `0xe7f90830098266b6ac9ac34bb6165e9d275fe275`; base `0xf907d812919c67c9b55c3ebb73b0c2f7e42f4bb7`; base `0xf987114f26671c51ea69850276a019337dabfb38` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: base `0x0cc53e010c6004ac554e9c7d3913e1f02e86cfbb`; base `0x4351aec464f0ab72924953f3e15e958c963379c6`; base `0x5d27fd5d4a2cbb479fb56298d6c6874f09e9ed1e`; base `0x5ff09ef0aebd7c31dabee31f56c5517b3ea98533`; base `0x627ba4f72a12d7db62dafbc5c6857f9461ab381c`; base `0x81e4a1c0a29716d45e5c01e27297fd1a6385ba5b`; base `0xbb8eeab00de76e2e2676d44d6db7d13371d30ad3`; base `0xcdcf93e74d8ac710c780aea19a3473e99765894b`; base `0xdcbde81800591844a2375a189d78f54647e80012`; base `0xe6a23313b2c40d7fa406f05ff396e2977da8d7a4` | ⚠️ Unaudited |
| IndirectOFTV2WithFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x17de46760f4c18c26eec36117c23793299f564a8`; base `0x18d79e4c4db169dae122294a9fa10c82e14f6bef`; base `0x90ed8f1dc86388f14b64ba8fb4bbd23099f18240`; base `0x9b737c08c1345d7521737a6ddd6e006856bdf0f8` | ⚠️ Unaudited |
| LiquidityArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf1b65afcbd3747cbda6c488f3abe39a8a784d80e` | ⚠️ Unaudited |
| MetaDynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 18 deployments: base `0x049b7d8ba3bf31de59bd1bebaccdbd131c09bb62`; base `0x12bf55d4d549befd90bb3833b71c075d0ffe97bb`; base `0x2a15d0abf826ab7b0bec5361e74e9a765eba78ab`; base `0x2ffa552d0c41050d494d4a5b9cef1763ad4d4334`; base `0x545ac8ba2615e9ff747edb2645380f9ca3f43eef`; base `0x5524174ca4c435da3b739d681a65a478c5943bc8`; base `0x5eb28f5e27bb6bdbf59776f04982edf5245af085`; base `0x9d0cd2c6e328334ce085754041205a5e422ba1cd`; base `0xa01c50efee93fade50fc5e423825f6f53c8761cd`; base `0xa12071800e9aee44d33e2fda0555508ee777d422`; base `0xa444aba24dd8d93995956727696e80b1207152e0`; base `0xabf4a3c037c4837d269897143854c0f1a42b3491`; base `0xb33bb661eaf1fe3956df325c0a65c7f28d2a8367`; base `0xb6c9cb503f49723d01685efa209bf1153cdee677`; base `0xbcfa5b51e547f858ddcf2edb8bf4afd4e32d460c`; base `0xbec7c994f746b7ef89ea94036a7ec1c33c02ca39`; base `0xd9dc9c77acfc39a9c41f9faf557d8c134d872850`; base `0xe9dc552b0b3e95b11b6667514a392df15cca239e` | ⚠️ Unaudited |
| MigrateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e4cc9234e49aacab2ddcee963ee414253f499c4` | ⚠️ Unaudited |
| NativeDynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 14 deployments: base `0x077b51e1ee6fb5ef9ad9ed85f3de11de4cf8d11c`; base `0x145b2bb959bdf2737d7e67eefb41ba6fd93bc60a`; base `0x1b72dc7a05bb119b81b72564935993b9744053ff`; base `0x528c3635fb925e32d4ec92ec5dd4da5488a1c1aa`; base `0x77086acbacebd1aaef8d8e3fb722fae1d2935650`; base `0x9b8a9075a6f76b2bce1342b4b250e600c9d2c8d3`; base `0x9c3e8587025f95e17c2429fede6b5c81428a5b25`; base `0x9cb0df3d69e94f2f7eac53b200c2f48ba2b44ee4`; base `0xa2754397e35b9d0843303e9314537c7abc14c4e5`; base `0xacf7b7b2f68184a47d190cd00bbb7cbc56fd673b`; base `0xae2c4831cbbdb1f96e5aaf28a41e15de549c65e7`; base `0xde667b76f1bb5eea678dbcdb7498bacb452b1d9e`; base `0xf3a97948b083b8fff110d599d5cf92efa4a7a779`; base `0xfcd1d5024b301a69ff7df157f3b13093fddb74df` | ⚠️ Unaudited |
| OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe239db424610eb3a6959d960f5db686de2cba1f5` | ⚠️ Unaudited |
| OracleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x561edb11abe844b7b5ab9334375459699c0a317b` | ⚠️ Unaudited |
| PermissionedDynaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: base `0x0c8886b089b303d183bdc4204d06559efc57270f`; base `0x1631ca6543adcb61e2b9e30189c8477981258274`; base `0x1bf9785c13b9bd7a567470544035a27fdf68e2f1`; base `0x1cda1ffdfac2936765101ca24db187e48a9e5aea`; base `0x22d298c6ca8c1d102a11046966ad547d1f54f3cc`; base `0x4314e0a6e4bbe98426541e211208075886950008`; base `0x67b93f6676bd1911c5fae7ffa90fff5f35e14dcd`; base `0x6beb9298743b4f70c7bb607d222d501442e1a937`; base `0x8bb92d108d957810fc048d8aee346336925d507e`; base `0xbba62ab384db1cbf43410f841a89679860a1b6ae`; base `0xea7975c2fec1ae9e3058bb5f99d8e26dbc816811` | ⚠️ Unaudited |
| ProxyOFTWithFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b4106b754954387c48bca8e7e8e003c9356e53` | ⚠️ Unaudited |
| ProxyReferenceAssetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43b85d9bdb74304ccf6deabd9d033e39807f9e1d` | ⚠️ Unaudited |
| QueueLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x1a3fe06854d8295a31398c2df55dedca99ec2188`; base `0x34e499baa66b6486436a4c77f311fc57b064a3eb`; base `0x48b1197dc8697ac86e2cce9e875a0b22ca3150f5`; base `0x57972f999170f8ec8b20b33fa161ebb320984232`; base `0xe5580280092d314d63b7b4431bdcf9a16ad1a1d4` | ⚠️ Unaudited |
| ReferenceAssetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: base `0x10c096fb4b3db5f257402e896f7ba03cb21f6260`; base `0x31d3335a925c9b1355f255bc87ab151650f6808f`; base `0x3a542a27002d4494ced5512c78e69e0e8dc8b715`; base `0x44cc49795034dbd0f68b1538cca7cdc05125f3c1`; base `0x6ea8e22aafdeb8b537b59fa857e2e49320ec5770`; base `0x8088b181b0f81b44934c5dfb561dc1ad82cb6e33`; base `0x96e6128b7b4e4d21e88003e06dd249fe32bb2622`; base `0xa43ad9e8ceb72527fa64bdc0a2f4401b5adc99b7`; base `0xa92c58012ee2de3c3a47ae92a4ed015700e4914a`; base `0xd290a5cb64938911ead3eb5cbe2a0b5c93a0b62e`; base `0xf480656e6d3bbdd276433e8a752f1a43c15e403a` | ⚠️ Unaudited |
| SDAOClaimpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x731923760c28426951d0c3d81fa0abb427f77510`; base `0x859cf213b258b66d97a0de0dbbd701128b6b9dc9`; base `0xeec9f7f0ccea10bb0d08e6355c2456e85862a485` | ⚠️ Unaudited |
| SDAOLaunchpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x00bcdf015865209cfc326cc0b3f517af358778e7`; base `0x28e822a1664cc5d7468013706d81cca387198508`; base `0x4174935f10609111754063f8c7d29dc5a522cf19` | ⚠️ Unaudited |
| SDAOLinearSimpleReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: base `0x06558d0063c937e841a3412c8337123d2e712671`; base `0x0af7e6dd75047bd22b75ce8b005115199514aee3`; base `0x17aa4d567421dd2f797ad1a7a69678a15fee885d`; base `0x184d92ea318be5c983d3e66c09c3b2a304b8911c`; base `0x1f88ed226780020afba1f82732af811623e8574b`; base `0x459b928e569c76d51c1f950f6a3e9873894048f2`; base `0x51bc5592a8e594d62a3d829ad4e6086ba34ac8dc`; base `0x55585978f8acf6f850b7984dcebb1466893bb401`; base `0x6cf5d792bc4630bcc11bfb6c8527e4a35fa1b6e7`; base `0x723ce41b9fd9227740242230797033ee373411c6`; base `0x9c2c28a8e594e9f8e4fc542c3adac8ff295f87a2`; base `0xccf03efa81ab1dcc037fd445e7bdd95b269f86e1`; base `0xcddb8a16ffe997a82b490d0f5d06e2a5c7c972c6`; base `0xcff2ef1929b8468cace664ff21b8fb605bf64344`; base `0xf7e5f2cfe7be71fd2f28cd9306bb54747a5ad8c9` | ⚠️ Unaudited |
| SDAOLockedStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x138463ad46a81421e432311faa551c992c8e34d1`; base `0x28998e083133cdeece483335625b5b7c61682924`; base `0x40f67f6924f7934669728be9bebae56f9ed7e96b`; base `0x641adbd9bfa73d6323e43b80198fd04042392bf4` | ⚠️ Unaudited |
| SDAOTokenStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8a7f47da04911307c0aba48e48bc4e3165ba976f`; base `0xfb85b9ec50560e302ab106f1e2857d95132120d0` | ⚠️ Unaudited |
| SFILockedStakingAerodromeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x09c6a0fcd6694e48a72121f73749eeaada1956d7`; base `0x2c618826763f031a5c15578d3034a904eb5c4517`; base `0x576b17b4bfc4f2771b788fa768bb82a127147948`; base `0x61e1637f44d63f74a7fb011d448377fcb84b822a`; base `0x81b3debeb066acef53221b912157edd9597fddc8`; base `0xbc7ac70d0d94a1538bfa9aa47553ac2abcb762b5`; base `0xbe1db919a4b2fb1adad9d6d8c2bfd01e6aad8dda`; base `0xfc217928ebfec3c9788bd48570cd06c5c4fa6e7a` | ⚠️ Unaudited |
| SFItoken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7636d8722fdf7cd34232a915e48e96aa3eb386bf` | ⚠️ Unaudited |
| TokenizedAerodromeCLStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 41 deployments: base `0x0148ded819ef254b06d4d38a8576fe333d74024b`; base `0x0fe100584829b59b16133f8d024a0dda5a5d1b2e`; base `0x1dfd23e3f9d7d1cc03314e709041861e34a6d7a3`; base `0x24fe44b6f9f7c9f6fc7f7b99ebaa92682ebdd9bb`; base `0x2d300abceb842b5b2ed05440fe791dd010c122c0`; base `0x37f69336141f8f9c3f201e7fe5951d71d5300507`; base `0x3b2bad6969f4c103191248895729b057e052dc58`; base `0x3b65ada0a6ad2e7c5455144a68b29ddaf3d2c158`; base `0x438d9b6e1ad1d0a0164888022c3d060cf07d8282`; base `0x44ed3f2f7f73e55444d7f4b252e474a12086b3a9`; base `0x4a8ea735a80a4eb4763c132c6e243ac50b4c6335`; base `0x4c499a20672a627192f0af4033a0a2fdda919bc0`; base `0x530dd940ac1e5ae39439af5e113442b9c74e30e3`; base `0x5676291c108ca8bf0212a10cdd50e4dc0f5a17da`; base `0x56df3b19199a08e5d84326eb0b9b9a837a9b0ac5`; base `0x57d223a962878a45c82ec865dc8fc42a2fe3131e`; base `0x581f6c0a46fa6d7854b7d369f1c9ea7dada82f43`; base `0x5cc0b938551ee0a9e96275b05af6f2502108b73d`; base `0x639cb83c910294ccb31688a1c79b45b10116d54d`; base `0x6f2fab76486a4e4a9837b5a74fc9095ef231f7df`; base `0x752a8f7584d4d53b20d4760e7e63cf52f6e38b39`; base `0x7584c8b9c0b434a93d070b87c1cabf57d3044335`; base `0x82aaca9defcfddb9d7b78e61a806e2770c589944`; base `0x871eaa4d2d0c824d7322104ce625e9fbfc71bb58`; base `0x90bbf89f1b6f758f9df2e76077cb67993aab0d93`; base `0x93a95108b122cc703c7f1476f4f67816ea0f3d8c`; base `0x958e39cf4231ac4ab9876e4cb03889acd333ace9`; base `0x98ae70adb0d40bf7beacf5f2f98197b93c69d5b8`; base `0x9af9a127ef9d03319ddf4d2a21fc00bf18698c73`; base `0x9ce353e7653435bb06f8a32688e6942a3f3b3845`; base `0xa15a580601e07b00e9175cbc7d1df8898553f51a`; base `0xb121754dbcfbbb7f8a9a5e1375c762d35b8434dc`; base `0xb4e39797da8233b19bfe220432dd3ed43db28e75`; base `0xb5f4e1b1d915c3c8ed34db88d543db3d38135fa3`; base `0xc44345492ef3d300d9ccbb825cacfed970e2da51`; base `0xd23c5f6fc4a771aea0a43a5ec5c77e0a405631e5`; base `0xd9ff2c79cd3ddc5d30704afd65adb3fc76091994`; base `0xddecea48605e39c4a2a8d24b03fad947540b4887`; base `0xf3c560a812d1f59b9d86981dbb916f27932d244e`; base `0xf3f1a64484d982be8db35d888b0344bc1d5f6eb5`; base `0xf62fe55b4884ee271299fcf0078073bcffb4bc6f` | ⚠️ Unaudited |
| TokenizedStrategyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x32fb85657ab082f46505ef47c3f053be0137d4ea`; base `0x5098691b7c00a40986ec00519ee6662433c32535`; base `0x59d8c678213a6bdcd81735735d621ee8940f0ed8` | ⚠️ Unaudited |
| TokenWhitelistRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: base `0x1c318265f9e207522ab827580f73efb0b70d03ef`; base `0x3d2efe225ec709d91cf2a11953226ed0951e8a29`; base `0x693ea3ea0e5530b0b90cec4523ca49351700ba33`; base `0x6c5d7ff0a94f94c6430b067160d3e60886a90bbd`; base `0x7129d707bfef1a3ab9148ea83622c80a42deeddf`; base `0x87ba969309a48f7e496a8536da351aa60189b16c`; base `0xb73ca6fa71122e07446a886715c3eb4600aed3e2`; base `0xb7f8c6ccc2c0a4d3bb55a3a471669c252467bc81`; base `0xbcca741996196462480108bcef7561c0ab3fdb04`; base `0xc4948edcc0c2dd7d9e6fc51a8008efcc5e6d6336`; base `0xc8a945fc0c730f85709d846491b7da5a8ca1df53`; base `0xcfc5c9c63deaffb6f0845ba00ab6a4368f4336e2`; base `0xd6c7357fb2173969697973c05d75c9087e8d73b2`; base `0xd91ab721b87471631b72bfc5aa5728f31f0b97b1`; base `0xff55162fa072cf81479bd0bfa2915baefa1e25b3` | ⚠️ Unaudited |
| VaultConfigLib | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x3ce426bb2fcb9e1300bbe03e2d34d7b3b7347db5`; base `0x44cd559979cfb1bff88c782fde15c3ad22c6ed6b`; base `0x587a91b2712870009a102b87e4bf86f5ccd52cbb`; base `0x7b7ee31dfb5f5e88bb8428ddb0687e0e28baedd2`; base `0xb198eede7371e60bcd7b90e9058f8255b20bdd0c`; base `0xbe93d93402efdb54613026fe31e6a297851fddfe` | ⚠️ Unaudited |
| VaultDynaZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: base `0x1abb0e8fccc49a5291ab487234a7d27ef5177552`; base `0x21527e64545c14bd340a48013ff073a2d055d4ab`; base `0x61ca29a1b77f150cb208c25b08388b8b81db7f43`; base `0x6e3b4131c78b467702b53dfc80dc4f520b3be3f6`; base `0x77d137b94cc28fba0d32b07c725e61979e582279`; base `0x9eb2df7899bb2564bc67fee6662a2ea5febdbfd2`; base `0xa7573585ae57dd8a956ca728263545698627e32e`; base `0xa8d2c3d5d4037ebc08e722f63810912196894883`; base `0xad82918f4b1bd9d7eb6a9795fbbe6b616a308bb2`; base `0xaddb3e0f9dc968eb9255cee243e362f2ca661d70`; base `0xca14c879b636e1a532bb8054979b5b4bb070f3a9`; base `0xee56b20f14f4540d4adb4511a090742b02325b6a`; base `0xee60b535cd61ec546a23d22e2144fa2bca48fde5` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: base `0x186662d2ccdd49808c26fa48bc55d7ec270a81a5`; base `0x51de8a83b0c72c5d890c8bef6226e7ad90aba15b`; base `0x56746ca6b1b0a2afc5d5660013eb76359bce8d47`; base `0x5d97299dfa2d2d5a4422a671b05af247f55c8b3f`; base `0x659b20afa212615fdbada348faf64d0288b8b6b1`; base `0x7df0bcc509057f6b0d406e2e708834d8fd80ac73`; base `0x8afdefa4a119fe423a15a6fac2c9ea687c1973b4`; base `0x90efbdfab36da8848136ca1fab1de3498b98fb96`; base `0x943fe4d001aec8c5d874b22f4b73f3e80f9c3ef0`; base `0x9600f21de9c73ee890b82ac08b0078f208fc8a7f`; base `0xabb1ebbf0e26183c3f689602b555645da398d007`; base `0xc00a560bed8d749e9a1a764dfb1b3e9c479a9ce9`; base `0xefe719160c96202396150d1fa70c4f665c52e04f`; base `0xfa5597ba18cb631c5ebdc8c41cfa20e3006aebc5`; base `0xfa65b5b41a597ce560d2ad68ba36081822f53add` | ⚠️ Unaudited |
| VaultFeesLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x31b57a0e39661f63b80b545081e63b0c809817ff`; base `0x388184017b9006f3e24b3f7f94e113737902e5ae`; base `0x6535166b69aebd2bd8fa713c843ac176fee9150b`; base `0x9e71e460adcf46f5cbabdebd0fd21fc191bc1ca6`; base `0xb09b886efde5d3ad6af898d16de9178c87ec4be7`; base `0xb130375b543bd919d85351b73636439c28d90db6` | ⚠️ Unaudited |
| VaultGovernanceLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x1f9e5478cf6e324a8d62cf12e6d68e8e0fd3f367`; base `0x363bfdec645723df948295c71334dbcb3f0a2968`; base `0x4703bd3c87e19281075545bb61e1daba1bb6fc73`; base `0xb4d05063a4cf978446181002cb524fb3bcfe9d94`; base `0xbc84cbc5f9d3a6b1c9efbe571b1419f7a3696ee0` | ⚠️ Unaudited |
| VaultManagerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x1faecedeefba515a88093601d07ea759f08e53e1`; base `0x30efd61d74a7c8aa87bcdfddd01041d00697f4ce`; base `0x7b273c267b7de25811883d69d26bffaebf71c184`; base `0x957fb5e642d6fe412d0fbfe6baefdbc4f730ddf3`; base `0x96263113ae253b82a5345fb036a69dd5852a0a33`; base `0xa3e5c305d24864703e9c950206577b0925f8046a`; base `0xb420bbad4455d4115242d9ef9c78eff64b319524` | ⚠️ Unaudited |
| VaultManagerSimulatorLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x180fe2e50cd056e4c7aaa3c5954f2bdc6e8eb72a`; base `0x2989d5b5cd2a1d0735661067f9f9471f57851981`; base `0x620978615e37f2c494cb9fcc2f9981029533fb39`; base `0x79db859d7fe2b6ae89f19b031b3506a480cf0b70`; base `0x86a2642ea34f83a15b43eadaa28115b0b84f708f`; base `0xcccc9e2e0afdaacf791a41c46ad7cb54d01fe8e5`; base `0xd5c3a44b44fa7e1a6f8990dccf3f819a38d04601` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 20 deployments: base `0x012cd94158b2619834930182f9754dfc9b954a59`; base `0x1e30d100099b5c4313ba8ace9d306bc20cf841d7`; base `0x2616fb8acca5c4afbbb267683676562309f07ecc`; base `0x30c0efb1a4fbf164fa6ae5774d311c2839a3beb5`; base `0x414f0e07cd833ce73c9d59280699f910b48e1ecb`; base `0x46f37e541cfb1ad3b9c794f2e9089099c60ea49f`; base `0x57de2a33bf4ec0c121c93c81d53fdb69514fa9ca`; base `0x58d7aa8fbf37f3fc3174f1da2183ed66821f12dd`; base `0x5f349008bdafaf158877cfa29c23d2e19ea0f30b`; base `0x6e638cce5ad2372cb45ce73cd288e198281c8c35`; base `0x715ce71824d4f502542a688c0a1d935b4148c5e5`; base `0x78d6518f96666b7d95e4f6a4a2056f25cba819ad`; base `0x81f0681cfe2c4b177a288111d31056ba44272f62`; base `0x82c14d81c0c5481fcbaa46e7260560195c21f21f`; base `0x89fbee908eb5b01d7332609307edfe0bbfcf8d80`; base `0x8d300f225f6014d910203fdbff1295d42ff0ee9b`; base `0x95b3239e0688fd336b05d604a02e145c2da5d81f`; base `0xa4914177af2f465958b022dde1c5d5871184175a`; base `0xb1b5d4a6a9bebd9f23bd38d23c5d029276f59402`; base `0xe260c97949bb01e49c0af64a3525458197851657` | ⚠️ Unaudited |
| VaultRouterLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x01ab836ff146f70938c1a7defc8c8e40622da0f9`; base `0x7a64f66bb28c28f7d3ddf37139cd146b4caa7e4e`; base `0x8e6b29e5313764b38019705f082211199fccdf7f`; base `0xabb735b095dec18248ae17f9abbc71a8120b5605`; base `0xb245ab0d2e9dfb99b1212eb3d7732c22591557a2`; base `0xc0976fda753939926436178349fd50d9914d59fa`; base `0xd3109f87bd553b83f64a2972effb034bfed8d2a0` | ⚠️ Unaudited |
| VaultSimulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: base `0x2dc0002c9ecc0e7baf7bda035aa653b1e3cf1cb7`; base `0xa065ae1ec61f06abf5d6377ed4fccc6912b27be9`; base `0xa6ae67098fab8a78732572b6142dcb4f44161f09`; base `0xa700aab4eba3482da2163ef8df01779f7a64e9fb`; base `0xaaebd176aa1115d714b201af59ca079b9831c4a8`; base `0xb8019542931286d1aebaef1165fe1f639e62b0a3`; base `0xd6aaaec9ee40f11a59524b1e564a89c5a7fcd8dc`; base `0xe7414c7ded14a73a3e20b68345225eaf5b3ffbe2`; base `0xf0d657868c8b38921bd301b3eb9c13c1b2db0e05`; base `0xfe2a33ede7739129e83a67fcede2e262364d373e` | ⚠️ Unaudited |
| VaultStrategiesLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x0b43bcef4af1e9c52dcca264b78c1dd778d1777b`; base `0x2214959df5eb012754e19c7af5819a85c5629d23`; base `0x38df9f77e687576fdb888e569709cc26d5e73e28`; base `0xc77df5462492a1cda83b83972a9f9efe0b391571`; base `0xf22bd338ccb6446a25920d1858e50d709b663e9e` | ⚠️ Unaudited |
| VaultTokensLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x07b3dd2b07613ef877cf6392a971d00e36fe2ee2`; base `0x1b841eac4ac3f7a704e7ce096039e5baaf145812`; base `0x2f67f861c8e4ac32036e4d247eef04abbe5bb650`; base `0x4e41ae763baf3a98f30b9b6db8f7640ca90ee89c`; base `0x5deda0f7dfedc1fdbde16fb0b97fc312ce8d0a08`; base `0x7e81c4022018cae002f70817aa9a4035f7daf5c5`; base `0x86aab402770f64d4924abb83a3b975f894f0835e` | ⚠️ Unaudited |
| VaultZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x6683604d52834e1a1c148a7a466563bca5adb450`; base `0xdb4691dfbf98b1e992fc701f987dcba2ce4d7dfd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (157)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x00123acecba54b5fe9de677285fcfc812f5d9fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x010e63ee3a11b23397966c99efa4097f8ab26265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03a10dbc88cd07b58c1f54eb0103965df21c6973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03af7132a865e588c8416c53d521665fb41a19d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x045f5b6f885e4cc939776cfdbfced9d768b9c0e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04e8c4f02b939cedc87ccdb2d387c94836c155ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x051c386e1bb49affa75a77306d13b8e47cfc0849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x077e53ee1dca9aee1288b33aa452766dbf2be178` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x09291aaed7924c5ef78255809e7369fc715e3257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a4f8dc5237b841e986bc36ee91b35a7b681b0fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a53bddefd38b29e13dcfe1ee0bc1296c990a9cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ad4e227867d9b319b8a3c10c5a01ff625f8c01e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ae165ac50e78019da056a01e528ff817f6f3f4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b1e6d09b57844a8307aafb9853c79bb05be5cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cecb9d88a8be0f07a4cbe291c2c7140109b2fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d27441b00832b55268c2d20876bcc7ff84a3739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10da116182f570672f2544503702371bea1010b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x184b2217fc07ecfa77c7a6df476b0814250be877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1954d138acf647992117f7870a99496d4246b3f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1aeff12540e0965b48f29cb6b3133d08051ee60b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1be1adc5a230178146033d3bd3ccdb8709ae5b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1bfcb41c048a654680e092e2e11c8866045b338f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f1933984a5e7f36a6fa8a454224d568ab2ba257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1fdd44a6ad82b2e697a75d41379c4d5ef58efa6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2327c7e996fd8edf3e89175a0896ba17a119ea49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x290a9a85e117a056559ec0a243dc107484ee6add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29c66bad734d084cc7b1d03c262dfaccac96c28f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2cebb51be7ceea16b1f274f06d65137ffa898e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2dac28ddaf2755619284a0f9535827243fbd35b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x328600d69dc3bec8d2198516abf0a027020019dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3403866af34a1db6c98964c0346a2e6426bcdab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x354533bcd70223ca2935083d40e4ecd3db066564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35717340ece0af8295386ece150c915d1c45d294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35cc57412ff8a5fbab99efb07c2feb5973067e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x366d5cdaa29331f7a4e51cbd60f13073da9b7ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37c1222d5f5e896fa8f1d192feeaa7ba1b34ca3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d26d7e1cfbe1f0c730673a2d255d212d79288b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f1e134a79d90d11f57e1901e0c4e11d4439ed81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x400df36aa5f56da6313cca193bd21ad69bd1757c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x408c0c87ca68f3f6015374d03f5b20125e3cd91c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4135464894fef303ed6ea832fb70cef70a460859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x44921e42017316f89c1dedd70a3a017d4c5162c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45527da489ef5ea43d40ce89aa49413296cba856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45585acb41829139c7606ed6c4c5eaec2dc50029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x491b3625de24c15379c770c1b92b4d7a82f45d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4b368c0eec30d133a75689b1dd859211ee8ff0aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4be4465a2d017e12ce995037c959440c41a2ea27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5062f9a49d0fbd82d8f8ec7fa8c7c0131b256b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52796d470c439246c259f43c94e62998ec5fc3c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5352bf8958507a23991635f9d72f9e955dae4bf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x54678214a6e69e9fe84ae1f16c88056587e46851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56a87d08f42256140c49718f2d4c5540f7946ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58c225c669b28e6cb2646b0c85ccb8b664dbd7f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5950273e4f52ce98e7cfffa9188feac4bc550ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5af1d3a0bbd4614db7d85f8496357bcb0967bf3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5af6181ff3ac6c032268a6bd5714cb43e28741fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b7b0e7122f0c449133242fac52f1a0262bb5f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b81203ca025715b5be292a102a87626e9402faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x636a7f9811b326e1081d8fee03ef7f47948bd476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x661d1c564a98aa6e2df5787e0ac0c447be9f1822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6726a616d92d02d21739057a5e1fedf5a58fa386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6792a715bb05c26db96495348c1a12cc5bf72970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68ba6f5b2212b2bef99648660c740ddc1cead92e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ab825bb2b5f03e188ac681f1346b7871d5ffcca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e03c0b5ed1b16a8fd3f04346846ef986cbfc0f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70ecd24fd83bfa485b8e5a04f724d0f38bb927bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71d588d345205c1d68637930b89b6c14e1c31b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71f4dd24f5b5af931a69251c808072517a7f6d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7293de195ce31796b2de251fd66aeaf24dfdaef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76ce228add817d30279b594c08de9862f72faf9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78096b76903228d9c6f7556f1b8dee77dcd49e4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7969f0ed03ede760d45ebb91cf5c6f539af62661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b62a32219108fd9d7e9bca2b2897b1abf7f47d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7bcb318b014e579e82ff411c16ff1ee123e6ce4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7f8e355c67f23c7989ea134e880ae41127793111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x801ebeaf8f5047b6ee91a3f9e927b80d1cbb64aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x808aa8f3d64e0e48f53ad5b6ceeae63c35cae78e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8098142fabc82c42bda54bbf6ee334c40418b516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8298cf2f777a3d24c8d2803a345ab5735984cda9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x837714eca91d6a8422b836db4af6aff162746842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x84a619701b87fe8a954ac9f05cbe17c05b8e2562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x85941b32b3436f92c5dbf24f7b90863de2cff3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x872ad3f6913a720bc3d2b6e18444633445faf871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88ed2d9806f07f61205ce7b7e13d10798d3ece6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b2ba923b7483536eb764a5301949547fbdd0d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b7009018880bdbe0d676c14f58d3eaa3c9e467d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x900f80149a74d1a5c28c160bdeeed0a7bde7c487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x910543bd26d879151df0da5b62834dcf9ebed2b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x927c76d5beca29b1a21ce31416876f940b21bde4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x942d21ebd144765e3bcf295886d44b684df1e1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95b40fabe6997347b0ba981888ae52ac80e3b969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95be5cf4acb136ed8e014bb6647859a922d62ea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x967d71ac15435343183f3db4b54d9d9fb2b6d070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96f5c36c05f10e8fe67cd132a8b9f051c2570424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9913668270f6e93406716bcd1b6bfe4d0afd3687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x992fda2cc141d446e1b363fe2fd870407f3d05e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99bebaae5018b41663ef20a7f330c8de413c3d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d0df237bc36a431f201e9ca08d4333c56209ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f2c74c090ca8f2388db7b77f2b2194877b34d14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f30f2328b81fa73c834b717c92ebb3c070acb8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa06c743b8032aa0c9d137b7e9a00653a3f46d6a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2601d8839563b7bcbdef904066b6e4e8d9b9a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5aaaf8bc721ec25906980d5e92b85d6609cda2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa789dd8988c5687a3e24a06fe8df419ac1d35464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa7e0f3b2a939d7481d6d1f3c1ef81df188c5df3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xabd1702b5c8ef21fda8c001fbb50c011b85010e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xacdee40c1f85bd516c023079a419d45a31e63e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xadee3e58917a8539fea0ced3bfeecd11525ea244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafdeaaf87357ee2d9f0829076fa1820e553839b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb03503c91dcde1a20229369c6820e4251980ce3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb40d9c68f279e4eaf489ef95ca30634c164233fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb2b209ca066d27a86f3d9470d517d65b6656277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc4042a17f64cc2bbb3daf9dc764c31540bd4490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe2ecbf2b7d243d1c467a6b0974be8a9ca449de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc09ed6fa536814585299a22ae3eb9c45cbc54308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc35b012752405c9aa1a91669fd6291f3b06ed218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc52c24143f39efe7f7750f26ce73f4a0ef3265b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc961506ff85e83914c55685cd544b3788cabd952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca6619defef383bf8741bd9f8d8d7beaf315c1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcad808d263f54884bcb6df34470c1a259a991b2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcbf202921689e1d070e10efee6701032934f58e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce51d81b356de722380aaf3c87b072d1d1d0eca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xceeda1e21ca61e07847e691bc80bf6d1750c82f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0364b1e5166dc508ccb132276098e08bc9f07fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd21fa003078bb574e96b18cdcbbe029f4de0c94f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd42b734aed65c122e432b3356befd7fe383dd733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7a3e4fefb5d80ec83f31c26de730c64d2a97150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7be5d515607baa4cf2e35d8a0b8a7562b919722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd91283a6d7c11e8c4190c232fa7421bb4d8898a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xddbc27af6a98886f3c447d1382569b57fdc71c49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xddfbfa26457aebee2946f208604fdc42502d59c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe11a2344eceaf5705a258374d71d083392af1a18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3380cc48377ca290766a0e67a0c86f7f8ad9a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3e4a0bd665546326738c1afecf2688cf0d73f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4392fa991d56a16746850810efa10539e0a67a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe46434220ab7826c184d331f4e31c7d305e83011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4e1e6f96f445c6708158f60095bb46aa846b0e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe50489374f5df79340cbe7122e0c242ad2efd359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe77b9ffc6644c0bab8b7d059f6a4dfa1ec6def73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9bbdc6856120d5fe68614712b124b2792cafb55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xea6daae1a8233b010f79f7bf7adf862a409464fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec043d8e413e937dc76b0d9cf766c3beccea8fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xecf9843ee88b76c503e9bf089f6cec40042050e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee0586790ee4bf8d8b6d4dbec372422dc343ba54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee1ac9b19e03cc928deea881e9ce637ecece638b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf022616f8f3e0e814b9e4fa0440d47c78914664f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2b4ef4c1513b734677e2687254a21f4a5da6ac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4a4e9fb6583ea73c820aaabb92739b1846f441d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5738b4ad2f8302b926676692a0c09603d930b42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6c9e5138e33dea52e4fb8cfb1b871dc89c22195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6e0dbba58cb01856bb3d90ef7e62fbb0f7d0eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf778956227f04a6e193eec17febab67838ae8e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf7bda13d40b4ee280e8439c10ee5a74b364364b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf97cee6e60f63ac96007300bbef87d44bfca3620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbbb3f255f4964b52500ab425d4597105806aeaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfdad14303ea4c7b0a8be7c453a9bfbc57208986d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xffdc0b02b00df3ec7367a630bc3ddec5bb21922b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 530
- Live contracts: 0
- Unknown liveness contracts: 530
- Source-verified contracts: 373
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=92, source verified unclassified=281, unverified unclassified=157

Showing first 200 of 530 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | DynaVault<br>`0x000bd9b6b6104ec9a360e323b42e0fad7128a771` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVault<br>`0x620b2f171825e9be731532b3ddcee161abe6e660` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVault<br>`0xa37f48577a9141bd94e7d6a2c976852c77d2baa2` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVault<br>`0xc0cf88750b5323e5f08626483cff5e7d546ca30d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVault<br>`0xd8147edf1e00fa717ae0c3d6aa6fa270e8554ed0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVault<br>`0xddfdce3f69d5287a55e476e2facb9c6252afc64c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultLib<br>`0x4c3df500989df0f6670b99018811b94d591cc5a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultLib<br>`0x6c331b1f8028a2b9cee2fc83169acc26e6a2e7c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultLib<br>`0x8c38cc2e23cac44640d260cf45b864e8da1d8a22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultLib<br>`0xaee26e4806acebf827a6bfc85a855d3dc6b74adc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultLib<br>`0xbde3a6a26eb44701d3874d67ea9530bc6c084399` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultLib<br>`0xbec6da78d6102b7a1542887357099f8214366014` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultLib<br>`0xfece3c717046e101997ca0351bb1698203888597` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultManager<br>`0x30cb8e3b9c79b2f7304aefe89eb39de380c58273` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultManager<br>`0x4c168f4cc5a9c648f985b363bd528f21d6b198dd` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultManager<br>`0x57dcc5558eb76acd922f402ba900beaca885c406` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultManager<br>`0x84f0fe6e62670dedf9a3e0aa8065b1a536c2b843` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultManager<br>`0xc3bad1194fd89babc3250cb423b20d51a75250ac` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultManager<br>`0xc9572eba0edb16a61a1eb0ae9271ceb01c0fca53` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultManager<br>`0xdf34fca020cff534eb712617bc5159105add1915` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | DynaVaultManager<br>`0xf461d8525077487611d3a1db2a55b8901c2da673` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | PermissionedDynaVault<br>`0x0c8886b089b303d183bdc4204d06559efc57270f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | PermissionedDynaVault<br>`0x1bf9785c13b9bd7a567470544035a27fdf68e2f1` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | PermissionedDynaVault<br>`0x1cda1ffdfac2936765101ca24db187e48a9e5aea` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | PermissionedDynaVault<br>`0x22d298c6ca8c1d102a11046966ad547d1f54f3cc` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | PermissionedDynaVault<br>`0x4314e0a6e4bbe98426541e211208075886950008` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | PermissionedDynaVault<br>`0x6beb9298743b4f70c7bb607d222d501442e1a937` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | PermissionedDynaVault<br>`0x8bb92d108d957810fc048d8aee346336925d507e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | PermissionedDynaVault<br>`0xbba62ab384db1cbf43410f841a89679860a1b6ae` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | QueueLib<br>`0x1a3fe06854d8295a31398c2df55dedca99ec2188` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | QueueLib<br>`0x34e499baa66b6486436a4c77f311fc57b064a3eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | QueueLib<br>`0x48b1197dc8697ac86e2cce9e875a0b22ca3150f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | QueueLib<br>`0x57972f999170f8ec8b20b33fa161ebb320984232` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | QueueLib<br>`0xe5580280092d314d63b7b4431bdcf9a16ad1a1d4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | SDAOLockedStaking<br>`0x138463ad46a81421e432311faa551c992c8e34d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | SDAOLockedStaking<br>`0x28998e083133cdeece483335625b5b7c61682924` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | SDAOLockedStaking<br>`0x40f67f6924f7934669728be9bebae56f9ed7e96b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultConfigLib<br>`0x44cd559979cfb1bff88c782fde15c3ad22c6ed6b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultConfigLib<br>`0x587a91b2712870009a102b87e4bf86f5ccd52cbb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultConfigLib<br>`0x7b7ee31dfb5f5e88bb8428ddb0687e0e28baedd2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultConfigLib<br>`0xb198eede7371e60bcd7b90e9058f8255b20bdd0c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultConfigLib<br>`0xbe93d93402efdb54613026fe31e6a297851fddfe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultFeesLib<br>`0x31b57a0e39661f63b80b545081e63b0c809817ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultFeesLib<br>`0x388184017b9006f3e24b3f7f94e113737902e5ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultFeesLib<br>`0x6535166b69aebd2bd8fa713c843ac176fee9150b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultFeesLib<br>`0x9e71e460adcf46f5cbabdebd0fd21fc191bc1ca6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultFeesLib<br>`0xb09b886efde5d3ad6af898d16de9178c87ec4be7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultGovernanceLib<br>`0x1f9e5478cf6e324a8d62cf12e6d68e8e0fd3f367` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultGovernanceLib<br>`0x363bfdec645723df948295c71334dbcb3f0a2968` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultGovernanceLib<br>`0x4703bd3c87e19281075545bb61e1daba1bb6fc73` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultGovernanceLib<br>`0xb4d05063a4cf978446181002cb524fb3bcfe9d94` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultGovernanceLib<br>`0xbc84cbc5f9d3a6b1c9efbe571b1419f7a3696ee0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultManagerLib<br>`0x1faecedeefba515a88093601d07ea759f08e53e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultManagerLib<br>`0x30efd61d74a7c8aa87bcdfddd01041d00697f4ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultManagerLib<br>`0x957fb5e642d6fe412d0fbfe6baefdbc4f730ddf3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultManagerLib<br>`0x96263113ae253b82a5345fb036a69dd5852a0a33` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultManagerLib<br>`0xa3e5c305d24864703e9c950206577b0925f8046a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultManagerLib<br>`0xb420bbad4455d4115242d9ef9c78eff64b319524` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultManagerSimulatorLib<br>`0x180fe2e50cd056e4c7aaa3c5954f2bdc6e8eb72a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultManagerSimulatorLib<br>`0x2989d5b5cd2a1d0735661067f9f9471f57851981` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultManagerSimulatorLib<br>`0x79db859d7fe2b6ae89f19b031b3506a480cf0b70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultManagerSimulatorLib<br>`0x86a2642ea34f83a15b43eadaa28115b0b84f708f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultManagerSimulatorLib<br>`0xcccc9e2e0afdaacf791a41c46ad7cb54d01fe8e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultManagerSimulatorLib<br>`0xd5c3a44b44fa7e1a6f8990dccf3f819a38d04601` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultRouterLib<br>`0x01ab836ff146f70938c1a7defc8c8e40622da0f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultRouterLib<br>`0x7a64f66bb28c28f7d3ddf37139cd146b4caa7e4e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultRouterLib<br>`0x8e6b29e5313764b38019705f082211199fccdf7f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultRouterLib<br>`0xabb735b095dec18248ae17f9abbc71a8120b5605` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultRouterLib<br>`0xb245ab0d2e9dfb99b1212eb3d7732c22591557a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultRouterLib<br>`0xc0976fda753939926436178349fd50d9914d59fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultRouterLib<br>`0xd3109f87bd553b83f64a2972effb034bfed8d2a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultSimulator<br>`0x2dc0002c9ecc0e7baf7bda035aa653b1e3cf1cb7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultSimulator<br>`0xa065ae1ec61f06abf5d6377ed4fccc6912b27be9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultSimulator<br>`0xa6ae67098fab8a78732572b6142dcb4f44161f09` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultSimulator<br>`0xa700aab4eba3482da2163ef8df01779f7a64e9fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultSimulator<br>`0xaaebd176aa1115d714b201af59ca079b9831c4a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultSimulator<br>`0xb8019542931286d1aebaef1165fe1f639e62b0a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultSimulator<br>`0xd6aaaec9ee40f11a59524b1e564a89c5a7fcd8dc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultSimulator<br>`0xe7414c7ded14a73a3e20b68345225eaf5b3ffbe2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultSimulator<br>`0xf0d657868c8b38921bd301b3eb9c13c1b2db0e05` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultSimulator<br>`0xfe2a33ede7739129e83a67fcede2e262364d373e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultStrategiesLib<br>`0x0b43bcef4af1e9c52dcca264b78c1dd778d1777b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultStrategiesLib<br>`0x2214959df5eb012754e19c7af5819a85c5629d23` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultStrategiesLib<br>`0x38df9f77e687576fdb888e569709cc26d5e73e28` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultStrategiesLib<br>`0xc77df5462492a1cda83b83972a9f9efe0b391571` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultTokensLib<br>`0x07b3dd2b07613ef877cf6392a971d00e36fe2ee2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultTokensLib<br>`0x1b841eac4ac3f7a704e7ce096039e5baaf145812` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultTokensLib<br>`0x2f67f861c8e4ac32036e4d247eef04abbe5bb650` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultTokensLib<br>`0x4e41ae763baf3a98f30b9b6db8f7640ca90ee89c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultTokensLib<br>`0x5deda0f7dfedc1fdbde16fb0b97fc312ce8d0a08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultTokensLib<br>`0x7e81c4022018cae002f70817aa9a4035f7daf5c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| candidate review | VaultTokensLib<br>`0x86aab402770f64d4924abb83a3b975f894f0835e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | MigrateToken<br>`0x8e4cc9234e49aacab2ddcee963ee414253f499c4` | non_address_book | unknown | unknown | verified | n/a | `0x8c26b989c81d298cd4fea49732bd7b3155acffc9` |
| source verified unclassified | ProxyOFTWithFee<br>`0x14b4106b754954387c48bca8e7e8e003c9356e53` | non_address_book | unknown | unknown | verified | n/a | `0x8c26b989c81d298cd4fea49732bd7b3155acffc9` |
| source verified unclassified | SDAOClaimpad<br>`0x731923760c28426951d0c3d81fa0abb427f77510` | non_address_book | unknown | unknown | verified | n/a | `0x8c26b989c81d298cd4fea49732bd7b3155acffc9` |
| source verified unclassified | AerodromeDynaRouter<br>`0x02c0671f5d725d67e06582b92a562e6faabae840` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeDynaRouter<br>`0x0ae5d7f169b7971ee3090baed7441e3d37c38b26` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeDynaRouter<br>`0x3393043be833d8c27a184f21cffa3947ed8971be` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeDynaRouter<br>`0x34f503123065f83a7b3a9e345c386fbcc1e27d8b` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeDynaRouter<br>`0x586125b036b9efc9e3461ce174d7b65c843aaed7` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeDynaRouter<br>`0x5893c3ef2e1f81cf9ea043f56a8566ded8fb457c` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeDynaRouter<br>`0x6bf610ab2897f1d1afa550b96f5971b8f78a3e81` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeDynaRouter<br>`0x7ba35ee46bbbf75837913023ddd3fd540bf71f4b` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeDynaRouter<br>`0x8ca67da97010c3dd25c0202ba14767c1050fb71d` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeDynaRouter<br>`0x952cf03e87173816a13ef5f0d0c606ed08482067` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeDynaRouter<br>`0xb1a6de0e50877e87bfc6bbed49e114cf3a732297` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeDynaRouter<br>`0xc3a9f3396dd9a596644d78b3ac46a86b5b5eae64` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeDynaRouter<br>`0xc448c74a82f6f0aeb0f07ef3781f4b86bbd1a5da` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeDynaRouter<br>`0xdf6551ad178a23fc7000b0eca4435bae5479e2dd` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeDynaRouter<br>`0xe0d6d104743d7d9ca9d8b3c2c981b21db2ca6b09` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | AerodromeV3CLDynaRouter<br>`0x1cf8db53f9d88b0c454926dbb29a94654f7ad44e` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | BalanceQuoter<br>`0x8f2311f6ff8041e0f07500ed4256e91ecf3d0a3b` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | BalanceQuoter<br>`0x9b96cb4f5dbf666e7b799cbca07a362180952c36` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidity<br>`0xfe134ebabda45dd54948e19cd0a259ccd5c8f71f` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityFactory<br>`0x3a88b11fe2b7546272b0f09fa066d05998232ca9` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0x0066fecdc377129232df0f0317f02e721a02ace6` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0x3de202f153334dc84673dd865fcb2bbd82ca71e2` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0x4b0cbbea0f3d00ecd72ee080305eff1b0dc006a6` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0x529275df5005fc9cd186683d95b698c92b632ffe` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0x531fdeed82f118f228bb115911ca083133467635` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0x6793bc246053f7fb660ac562abd9da61d107a9ff` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0x732e82ab4f202f3399221dc3b6a2a0732963c910` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0x760c206ffdb4199637752f9336abb9db692d9224` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0x82f22418de1b9b30e04afc0ce303cf7ebe8d1674` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0x94129c537074c004a7f2a52bbc777344e7db4f4c` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0x989f2cfc5346f654e22bf5eb04247c83b42b4d10` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0xa374deca2a7ba5463a5608eb08a572e6f0ac131d` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0xaa89a19bd0508f7ffd0e039193b060b9d6f90a6d` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0xcf3d724c90e90c32b95e7ab3647da3a76825e944` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0xf5ba7617ce1042f66e23d4994bac090ca62ad18a` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaLiquidityRegistry<br>`0xffeddb032791510581b2572de406c79a6b5aeb0f` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRoutePreviewer<br>`0x47f90644f4d3d769b5e4fac380b0052df45f4f2b` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRoutePreviewer<br>`0x5da52c8b9531dddc5ab4d13eeb850eda0b37a168` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRoutePreviewer<br>`0xc7b059a3bcc0651475159697bc2d0151477fb77c` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouter<br>`0xff34882b3784703f4263662ac4a6afaf9902bad5` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterMeta<br>`0xce3a64662e0dde328a291524b47ba49bbe373962` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterNative<br>`0xe6541603bac4abec39e618efdeaca63925175680` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0x1f1f97b9f57da4d4a1b8d184980cb13617972931` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0x2686e6971033d6fa1901810f53ab5a7376db5bf2` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0x2d4887cd800017892bb01102af090d08c06f8cef` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0x327b492be4aae6b9483957ec291d91d926fa674a` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0x56f5a6d09955b4dfca18707d5034f09f86c3a7d4` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0x5cc910ee43e7ef459e304e1852a61c73c550e303` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0x61687caa91b3e30222debf9689ce3b79dd25793e` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0x67408f0ae9ce3cfba8dd8fb1a8539283fc710ebd` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0x7390ccfe113d8ec18b2b3e7474e5ef4d55a9ae45` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0x73da01b89f617ceca30ddf8f22e62c3b0f2498c9` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0x82bccff6e13a5b6e4d56e33a2079b009255d40f9` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0x860d8e4ec968242820bafbf480be966cece8c9ce` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0x9b513f14b6967a35dc712a80d8868a0a8db11b59` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0xa8f65a5118afd7ee7a71031c1cebfa603b6e67f0` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0xaa94b1fc98eb7b2cb95889ac1e4e0b05abeca144` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0xbc3a0a3a4805f66cf221ab7e21a8c7539effd4c0` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0xd0bc8c70620a89d91e5e8cbc3286f128b5c1898b` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0xe4761031b22dc432d58c5d6e215609e582b61d3a` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0xe851a9813d3cd2e95356e4b6cf43e4c52c1ec367` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | DynaRouterRegistry<br>`0xfe8ccf54b010460bc943ce50293862d9772e6a4d` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0x21d4afb6137d3ec375af5e03f66eb03cfdaa12df` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0x34cb4883c3f1c823bd3d90cc9eb66b098422e20e` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0x49a064e6914e3179b3a1f4bb502df49a65eeafcf` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0x5b9aef19c95ffb422a06313ab2804fc7920b3be7` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0x604786e7e95e90288f654369b15b6ba227693c1d` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0x687b905b5a79dff5d07a6a0d1371490d8e679bd4` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0x6f836aebfdd32ef3786bc9f85d9dc15f1b18429a` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0x8a1217655655e7d991ab44403159bb070771be10` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0xad51bb11ccc0df248b78385edec508167830c5d1` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0xc23c6c92658ed1aa35e5ef72f2db7f00b09ee5fc` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0xc44b51ac1327f0de9945931833168c6e3999f235` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0xd7bb9fa68be9a22b241e6c8544dc82bcd2e5b32f` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0xe7f90830098266b6ac9ac34bb6165e9d275fe275` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0xf907d812919c67c9b55c3ebb73b0c2f7e42f4bb7` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626DynaZapper<br>`0xf987114f26671c51ea69850276a019337dabfb38` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626Oracle<br>`0x0cc53e010c6004ac554e9c7d3913e1f02e86cfbb` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626Oracle<br>`0x4351aec464f0ab72924953f3e15e958c963379c6` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626Oracle<br>`0x5d27fd5d4a2cbb479fb56298d6c6874f09e9ed1e` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626Oracle<br>`0x5ff09ef0aebd7c31dabee31f56c5517b3ea98533` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626Oracle<br>`0x627ba4f72a12d7db62dafbc5c6857f9461ab381c` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626Oracle<br>`0x81e4a1c0a29716d45e5c01e27297fd1a6385ba5b` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626Oracle<br>`0xbb8eeab00de76e2e2676d44d6db7d13371d30ad3` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626Oracle<br>`0xcdcf93e74d8ac710c780aea19a3473e99765894b` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626Oracle<br>`0xdcbde81800591844a2375a189d78f54647e80012` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | ERC4626Oracle<br>`0xe6a23313b2c40d7fa406f05ff396e2977da8d7a4` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | IndirectOFTV2WithFee<br>`0x17de46760f4c18c26eec36117c23793299f564a8` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | IndirectOFTV2WithFee<br>`0x18d79e4c4db169dae122294a9fa10c82e14f6bef` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | IndirectOFTV2WithFee<br>`0x90ed8f1dc86388f14b64ba8fb4bbd23099f18240` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | IndirectOFTV2WithFee<br>`0x9b737c08c1345d7521737a6ddd6e006856bdf0f8` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | LiquidityArbitrage<br>`0xf1b65afcbd3747cbda6c488f3abe39a8a784d80e` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | MetaDynaRouter<br>`0x049b7d8ba3bf31de59bd1bebaccdbd131c09bb62` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | MetaDynaRouter<br>`0x12bf55d4d549befd90bb3833b71c075d0ffe97bb` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | MetaDynaRouter<br>`0x2a15d0abf826ab7b0bec5361e74e9a765eba78ab` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | MetaDynaRouter<br>`0x2ffa552d0c41050d494d4a5b9cef1763ad4d4334` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | MetaDynaRouter<br>`0x545ac8ba2615e9ff747edb2645380f9ca3f43eef` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | MetaDynaRouter<br>`0x5524174ca4c435da3b739d681a65a478c5943bc8` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | MetaDynaRouter<br>`0x5eb28f5e27bb6bdbf59776f04982edf5245af085` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | MetaDynaRouter<br>`0x9d0cd2c6e328334ce085754041205a5e422ba1cd` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | MetaDynaRouter<br>`0xa01c50efee93fade50fc5e423825f6f53c8761cd` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | MetaDynaRouter<br>`0xa12071800e9aee44d33e2fda0555508ee777d422` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | MetaDynaRouter<br>`0xa444aba24dd8d93995956727696e80b1207152e0` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | MetaDynaRouter<br>`0xabf4a3c037c4837d269897143854c0f1a42b3491` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| source verified unclassified | MetaDynaRouter<br>`0xb33bb661eaf1fe3956df325c0a65c7f28d2a8367` | non_address_book | unknown | unknown | verified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/singularitydao](https://paladinsec.co/projects/singularitydao) | Paladin | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 27 | n/a |
| [hacken.io/audits/singularitydao](https://hacken.io/audits/singularitydao) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2478] paladinsec.co/projects/singularitydao — no match: No reason recorded
- [2479] hacken.io/audits/singularitydao — no match: The provided text is a marketing page for SingularityDAO audits by Hacken, not an actual audit report. No contracts in scope are listed.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/singularitydao | BalancerV2DynaZapper | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | BalancerV2WeightedPool Oracle | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | BaseDynaRouter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DependencyDynaRouterRegistry | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DependencyVaultGovernanceLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DependencyVaultStrategiesLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaLiquidity | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaLiquidityAssetManagerLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaLiquidityFactory | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaLiquidityLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaLiquidityProxyAssetManager | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaLiquidityRegistry | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaRouter-MetaDynaRouter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaVault | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaVaultLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaVaultManager | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | IndirectOFTV2WithFee | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | ProxyOFTWithFee | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | TokenWhitelistRegistry | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultConfigLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultDynaZapper | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultFeesLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultGovernance | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultManagerLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultManagerSimulatorLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultSimulatorLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultTokens | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 157 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [2478] paladinsec.co/projects/singularitydao
- [2479] hacken.io/audits/singularitydao

Fork inheritance lineage and inherited audits are included when available.
