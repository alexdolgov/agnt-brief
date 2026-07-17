# Agentic Audit Brief: Goose Finance

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

- Project: Goose Finance (`goose-finance`)
- Website: [https://www.goosedefi.com/](https://www.goosedefi.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 407 unique implementations (492 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $241,646.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Goose Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc. Structural roles: 2 supporting, 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (2), core (1)
- Contract kinds: contract (3)
- Detected standards: erc20 (3), ownable (3)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- EggToken (`0xf952fc3ca7325cc27d15885d37117676d25bfda6`, chain 56)
- GooseDollar (`0x5bfe81fcb3708c8fc733bef60d313cafce1febeb`, chain 56)
- GooseDollarBond (`0x831b85b2c6e55344d6b17c9d67ea83771b0a9c8e`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 404 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 407 unique; 404 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/44
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 363
- Unique implementations: 407
- Raw deployments: 492
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2afc0f9033c569ec8fa343853069a20aaba0cd1f`; bsc `0x8aca7251a87203f743920b7a79c2d612963c5add` | ⚠️ Unaudited |
| ClaimPayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13e35099a4e66c5a6847a169e8027af9b06495ed` | ⚠️ Unaudited |
| EggToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeee37093341818e44410c58f1c5bd98163c1636c` | ⚠️ Unaudited |
| EggToken | token | project_anchor | own_supporting | 0 | bsc | unit-387052 | `0xf952fc3ca7325cc27d15885d37117676d25bfda6` | ⚠️ Unaudited |
| FeeDistributorHR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x64695286d4371fc62a6bff4d1c02d44cafe119a6`; bsc `0xe87b58555644f4b3890c122c9b9a69608278794f` | ⚠️ Unaudited |
| FeeDistributorMain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8a4e8b930c69864cb44f95a10f73e8f41aacb968`; bsc `0xe6c9c2e23f8378f6915e93d81ff026ad2a43f79f` | ⚠️ Unaudited |
| FeeDistributorSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1b9650f9279f082c976c515b6b0af2189e7e20c4`; bsc `0xc94ef5c2a7e36d11c92ac11a32ceb246d87761c6` | ⚠️ Unaudited |
| FeeDistributorV2Gusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc483c7108f201228ff4589143262e6861ad179c2` | ⚠️ Unaudited |
| FeeDistributorV2Main | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef926bad16a38e85a8ac93c6a7c9bfc95d732ec8` | ⚠️ Unaudited |
| FeeProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97c9f6a8482a92d6facdf312e1919872a06d1b0d` | ⚠️ Unaudited |
| FeeProcessorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeff2832e5d4b92bc14f9381be871e48fad372404` | ⚠️ Unaudited |
| GooseBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1aad12b72eec031d0eb54efd2ff3f0cc2847ef08`; bsc `0xb67764dbc9551e00631da0d36665cba752823c74` | ⚠️ Unaudited |
| GooseDollar | unknown | project_anchor | own_supporting | 0 | bsc | unit-387050 | `0x5bfe81fcb3708c8fc733bef60d313cafce1febeb` | ⚠️ Unaudited |
| GooseDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xa2782f32ca4f64d4dbe4b2fe3a2c69020f3abfed`; bsc `0xbfe0164beecb68410d72f450943308baf97693cd` | ⚠️ Unaudited |
| GooseDollarBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x03d40b813294a586df570a5f4aa03010098fefc1`; bsc `0xf75f0253fe8bdaaf7685d0ce07820ca50b231f74` | ⚠️ Unaudited |
| GooseDollarBond | unknown | project_anchor | own_supporting | 0 | bsc | unit-387051 | `0x831b85b2c6e55344d6b17c9d67ea83771b0a9c8e` | ⚠️ Unaudited |
| GooseDollarChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3fafa4efd2cfc5a4476e35231bb3400a2fcccd9a`; bsc `0x9b85ebe79e8b3023d244c638c59b77153ce16075`; bsc `0xf4cef6f476faeb4dddd262cbd8569ee6f99407de` | ⚠️ Unaudited |
| GooseDollarChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4006243f6f067d06db15799848229209e96126bb` | ⚠️ Unaudited |
| HouseChefV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x0d6c99395a9ab125c160e81ca8101fea10b35980`; bsc `0x1d44079ef59a6e170604d8a97040f5b52aafe524`; bsc `0x9a479af9dd76780d5da29edd41131d435ad401b3`; bsc `0xc7220fb8a49479718c72bfcdd14d02f937a720b1` | ⚠️ Unaudited |
| HouseChefV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1172c9d67a3f3031652818d4b869c5315849e106`; bsc `0x58cb21a0cda42652e419fd1dbf461c78dffdc66d`; bsc `0xbc85293ebc4bc4cfc4d045184b76b274c4233de5` | ⚠️ Unaudited |
| HouseFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x34f992ae7036940424a447f7b13da5879dec4476`; bsc `0x8681360251ca4b4942dd604125c329bba9d6efcc` | ⚠️ Unaudited |
| IFO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x1d8f3f59c44e0bc6526e91c9c83ff70d6f9664e7`; bsc `0x2a38a2546834a0bf7e98b653403221e2aa590d7c`; bsc `0x310a6dcf0e481532928925171edc1158f48121ab`; bsc `0x90a323302b1d27251ef069544cb58067b5e1f66b`; bsc `0xe1359a4771d1e462cfae6930f7d64b4ff8da123d` | ⚠️ Unaudited |
| IncubatorChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4fd8435749d0015411f85ef4b14ca53dd01ad936`; bsc `0x80aaac94ffd144c3fda7fab5f2e7db70e1e9d4b3` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xb662c033f7af2634270dcbee36b7c9c9a61b24be`; bsc `0xe70e9185f5ea7ba3c5d63705784d8563017f2e57` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5322532a7ec3293cf5a599d063dd0c97a2d307b9`; bsc `0x6170bd36ffcf55e7929f826a88c177e90e489519`; bsc `0xf3f91d65966a9820a9fc4ff31dcb72ce553b41f5` | ⚠️ Unaudited |
| QuoteHelperPancake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ba8a0e1b0c848fb5ea0972f79d2016120f45fc2` | ⚠️ Unaudited |
| QuoteHelperPancakeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3c1ac13a3ebbd19896937e1026001a6e4b2916a` | ⚠️ Unaudited |
| RouteStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2f7078d7a3194e4b14244f8868e0f9a64b280ddb`; bsc `0xbf9c3208dedb972ec96ee0c9d5a62beb99041403` | ⚠️ Unaudited |
| StrategyAutoLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x2e663bf1519bb8ec58c59ee3f5d4e9bbce2690be`; bsc `0x588db639e89ef811379df83ee88451a2197bcad8`; bsc `0x605b3141237a72e44666af9c9025e3f987ad634f`; bsc `0xa32c974cd1242084a43a8d2d55624af40e2c45c2`; bsc `0xb5331f28d962924772b3c2d9edf2a19661a43455`; bsc `0xe7e4a2a04c49578ab4dacc8c83a174cbcc1b7036`; bsc `0xf344cad2020b152ab148445ea809761441d39d3c`; bsc `0xfe1e66ff510b46a2563992774a48824335cd2ae2`; bsc `0xff417474721db9d0e5576438156816f42d9e5c17` | ⚠️ Unaudited |
| StrategyAutoSingle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42578874dd9d07b97761869f327a3f7b40c43377` | ⚠️ Unaudited |
| StrategyAutoVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x1fa690b8f639a902ff429b42682b44d5b585a986`; bsc `0x44e8ce7fa4afc72c00a2ff2cc084643a465a0235`; bsc `0x996c3272e6c8f76cededb32dd21ad196368aa33b`; bsc `0xb4b3625f19d4d384f40c89b65c1100d6588dad61`; bsc `0xc37d7be789138966f87f358d01e64db8fe90a787` | ⚠️ Unaudited |
| StrategyCakeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x40c69b164567a1a0a973c7f64c01d0f79561bdb0`; bsc `0x46a2f30a0c212d0b8ac64b4f8edb63efe03a8ee8`; bsc `0x6a556dbdd24973019a3048591e59b3205a32a141`; bsc `0x8ced7e702372bd81db84a556ba492e2d40ee33d5`; bsc `0xcc4eb857061f89355969e0395741080fd941feca`; bsc `0xd38998df309d6288a9bae32f8a51de26ca5ef8c6`; bsc `0xe1a0a7c6e2529851f061ca382bc03d23027b7dba` | ⚠️ Unaudited |
| StrategyDummy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c114f0ca6dab81c5c9ce18f3da626b012b20746` | ⚠️ Unaudited |
| StrategyGooseEgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x02dc7df97d7fb610fc1953825ef98c13e18d59a2`; bsc `0x09806632aabc99ae43a8644f336f38f9f559b26b`; bsc `0x188123caa3e8bbacdc64cb6ffef5b2177d9fe2aa`; bsc `0x8919de3b46c4f22fe86ddf7e12f72b01619a7338`; bsc `0x90d909b9c03404151314b96586e9a493244dbc77`; bsc `0x95f2784e3d586cf3f9dc4049e954ed15d86a9533`; bsc `0xe0c6b419d190cfef51ceb7b8d96607ad04cf7d17` | ⚠️ Unaudited |
| StrategyPancakeLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x27148d8c306ad859dd1b41683906762e19c40d75`; bsc `0x37deb6f575f4ce1ef307bdd8e0b21f4f2dc7563a`; bsc `0x6297e62f9283f2ed62874745eb659d2d7bf2e88b`; bsc `0x65ed1fcc47f1292b42bcb7a1c20b171cc1536b72`; bsc `0x8198d046a220772568c00b7a7731461367aafad5`; bsc `0x929dc501e6be84c3ed8ce67b99fe4408ae17d083`; bsc `0x9516b89819c75b5e4539a524232c48a968cef1a5`; bsc `0x9831bad4b4773842f3d2b25564ef169aab04f38c`; bsc `0xe9541cea44d6846f93b54036700cc1444fc6c80d` | ⚠️ Unaudited |
| StrategyPancakeLPHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x547e6275b79b96580fa9e2c92999225af4eaabc7`; bsc `0x87e26d19e805b881871fb8bcf162e4dd2c2f04ec` | ⚠️ Unaudited |
| StrategyPancakeLPV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf059aa4f868450dda3fe9c1dff1d12beaf7bb7a6` | ⚠️ Unaudited |
| StrategyVenusUnleveraged | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 20 deployments: bsc `0x010fbfc8d1f4675bf4a2aa38833ae1ce38cc5763`; bsc `0x063698d2f55ce042b465f52093d4b23ab24165ae`; bsc `0x202b32713e59c264f500e05280fc816f1ee3038f`; bsc `0x3e35b4037e9ed7af9b5b0343a6d022cd90e6987b`; bsc `0x4a7574878c0c4c52add53ba0cdcf9ee90481087d`; bsc `0x60d07d97cc676633ee6a00b800c3501c342a2a25`; bsc `0x6178d599bc6a6f1f1e55d215b5d29272ad4bb853`; bsc `0x6766f1725cfade62436f9b78c9735560b13fae23`; bsc `0x6847e74f297d3e992b9d312c40a7124427e366fa`; bsc `0x6e97d0302865335e49f38f78d6e312cfef08f43c`; bsc `0x9c1246c55c7e14823abe9d02d6dd084102e11345`; bsc `0x9e6f925ea55f7e575549f5dea6d8e8112ce2e4be`; bsc `0xa216178e108ef0b3914aeb960b90f0a09bb62fbe`; bsc `0xd2139b0af2508e43673f36e782c62a7907fe7330`; bsc `0xdef1d62612c94e26f4941ad3020eddf6332f1d00`; bsc `0xe38deae4b44d2d727cea2664171d0835ba4bca9a`; bsc `0xe54f5a4a3168570ec64ca97c5048515baea5f53b`; bsc `0xea72760051c6aa9fc7816f6b6a1a67405c8aff2c`; bsc `0xec3e220d5e967a600795757c55a0574002712bdf`; bsc `0xefb123770da1c0bf50f04bcf2b1b4a4e842af731` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x122ccc4a68051afef4a64a5df2bbdce0eabf5f6a`; bsc `0x245cd0dcc4940f85e656bda97f54e08585e48462`; bsc `0x2ef488de034567e9b8d312928fd52812a242ab3a`; bsc `0x35ea066c5638fc502ac6c7987d61e402306faf3b`; bsc `0xc0704e53a139fd1e21cc59bd09ae15fec70c9b1b` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1de2df1c085b1d856d137afa8576a0c772afc594`; bsc `0x3aaf1ddc92f1c7a63540928f71a1378bf7c06f7e` | ⚠️ Unaudited |
| VaultChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3c786a50233d725e724d0ca2ec97bc91df5f2d08`; bsc `0x3f648151f5d591718327aa27d2ee25edf1b435d8`; bsc `0xd6bfe2d58621fd7adb58085b8eb1a0777f8bbb0b` | ⚠️ Unaudited |
| VaultRewardsChefBonds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x6a47a14cc1d4ed80b7cfc64d15d7eee617154a1c`; bsc `0x75e285146d04c7d6f2f02522ca759e4e5f599138` | ⚠️ Unaudited |
| VaultRewardsChefEgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x32f3cb3dbd8820e36d643d6f06dbb9059706107d`; bsc `0xe3cd0182d3a5ff54a5a304121c90b89f7a5d47f3` | ⚠️ Unaudited |
| WrappedEgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8157e2506238b06f2d1f3030593f3d620b90a16` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (363)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00317529bbb025f235a9b787b65e37cc9b3c2276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01bcf4b5d76396ba7c306f7a84748ce7610162ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0247f8b3d6cb4d4bc3efdd3e984038b345c6044f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0259fe044c78d2304e864ebcb1b38ca8e69dae18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02b1cf08421830506fc52427f014ab164dfd5f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02eb22446088fdadfaf01d9fa22c665d1bca519f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0385c0f91af7caf34a19cf7570c4ec7ebb17e677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03e5446bd181665c9c013cb912f21bae123b6fa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04aab81115abe61230f8134f135d360901f69fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x059e6c3c4901d9eb119dac557881f6ee4ee724c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x067ad73033ca2baec168f9b830a809376dc42888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06a4d8c19a1f0d0a903423481c18e60c6e27ffcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0867bc4abf484c4f48dddaa6e1d49f35ca40a12f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08cc4d4b42ca982457be6c2512e10228b2629c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a325d0402edd4e6dbcffd06e9cfb61dbe9de802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aa0fa1f796896398c9bacba5c84f85b672e2e4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ac7c8c975f3f6eba789eea2646c4124aa00b693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dff11064b74ef42c955acc9c7f4cc5c5661293b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e56fb488061384a7c45a2788b080e69ee2ee83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ee44d59f64426fafe63720db7123f6683ab8ff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x112e8ab65e905030b9bafe6d7983c0aae6959825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1431f70c4e89bedbd596d4f1c1c682e19f3c7754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x144066d843a9f575452aaa39d28d79eb8e247e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x145712d0842456ace1df69f56dc68ffecfc67b2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1525147c3ea6c64c0587ecb0186e04feba21cfea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1541fdbe21a136f7fbafe019febdc674b3ee7f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15a8dce43ea8c4e6986e2f804fc5d2f9ec0815c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15ae6a64a62964a54440ff7a48a56c2683ecf820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15ce1cb45d33a70420d147c49edd7e8e1f4dd3f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1754fe7af1debc1ce3ea0050dad8720bfffb45ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1758eb8e5585a99f4ad7fc2c2092a2bd0c90c897` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17af1274b0f0aa6534daf70971fd69826d137368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x188b463c7230bc49fa62d5caaebc6c3c609a1c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x190f8755d9708fc201c1e2cadf3fbbc81644056a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x191a20e94c39b528d18195a612c41a9f7226d491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x192ae059f9e74e23f656cff60415d755af3d9032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x199cc64bed8f1f26dcfe3f0b5c16c321bdaa7973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19ba04cb27b8381f43de92d66042908e29782b98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a94e55d355a0ccea07d8d86b6f377852abe56e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a964a394f08055a16976039282ca1e5e30ba620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ad5df6e1d3b65ee8c7db8cf82a5e25d7a7c9021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bc12c94d7379b87fee51d6ebcb62f4ef34d700e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c36465163a7919c4ca18d0ea56b1943f6d23921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d4b5af344dfd5feb956b1c9369cad28e04587f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d6a714f66c2020079e2cebffc38ef9b6f6d9668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d97d824876533f708df6608e9c95160b3fc77d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fbfa2e496932f343cc254305497c2debcb4b08d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20bd9748bbb850836805ed63771cf2a3e365434d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21a08e906af2e9e69af9c95cde599a95e2d60567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21c787bffa649015f251aecf2ccef879c06ba05a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22158562374099ee3ceacdbf0c629d404d8b9dc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x225c745a837c2497d177683275e5640a976badbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22693394e1e1d9b924e685aada1a1ad59e95360c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22b0f42c82fbdb37163b42825561edd50c616d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22cc19ff8e6755b043597f8d5170da4583d3ba13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x230d32445eec6cce7c5df2f1c28bfc02a4cccbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2329fe6e762409361027d5a74fe17ce140244f2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x232fe9378741323286f4d1372a98b6c28bf58d1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2379e6f523a9ac3d85a1ec51c7dafa109862f515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2389e5e46b68726b06caffb4f3da7087480494cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23b8a1c86c72c54abbd87bdb10fb9dc2b9c9aa76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23fc957b76b7a05497e4d0f65ee13ffeae4b01dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x241eaf0ed4d8605d3378feb26ac4c7d95160e1fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x248c88e452c620293de43cb3873029fde18acbb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25113ef789d9d87022aebc2d194252391935b05b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2642fbe61b03e1720c61162d7542cf94c50ed827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x265590e60e6c74f961fdb7937f0a0aef8c26d96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26f7f300abb489c7e13d96752fcc00be726bf122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27413517892ef31142b59ef1c9bc676e1eec815c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2862c2fe8b2688a4bcebd75f05f7701b3a3c6ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29c0f6825e47a72650d8a7ce51777cf866e0f0d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d805a6d2b2adeba7bea25e06cb54e9ee38f24ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e21f630e4ecd10516979f906608350584cae1c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fa493c6ab1e8920ea7979fd47d2e7ac1eb318da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ff4a293368583ee145c1a0414240b9e7c4020e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x315a1a4b6ab1bb292a76e5d8f840e939fe4a2c5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x315e1518e8e2104e7bd3180673b4f68d14cf7dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31744f7b63e9592ae4c3cd6ad69ce7a6bf22cbc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31e475882a11be8250d600169984ef7597cf2069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x327cfe09e8dee179748ae729e492e37c6af7a144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32df8d620a46aaf24bccedc84ebea623bad37e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3371c56e7f13810389fe4e3c45b63f93394b1eea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34466bd34f64f07907a8bd49742af682d73e3709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34571ec141e40cda90af246c50b2fb46b177f485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x350d041d78ee787eafe99d60bd9adb318eb7ec7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35d6f2f2f8bc2a1e391108c4e318dc08f61a7505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36099a86e5d47ba21efa1bdd8f7a5ec558d99193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3859278e9b16193f49ad3c309afd02c9251ea8dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x386ce7ff98a5c83ca9becba0745fc1c69d35d7ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38805b37fea4084f8731d971de518db900796324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38fe13fb1ef803a66a7e4a68a6cb20854eb3241d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39a2f7801ba955541c07c5e2332f7d2ffa341726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a95fd0f2cce4edc285eb10512e46dd27a312a6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3adf2f08221cd63e16e5e355cb9c228c24afd5d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b1387e797d73f4b86abead60c7614234efb68ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b337bb02db999235da4a3f049eee6528e8f1e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bd9698f6cf4553866d6534c4d7b05f7e0ee5108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c26bb330eb256e8a93d3a04e3f1fd573bbb7ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3da4da484b84b1f1a1a705167773e4dd16574d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ec3123d42b5fa55bc7ed050877cb8b8b57164f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f89a0ab563ddc7e58677558a6c63873738e3b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fb97660ef7c5f02a695a5bc19a0cbfe423c6f5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fcf4cddbf661256bfb4cd71e040a9c2b8021a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fd824165d61afff819bdc98a8af828a9719bcd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41434023fca811c5443bffa2f706b817d71fc466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41bbdc3bc7de0720fe5e789a332fab6c425473ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x423b91af79e2b8414c2d461c04ad46eccb1a9e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4264c31ad79900ec2a3a2e65d6a61d97e6b1b7af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44475eeeeec7f6370c7edc1cad74c1dd1b47b1b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4454ebe8a8e42e3fc6a4e2226dfa4f8a031aba1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44c285642c53fba3ec9c1696cacd93661cec37dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45cea13b0b3e2988a6d40033ab4e41b1eab2c220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45d4867b50e97ddbfeed0e2aa5af3d2a02b6094f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46287fd96f91d3b54990094ff670e7c301ede0a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46864c23e4b6df3761d464c8a25ea57b4c6d905e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47b80ad232962059d37fada461ef3c1469264f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x497d4cc764cb7efe70f089ed9dc70af97839cf22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a9183f71fb051eaedbb069407a244a4faeba24c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4beb243d0dece0c2013519d04055ffb312f71830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d19e0fb64032667b450c97dc0b28baa39ca6bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d8a2ceaa1b706350d6c6c90b3e2a2b6a35df3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d9baa197227c8f395e2188c81e65dd2f6e77bf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ec90b9743db24f3429c770ae800e50ad05ae5af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f03048e0a04f1530065a3a0e562d9afaa316d93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f0d7f60032a133cfe32978df2346483642ffbe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f13619d8117baa9816ca9405317ec81aba89b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f77138e965603f8d530f5b32a45e828cec2e929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50e7ad0f8ce8ca67060d3e2d1ad7296aa899df60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51a72cba5c30e3f75df8b88d05a391ed38467a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x526b4243337e8d5042e89e4f3d580cdee446ea49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52ba61ab3e05bd58c89424980c2d5eb07bb6f331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54386c71abfd2d9b8def4b614aead75ff6aa4a90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x562e9b8b335c7c6a6e004c0bc739e09408670dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x576778b7234df37ef7b7793cdf054e1f88dcbf6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x587720f673c14a13acf7ab87bb9155290b90b228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59669c30368cb4c178f516c6a6e9e0b00506e3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a2581abecc2351a62738b37f3ed206bc84a96bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a60c79614bb5e887d101f26b164f7105aded90f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5accc59a7b7acef201e6ccde2ddf9b6563b08cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b096431154f9ee3acbec4dfb927efcfe4994dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5be8c55ce6710d76b81b44eb8bfb5db08f26d52a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d2c4f00f0d2217a0694c6d52e3ed9e6a7b2324e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d3b2462bbad98beae4a3f21ce3c4b5fcbb3c7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dda32da775187f73da06753905d528cd3d06fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e5b178be72c054d80d6393e1e48f5769cc8b891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e6600cce443d1f38dac24263d9c06cc491756df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f45820337d5de4ae43374bb8643711563de47b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f6074b5c45cb4710a4f391b3967a49e031c9f0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f7ffb5a907d7e5ff85178d2ba4b900c6394403c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60ec02d307fb5b5a70c3206daa9eafa1d331b03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x613827fe6cd63bf8d2bbd0239def0ca6caeca22e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61c67c7944d295c96c3b7ebcf1ff87d749980452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6238fba2b113e311432514f180430b8d53c5531d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x625f43de280b2fcb75725bbdefe10e5cc3317e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x631aa58a0b168606b67c3afcf2550a3a12779ed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6372dea95b9952b99f24d13247ab29b99db76eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6381b5eea501fd9e0d49e490da9bf97066b90de9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63ba5bb46a1e754a3b130adaaf4003fd9e2b99a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64f314da6e13e0c2fe4bd129a266973a1ec79b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x658ada6b51260ac8fba4ad0778b608e60d3b8db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x662eb564551c3db1c456d3a4ca8a135b7793be11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66acc093bf429ae964858c723df7dfc34890d669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x675030c5960e0ecaee8412ed29b987ed9d30cc54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6777e41f345c75fce5200aa384a3828b1e895383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x682bba81323a5e194ed9f22fb5b6635368cdffe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68f22fc2c9ce614532514dfec0f0c9a38bc77362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68f31b1444633bada24a6a4d9286875230c590ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69571c51f5287dfedf38d9c391f013d9092aad46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a3d5a081456a23f79e8f30682fb8bf44bc5173b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a68282036ac25ef40023675f79959ef279476d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6aae95a327e0d8f018b2b0aec35bb74425577c34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6bd9ebb9260497ca440bf1feb012397a7a7614f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ccf631361793d40312d21d2971550e55d909de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d4c7079deb9c07f55fff71989e0311fda8004b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6dac4c25d5485276685ac278289244ab76a2f7dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e344976891403628a038c3ca5e95460cfc34e3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ebfb8c6a11404db5b79c50ee3048c8101fd22c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f37db3bc0118009fe22a4a135252c3aadb8f1de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fa67d501466e61a553bf4bbbb60fbf873b03653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7008c6a46e1a3d47785c17e5c873166c253cfe96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7038be30fe6e1f38cf3f277662611805d4be2e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70d826f0cab0c05b3957c5e16dae8e36acb1c7f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71e2bd16cbf912cc5b86dc58b82433e1ecc3c482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7242c9fa48c6aa2f8602331ea3774b20f9c93393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x733a273d11ca879af66a72efd27d49f4a17d4bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74a9a6e4e3162ffa2ec862ed06cf7907c73980d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74d61725d69480a03988e7d0f4397027d2a31cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7534a3ef7a131b16fbd062656407f1b50dc0bf09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75453e7dc2eceb29ddfc933f84585bc884eb17d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x791a6a1751c5ebdc13cfcd16099c3bea3daf9fc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79f0eae85430d102788ea502c19edb918cc23ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ca37216ef8511eac4b4f8067fa3cb2c6d61b86c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cd94b2d5233cd4771d5c9d8c46b24bea5e1d96b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7eead4466aa44adf060c72ecf8dd005fcb70487a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f184ec95f618a2e7df5057b13603ccc78f68eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80302e2c3d85051931c68b240f0188cc195205d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x814346fcb6d49f382d5bf0738e05979f65497220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81e6866aba76a36f816902be11572826c7493763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8323997145b7cce2a4ace509693e146e7edb6512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86be495e2f093650f3bb0c3b41d50dd1f938a1a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87072e0bca61c325872dc37ed4092a5150001f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x875aed56d54049000f221c93e1378b6b241c4cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88c7b0bbcd9f3779fa8b6fe5b8570c50437a958e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88f56d2704e4ddd53dc2d8e5bea8732a46102f33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ab4985d362439f8e63f910a5d8a28c2867829b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b5607cbb8c9e4a034894ec49d46901ea0c0b983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d1f90c70f8be2ede06d9467ca3fc6c725fe00f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e11c470a5100db9283b1cbab26ccef577d9ebab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e399d1f241a704b6e2344564eb89f11e0df0243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ec92bb3ce5a5dce4e9afd415d159579687a9990` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f5b1db1f299418bd87ce20189d1fa3a985c88e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fadc3408237567b82eb2a7f86f2ca588df5738d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91381f03e60509a0300e7298d7a54570dab404f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x913e1359b34c2bd372c899da4f45d2e764ef627e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92b84c49dc73aab8bc2eefdc8131332faca84550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x936e39956050cfce8052452e08064d650bb14c1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93abfdf513c8e295d1b7150219603347d8b2b60e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95413ed4763bc81e3839dccf10d72f978fbb6651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x962b082fe513fec53d70265331e05157dc73d3aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x982d6c7245edadafb4f477ae629c35dcebc507c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9839e90b54cb04e33e1f2f19033a3f7d949e8a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9972d86ac41eb6d06f33ebe98bcb3947a8fdc160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99dee8481ec176d51b556adad6728bfd6a838de2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a5bc561a89637ea52c872e63851aa5f6b882ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b67824a94312633c0e6f50469d128e389b8ca12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9bc54f30bd5edf47af381f972403b54dafdaaaf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d27d3ca37a5d5aba8ee664b7f4a02e589a64cc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d3a2613cdb0ae9b27320cdcb79d18dcca2ea6d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d7207312a16ac3ae26ed1d1b1404d2d9fd8895f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9dfff2f6a7319da3d60fd3e4b3ee60012c9c3456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f43da2abebe22e09c2065c816d321888434736d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fa9955f1ff483033504836f48829087edfd5263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fe32dc2ffcd688535ef0f5ffa680a01742255f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa080691960b1a2ac5ec1eb7697dfd5c75b158145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa12400e4a4aaae29fb7a41e01f368b5523eab2be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa15fb2d4dfd5b40a75c2127f2d825acaa3611ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1e659acbb8adafbbc48532bb762ab4202101e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa23bf04578cf9850106116366ccdb4cca5968dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2d2cfb55bae48d544871ff0121b39f15d0521da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3ed32da8c52007609fb7dd4490a5019a6added6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa581817e01345e5d679f011d28a4826ada619f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5cea7e6404519a7df5bbe722d1c0281faaf8c02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa685eeab102cf64a09810d2bb9f2abfb6e1215bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa817130d5275428893a63ebb0acb288b828f7b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9767f4b2cc24922552561c615fab8f1532550c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa420ce9ee072db12b8a03ca10d4615fa32bd5d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa8fa3fd7a8609714ee94cd52e0243d2383f8b17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab98cf3e0eb3821cb0053f7e76af3b8b164f2f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabcf6ece1f0560779ddf28383ab3ca9ad861f526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabcfa4b36fd7d07eef510ba9980fe5700142cbaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabd0a847dc23b8531fcd87a44af3f3ba8af74fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac965c5c3fc7760375982d640ce226ac1fc471de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadda4130cc1be6f9342212ecec1c56828f083def` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadf49e501cc3f9597b802649b05566dd28ea7e89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf7e5fc123d9ad86e8cd293039c4827dff8c3dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb04e85ba7c0ad2a2f2f7e469c1ff27f29b12e3fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb084cecbd42fb9522a03ccd853c08f87e63b162b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb25ca41b4395f76b91c3fc76765eed07e4a545f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2904c5b1aad5979fa5a283e7d9d6e0a44160e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb381237963c1f8fee4d52c6ce5d61470a05b15a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb403735bdc9694b64f8cdbd7833a138d18afb337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4cbbdf042062e8950eb1b4fdcbaacff173f9957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb53759be3e05c5bdef1cfdf485141b85aab62b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb580d8035c39d6194ab800049936b7cccf5d2ce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6758abe54765d7b0cc7f402ab8259caebd7a51b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7b6ae4f19df3254f842ef098cbef89e1cfa2658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7ed0ef7507c5e4acb1f3dddade5cd6c21c12062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8160653e5083d2e56d1890a875df4000812a8ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb879b0ea026e21011a5b447a616398b8fda83f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb96c5962dd7d689a971d68daa0881ebae3666e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9c227191214f50c9c372ed00d17b830f8950680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc02d14c593d1dad6a374d8e7098d3f93e1c8e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc33d8b21bbd9fd509b75671623f5232dae8b9d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc541a349994597b3d0c94846a2ae00d15f9a63f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc6439d64ce1a0e8e7aceb29ab85cc048172ad22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd9d6477ba9a60d4bbb2be422c6cc82ff7ed65c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe796971c969f0abe8e992caa9ca1d0e0fa073ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbef25012c2e1f87984c6fed840cc9d4ab6e9f465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf1f53266bffaad56e179ed9e5eccd027d0ed51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0047011b6b070d3fbfb7937e53bf975dee62393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc03fa34f16ee2d96499287f7aa6ceb7cf3fe6d16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0a573f517f8ce9e1cc15cee5ad2d08a74dc4be9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1b100aa9938f0f7b480debc152bda21418326a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2f1a167780c6b39e1d5dc982f56007c78c0d26d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2fabc40c240fd1d02246fee6d60bef3db200486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc30206c7751488775087dd4e1b4d24cefdaddac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc38335ed8ee4cd56c603f600d2cbb40ba9445993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc38f1599cb0a26a9f14a0d3df68a239f7d463aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3fe36fbd0b53157f75fe067b9867539e3c759e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc46668a26ab2902085f800489ec3c20daf8a8cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc490f66e0ead3a984b6de38536f0a98e2f9e5086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5fa9a43c71de6cfe29b33be8b35069820de7d73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc64a0d2221900807f2a92cd51c6e6a38e9dc96b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7b6460af1d863f11cd5e717347aa8f35fe92d2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7dbce7952d690a2711febbaa948ca33e1a84f4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc824c1418739fe21eb3257a0aa570476429a39ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8960398d5ec49317743042428146f3720c2bf9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9293e5e36bc0ccf6d4acc8701be9f55634a10b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc98b4d255cc16d75b6a0aac86abdb3e4d7c7cacc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc98e21b5455f4ead2b876015258d5346267ca696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9a228ecc62fb638e5edff025144ece91a595dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb28d49b2f5bfc42a61889beb5d8907008116697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcedf35f470557efc766e1c654b81992a343304a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd060a56d137e74527d7c342b21507a1fb0aef9aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd221c2efda9d464af4f4dfb11b492731b3ebbc62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd281386bd15d8faa98e1a3f372871ac1611d3873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd305e3b13619f4f2a397722f5f27dfa4975012b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd33048c28986116cb70207186ed19255cb2f54a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3d7863f0e7e8f3ecfff719801e7e8494980bc9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd41518bda1bb0a2b62866aa74e4ae4a08f3ab9c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4aa1f6dd377590ec5a5f9c46c968fcf78d20a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd53363d140cad80b80b1178df31f989aeea40c1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd55fd5dd33d607677ae30e0659f4d44f169d0ca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5b585cc11ff9c62cbb553598d5648ca61bfc384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5f0eb1c4be4b5ef3f8036b2385134a0467a659f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7056cbbab6821a42f74fa7ea62567a33b72c84a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7cf7f2170c02df57671e4ccdafd0b2a44c5a73e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9640dc5603efda4698e7c87866244a8f74897b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9a36541f7027f642e4840ba60f3f2fb22c32869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdae234c5aa6741fc112f93bfe8e04dda7b6798b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdaf22457f68fd33a2e180da33663147ce337f5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb1f4908a9abf62f97e0ac37fc8a07c7916ba885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbe20a1026f2181db565ddea1862fe0c0af6a638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd0cef4bbc42fda7057dde252ffb31d0668c05dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd183165a7a1c82eb58f178b493474418fc71170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddba9609972c104a1576eb32714677e04cbfe134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde083b8428959335a82d28a6787d4d6f461c37d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde36354b7f2a282c606bbd325f8ec9992eea8bbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdea85a49e6adc326f892ffa3688d0affc7eff4f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe04fd1cef763f08575f67aab49807a373ce3d80b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1d76cd8688c96e82b0f293f63c947f12db7f275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3e80f3d0a64ba5beff8a1762a9be5e9f0206943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe694c37975110a95804f9dcbb5cad81f70b9b361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6d72d211cab07afa0f6a9c212484433ea0eabba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6ebf45f87362334e5393455914358bb34bcf7a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7d6187a99dc9583fe98b4b8177e0f1702b3510c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7e6ed5f0d1de2253a04a883167af398f0f40438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe81acc514bc77a6a410fb380956582c41a0fe7c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe878660b0fe59568601204a782e16660e28789e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe926872ff7cd12e1049f39d96daa394871b8b908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9ade37cc3d489632cb8f719e64c48f25d2e3381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9ca93c3a500b121bfd298e74e0462c7688fca59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea3e9517cf2e0b552ec282217834d34cca100804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea52ed7085d01d51be43f3c8d4e067637be02896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec245f2fe6fe3f8827b6822a3b688d88425610a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed0aef533e31c54154bad595762e193b2334f2a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeda57b4754b7311cd1b37593a6aa0867adaac687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef34f642831893f423a01b5092cb75a3581026ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefc35e1d2b403fddefae6d86f1c0978b2f6448b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf200330ae314515765971d72aae32e9b43e6bdcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2d41418e5856763ff9d829eadf06dea90518467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf41afe3874fb86690bb325c89298d32132347a4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf44b80fa19838d2ab325c0dd1a57c17af486ff65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4a5484afaaf1ae9da389e39eea1111401d21f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4b53508e0bfcf4d6fe9eee864639026ae816043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5106ac0a1be12bc289f6b19244afc715a46c60d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6c2017307bcdfc40bab3b7b641445edf4d0f94c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa04d668b2331c95b147487b7018f494ee93142d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb05b9d5606a492c3e7e7b1212f8648c6f97e479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb24d155fba9eb38416598ba7dcf480eb63f9f45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb4d453680dd24cd90ec64d18a581ba4edb84882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfba01e83d30a923d03e410998c52f88cf8ab18bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfca9d10ee5c5f88349c2e1c10e2834d3531f3a64` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/goose-finance](https://skynet.certik.com/projects/goose-finance) | CertiK | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13199] skynet.certik.com/projects/goose-finance — no match: The document is a CertiK Skynet project insight page for Goose Finance, not a formal audit report. It mentions an audit delivered on 10/12/2021 but does not list any contracts in scope. No contract names or file paths are provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xf952fc3ca7325cc27d15885d37117676d25bfda6` | EggToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5bfe81fcb3708c8fc733bef60d313cafce1febeb` | GooseDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x831b85b2c6e55344d6b17c9d67ea83771b0a9c8e` | GooseDollarBond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 363 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [13199] skynet.certik.com/projects/goose-finance

Fork inheritance lineage and inherited audits are included when available.
