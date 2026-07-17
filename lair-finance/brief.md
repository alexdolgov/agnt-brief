# Agentic Audit Brief: Lair Finance

## Project Overview

- Project: Lair Finance (`lair-finance`)
- Website: [https://lair.fi](https://lair.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.394Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: berachain
- Contract surface: 86 unique implementations (195 raw deployments)
- DeFi Llama TVL: $3,809,190.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 19 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 7 common project-authored base contract(s) (proxy, infraredupgradeable, upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 198; live-surface contracts included: 195 (131 live, 64 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/22 (0.0%)
- Deployed-live implementations: 27 of 86 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 59
- Unique implementations: 86
- Raw deployments: 195
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 2 fresh, 7 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BribeCollector | unknown | berachain | n/a | [`0x61bd35fbec49b144a1953f48f84ef8d2b321da40`](./contracts/berachain-80094/0x61bd35fbec49b144a1953f48f84ef8d2b321da40/) | ⚠️ Unaudited |
| BribeCollectorV1_4 | operational_periphery | berachain | n/a | [`0x8d44170e120b80a7e898bfba8cb26b01ad21298c`](./contracts/berachain-80094/0x8d44170e120b80a7e898bfba8cb26b01ad21298c/) | ⚠️ Unaudited |
| Infrared | unknown | berachain | n/a | [`0x559d1347242f350bdc44f99c729984bfb188092f`](./contracts/berachain-80094/0x559d1347242f350bdc44f99c729984bfb188092f/) | ⚠️ Unaudited |
| InfraredBERA | unknown | berachain | n/a | [`0x94b5d53483117fe3832c8e08d2a71ab8ab546d81`](./contracts/berachain-80094/0x94b5d53483117fe3832c8e08d2a71ab8ab546d81/) | ⚠️ Unaudited |
| InfraredBERADepositor | unknown | berachain | n/a | [`0xef26bcfb9ce4e807465a46087e9dd73b652fef87`](./contracts/berachain-80094/0xef26bcfb9ce4e807465a46087e9dd73b652fef87/) | ⚠️ Unaudited |
| InfraredBERADepositorV2 | unknown | berachain | n/a | [`0x04cddc538ea65908106416986adaecefd4cab7d7`](./contracts/berachain-80094/0x04cddc538ea65908106416986adaecefd4cab7d7/) | ⚠️ Unaudited |
| InfraredBERAFeeReceivor | unknown | berachain | n/a | 2 deployments: berachain [`0xab2dadd15af962b036d361849c024a3f70b18254`](./contracts/berachain-80094/0xab2dadd15af962b036d361849c024a3f70b18254/); berachain `0xf6a4a6acecd5311327ae3866624486b6179fef97` | ⚠️ Unaudited |
| InfraredBERAV2_1 | unknown | berachain | n/a | [`0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5`](./contracts/berachain-80094/0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5/) | ⚠️ Unaudited |
| InfraredBERAWithdrawor | operational_periphery | berachain | n/a | [`0x8c0e122960dc2e97dc0059c07d6901dce72818e1`](./contracts/berachain-80094/0x8c0e122960dc2e97dc0059c07d6901dce72818e1/) | ⚠️ Unaudited |
| InfraredBGT | unknown | berachain | n/a | [`0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b`](./contracts/berachain-80094/0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b/) | ⚠️ Unaudited |
| InfraredDistributor | unknown | berachain | n/a | 2 deployments: berachain [`0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6`](./contracts/berachain-80094/0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6/); berachain `0x742ebbf91a37064e89e5628d139070b73aa90247` | ⚠️ Unaudited |
| InfraredV1_10 | unknown | berachain | n/a | [`0xb71b3daea39012fb0f2b14d2a9c86da9292fc126`](./contracts/berachain-80094/0xb71b3daea39012fb0f2b14d2a9c86da9292fc126/) | ⚠️ Unaudited |
| InfraredVault | core_logic | berachain | n/a | 2 deployments: berachain [`0x6583e71778a3d275b8a27f1252a125f7a6f875d1`](./contracts/berachain-80094/0x6583e71778a3d275b8a27f1252a125f7a6f875d1/); berachain `0x75f3be06b02e235f6d0e7ef2d462b29739168301` | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | berachain | n/a | [`0x9f6cf7acb2f16f7d906eeecb0a6020a5cf91a41d`](./contracts/berachain-80094/0x9f6cf7acb2f16f7d906eeecb0a6020a5cf91a41d/) | ⚠️ Unaudited |
| LairToken | token | berachain | n/a | [`0xf3530788deb3d21e8fa2c3cbbf93317fb38a0d3c`](./contracts/berachain-80094/0xf3530788deb3d21e8fa2c3cbbf93317fb38a0d3c/) | ⚠️ Unaudited |
| RewardVault | core_logic | berachain | n/a | [`0x29af240276168330c3c266112d7ffdc1fd3c764d`](./contracts/berachain-80094/0x29af240276168330c3c266112d7ffdc1fd3c764d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x1c7c4053f43c59daacbed3485a6bbfdc54440dd4`](./contracts/berachain-80094/0x1c7c4053f43c59daacbed3485a6bbfdc54440dd4/); berachain `0x91001cf82f2e0a21b9fad5a5fa3977d706764efc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 3 deployments: berachain [`0x2c6297f5aeabafc16ffe1227d84a0ea01398611e`](./contracts/berachain-80094/0x2c6297f5aeabafc16ffe1227d84a0ea01398611e/); berachain `0x381e9dc031d2667bb61d4ab61e64d520bbd7bffc`; berachain `0x7b56b9bd296d61f3712dc660f8071a3f708c7a87` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | n/a | 2 deployments: berachain [`0x2c765592fe0025f3ca6aa53616afa1643d529586`](./contracts/berachain-80094/0x2c765592fe0025f3ca6aa53616afa1643d529586/); berachain `0x3e97ca41b3ffa21d455b61f6a8d7986773faaa33` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | n/a | 3 deployments: berachain [`0x2cb2ef8703965d6dbe19eacad5616284db518bc7`](./contracts/berachain-80094/0x2cb2ef8703965d6dbe19eacad5616284db518bc7/); berachain `0xfc3da0822fe3127334b95ea3661060b957379c82`; berachain `0xfe2b4e8a082f0f067c6b8733c4ca06df5e785fa9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | n/a | 6 deployments: berachain [`0x4a110b149a9a6abb1f4c83b20b3f6c4bbd4a1019`](./contracts/berachain-80094/0x4a110b149a9a6abb1f4c83b20b3f6c4bbd4a1019/); berachain `0x66611ba2aa5deb46e6138ad21a202b40ece5b6ab`; berachain `0x77df4e613abdc31522af8afa24ae0a04bc8c9aaa`; berachain `0x90e596291831c2a8defe2453e176bbb44b0a82bf`; berachain `0xd5c3b4c49625951b2ddfae5bef4b173961192870`; berachain `0xdeb193207c1f9482b340551fe2fb25390a218e31` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x5b6b085061c65ed4d6f83b6ab69a6b3bf48984ed`](./contracts/berachain-80094/0x5b6b085061c65ed4d6f83b6ab69a6b3bf48984ed/); berachain `0xe1b6e6dc9e040a9eaf7d520d910c51c5bd009156` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x6905f9e8ab3c61ac205f4d27b32bf0fb2d178eda`](./contracts/berachain-80094/0x6905f9e8ab3c61ac205f4d27b32bf0fb2d178eda/); berachain `0x84ce244a832b60291e5102b3a9c705d55f1765f4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | n/a | [`0x8711959569ba069420b1ddfd7b9d020e4837995e`](./contracts/berachain-80094/0x8711959569ba069420b1ddfd7b9d020e4837995e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0xbaa8967fdf9a0b72451110c6609ae01adb301561`](./contracts/berachain-80094/0xbaa8967fdf9a0b72451110c6609ae01adb301561/); berachain `0xd24348aac345fb76f412fa9aad2ba2d910b5c7fb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | n/a | [`0xe79bf7cb7ee8cf6a26f2f368fa80800e87cf6686`](./contracts/berachain-80094/0xe79bf7cb7ee8cf6a26f2f368fa80800e87cf6686/) | ⚠️ Unaudited |
| WrappedVault | core_logic | berachain | n/a | 93 deployments: berachain [`0x021f62d74f97f63575f8c608ab7cc3c591eccb0d`](./contracts/berachain-80094/0x021f62d74f97f63575f8c608ab7cc3c591eccb0d/); berachain `0x023e5d8740823bb19401cbf561bf322ef93124f0`; berachain `0x03c2ef90ec1f5deab5a16accfb49c42ac602ba65`; berachain `0x04bd6ed6408cb573419fd763e3b7ced57de69bd5`; berachain `0x04edcc9715445dd38f9fb327af8740bdfb81b739`; berachain `0x0cb3e2482357d1ac7df0f9ac2df776717142d009`; berachain `0x0fff6d1907eced46bc660643f022ddc1db9ddc97`; berachain `0x104e92e8f7aa38a6e2f5f52adff357ab05738d71`; berachain `0x1109bf8125a52fb8a92f1ee5cd3d9f988a80f954`; berachain `0x1453c6883c3492654757fe9ac048f98c69eba339`; berachain `0x16275c1cae13131b153cec4f8178304c7ae730f4`; berachain `0x1a18f5546ddd417933db08bdb7325916d71a2241`; berachain `0x22a3fb83478b2c4aa4b166dda78192284a488715`; berachain `0x23ed71a0d5a1583233115d25a22e96cd30fd8864`; berachain `0x2415fee8af7c121e17ae1b78e0891a8c6112cf8f`; berachain `0x27b03a57418dd0d827ac99d279a1bf3bd89086db`; berachain `0x2a447fe46490b5086557ce6e7b0609f845e69ac2`; berachain `0x2e113998f4561cc15543c380b0a92c60657ae031`; berachain `0x2e32ddd251bdbc0daf272c703ed04e306fe2b00f`; berachain `0x2f511975290121b5937a1bbc836c256244723c9b`; berachain `0x3904aaa585d846096fcdb38ef516c3ebace1ab84`; berachain `0x3b43d2c548038167da3351318aae879af60462b5`; berachain `0x3fc37a9989520747df339c7928f569f9bf798d00`; berachain `0x42cd67e9aecd4bc18a8b63750811092f367262b6`; berachain `0x47590f8c83bb99ff9c9d6640f007722a79f0ab02`; berachain `0x4fce306384228d708e63b6300f4ee3357cf64444`; berachain `0x57684b647d4cc6b151e7476355fcfdc174da7ece`; berachain `0x5782d6f9b7cba0a0e9151aecbd26acdc64d5aaa5`; berachain `0x58b34e79d53cacbbc9920477c5bea55a832871fd`; berachain `0x58b61ed5c1657e78ffc7e574e8ac42c6f20ebe1e`; berachain `0x5d51a2034c3a830b6e50620f210e6882d3620224`; berachain `0x6503a84a4b64db7d0617ed200328562c3e1796c8`; berachain `0x6e0d09b502c6e561b287cd4e66c8ef879c86e20d`; berachain `0x70d6cf978364543b5fc48107b513da65ed1ad2ad`; berachain `0x732dfb929cdea0b05508f8f9d9695b88f9987a42`; berachain `0x78808a499e163a5a88499f4f0d1f1457489f503c`; berachain `0x79a27a5b2a84b60e2869dd09c46d537b1a6f4ef8`; berachain `0x7bc28c1bf423fd364994815bc4e82c596a5a375a`; berachain `0x7c010b2f8e994bc86827a1fc7122792e2bc5b5c6`; berachain `0x7cc2485c334a9c04f40cfc6e36ca8be7f2a4efe1`; berachain `0x7cde0a989c97a15b6f2b63f0b7582d40a4e86d23`; berachain `0x7e312939980b2842b524d3418aa9b7498054e39a`; berachain `0x7e571726fa7e734d8c6bfc335df860f5b9286355`; berachain `0x7ef1f9f4e6e2f8f112b953f3b0a71ed1311f4730`; berachain `0x7f6ed59799d4cfac23d20b623974e9fca287da17`; berachain `0x81ba24b92b162ba56c622b4b80e4ce26426f490a`; berachain `0x81fb2a522cef613da927eb2e7899b8c1a6893a1b`; berachain `0x82609f09fbc441d1cbbed47a4479ea33d062f587`; berachain `0x82d7503225f98b999cafdfbaab803d52f122dd2b`; berachain `0x85550269f0ed260a6603a3502e805fc2099034bc`; berachain `0x86fee05992b8bcccf4d46160beca0daba90ac240`; berachain `0x8b492ee2fbc146ed845cbd05e4e2eb59bfe030f9`; berachain `0x920598318d0c48a19a9cbd26d86aa0d8079b139a`; berachain `0x9433ccf93ac084f7191b78d7bd0e7d64ed344e27`; berachain `0x95c1f2e36ca90898c893ab4caa4aff79ab14ebf7`; berachain `0x9f47f2b56a2767e01d15ed3c8d3fb5283c5d5c80`; berachain `0x9f898e9c5863a13f68a714044d380e9ffff7b732`; berachain `0xa2b10d1ee0c0f715ef0694e25984d01ac8bf83d4`; berachain `0xa2e5e46b0d13bf5534d204f8a49a099e47559ed4`; berachain `0xa3a376e370666d0c3e10a5b1067095f2f080f26f`; berachain `0xa3fd520cba6f44ffc4437a74865cea5d2f93ce06`; berachain `0xa63ff996cc93bd4e0623f5038ad31d1146ae4f88`; berachain `0xa6899cce1cea2c2c921ccbcbad296fefd0c7a955`; berachain `0xa81dde743030592237c6b3b6b3e55a9bf15abee4`; berachain `0xab71f6637623e3310940e6624355a094cc7c42e6`; berachain `0xac36a93737cd4ca67fbea7a826a45098afe53529`; berachain `0xb0292fff5c5544ffa3e6a362d622b0f4eda535ed`; berachain `0xb04a2a6059ee328ad740b8c66b4cd69716ad3839`; berachain `0xb065f887f23d3707386b3fdfecb252e3c50f5088`; berachain `0xb17f63aed263d6be67d817053d664190fba15a50`; berachain `0xb38b0d08965654f11377c0c90f2338d63926c9b9`; berachain `0xb59aa6e935c66eea5dedc0eb385ceb62fbe85757`; berachain `0xba7f7d6a07ae4f42f4add5d360d9ca6d41825073`; berachain `0xbc44617088aeaafacdeb6de68cfa287fb2cda130`; berachain `0xbcd6819a00df6e7f7e6d5e073ff00a91bc876a9d`; berachain `0xbf19612f6ef35fe411801509e4c284647213f5fe`; berachain `0xc2f57489a989c41bf3f5db00d7ccda3639eee206`; berachain `0xc6b6b099cfbcbc3d23ea9abfe4da500134479a29`; berachain `0xc9adf89f108992af6094d0d217e09e54237250db`; berachain `0xcc0c3f6c8c7a9a7c7788d85ff720830f8af6d05c`; berachain `0xcc824b6b022e53c564c60d16b1a4e4bb93851a75`; berachain `0xd10759bd1ebd69a4e0873dc3c08c43cff1f166f4`; berachain `0xd39b77918d1897b900490f3e519350cc2a09f907`; berachain `0xd5ae03140fcbccbde82756489d5b13f46a37d25a`; berachain `0xde747203c338993fbea53c61e5b2f558c4687958`; berachain `0xdfd21d8190f444437a5f791ef920b57ac43184ca`; berachain `0xe193336621b91d9034a7668fd5fe0065ad84f34f`; berachain `0xeb6e02ad20e35ad1f2266b98f703757b493bbcce`; berachain `0xf3a956b2c29f5c1216a72c88259db9e66e1f3aa1`; berachain `0xf3cbc6876bc2b364eca48295f17c87c821ad8c7b`; berachain `0xf4c35f3a334ca73a229d9d416924f51675240796`; berachain `0xf69cf3afc2aa3d58b32fe365e6c47cafb42f18a5`; berachain `0xfe7a781914525e7e7c93b30c213fbfcde1c5f575` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (59)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | berachain | n/a | `0x01b775b353176bb1b9075c5d344c2b689285282a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x06df64edca2961b86fdf86838b1b30708894645d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0c7e784bee23e632655b314e01263f4010099796` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0d493afa6f51e68b58ab070f1885d5f3e5a942b3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x13452c69a035dea199f48a1863e45c7d93afbad2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x15e5657749b86187647b7ac3727ed6f4955c2dda` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1b1d448c08d2d6d431357d61264f1bde0121fa12` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1d155816efe4b8b162084e2cca6541a2a9a78865` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1ece52a596c2cbef7b71fa8fa8fc738aa7ad441f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x255e6d961e885cda431f88a55313f61abfb8be77` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x2b6bb65d1ce8d3a46631105146a2aed4996e9ae3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x35c50e9053054473a8d33dc2fb0e34bbfe7b9fdf` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x37bbcbecbf49f1a773e9e2d63fca059af9665ceb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x3a329e8e8c4c328fd62cc527ff669e11205b7922` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x419b1e45d8144e74431804709b1e8c2a6440f23d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x45cd0268bd586b395eff26d8cf36f08efd3586ba` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x4911c4975091e4444f6cc8677955ac71028f290b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x4fafd5c39df8282c47ddce46dd2525fe531d7a87` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x5be43bd3fc0b8916e973104c35b33a4fbe39c20b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x6c92af1ab03a39059e33ecc4e0d6bdfaa091389a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x718874a9402f8e5802607d4d1cc008274f0bd3d4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x778e9294af38dfc8b92e8969953eb559b47e896e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x77c587875e5f4839880737a5226e8b850b1ebb62` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7a3d6356e64e43ba828f6bd267e27be85205f583` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7d763143a5c037a03d29b4f7049fe71b197fec40` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7de65e4fcc6a0b411b90a24cc33741ab3cd00262` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7f4ced20b6f3995fef4fb1dd162593a13c1d85f5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x82a3fcf624e80e1fc170b8ba5d0ec58b25585bfa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x85ec12a0fc39652b117a9d160db06c240eb5eb8f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x86205e8edd1783a55d5706b769cbf23682814b3e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x87e10e2b6fcefc3ce6289d605c22c425e7dea7aa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8c48ffe01f0054b2ff06e28ccf78465db85a401f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8cf189400cdf9a57600abf85a747b7fed94eea35` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x901882c79bdadaf733db4e0b2b9519f7166dcba9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x99455a4aac191166f64c856e6503d019f0990b51` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb13a7d1361bd6f6734078654047daae210f2d4d4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb526b1116b0fb89c5951e86ad65f9572e79e81d9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb5988d524794e07bdbe5942e5948b1cca6cf4d89` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb608f0862ead90623f5c27a1936e61c78c4c35e4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xbae7399f034d6161ea08a70fff1e7cd77bdf4ee8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xbdc6d8481ba06fa7bb043ab0fb74bae9e774bf12` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xc5041b2957f463c63fb627c76d05d54450a7893c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xc909ef3a7c40bfaf773e0ffd1c3ead95973f082b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xcaee3cd453300cc9f001a4ae3a98fc6c2dd993ad` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd0282e400c82feeb5225e21f9b597c2243e13119` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd452dd6424d78a0a12bd0462ae6868e7da28e5cb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd49c815709442626d15f10eaf51d3a74846915d6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd58cc5b0c789f61b43f9f1c3434c3c98c3c105a0` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd7334907e9e357c34375215591fde9f7264e2db3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd76707ffb9feb81eda0d6d0ea56d4eb0325d5673` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xdd0a77eb6235d714d612a4f3f5d2185874c3ee39` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xde8936112de2033636285fd512ff86877a970b37` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe0cb2166cf1e05892c5efdba2af0e9b6e3c5b643` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe4d5f493be6ea1e1d76fa2d2f8d5c9e4a84b513a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xee85b797c4e8849552db328724202e36c8300a30` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf050cdf0913da4a0f57179e5002aa0b212eb4bca` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf31392f83843e2704a273e053cc1528fa646d601` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf4f447c2fcb0772533313e49e9189749cd769ab6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xff343f31a6e327a6d52f7d4125e1b6f4054deaa6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Bera LRT Contracts _ SSC.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/lrBGT/Bera%20LRT%20Contracts%20_%20SSC.pdf) | SSC | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Lair Restaking_Omniscia_Security_Review.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/restake/Lair%20Restaking_Omniscia_Security_Review.pdf) | Omniscia | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Lair_Restaking_v01.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/restake/Lair_Restaking_v01.pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Lair_Restaking_v2.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/restake/Lair_Restaking_v2.pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Lair_Restaking_v3.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/restake/Lair_Restaking_v3.pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Lair_stSomi_v01.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stSomi/Lair_stSomi_v01.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Lair_stSomi_v02.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stSomi/Lair_stSomi_v02.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Lair_Stake_v1.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stake/Lair_Stake_v1.pdf) | unknown | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [Lair_Stake_v2.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stake/Lair_Stake_v2.pdf) | unknown | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [Lair_Stake_v3.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stake/Lair_Stake_v3.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Lair Finance Smart Contract Audit Report - Final Report.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/vault/Lair%20Finance%20Smart%20Contract%20Audit%20Report%20-%20Final%20Report.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x61bd35fbec49b144a1953f48f84ef8d2b321da40`](./contracts/berachain-80094/0x61bd35fbec49b144a1953f48f84ef8d2b321da40/) | BribeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x8d44170e120b80a7e898bfba8cb26b01ad21298c`](./contracts/berachain-80094/0x8d44170e120b80a7e898bfba8cb26b01ad21298c/) | BribeCollectorV1_4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x559d1347242f350bdc44f99c729984bfb188092f`](./contracts/berachain-80094/0x559d1347242f350bdc44f99c729984bfb188092f/) | Infrared | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x94b5d53483117fe3832c8e08d2a71ab8ab546d81`](./contracts/berachain-80094/0x94b5d53483117fe3832c8e08d2a71ab8ab546d81/) | InfraredBERA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xef26bcfb9ce4e807465a46087e9dd73b652fef87`](./contracts/berachain-80094/0xef26bcfb9ce4e807465a46087e9dd73b652fef87/) | InfraredBERADepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x04cddc538ea65908106416986adaecefd4cab7d7`](./contracts/berachain-80094/0x04cddc538ea65908106416986adaecefd4cab7d7/) | InfraredBERADepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xab2dadd15af962b036d361849c024a3f70b18254`](./contracts/berachain-80094/0xab2dadd15af962b036d361849c024a3f70b18254/) | InfraredBERAFeeReceivor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5`](./contracts/berachain-80094/0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5/) | InfraredBERAV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x8c0e122960dc2e97dc0059c07d6901dce72818e1`](./contracts/berachain-80094/0x8c0e122960dc2e97dc0059c07d6901dce72818e1/) | InfraredBERAWithdrawor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b`](./contracts/berachain-80094/0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b/) | InfraredBGT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6`](./contracts/berachain-80094/0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6/) | InfraredDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xb71b3daea39012fb0f2b14d2a9c86da9292fc126`](./contracts/berachain-80094/0xb71b3daea39012fb0f2b14d2a9c86da9292fc126/) | InfraredV1_10 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x6583e71778a3d275b8a27f1252a125f7a6f875d1`](./contracts/berachain-80094/0x6583e71778a3d275b8a27f1252a125f7a6f875d1/) | InfraredVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x9f6cf7acb2f16f7d906eeecb0a6020a5cf91a41d`](./contracts/berachain-80094/0x9f6cf7acb2f16f7d906eeecb0a6020a5cf91a41d/) | KodiakIslandWithRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xf3530788deb3d21e8fa2c3cbbf93317fb38a0d3c`](./contracts/berachain-80094/0xf3530788deb3d21e8fa2c3cbbf93317fb38a0d3c/) | LairToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x29af240276168330c3c266112d7ffdc1fd3c764d`](./contracts/berachain-80094/0x29af240276168330c3c266112d7ffdc1fd3c764d/) | RewardVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x021f62d74f97f63575f8c608ab7cc3c591eccb0d`](./contracts/berachain-80094/0x021f62d74f97f63575f8c608ab7cc3c591eccb0d/) | WrappedVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 62 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14247] Bera LRT Contracts _ SSC.pdf
- [14248] Lair Restaking_Omniscia_Security_Review.pdf
- [14249] Lair_Restaking_v01.pdf
- [14250] Lair_Restaking_v2.pdf
- [14251] Lair_Restaking_v3.pdf
- [14252] Lair_stSomi_v01.pdf
- [14253] Lair_stSomi_v02.pdf
- [14254] Lair_Stake_v1.pdf
- [14255] Lair_Stake_v2.pdf
- [14256] Lair_Stake_v3.pdf
- [14257] Lair Finance Smart Contract Audit Report - Final Report.pdf

Fork inheritance lineage and inherited audits are included when available.
