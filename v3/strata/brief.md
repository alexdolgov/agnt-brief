# Agentic Audit Brief: Strata

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 3 audit(s)
- Eligible audit results: 7 (3 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Strata (`strata`)
- Website: [https://strata.money](https://strata.money)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 151 unique implementations (256 raw deployments)
- Coverage basis: 10/82 confirmed own live verified implementations (12.2%); conservative 12.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $66,577,693.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Strata. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 144 contract row(s) across ethereum. Structural roles: 117 unclassified, 10 infra, 10 supporting, 7 core. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 144
- Structural roles: unclassified (117), infra (10), supporting (10), core (7)
- Contract kinds: contract (144)
- Detected standards: erc1967proxy (8), accesscontrol (5), erc165 (5), ownable (3), ownable2step (3)
- Frameworks: openzeppelin (25), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 12

## Fork Analysis

0 of 141 contracts are derived from known codebases. 141 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x277d26a45add5775f21256159f089769892cea5b`, chain 1)
- AaveAprPairProvider (`0x1c137776e04803f807616c382abba12d9bf0af73`, chain 1)
- AaveOracleAprPairProvider (`0x991e78df32a08b5327f73a58f08aff0c1bb929aa`, chain 1)
- AccessControlManager (`0x040ef225f885fc1e0d3bd09f3acc02f707f8c74a`, chain 1)
- AccessControlManager (`0x06e84a0fe0c4bc5c4ee3edb580b32eb4b88203e4`, chain 1)
- AccessControlManager (`0x6ce1aa78a196af86b752b92a2daee047ab601c36`, chain 1)
- AccessControlManager (`0xd5d18db904fe7df2207c3f9491c5441143e44014`, chain 1)
- AccessControlManager (`0xd61990c228fa5d4223231bf90896899daad399b8`, chain 1)
- Accounting (`0x5a8d34d785b5008cce9b9f4aaa0e445f6959cbff`, chain 1)
- Accounting (`0x8cabd13af1d45404a484ab22bb65dadf71048643`, chain 1)
- Accounting (`0xeb97f3084d3817c9e64250b6d43cef28e9dea057`, chain 1)
- AprPairFeed (`0x74188a2a8a5177dd217a8149f1fb1370240fbadc`, chain 1)
- AprPairFeed (`0x80f7b35310861f0e3d73ec03c0400d6b7641ecf9`, chain 1)
- AprPairFeed (`0xbd184402d691b0f703c718042b044027cd94d5bb`, chain 1)
- AprPairFeed (`0xd9d971820f62d59e4f430b07be8014ccebbaaf08`, chain 1)
- AprPairFeed (`0xed83dcc8513cbc3478609cc984dab11f668000e9`, chain 1)
- AprPairFeed (`0xfb029465c5fe706122f4063c6226dedd96668e8a`, chain 1)
- ConstantOracleAprPairProvider (`0x8b7258e8cc89894b56f757bc886b430d0c018bf0`, chain 1)
- ConstantOracleAprPairProvider (`0xd7bac4d57a2cae923b3dc7dd21398ed707b9eadc`, chain 1)
- DiscreteAccounting (`0x628bdd8f6d74160944c5668e7bc38bb85a35872e`, chain 1)
- DiscreteAccounting (`0xd6e34b4dae83bf18fdb5c5fd941f0e7c80e6f0c5`, chain 1)
- DiscreteAccounting (`0xd8ef4bab3cb044a1d480212e8d909f85c5d4f0b8`, chain 1)
- ERC20Cooldown (`0x5a428cafaba7d4fb2a73546d6ddb7512dc75c1a4`, chain 1)
- ERC20Cooldown (`0x73dfde427d6f9271a451dd01415c8f26e6292219`, chain 1)
- ERC20Cooldown (`0x74c74fd1a910da490b31501a8da449c020a78913`, chain 1)
- ERC20Cooldown (`0x940a04880b01b26f00c72c06680a633818925933`, chain 1)
- ERC20Cooldown (`0xa14009b8865c1b951511a8750e5e3d02e574db9d`, chain 1)
- ERC20Cooldown (`0xc284aeb908b25523437e81da80c24a9cd893a84e`, chain 1)
- FigureCooldownRequestImpl (`0x837ab05bb244c4a6528f1ecc9a2ec04041127da4`, chain 1)
- FigureStrategy (`0x46d68d3f663fd03564a5719a46954a4c41697376`, chain 1)
- GnosisSafeProxy (`0xa27ca9292268ee0f0258b749f1d5740c9bb68b50`, chain 1)
- MidasCooldownRequestImpl (`0x6ce2fa93fccd8796351f6c54289e8d9877a12348`, chain 1)
- MidasCooldownRequestImpl (`0xb4605c3091eb09a4199bc6993f0e3e0a55f7752e`, chain 1)
- SafeProxy (`0x4be3749a0f6557b8fd98f3967e859dbd7c694ef4`, chain 1)
- SaturnAprPairProvider (`0x4bcc15f6c0c63e511a1b55a7625f311a93854be8`, chain 1)
- SaturnCooldownRequestImpl (`0xfb8db761fd3be2a4255fd74230656654799ac84e`, chain 1)
- SharesCooldown (`0x25f7ce4cd3b5faef99350a9964ce9356ea58bcae`, chain 1)
- SharesCooldown (`0x655c80af21fa35d5d94bd8bb32b9e325e38a1e58`, chain 1)
- SharesCooldown (`0x8da07f0050f1a36682164657d72c7fa3606638cf`, chain 1)
- SharesCooldown (`0xa9e7e9ddc6c93fa95c66b0b69deddae3d24982b8`, chain 1)
- SharesCooldown (`0xb562409ffa131106aa3764b9f1f1700352b01a08`, chain 1)
- sNUSDAprPairProvider (`0x12db794342437aaa93970c106f2b5d5dfe2f9eab`, chain 1)
- sNUSDStrategy (`0x4c8fa0dbc1b3021b518df4476e33aebe2c4af269`, chain 1)
- StrataCDO (`0x0f8d08037f8d42e0c4664fb3ed00cbce2e448bc1`, chain 1)
- StrataCDO (`0x3afc31c41a53c355940d48a0d1c6005d8905d0a9`, chain 1)
- StrataCDO (`0x93f45b56eb1e5d2e51f949c74eaa5656154fa358`, chain 1)
- StrataCDO (`0x94a95681e7cdc57abe77d656f3ffbe4c8b94c24c`, chain 1)
- StrataCDO (`0xb3d4f2c2123f8c3ca85ae7a6d48aa2ef049c79ba`, chain 1)
- StrataCDO (`0xf39e55614e2a8825c94ad7c5ef8babfccdfc4e00`, chain 1)
- StrataMasterChef (`0x4f2682b78f37910704fb1aff29358a1da07e022d`, chain 1)
- StrataMasterChef (`0xb2a3cf69c97afd4de7882e5fee120e4efc77b706`, chain 1)
- sUSDeStrategy (`0x2b9796606c8480312a572742c00f606ef4adb107`, chain 1)
- Tranche (`0x461d16d844599fc68d33ccde736a3807945d0b83`, chain 1)
- Tranche (`0x5c8df1867dae4db77903d4aec24a09e81e72a6db`, chain 1)
- Tranche (`0x86e638bcf6dfc98361491faa4c6f8ede25cd739e`, chain 1)
- Tranche (`0x901443737f2b4d3dde6a33b7137d234ef719209d`, chain 1)
- Tranche (`0x96f88f528b224eed97e6924056c791e16530c1c9`, chain 1)
- Tranche (`0xb4eea61e674bdf50cace3d2d4ea905fd8644f2b1`, chain 1)
- Tranche (`0xb8e946cf071de67fd05e12f7658a762b4e80499e`, chain 1)
- Tranche (`0xc71b908fa50ce773c248e3632e46c7192807e767`, chain 1)
- Tranche (`0xe894055ca1c73648927e225f3ca38ed48e30210b`, chain 1)
- Tranche (`0xe91869f96806b480dd61d57e17919068d35ac09c`, chain 1)
- Tranche (`0xecbde9f154d26b6daf57ddfdbe239f14174de952`, chain 1)
- Tranche (`0xfcda74516bb1fa1d2817c0f67dc306ba08e0d847`, chain 1)
- TrancheDepositor (`0x127f27d2154c8761d4576cffbbd6d86213d4eb80`, chain 1)
- TrancheDepositor (`0x22f92940c5d053ccbae47f88fb51752cc04cabaa`, chain 1)
- TrancheDepositor (`0x6e5a69bfdce6b521df6b2d0d3c49610c8f26b20b`, chain 1)
- TransparentUpgradeableProxy (`0x011e55d2b28306458e37ca7e997c879bb25a455d`, chain 1)
- TransparentUpgradeableProxy (`0x03dbbc507360a16f477e53af985261c3ce11dbcc`, chain 1)
- TransparentUpgradeableProxy (`0x0404ea6f1c89a5032ea2baddfbac20ce11cdf1ce`, chain 1)
- TransparentUpgradeableProxy (`0x0e90b8971bc0abba696641eee85b39fd986267d7`, chain 1)
- TransparentUpgradeableProxy (`0x0f93bac77c3ddd1341d3ecc388c5f8a180818994`, chain 1)
- TransparentUpgradeableProxy (`0x1695a2ff3e45365ab4111d2e1083b2a143b4d171`, chain 1)
- TransparentUpgradeableProxy (`0x180f7b3b807fa91edb6e864802e4664d6ee8cf88`, chain 1)
- TransparentUpgradeableProxy (`0x1abc3c3c15a862276d057b2acbcfeab358907990`, chain 1)
- TransparentUpgradeableProxy (`0x21d616977f355afd0eab7a1d11c9fd58c8579115`, chain 1)
- TransparentUpgradeableProxy (`0x25138d10837ab0278eb860454e1045f2b92929ab`, chain 1)
- TransparentUpgradeableProxy (`0x2a52363a2a0d765b31cb117a8e4d9ce58c2bc749`, chain 1)
- TransparentUpgradeableProxy (`0x2bb416614d740e5313aa64a0e3e419b39e800ec2`, chain 1)
- TransparentUpgradeableProxy (`0x35bff778d3fc53a561486bf28e761428499232eb`, chain 1)
- TransparentUpgradeableProxy (`0x39c7e67b25fb14eaec8717b20664c2e35327e6cf`, chain 1)
- TransparentUpgradeableProxy (`0x3cef2c09c4fad37e9bdd86cd9810c3042fb5de88`, chain 1)
- TransparentUpgradeableProxy (`0x3d7d6fdf07ee548b939a80edbc9b2256d0cdc003`, chain 1)
- TransparentUpgradeableProxy (`0x440938fcb03d64afe50a8168d4b3cfcc341bfbaa`, chain 1)
- TransparentUpgradeableProxy (`0x4c2680ae06a0bb0b091e5ccca13cb03f4f72296e`, chain 1)
- TransparentUpgradeableProxy (`0x50e850641f43f65bf8fb3a7d0cf082a1d252f47e`, chain 1)
- TransparentUpgradeableProxy (`0x5efe7c9da88568709e98b237d4d946afbda2aa52`, chain 1)
- TransparentUpgradeableProxy (`0x60dae21944e6c1f4a185d33a217b05bfd647eb79`, chain 1)
- TransparentUpgradeableProxy (`0x613d1790d9ba381d27b4071c04380db8ed120e5f`, chain 1)
- TransparentUpgradeableProxy (`0x616af703d5739f2122af48c0d1ce0b37e09381ac`, chain 1)
- TransparentUpgradeableProxy (`0x627ea69929212916ec57b1b26d2e1a19f6129b53`, chain 1)
- TransparentUpgradeableProxy (`0x65a44528e8868166401ea08b549e19552af589db`, chain 1)
- TransparentUpgradeableProxy (`0x6f6904ed406cefb34893054a742c6148e9d681c1`, chain 1)
- TransparentUpgradeableProxy (`0x71ec07bba60e854c4b2466068be1c8d5b5788fda`, chain 1)
- TransparentUpgradeableProxy (`0x735eddf50ca2371aa48466469c742e684c610f74`, chain 1)
- TransparentUpgradeableProxy (`0x7910cb19a4f5a36caa2bed0af82cbfff2e08805c`, chain 1)
- TransparentUpgradeableProxy (`0x7945e45c2f39be3a0cbf467f3fae982c17cb4bf7`, chain 1)
- TransparentUpgradeableProxy (`0x7a0f6f613c27bfa5aeee3f94e1df0eccb589b30e`, chain 1)
- TransparentUpgradeableProxy (`0x7b6c960cf185fb27ecb91c174fae065978bedd10`, chain 1)
- TransparentUpgradeableProxy (`0x80187fd8e22e8951104b4dd5e37037510cf51c9e`, chain 1)
- TransparentUpgradeableProxy (`0x8071500d237a8da2a2a020419d7bb5f8e2fd184d`, chain 1)
- TransparentUpgradeableProxy (`0x83c11b746d7c942c49d981055e782e727a0a59e1`, chain 1)
- TransparentUpgradeableProxy (`0x908b3921aae4fc17191d382bb61020f2ee6c0e20`, chain 1)
- TransparentUpgradeableProxy (`0xa436c5dd1ba62c55d112c10cd10e988bb3355102`, chain 1)
- TransparentUpgradeableProxy (`0xa617763ceb808f43ec9d532cbe8c65819afb846b`, chain 1)
- TransparentUpgradeableProxy (`0xaf32d44d510b82b64f13602f4a22c6a7fff2b228`, chain 1)
- TransparentUpgradeableProxy (`0xbe71d21addba5c9aac5b4e006db1715ef1e324be`, chain 1)
- TransparentUpgradeableProxy (`0xc58d044404d8b14e953c115e67823784dea53d8f`, chain 1)
- TransparentUpgradeableProxy (`0xcced21d609cac4a272d0c01a8ff4de9cebc40d60`, chain 1)
- TransparentUpgradeableProxy (`0xce70434ddbadadb785ab391b45ed3b1e8ddeb3f1`, chain 1)
- TransparentUpgradeableProxy (`0xce7b00d1004d9ed22e702a6a7f5bbdce7297b090`, chain 1)
- TransparentUpgradeableProxy (`0xd1fc85a0993ecf975aeeaf92c0764af8a182e4e9`, chain 1)
- TransparentUpgradeableProxy (`0xd2923d964bf05e3eb7528e73bb093f5d2ce32044`, chain 1)
- TransparentUpgradeableProxy (`0xd6dad17d025cddded27305aebab8b277996a6faf`, chain 1)
- TransparentUpgradeableProxy (`0xd8ea6461a616f7e1e0f0d1eeedd15e26c02e7823`, chain 1)
- TransparentUpgradeableProxy (`0xdbf4fb6c310c1c85d0b41b5dbca06096f2e7099f`, chain 1)
- TransparentUpgradeableProxy (`0xe4a3a21cf73a8f34fc7f45d7fce99c569abb2a4a`, chain 1)
- TransparentUpgradeableProxy (`0xe851dea9e36f992590f2e33281665e159a455b66`, chain 1)
- TransparentUpgradeableProxy (`0xeb205d26e9e605ec82d1c0d652e00037c278714b`, chain 1)
- TransparentUpgradeableProxy (`0xeb30f897fc0ac646b8130e222aab53cd9bb4f693`, chain 1)
- TransparentUpgradeableProxy (`0xece4808a7d2076a6eac56333fd6dcfc0eaf28d64`, chain 1)
- TransparentUpgradeableProxy (`0xeed127d3874b003d91f0bf35ba7de3e9e1c18c75`, chain 1)
- TransparentUpgradeableProxy (`0xef99111e5a16a53b3324e6d466d9fe387ee7a95a`, chain 1)
- TransparentUpgradeableProxy (`0xf4c91f24e20ee8ed5eda905e501a1136334c2f27`, chain 1)
- TransparentUpgradeableProxy (`0xf4ff82553beba0a18834d708e4f78e36937c4ddc`, chain 1)
- TransparentUpgradeableProxy (`0xf7eb8dfec75c42d2d2247fe76ccaedc59f821688`, chain 1)
- TransparentUpgradeableProxy (`0xfaa9a0e1db9e22ae3a20b2b58a68dc24d053d066`, chain 1)
- TransparentUpgradeableProxy (`0xfc807058a352b61aeef6a38e2d0fc3990225e772`, chain 1)
- TransparentUpgradeableProxy (`0xff408b4843cdd4a33cd49eb2abe057fe8d71c234`, chain 1)
- TwoStepConfigManager (`0x084fe180ceed7b33c6235752505a081b1a9fa11c`, chain 1)
- TwoStepConfigManager (`0x0a0e72a4f25a915fd7bbc585bcf61896a2a846c8`, chain 1)
- TwoStepConfigManager (`0x452f0e1bd7310e3cfb32383d7c200308e551fe8a`, chain 1)
- TwoStepConfigManager (`0x663ddb8163db448629045d23c40a411f26caf190`, chain 1)
- TwoStepConfigManager (`0xadbba0b62fa156dd0b7429cc48e0edfb0cc25afc`, chain 1)
- TwoStepConfigManager (`0xd85d0f4fd18ca9ae5e8b0eba0e65519fbbfd3341`, chain 1)
- UnstakeCooldown (`0x2822b8d7db77102937b040ed17ac6785dfd98ce5`, chain 1)
- UnstakeCooldown (`0x7a7fa12527c8bbb936fa59cdaa846cb669a28a1b`, chain 1)
- UnstakeCooldown (`0xd2843c620d188796b031d805fd869b597f6f3451`, chain 1)
- UnstakeCooldown (`0xd59b3f69945aab4e9174a0eb1cd9af22c4d47613`, chain 1)
- UnstakeCooldown (`0xea36763350eb050e4075e743226b4ca370a5fb20`, chain 1)
- UnstakeCooldown (`0xf783d40476c26d074d6e0ef298cf446a58d0ed1f`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 144; live-surface rows included: 144 (143 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 83/84 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/82 (12.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 83 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 68 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 94
- Confirmed-live implementations: 83 of 151 unique; 68 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/123
- Verified + Unaudited implementations: 113
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 151
- Raw deployments: 256
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 12.2% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 10 | 8.1% | 2026-01 |
| Guardian | Tier 2 | 6 | 4.9% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257198 | 2 deployments: ethereum `0x5efe7c9da88568709e98b237d4d946afbda2aa52`; ethereum `0xeb97f3084d3817c9e64250b6d43cef28e9dea057` | ✅ Audited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257162 | 2 deployments: ethereum `0x73dfde427d6f9271a451dd01415c8f26e6292219`; ethereum `0xd6dad17d025cddded27305aebab8b277996a6faf` | ✅ Audited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257159 | 2 deployments: ethereum `0x0404ea6f1c89a5032ea2baddfbac20ce11cdf1ce`; ethereum `0x655c80af21fa35d5d94bd8bb32b9e325e38a1e58` | ✅ Audited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257149 | 2 deployments: ethereum `0x3afc31c41a53c355940d48a0d1c6005d8905d0a9`; ethereum `0x7b6c960cf185fb27ecb91c174fae065978bedd10` | ✅ Audited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257180 | 2 deployments: ethereum `0x908b3921aae4fc17191d382bb61020f2ee6c0e20`; ethereum `0xb3d4f2c2123f8c3ca85ae7a6d48aa2ef049c79ba` | ✅ Audited |
| StrataMasterChef | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257128 | `0x4f2682b78f37910704fb1aff29358a1da07e022d` | ✅ Audited |
| sUSDeCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257121 | `0x00a96056c30a22b684ff7a09f4a0afeae426dde2` | ✅ Audited |
| sUSDeStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257148 | 2 deployments: ethereum `0x2b9796606c8480312a572742c00f606ef4adb107`; ethereum `0xdbf4fb6c310c1c85d0b41b5dbca06096f2e7099f` | ✅ Audited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257151 | 2 deployments: ethereum `0x452f0e1bd7310e3cfb32383d7c200308e551fe8a`; ethereum `0x60dae21944e6c1f4a185d33a217b05bfd647eb79` | ✅ Audited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257188 | 2 deployments: ethereum `0x735eddf50ca2371aa48466469c742e684c610f74`; ethereum `0xd2843c620d188796b031d805fd869b597f6f3451` | ✅ Audited |

### ⚠️ Verified + Unaudited (113)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveAprPairProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257125 | `0x1c137776e04803f807616c382abba12d9bf0af73` | ⚠️ Unaudited |
| AaveOracleAprPairProvider | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257134 | `0x991e78df32a08b5327f73a58f08aff0c1bb929aa` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257122 | `0x040ef225f885fc1e0d3bd09f3acc02f707f8c74a` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257123 | `0x06e84a0fe0c4bc5c4ee3edb580b32eb4b88203e4` | ⚠️ Unaudited |
| AccessControlManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d19e18ecac4ef332a0d5d6aa3a0f0f772605f60` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257129 | `0x6ce1aa78a196af86b752b92a2daee047ab601c36` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257137 | `0xd5d18db904fe7df2207c3f9491c5441143e44014` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257138 | `0xd61990c228fa5d4223231bf90896899daad399b8` | ⚠️ Unaudited |
| Accounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0f751ea4af9390c8eb530ee3ce2275a85167a20e`; ethereum `0x4e409d5f9867352555e99a50cee2c4a73364e5b6`; ethereum `0x4e9f8d06aaed67ac4aaa52d9175c842e0f8e8da2`; ethereum `0xc634e92d2d2231ffc3de0615654f6ba7b6d3be7e`; ethereum `0xc89951cc4c03927ff11a0e47806e2ac3aa7734f3` | ⚠️ Unaudited |
| Accounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257169 | 2 deployments: ethereum `0x180f7b3b807fa91edb6e864802e4664d6ee8cf88`; ethereum `0x8cabd13af1d45404a484ab22bb65dadf71048643` | ⚠️ Unaudited |
| Accounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257156 | 2 deployments: ethereum `0x5a8d34d785b5008cce9b9f4aaa0e445f6959cbff`; ethereum `0xa436c5dd1ba62c55d112c10cd10e988bb3355102` | ⚠️ Unaudited |
| Accounting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6b9ab8ef78ddd5b0a9eef8eb1ca26e656299767b`; ethereum `0xd1efb5891baf55ddaaa1889bc91dd0d161ea5651` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257166 | 2 deployments: ethereum `0x1695a2ff3e45365ab4111d2e1083b2a143b4d171`; ethereum `0x80f7b35310861f0e3d73ec03c0400d6b7641ecf9` | ⚠️ Unaudited |
| AprPairFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1f3aab5b7c5ea8c4ce629b14edb09d68b90a3c57`; ethereum `0x3ea2f376ce175ac39255fa5336bd53cca92bb26c` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257193 | 2 deployments: ethereum `0x21d616977f355afd0eab7a1d11c9fd58c8579115`; ethereum `0xd9d971820f62d59e4f430b07be8014ccebbaaf08` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257163 | 2 deployments: ethereum `0x2bb416614d740e5313aa64a0e3e419b39e800ec2`; ethereum `0x74188a2a8a5177dd217a8149f1fb1370240fbadc` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257184 | 2 deployments: ethereum `0xbd184402d691b0f703c718042b044027cd94d5bb`; ethereum `0xd2923d964bf05e3eb7528e73bb093f5d2ce32044` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257200 | 2 deployments: ethereum `0xd1fc85a0993ecf975aeeaf92c0764af8a182e4e9`; ethereum `0xed83dcc8513cbc3478609cc984dab11f668000e9` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257203 | 2 deployments: ethereum `0xece4808a7d2076a6eac56333fd6dcfc0eaf28d64`; ethereum `0xfb029465c5fe706122f4063c6226dedd96668e8a` | ⚠️ Unaudited |
| AprPairFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf158a4f4a01ac21ddd2b09abd2232649526ef6a2` | ⚠️ Unaudited |
| CDOLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x02d622c6f8b1814fdcaebed36457f8da90ab5b62`; ethereum `0x16f62bc6072a710202e7631be9b6a378de16fff0`; ethereum `0xa7c547ba0dfd91a6b1e8ab6aa5d444f9ec2da3a4`; ethereum `0xc9d29a300db9896c7c253cc729e012fbc7b06611` | ⚠️ Unaudited |
| CDOLens | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x38274dd13f90e6577b61d118ff05819112e1bb25`; ethereum `0xea62e3a2d5fe8d5b66dc8e1bd2405ad23c851f4e` | ⚠️ Unaudited |
| ConstantOracleAprPairProvider | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257132 | `0x8b7258e8cc89894b56f757bc886b430d0c018bf0` | ⚠️ Unaudited |
| ConstantOracleAprPairProvider | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257139 | `0xd7bac4d57a2cae923b3dc7dd21398ed707b9eadc` | ⚠️ Unaudited |
| DiscreteAccounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257190 | 2 deployments: ethereum `0x0e90b8971bc0abba696641eee85b39fd986267d7`; ethereum `0xd6e34b4dae83bf18fdb5c5fd941f0e7c80e6f0c5` | ⚠️ Unaudited |
| DiscreteAccounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257158 | 2 deployments: ethereum `0x628bdd8f6d74160944c5668e7bc38bb85a35872e`; ethereum `0xe4a3a21cf73a8f34fc7f45d7fce99c569abb2a4a` | ⚠️ Unaudited |
| DiscreteAccounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257192 | 2 deployments: ethereum `0xaf32d44d510b82b64f13602f4a22c6a7fff2b228`; ethereum `0xd8ef4bab3cb044a1d480212e8d909f85c5d4f0b8` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257177 | 2 deployments: ethereum `0x1abc3c3c15a862276d057b2acbcfeab358907990`; ethereum `0xa14009b8865c1b951511a8750e5e3d02e574db9d` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257173 | 2 deployments: ethereum `0x25138d10837ab0278eb860454e1045f2b92929ab`; ethereum `0x940a04880b01b26f00c72c06680a633818925933` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x428c24ae7fd64da9a19bcd9917c68c58d733508e`; ethereum `0xe4489ef979dcfc8b54a70b4defdb1d3e2632b272` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257164 | 2 deployments: ethereum `0x4c2680ae06a0bb0b091e5ccca13cb03f4f72296e`; ethereum `0x74c74fd1a910da490b31501a8da449c020a78913` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257155 | 2 deployments: ethereum `0x5a428cafaba7d4fb2a73546d6ddb7512dc75c1a4`; ethereum `0x71ec07bba60e854c4b2466068be1c8d5b5788fda` | ⚠️ Unaudited |
| ERC20Cooldown | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5c818c5894d7fb825c90e472b320c03572ab687d`; ethereum `0xe93b75b5f3da8c4f48dcd3cf84cd7fb001e938f8` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257185 | 2 deployments: ethereum `0xbe71d21addba5c9aac5b4e006db1715ef1e324be`; ethereum `0xc284aeb908b25523437e81da80c24a9cd893a84e` | ⚠️ Unaudited |
| EulerIntegration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf251290866cfca9ad4d0cbbde3742a0d12876682` | ⚠️ Unaudited |
| EulerLens | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5c36c8f79236e9fa215a16b13a6390ddebe309fa`; ethereum `0xc7e74a12fbaa44000c22b67a0827748629b54727` | ⚠️ Unaudited |
| FigureCooldownRequestImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x0107cf58ab1593347ccd85ab091be4e086abeaa0`; ethereum `0x4889e2a81fba6600bd7e15c5efabb3cf9de3d5da` | ⚠️ Unaudited |
| FigureCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257131 | `0x837ab05bb244c4a6528f1ecc9a2ec04041127da4` | ⚠️ Unaudited |
| FigureStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257153 | 2 deployments: ethereum `0x46d68d3f663fd03564a5719a46954a4c41697376`; ethereum `0x80187fd8e22e8951104b4dd5e37037510cf51c9e` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-257194 | `0xa27ca9292268ee0f0258b749f1d5740c9bb68b50` | ⚠️ Unaudited |
| MidasCooldownRequestImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x08633203642d99af2286b68399bfa3caf7d88087`; ethereum `0x5d6e12f55a1c10cef361a080107f6ab91ac89cf6` | ⚠️ Unaudited |
| MidasCooldownRequestImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x0afc250087e5d57e97dfe14942fc7cceb33f8a8a`; ethereum `0x109f1184fae306c87c7183f97af0db9e6163ab60` | ⚠️ Unaudited |
| MidasCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257130 | `0x6ce2fa93fccd8796351f6c54289e8d9877a12348` | ⚠️ Unaudited |
| MidasCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257136 | `0xb4605c3091eb09a4199bc6993f0e3e0a55f7752e` | ⚠️ Unaudited |
| MidasStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257167 | 2 deployments: ethereum `0x8071500d237a8da2a2a020419d7bb5f8e2fd184d`; ethereum `0x839d89e87183f4e09cd63abe1f2b0ec8549637ec` | ⚠️ Unaudited |
| MidasStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257175 | 2 deployments: ethereum `0x96ef7de683b8ffb8dc378fb1ea68d8b4e671cf6e`; ethereum `0xeed127d3874b003d91f0bf35ba7de3e9e1c18c75` | ⚠️ Unaudited |
| PendleIntegration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b75970a492bfd326ef7425671117e7ec14d78fc` | ⚠️ Unaudited |
| pUSDeDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1516d031ccae6c73f4cc106474ae87628a403660`; ethereum `0x28ab384d2e064bda3ebed85ee63c140bdb8ce118` | ⚠️ Unaudited |
| pUSDeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x32e3333e5a03402aa1b6d45d6852a3a34ee62637`; ethereum `0xc734d636a8334f8d1d5619af3f0102fd5e62eca8` | ⚠️ Unaudited |
| pUSDeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd23de70dcb3fa5bec90b06bd973c400f1b1b3006` | ⚠️ Unaudited |
| pUSDeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7fe8d7efe89b240b7f2879eebf488152f647b851`; ethereum `0xa62b204099277762d1669d283732dcc1b3aa96ce` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257150 | `0x4be3749a0f6557b8fd98f3967e859dbd7c694ef4` | ⚠️ Unaudited |
| SaturnAprPairProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257127 | `0x4bcc15f6c0c63e511a1b55a7625f311a93854be8` | ⚠️ Unaudited |
| SaturnCooldownRequestImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x7399f54b967c4d6530cf3d64b5bf9bcfd541d780`; ethereum `0x9aacf18744f080888cef4617c29885984a38fc18` | ⚠️ Unaudited |
| SaturnCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257140 | `0xfb8db761fd3be2a4255fd74230656654799ac84e` | ⚠️ Unaudited |
| SaturnStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36f5930e314b2f611a786476d939f47b318c1939`; ethereum `0xcaf0865334eb135b8c47fca6d9049d5eafe19d9b` | ⚠️ Unaudited |
| SaturnStrategy | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257133 | `0x9686e327a6f50aca2a1bea4219e04dc4449dc286` | ⚠️ Unaudited |
| SaturnStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257187 | `0xce7b00d1004d9ed22e702a6a7f5bbdce7297b090` | ⚠️ Unaudited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257146 | 2 deployments: ethereum `0x25f7ce4cd3b5faef99350a9964ce9356ea58bcae`; ethereum `0x83c11b746d7c942c49d981055e782e727a0a59e1` | ⚠️ Unaudited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257170 | 2 deployments: ethereum `0x8da07f0050f1a36682164657d72c7fa3606638cf`; ethereum `0xce70434ddbadadb785ab391b45ed3b1e8ddeb3f1` | ⚠️ Unaudited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257178 | 2 deployments: ethereum `0xa9e7e9ddc6c93fa95c66b0b69deddae3d24982b8`; ethereum `0xe851dea9e36f992590f2e33281665e159a455b66` | ⚠️ Unaudited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257182 | 2 deployments: ethereum `0xb562409ffa131106aa3764b9f1f1700352b01a08`; ethereum `0xeb30f897fc0ac646b8130e222aab53cd9bb4f693` | ⚠️ Unaudited |
| sNUSDAprPairProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257124 | `0x12db794342437aaa93970c106f2b5d5dfe2f9eab` | ⚠️ Unaudited |
| sNUSDCooldownRequestImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x1545cf03f38100912e672e07120f99fc1a472d20`; ethereum `0xca864927dc63651ef7b9198d3bf717c209fe22f7`; ethereum `0xea5595e883da68c0148b09021853c9da15ee32d7` | ⚠️ Unaudited |
| sNUSDStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257154 | 2 deployments: ethereum `0x3cef2c09c4fad37e9bdd86cd9810c3042fb5de88`; ethereum `0x4c8fa0dbc1b3021b518df4476e33aebe2c4af269` | ⚠️ Unaudited |
| sNUSDSwapAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebbeb5ec0fa689def85423d6c161b30bf3d6303` | ⚠️ Unaudited |
| StrataCDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0eccfa55f1739cdcb112ada272c910ba50c1b756`; ethereum `0x30faefa3c8022963df7538abeb8af8de1187f02a` | ⚠️ Unaudited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257143 | 2 deployments: ethereum `0x0f8d08037f8d42e0c4664fb3ed00cbce2e448bc1`; ethereum `0x613d1790d9ba381d27b4071c04380db8ed120e5f` | ⚠️ Unaudited |
| StrataCDO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1f5a750ecf519dd2fa1a67c32bcaa144ddc4cdc4`; ethereum `0xecff8b0c1f122392bd6324fd9cf0b0fd19730b94` | ⚠️ Unaudited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257174 | 2 deployments: ethereum `0x39c7e67b25fb14eaec8717b20664c2e35327e6cf`; ethereum `0x94a95681e7cdc57abe77d656f3ffbe4c8b94c24c` | ⚠️ Unaudited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257172 | 2 deployments: ethereum `0x93f45b56eb1e5d2e51f949c74eaa5656154fa358`; ethereum `0xff408b4843cdd4a33cd49eb2abe057fe8d71c234` | ⚠️ Unaudited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257201 | 2 deployments: ethereum `0xa617763ceb808f43ec9d532cbe8c65819afb846b`; ethereum `0xf39e55614e2a8825c94ad7c5ef8babfccdfc4e00` | ⚠️ Unaudited |
| StrataMasterChef | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257135 | `0xb2a3cf69c97afd4de7882e5fee120e4efc77b706` | ⚠️ Unaudited |
| sUSDeAprPairProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa621c54ff2a24c9b084dcc2fb7399a55bdb80277`; ethereum `0xaff405c3f1917a42326f28c90d0d5603c96d596b` | ⚠️ Unaudited |
| sUSDeCooldownRequestImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x3f7041df827d7c5be4b62ca82e0a44996479a2cc`; ethereum `0xc5827b30218813679cbfd524b65f8394270c76a4`; ethereum `0xe5e4febbd1c528b3c0a30c2bc678b8c611fa42c8` | ⚠️ Unaudited |
| sUSDeCooldownRequestImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x97f7e9def63e55b6eda4a103d23fd9d1cfd62e69`; ethereum `0x9c8c72b670f514154242a71d74420383527ad6a8` | ⚠️ Unaudited |
| sUSDeStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0da391431cc9760005c113c1a2dcb9d67878f213`; ethereum `0x4f514f4e92189941e0d358f5afe0483a6dfd5b17`; ethereum `0xcbb5484684ef693bc984e56d9d6330099d16c5e0` | ⚠️ Unaudited |
| sUSDeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x75489eb7bdbc983984c075eeac1feffb1bd40f20`; ethereum `0x99fe6bb58b52d54991c0b6ef2595839e835f1a20` | ⚠️ Unaudited |
| TermmaxIntegration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7940b983ccdd5818cf55129b84df5231751a4a7b` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257157 | 2 deployments: ethereum `0x011e55d2b28306458e37ca7e997c879bb25a455d`; ethereum `0x5c8df1867dae4db77903d4aec24a09e81e72a6db` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257171 | 2 deployments: ethereum `0x35bff778d3fc53a561486bf28e761428499232eb`; ethereum `0x901443737f2b4d3dde6a33b7137d234ef719209d` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257195 | 2 deployments: ethereum `0x3d7d6fdf07ee548b939a80edbc9b2256d0cdc003`; ethereum `0xe894055ca1c73648927e225f3ca38ed48e30210b` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4111c7f6bf113bae127c16c05a72566fe57366d0`; ethereum `0xb0a808df4328bf17f5e1b2c63c426f0a5a89f62c` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257152 | 2 deployments: ethereum `0x461d16d844599fc68d33ccde736a3807945d0b83`; ethereum `0x627ea69929212916ec57b1b26d2e1a19f6129b53` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5ddb16613b14071f7158ec7a64044831660b5999`; ethereum `0xb8b04fd91adf9cdf2e3be650cd151f83e1db6013` | ⚠️ Unaudited |
| Tranche | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x64c62859ce56fb9cc74c253ef59f7bfc67d9630e`; ethereum `0x90f806df8a024c1474425f8c4fca4f3301dcbcdb`; ethereum `0xdc3190a059a1dcf4c17ec1cb9cc8c4eacd0bc297`; ethereum `0xffe76a74f53b700dcd06feaa863b75003d50f2be` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257168 | 2 deployments: ethereum `0x65a44528e8868166401ea08b549e19552af589db`; ethereum `0x86e638bcf6dfc98361491faa4c6f8ede25cd739e` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257176 | 2 deployments: ethereum `0x96f88f528b224eed97e6924056c791e16530c1c9`; ethereum `0xeb205d26e9e605ec82d1c0d652e00037c278714b` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb1f6a2de586f540b070e084770212d7383396d62`; ethereum `0xf1115b02a3e59cc575a7f248661cc2c1ec8e3a68` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257181 | 2 deployments: ethereum `0xb4eea61e674bdf50cace3d2d4ea905fd8644f2b1`; ethereum `0xf7eb8dfec75c42d2d2247fe76ccaedc59f821688` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257183 | 2 deployments: ethereum `0xb8e946cf071de67fd05e12f7658a762b4e80499e`; ethereum `0xfaa9a0e1db9e22ae3a20b2b58a68dc24d053d066` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257196 | 2 deployments: ethereum `0xc58d044404d8b14e953c115e67823784dea53d8f`; ethereum `0xe91869f96806b480dd61d57e17919068d35ac09c` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257186 | 2 deployments: ethereum `0xc71b908fa50ce773c248e3632e46c7192807e767`; ethereum `0xfc807058a352b61aeef6a38e2d0fc3990225e772` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcc3777cf87b05935f1824e45fafddf0dd50aab6f`; ethereum `0xd4847c94bd3121a511960efb0443baf32c105525` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257199 | 2 deployments: ethereum `0xcced21d609cac4a272d0c01a8ff4de9cebc40d60`; ethereum `0xecbde9f154d26b6daf57ddfdbe239f14174de952` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257204 | 2 deployments: ethereum `0xf4c91f24e20ee8ed5eda905e501a1136334c2f27`; ethereum `0xfcda74516bb1fa1d2817c0f67dc306ba08e0d847` | ⚠️ Unaudited |
| TrancheDepositor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257144 | 2 deployments: ethereum `0x127f27d2154c8761d4576cffbbd6d86213d4eb80`; ethereum `0xd8ea6461a616f7e1e0f0d1eeedd15e26c02e7823` | ⚠️ Unaudited |
| TrancheDepositor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257145 | 2 deployments: ethereum `0x22f92940c5d053ccbae47f88fb51752cc04cabaa`; ethereum `0x7945e45c2f39be3a0cbf467f3fae982c17cb4bf7` | ⚠️ Unaudited |
| TrancheDepositor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257161 | 2 deployments: ethereum `0x50e850641f43f65bf8fb3a7d0cf082a1d252f47e`; ethereum `0x6e5a69bfdce6b521df6b2d0d3c49610c8f26b20b` | ⚠️ Unaudited |
| TrancheDepositor | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x60f130c9d1533505c3931183693d3d91060b4f1f`; ethereum `0xb8f2dac561b2a5ea2e075c8eb5fcac669c3a3abf`; ethereum `0xe375c1d79165ec365d0bc0d0c5105a8a17f85cee` | ⚠️ Unaudited |
| TrancheDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7a6ad3753b51cb0161405e93645b5e1f95b6e50f`; ethereum `0x932a1d70a5e1c64a13daa5a60564acf5a2ac0d11` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257160 | 2 deployments: ethereum `0x03dbbc507360a16f477e53af985261c3ce11dbcc`; ethereum `0x663ddb8163db448629045d23c40a411f26caf190` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257141 | 2 deployments: ethereum `0x084fe180ceed7b33c6235752505a081b1a9fa11c`; ethereum `0x7a0f6f613c27bfa5aeee3f94e1df0eccb589b30e` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257142 | 2 deployments: ethereum `0x0a0e72a4f25a915fd7bbc585bcf61896a2a846c8`; ethereum `0x0f93bac77c3ddd1341d3ecc388c5f8a180818994` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257179 | 2 deployments: ethereum `0xadbba0b62fa156dd0b7429cc48e0edfb0cc25afc`; ethereum `0xf4ff82553beba0a18834d708e4f78e36937c4ddc` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257191 | 2 deployments: ethereum `0xd85d0f4fd18ca9ae5e8b0eba0e65519fbbfd3341`; ethereum `0xef99111e5a16a53b3324e6d466d9fe387ee7a95a` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0aff54afe4e3ef30a2ddaf7668c0864d8f3ec57c`; ethereum `0xa3b5c190586fe73e196f660c35fb7de1231a7473` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257147 | 2 deployments: ethereum `0x2822b8d7db77102937b040ed17ac6785dfd98ce5`; ethereum `0x2a52363a2a0d765b31cb117a8e4d9ce58c2bc749` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257197 | 2 deployments: ethereum `0x440938fcb03d64afe50a8168d4b3cfcc341bfbaa`; ethereum `0xea36763350eb050e4075e743226b4ca370a5fb20` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257189 | 2 deployments: ethereum `0x616af703d5739f2122af48c0d1ce0b37e09381ac`; ethereum `0xd59b3f69945aab4e9174a0eb1cd9af22c4d47613` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257165 | 2 deployments: ethereum `0x6f6904ed406cefb34893054a742c6148e9d681c1`; ethereum `0x7a7fa12527c8bbb936fa59cdaa846cb669a28a1b` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257202 | 2 deployments: ethereum `0x7910cb19a4f5a36caa2bed0af82cbfff2e08805c`; ethereum `0xf783d40476c26d074d6e0ef298cf446a58d0ed1f` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc4eaa82924883a58e39b4dfd6e60e81ee45d419c`; ethereum `0xff8d8a1a38ee927777eb78702005a70c4533ac7a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03b444d7ed10dcb31c37b6e78f4b1475ddcac309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3bdb3922f8baccade41376bd8504854bf563a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1442fecd042d8d42d43a6f21bb844f1cda000294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b2b8cfef0b7b1fad216b55fefeeb0c3349da141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e81b1fe76e3ae040cc5422af58d5fe17e83c848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24e3afdd25692f613c2feff51e26216399cb6f86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257126 | `0x277d26a45add5775f21256159f089769892cea5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bca3e309a851472a2b8ff80f50e8cd581044b47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2da8acd5f4789f290ea1a1a9818fb3e3677bfacd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49ed77e6198e03c7c4800dacedb894ef8fe45444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9b53480d93167727054f3e310c97e41b84556e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aecbb5719a9468cdcfa6673d1ddc1cf72a5a4aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eef904681b83f6056ef009ab0375185e53466ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70c4b2ef6cc3a91eff8b890e4bf02c1de7b4f79e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a0a32f3f39a25572ca581564887b655e39cea7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a646edc4633adba5ec87dedaf3af958e268fe96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x959514b34be9f67fb5593ff52c44d137ae95ac1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae212d8515ba65c719f23dbad6bf73b74d4e4ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6f3d2def3058d4faf07e7104de2f69c638f2bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcc2ea7114e96a44a3c329fa0934749b2f7e305e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd01fd1d6233ad447b397abe12da3fc2567826c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe865c6481f806b26045a855395001bd7a98c518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfe7ca24417d5aa5f7e583281f5c6cac88889cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc931fac3aa45ad35d3403b2ba2a8fe53c6d39eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdc0d1d2af024e65a08c2d75a53aff0c80bce0ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf457076eda979437243ed2d1a53d5c777aadc4c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6615f82df805b1d0e45c0442132d46415727277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbed608db47b14482653728b8c286dffa5226efc` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 205
- Live contracts: 128
- Unknown liveness contracts: 77
- Source-verified contracts: 178
- Currently scope-matched contracts retained as-is: 9
- Classification counts: currently scope matched=9, candidate review=4, contamination review=1, exact address book overlap=58, source verified unclassified=106, unverified unclassified=27

Showing first 200 of 205 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | sUSDeCooldownRequestImpl<br>`0x00a96056c30a22b684ff7a09f4a0afeae426dde2` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x0404ea6f1c89a5032ea2baddfbac20ce11cdf1ce` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x5efe7c9da88568709e98b237d4d946afbda2aa52` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x60dae21944e6c1f4a185d33a217b05bfd647eb79` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x735eddf50ca2371aa48466469c742e684c610f74` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x7b6c960cf185fb27ecb91c174fae065978bedd10` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x908b3921aae4fc17191d382bb61020f2ee6c0e20` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| currently scope matched | TransparentUpgradeableProxy<br>`0xd6dad17d025cddded27305aebab8b277996a6faf` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| currently scope matched | TransparentUpgradeableProxy<br>`0xdbf4fb6c310c1c85d0b41b5dbca06096f2e7099f` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| candidate review | MidasStrategy<br>`0x839d89e87183f4e09cd63abe1f2b0ec8549637ec` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| candidate review | MidasStrategy<br>`0x96ef7de683b8ffb8dc378fb1ea68d8b4e671cf6e` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| candidate review | pUSDeLens<br>`0xc734d636a8334f8d1d5619af3f0102fd5e62eca8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| candidate review | pUSDeLens<br>`0xd23de70dcb3fa5bec90b06bd973c400f1b1b3006` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| contamination review | sNUSDCooldownRequestImpl<br>`0x1545cf03f38100912e672e07120f99fc1a472d20` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | FigureCooldownRequestImpl<br>`0x837ab05bb244c4a6528f1ecc9a2ec04041127da4` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | MidasCooldownRequestImpl<br>`0x6ce2fa93fccd8796351f6c54289e8d9877a12348` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | MidasCooldownRequestImpl<br>`0xb4605c3091eb09a4199bc6993f0e3e0a55f7752e` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | SaturnCooldownRequestImpl<br>`0xfb8db761fd3be2a4255fd74230656654799ac84e` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x011e55d2b28306458e37ca7e997c879bb25a455d` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x03dbbc507360a16f477e53af985261c3ce11dbcc` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x0e90b8971bc0abba696641eee85b39fd986267d7` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x0f93bac77c3ddd1341d3ecc388c5f8a180818994` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x1695a2ff3e45365ab4111d2e1083b2a143b4d171` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x180f7b3b807fa91edb6e864802e4664d6ee8cf88` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x1abc3c3c15a862276d057b2acbcfeab358907990` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x21d616977f355afd0eab7a1d11c9fd58c8579115` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x25138d10837ab0278eb860454e1045f2b92929ab` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x2a52363a2a0d765b31cb117a8e4d9ce58c2bc749` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x2bb416614d740e5313aa64a0e3e419b39e800ec2` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x35bff778d3fc53a561486bf28e761428499232eb` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x39c7e67b25fb14eaec8717b20664c2e35327e6cf` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x3cef2c09c4fad37e9bdd86cd9810c3042fb5de88` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x3d7d6fdf07ee548b939a80edbc9b2256d0cdc003` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x440938fcb03d64afe50a8168d4b3cfcc341bfbaa` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x4c2680ae06a0bb0b091e5ccca13cb03f4f72296e` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x50e850641f43f65bf8fb3a7d0cf082a1d252f47e` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x613d1790d9ba381d27b4071c04380db8ed120e5f` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x616af703d5739f2122af48c0d1ce0b37e09381ac` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x627ea69929212916ec57b1b26d2e1a19f6129b53` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x65a44528e8868166401ea08b549e19552af589db` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x6f6904ed406cefb34893054a742c6148e9d681c1` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x71ec07bba60e854c4b2466068be1c8d5b5788fda` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x7910cb19a4f5a36caa2bed0af82cbfff2e08805c` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x7945e45c2f39be3a0cbf467f3fae982c17cb4bf7` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x7a0f6f613c27bfa5aeee3f94e1df0eccb589b30e` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x80187fd8e22e8951104b4dd5e37037510cf51c9e` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x8071500d237a8da2a2a020419d7bb5f8e2fd184d` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x83c11b746d7c942c49d981055e782e727a0a59e1` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xa436c5dd1ba62c55d112c10cd10e988bb3355102` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xa617763ceb808f43ec9d532cbe8c65819afb846b` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xaf32d44d510b82b64f13602f4a22c6a7fff2b228` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xbe71d21addba5c9aac5b4e006db1715ef1e324be` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xc58d044404d8b14e953c115e67823784dea53d8f` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xcced21d609cac4a272d0c01a8ff4de9cebc40d60` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xce70434ddbadadb785ab391b45ed3b1e8ddeb3f1` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xce7b00d1004d9ed22e702a6a7f5bbdce7297b090` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xd1fc85a0993ecf975aeeaf92c0764af8a182e4e9` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xd2923d964bf05e3eb7528e73bb093f5d2ce32044` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xd8ea6461a616f7e1e0f0d1eeedd15e26c02e7823` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xe4a3a21cf73a8f34fc7f45d7fce99c569abb2a4a` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xe851dea9e36f992590f2e33281665e159a455b66` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xeb205d26e9e605ec82d1c0d652e00037c278714b` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xeb30f897fc0ac646b8130e222aab53cd9bb4f693` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xece4808a7d2076a6eac56333fd6dcfc0eaf28d64` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xeed127d3874b003d91f0bf35ba7de3e9e1c18c75` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xef99111e5a16a53b3324e6d466d9fe387ee7a95a` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xf4c91f24e20ee8ed5eda905e501a1136334c2f27` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xf4ff82553beba0a18834d708e4f78e36937c4ddc` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xf7eb8dfec75c42d2d2247fe76ccaedc59f821688` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xfaa9a0e1db9e22ae3a20b2b58a68dc24d053d066` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xfc807058a352b61aeef6a38e2d0fc3990225e772` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0xff408b4843cdd4a33cd49eb2abe057fe8d71c234` | project_anchor | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Accounting<br>`0x5a8d34d785b5008cce9b9f4aaa0e445f6959cbff` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Accounting<br>`0x6b9ab8ef78ddd5b0a9eef8eb1ca26e656299767b` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Accounting<br>`0x8cabd13af1d45404a484ab22bb65dadf71048643` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Accounting<br>`0xeb97f3084d3817c9e64250b6d43cef28e9dea057` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | AprPairFeed<br>`0x3ea2f376ce175ac39255fa5336bd53cca92bb26c` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | AprPairFeed<br>`0x74188a2a8a5177dd217a8149f1fb1370240fbadc` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | AprPairFeed<br>`0x80f7b35310861f0e3d73ec03c0400d6b7641ecf9` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | AprPairFeed<br>`0xbd184402d691b0f703c718042b044027cd94d5bb` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | AprPairFeed<br>`0xd9d971820f62d59e4f430b07be8014ccebbaaf08` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | AprPairFeed<br>`0xed83dcc8513cbc3478609cc984dab11f668000e9` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | AprPairFeed<br>`0xfb029465c5fe706122f4063c6226dedd96668e8a` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | BeaconProxy<br>`0x0107cf58ab1593347ccd85ab091be4e086abeaa0` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | BeaconProxy<br>`0x08633203642d99af2286b68399bfa3caf7d88087` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | BeaconProxy<br>`0x109f1184fae306c87c7183f97af0db9e6163ab60` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | BeaconProxy<br>`0x7399f54b967c4d6530cf3d64b5bf9bcfd541d780` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | BeaconProxy<br>`0x9c8c72b670f514154242a71d74420383527ad6a8` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | BeaconProxy<br>`0xca864927dc63651ef7b9198d3bf717c209fe22f7` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | BeaconProxy<br>`0xe5e4febbd1c528b3c0a30c2bc678b8c611fa42c8` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | CDOLens<br>`0x38274dd13f90e6577b61d118ff05819112e1bb25` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | DiscreteAccounting<br>`0x628bdd8f6d74160944c5668e7bc38bb85a35872e` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | DiscreteAccounting<br>`0xd6e34b4dae83bf18fdb5c5fd941f0e7c80e6f0c5` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | DiscreteAccounting<br>`0xd8ef4bab3cb044a1d480212e8d909f85c5d4f0b8` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | ERC20Cooldown<br>`0x5a428cafaba7d4fb2a73546d6ddb7512dc75c1a4` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | ERC20Cooldown<br>`0x73dfde427d6f9271a451dd01415c8f26e6292219` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | ERC20Cooldown<br>`0x74c74fd1a910da490b31501a8da449c020a78913` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | ERC20Cooldown<br>`0x940a04880b01b26f00c72c06680a633818925933` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | ERC20Cooldown<br>`0xa14009b8865c1b951511a8750e5e3d02e574db9d` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | ERC20Cooldown<br>`0xc284aeb908b25523437e81da80c24a9cd893a84e` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | ERC20Cooldown<br>`0xe4489ef979dcfc8b54a70b4defdb1d3e2632b272` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | EulerLens<br>`0xc7e74a12fbaa44000c22b67a0827748629b54727` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | FigureStrategy<br>`0x46d68d3f663fd03564a5719a46954a4c41697376` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | pUSDeDepositor<br>`0x28ab384d2e064bda3ebed85ee63c140bdb8ce118` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | pUSDeVault<br>`0x7fe8d7efe89b240b7f2879eebf488152f647b851` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | SaturnStrategy<br>`0xcaf0865334eb135b8c47fca6d9049d5eafe19d9b` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | SharesCooldown<br>`0x25f7ce4cd3b5faef99350a9964ce9356ea58bcae` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | SharesCooldown<br>`0x655c80af21fa35d5d94bd8bb32b9e325e38a1e58` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | SharesCooldown<br>`0x8da07f0050f1a36682164657d72c7fa3606638cf` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | SharesCooldown<br>`0xa9e7e9ddc6c93fa95c66b0b69deddae3d24982b8` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | SharesCooldown<br>`0xb562409ffa131106aa3764b9f1f1700352b01a08` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | sNUSDStrategy<br>`0x4c8fa0dbc1b3021b518df4476e33aebe2c4af269` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | StrataCDO<br>`0x0f8d08037f8d42e0c4664fb3ed00cbce2e448bc1` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | StrataCDO<br>`0x3afc31c41a53c355940d48a0d1c6005d8905d0a9` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | StrataCDO<br>`0x93f45b56eb1e5d2e51f949c74eaa5656154fa358` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | StrataCDO<br>`0x94a95681e7cdc57abe77d656f3ffbe4c8b94c24c` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | StrataCDO<br>`0xb3d4f2c2123f8c3ca85ae7a6d48aa2ef049c79ba` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | StrataCDO<br>`0xecff8b0c1f122392bd6324fd9cf0b0fd19730b94` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | StrataCDO<br>`0xf39e55614e2a8825c94ad7c5ef8babfccdfc4e00` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | sUSDeCooldownRequestImpl<br>`0x3f7041df827d7c5be4b62ca82e0a44996479a2cc` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | sUSDeStrategy<br>`0x2b9796606c8480312a572742c00f606ef4adb107` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | sUSDeStrategy<br>`0x75489eb7bdbc983984c075eeac1feffb1bd40f20` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0x461d16d844599fc68d33ccde736a3807945d0b83` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0x5c8df1867dae4db77903d4aec24a09e81e72a6db` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0x5ddb16613b14071f7158ec7a64044831660b5999` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0x86e638bcf6dfc98361491faa4c6f8ede25cd739e` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0x901443737f2b4d3dde6a33b7137d234ef719209d` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0x96f88f528b224eed97e6924056c791e16530c1c9` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0xb0a808df4328bf17f5e1b2c63c426f0a5a89f62c` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0xb4eea61e674bdf50cace3d2d4ea905fd8644f2b1` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0xb8e946cf071de67fd05e12f7658a762b4e80499e` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0xc71b908fa50ce773c248e3632e46c7192807e767` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0xd4847c94bd3121a511960efb0443baf32c105525` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0xe894055ca1c73648927e225f3ca38ed48e30210b` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0xe91869f96806b480dd61d57e17919068d35ac09c` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0xecbde9f154d26b6daf57ddfdbe239f14174de952` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0xf1115b02a3e59cc575a7f248661cc2c1ec8e3a68` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | Tranche<br>`0xfcda74516bb1fa1d2817c0f67dc306ba08e0d847` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TrancheDepositor<br>`0x127f27d2154c8761d4576cffbbd6d86213d4eb80` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TrancheDepositor<br>`0x22f92940c5d053ccbae47f88fb51752cc04cabaa` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TrancheDepositor<br>`0x6e5a69bfdce6b521df6b2d0d3c49610c8f26b20b` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TrancheDepositor<br>`0x932a1d70a5e1c64a13daa5a60564acf5a2ac0d11` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x0aff54afe4e3ef30a2ddaf7668c0864d8f3ec57c` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x1516d031ccae6c73f4cc106474ae87628a403660` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x1f3aab5b7c5ea8c4ce629b14edb09d68b90a3c57` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x1f5a750ecf519dd2fa1a67c32bcaa144ddc4cdc4` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x32e3333e5a03402aa1b6d45d6852a3a34ee62637` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x4111c7f6bf113bae127c16c05a72566fe57366d0` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x428c24ae7fd64da9a19bcd9917c68c58d733508e` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x5c36c8f79236e9fa215a16b13a6390ddebe309fa` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x7a6ad3753b51cb0161405e93645b5e1f95b6e50f` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x99fe6bb58b52d54991c0b6ef2595839e835f1a20` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xa62b204099277762d1669d283732dcc1b3aa96ce` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xb1f6a2de586f540b070e084770212d7383396d62` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xb8b04fd91adf9cdf2e3be650cd151f83e1db6013` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xcc3777cf87b05935f1824e45fafddf0dd50aab6f` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xd1efb5891baf55ddaaa1889bc91dd0d161ea5651` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xea62e3a2d5fe8d5b66dc8e1bd2405ad23c851f4e` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TwoStepConfigManager<br>`0x084fe180ceed7b33c6235752505a081b1a9fa11c` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TwoStepConfigManager<br>`0x0a0e72a4f25a915fd7bbc585bcf61896a2a846c8` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TwoStepConfigManager<br>`0x452f0e1bd7310e3cfb32383d7c200308e551fe8a` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TwoStepConfigManager<br>`0x663ddb8163db448629045d23c40a411f26caf190` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TwoStepConfigManager<br>`0xadbba0b62fa156dd0b7429cc48e0edfb0cc25afc` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | TwoStepConfigManager<br>`0xd85d0f4fd18ca9ae5e8b0eba0e65519fbbfd3341` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | UnstakeCooldown<br>`0x2822b8d7db77102937b040ed17ac6785dfd98ce5` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | UnstakeCooldown<br>`0x7a7fa12527c8bbb936fa59cdaa846cb669a28a1b` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | UnstakeCooldown<br>`0xa3b5c190586fe73e196f660c35fb7de1231a7473` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | UnstakeCooldown<br>`0xd2843c620d188796b031d805fd869b597f6f3451` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | UnstakeCooldown<br>`0xd59b3f69945aab4e9174a0eb1cd9af22c4d47613` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | UnstakeCooldown<br>`0xea36763350eb050e4075e743226b4ca370a5fb20` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | UnstakeCooldown<br>`0xf783d40476c26d074d6e0ef298cf446a58d0ed1f` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | UpgradeableBeacon<br>`0x0afc250087e5d57e97dfe14942fc7cceb33f8a8a` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | UpgradeableBeacon<br>`0x4889e2a81fba6600bd7e15c5efabb3cf9de3d5da` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | UpgradeableBeacon<br>`0x5d6e12f55a1c10cef361a080107f6ab91ac89cf6` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | UpgradeableBeacon<br>`0x97f7e9def63e55b6eda4a103d23fd9d1cfd62e69` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | UpgradeableBeacon<br>`0x9aacf18744f080888cef4617c29885984a38fc18` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | UpgradeableBeacon<br>`0xc5827b30218813679cbfd524b65f8394270c76a4` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| source verified unclassified | UpgradeableBeacon<br>`0xea5595e883da68c0148b09021853c9da15ee32d7` | non_address_book | unknown | unknown | verified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x03b444d7ed10dcb31c37b6e78f4b1475ddcac309` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x0c3bdb3922f8baccade41376bd8504854bf563a7` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x1442fecd042d8d42d43a6f21bb844f1cda000294` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x1b2b8cfef0b7b1fad216b55fefeeb0c3349da141` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x1e81b1fe76e3ae040cc5422af58d5fe17e83c848` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x24e3afdd25692f613c2feff51e26216399cb6f86` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x2bca3e309a851472a2b8ff80f50e8cd581044b47` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x2da8acd5f4789f290ea1a1a9818fb3e3677bfacd` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x49ed77e6198e03c7c4800dacedb894ef8fe45444` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x4a9b53480d93167727054f3e310c97e41b84556e` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x5aecbb5719a9468cdcfa6673d1ddc1cf72a5a4aa` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x6eef904681b83f6056ef009ab0375185e53466ed` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x70c4b2ef6cc3a91eff8b890e4bf02c1de7b4f79e` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x8a0a32f3f39a25572ca581564887b655e39cea7f` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x8a646edc4633adba5ec87dedaf3af958e268fe96` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0x959514b34be9f67fb5593ff52c44d137ae95ac1b` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0xae212d8515ba65c719f23dbad6bf73b74d4e4ede` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0xb6f3d2def3058d4faf07e7104de2f69c638f2bf7` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0xbcc2ea7114e96a44a3c329fa0934749b2f7e305e` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0xbd01fd1d6233ad447b397abe12da3fc2567826c4` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0xbe865c6481f806b26045a855395001bd7a98c518` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |
| unverified unclassified | UnnamedContract<br>`0xbfe7ca24417d5aa5f7e583281f5c6cac88889cf1` | non_address_book | unknown | unknown | unverified | n/a | `0x296400d87be5cfb63c5025904cd006ebb23d15d5` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits.md](https://docs.strata.markets/technical-documentation/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [index.html](https://certificate.quantstamp.com/full/strata-discrete-accounting/02318e87-e35f-4e96-81ad-192253203d55/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf) | Cyfrin | Audit | 2026-01 | fresh | Direct | contract_name | matched | 5 | 5 | 0 | 1 | high |
| [2025-10-08-cyfrin-strata-tranches-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-10-08-cyfrin-strata-tranches-v2.0.pdf) | Cyfrin | Audit | 2025-10 | fresh | Direct | contract_name | matched | 6 | 4 | 0 | 9 | high |
| [Strata_Tranches_report.pdf](https://github.com/GuardianAudits/Audits/blob/main/Strata/Strata_Tranches_report.pdf) | Guardian | Audit | 2025-10 | fresh | Direct | contract_name | matched | 6 | 4 | 0 | 10 | high |
| [www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b](https://www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b) | Cyfrin | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.papermark.com/view/cmgm9op9b0003l404g395i6a5](https://www.papermark.com/view/cmgm9op9b0003l404g395i6a5) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4595] audits.md — no match: The document is an index page listing audit reports but does not contain specific contract names or a scope section with file paths. No contracts in scope are identifiable.
- [4596] index.html — no match: The provided text is incomplete and does not contain any contract names or audit details.
- [4597] 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf — matched: Audit scope section lists 6 contracts. Date from cover page: January 23, 2026.
- [4600] 2025-10-08-cyfrin-strata-tranches-v2.0.pdf — matched: All 15 contracts listed in the 'Audit Scope' section were extracted. The audit date is explicitly stated on the cover page as 'October 8, 2025'.
- [4601] Strata_Tranches_report.pdf — matched: Extracted 16 contract names from the scope table on page 5. Audit date found on cover page and delivery date.
- [4602] www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b — no match: The provided text is not an audit report; it is a title/header for a product called Papermark. No contracts, scope, or audit date were found.
- [4603] www.papermark.com/view/cmgm9op9b0003l404g395i6a5 — no match: The provided text is not an audit report; it is a title/header for a product called Papermark. No contracts, scope, or audit date were found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | SharesCooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0xeb30f897fc0ac646b8130e222aab53cd9bb4f693` — deployed 2026-05-18 02:21:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x0404ea6f1c89a5032ea2baddfbac20ce11cdf1ce` — deployed 2026-02-05 19:43:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xce70434ddbadadb785ab391b45ed3b1e8ddeb3f1` — deployed 2026-03-30 12:09:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe851dea9e36f992590f2e33281665e159a455b66` — deployed 2026-04-25 01:33:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x83c11b746d7c942c49d981055e782e727a0a59e1` — deployed 2026-04-10 11:14:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2026-02-05 was 13d from audit; next candidate 66d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | sUSDeStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xdbf4fb6c310c1c85d0b41b5dbca06096f2e7099f` — deployed 2025-10-02 23:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | Tranche | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x3d7d6fdf07ee548b939a80edbc9b2256d0cdc003` — deployed 2025-10-02 23:09:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfc807058a352b61aeef6a38e2d0fc3990225e772` — deployed 2026-02-05 20:17:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcced21d609cac4a272d0c01a8ff4de9cebc40d60` — deployed 2026-04-10 11:40:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xeb205d26e9e605ec82d1c0d652e00037c278714b` — deployed 2026-03-30 12:15:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf7eb8dfec75c42d2d2247fe76ccaedc59f821688` — deployed 2026-04-10 11:40:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x35bff778d3fc53a561486bf28e761428499232eb` — deployed 2026-05-18 02:27:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfaa9a0e1db9e22ae3a20b2b58a68dc24d053d066` — deployed 2026-04-25 01:42:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x011e55d2b28306458e37ca7e997c879bb25a455d` — deployed 2026-04-25 01:42:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x627ea69929212916ec57b1b26d2e1a19f6129b53` — deployed 2026-03-30 12:16:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc58d044404d8b14e953c115e67823784dea53d8f` — deployed 2025-10-02 23:03:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4c91f24e20ee8ed5eda905e501a1136334c2f27` — deployed 2026-05-18 02:26:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x65a44528e8868166401ea08b549e19552af589db` — deployed 2026-02-05 20:18:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | StrataCDO | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x613d1790d9ba381d27b4071c04380db8ed120e5f` — deployed 2026-04-10 11:09:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (selected) `0x7b6c960cf185fb27ecb91c174fae065978bedd10` — deployed 2026-02-05 19:29:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x39c7e67b25fb14eaec8717b20664c2e35327e6cf` — deployed 2026-03-30 12:07:11+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xff408b4843cdd4a33cd49eb2abe057fe8d71c234` — deployed 2026-05-18 02:20:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x908b3921aae4fc17191d382bb61020f2ee6c0e20` — deployed 2025-10-02 22:54:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa617763ceb808f43ec9d532cbe8c65819afb846b` — deployed 2026-04-25 01:31:47+03 — liveness: live (proxy_unit_reachable) | deployment-date disambiguation: 2026-02-05 was 13d from audit; next candidate 66d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | Accounting | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x180f7b3b807fa91edb6e864802e4664d6ee8cf88` — deployed 2026-04-25 01:41:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa436c5dd1ba62c55d112c10cd10e988bb3355102` — deployed 2025-10-02 23:02:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x5efe7c9da88568709e98b237d4d946afbda2aa52` — deployed 2026-02-05 19:48:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2026-02-05 was 13d from audit; next candidate 92d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | TwoStepConfigManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x03dbbc507360a16f477e53af985261c3ce11dbcc` — deployed 2026-04-25 02:03:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef99111e5a16a53b3324e6d466d9fe387ee7a95a` — deployed 2026-03-30 13:23:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x60dae21944e6c1f4a185d33a217b05bfd647eb79` — deployed 2026-02-05 20:42:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7a0f6f613c27bfa5aeee3f94e1df0eccb589b30e` — deployed 2026-04-10 11:59:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0f93bac77c3ddd1341d3ecc388c5f8a180818994` — deployed 2025-11-27 16:33:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4ff82553beba0a18834d708e4f78e36937c4ddc` — deployed 2026-05-18 02:35:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2026-02-05 was 13d from audit; next candidate 57d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | AccessControlled | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | AccessControlManager | ambiguous — not counted | AccessControlManager (alternative) `0xd5d18db904fe7df2207c3f9491c5441143e44014` — deployed 2026-05-18 02:20:11+03 — liveness: live (current_address_book_code)<br>AccessControlManager (alternative) `0x6ce1aa78a196af86b752b92a2daee047ab601c36` — deployed 2026-04-25 01:31:11+03 — liveness: live (code_present_context)<br>AccessControlManager (alternative) `0xd61990c228fa5d4223231bf90896899daad399b8` — deployed 2026-03-30 12:06:23+03 — liveness: live (code_present_context)<br>AccessControlManager (alternative) `0x040ef225f885fc1e0d3bd09f3acc02f707f8c74a` — deployed 2026-04-10 11:08:47+03 — liveness: live (current_address_book_code)<br>AccessControlManager (alternative) `0x06e84a0fe0c4bc5c4ee3edb580b32eb4b88203e4` — deployed 2026-02-05 18:39:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | StrataMasterChef | own contract | StrataMasterChef (selected) `0x4f2682b78f37910704fb1aff29358a1da07e022d` — deployed 2025-10-31 17:42:23+03 — liveness: live (current_address_book_code)<br>StrataMasterChef (alternative) `0xb2a3cf69c97afd4de7882e5fee120e4efc77b706` — deployed 2025-08-02 03:07:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-31 was 23d from audit; next candidate 67d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | ERC20Cooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd6dad17d025cddded27305aebab8b277996a6faf` — deployed 2025-10-02 22:55:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4c2680ae06a0bb0b091e5ccca13cb03f4f72296e` — deployed 2026-04-10 11:12:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbe71d21addba5c9aac5b4e006db1715ef1e324be` — deployed 2026-05-18 02:21:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x25138d10837ab0278eb860454e1045f2b92929ab` — deployed 2026-04-25 01:32:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71ec07bba60e854c4b2466068be1c8d5b5788fda` — deployed 2026-03-30 12:08:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1abc3c3c15a862276d057b2acbcfeab358907990` — deployed 2026-02-05 19:42:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-02 was 6d from audit; next candidate 120d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | UnstakeCooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x440938fcb03d64afe50a8168d4b3cfcc341bfbaa` — deployed 2026-05-18 02:21:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2a52363a2a0d765b31cb117a8e4d9ce58c2bc749` — deployed 2026-02-05 19:43:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6f6904ed406cefb34893054a742c6148e9d681c1` — deployed 2026-04-10 11:13:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7910cb19a4f5a36caa2bed0af82cbfff2e08805c` — deployed 2026-03-30 12:08:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x735eddf50ca2371aa48466469c742e684c610f74` — deployed 2025-10-02 22:56:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x616af703d5739f2122af48c0d1ce0b37e09381ac` — deployed 2026-04-25 01:33:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-02 was 6d from audit; next candidate 120d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | CDOComponent | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | Tranche | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x3d7d6fdf07ee548b939a80edbc9b2256d0cdc003` — deployed 2025-10-02 23:09:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfc807058a352b61aeef6a38e2d0fc3990225e772` — deployed 2026-02-05 20:17:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcced21d609cac4a272d0c01a8ff4de9cebc40d60` — deployed 2026-04-10 11:40:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xeb205d26e9e605ec82d1c0d652e00037c278714b` — deployed 2026-03-30 12:15:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf7eb8dfec75c42d2d2247fe76ccaedc59f821688` — deployed 2026-04-10 11:40:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x35bff778d3fc53a561486bf28e761428499232eb` — deployed 2026-05-18 02:27:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfaa9a0e1db9e22ae3a20b2b58a68dc24d053d066` — deployed 2026-04-25 01:42:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x011e55d2b28306458e37ca7e997c879bb25a455d` — deployed 2026-04-25 01:42:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x627ea69929212916ec57b1b26d2e1a19f6129b53` — deployed 2026-03-30 12:16:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc58d044404d8b14e953c115e67823784dea53d8f` — deployed 2025-10-02 23:03:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4c91f24e20ee8ed5eda905e501a1136334c2f27` — deployed 2026-05-18 02:26:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x65a44528e8868166401ea08b549e19552af589db` — deployed 2026-02-05 20:18:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | AprTupleFeed | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | sUSDeCooldownRequestImpl | own contract | sUSDeCooldownRequestImpl (selected) `0x00a96056c30a22b684ff7a09f4a0afeae426dde2` — deployed 2025-10-02 22:56:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | sUSDeStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xdbf4fb6c310c1c85d0b41b5dbca06096f2e7099f` — deployed 2025-10-02 23:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | UD60x18Extra | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | StrataCDO | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x613d1790d9ba381d27b4071c04380db8ed120e5f` — deployed 2026-04-10 11:09:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7b6c960cf185fb27ecb91c174fae065978bedd10` — deployed 2026-02-05 19:29:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x39c7e67b25fb14eaec8717b20664c2e35327e6cf` — deployed 2026-03-30 12:07:11+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xff408b4843cdd4a33cd49eb2abe057fe8d71c234` — deployed 2026-05-18 02:20:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (selected) `0x908b3921aae4fc17191d382bb61020f2ee6c0e20` — deployed 2025-10-02 22:54:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa617763ceb808f43ec9d532cbe8c65819afb846b` — deployed 2026-04-25 01:31:47+03 — liveness: live (proxy_unit_reachable) | deployment-date disambiguation: 2025-10-02 was 6d from audit; next candidate 120d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | YieldAccounting | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | StrataCDOStorage | unmatched — not counted | — | listed in scope | no |
| Strata_Tranches_report.pdf | StrataCDO | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x613d1790d9ba381d27b4071c04380db8ed120e5f` — deployed 2026-04-10 11:09:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7b6c960cf185fb27ecb91c174fae065978bedd10` — deployed 2026-02-05 19:29:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x39c7e67b25fb14eaec8717b20664c2e35327e6cf` — deployed 2026-03-30 12:07:11+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xff408b4843cdd4a33cd49eb2abe057fe8d71c234` — deployed 2026-05-18 02:20:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (selected) `0x908b3921aae4fc17191d382bb61020f2ee6c0e20` — deployed 2025-10-02 22:54:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa617763ceb808f43ec9d532cbe8c65819afb846b` — deployed 2026-04-25 01:31:47+03 — liveness: live (proxy_unit_reachable) | deployment-date disambiguation: 2025-10-02 was 8d from audit; next candidate 118d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | StrataCDOStorage | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | YieldAccounting | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | AccessControlManager | ambiguous — not counted | AccessControlManager (alternative) `0xd5d18db904fe7df2207c3f9491c5441143e44014` — deployed 2026-05-18 02:20:11+03 — liveness: live (current_address_book_code)<br>AccessControlManager (alternative) `0x6ce1aa78a196af86b752b92a2daee047ab601c36` — deployed 2026-04-25 01:31:11+03 — liveness: live (code_present_context)<br>AccessControlManager (alternative) `0xd61990c228fa5d4223231bf90896899daad399b8` — deployed 2026-03-30 12:06:23+03 — liveness: live (code_present_context)<br>AccessControlManager (alternative) `0x040ef225f885fc1e0d3bd09f3acc02f707f8c74a` — deployed 2026-04-10 11:08:47+03 — liveness: live (current_address_book_code)<br>AccessControlManager (alternative) `0x06e84a0fe0c4bc5c4ee3edb580b32eb4b88203e4` — deployed 2026-02-05 18:39:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Strata_Tranches_report.pdf | AccessControlled | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | StrataMasterChef | own contract | StrataMasterChef (selected) `0x4f2682b78f37910704fb1aff29358a1da07e022d` — deployed 2025-10-31 17:42:23+03 — liveness: live (current_address_book_code)<br>StrataMasterChef (alternative) `0xb2a3cf69c97afd4de7882e5fee120e4efc77b706` — deployed 2025-08-02 03:07:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-31 was 21d from audit; next candidate 69d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | UD60x18Extra | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | Strategy | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | AprTupleFeed | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | CDOComponent | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | Tranche | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x3d7d6fdf07ee548b939a80edbc9b2256d0cdc003` — deployed 2025-10-02 23:09:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfc807058a352b61aeef6a38e2d0fc3990225e772` — deployed 2026-02-05 20:17:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcced21d609cac4a272d0c01a8ff4de9cebc40d60` — deployed 2026-04-10 11:40:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xeb205d26e9e605ec82d1c0d652e00037c278714b` — deployed 2026-03-30 12:15:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf7eb8dfec75c42d2d2247fe76ccaedc59f821688` — deployed 2026-04-10 11:40:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x35bff778d3fc53a561486bf28e761428499232eb` — deployed 2026-05-18 02:27:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfaa9a0e1db9e22ae3a20b2b58a68dc24d053d066` — deployed 2026-04-25 01:42:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x011e55d2b28306458e37ca7e997c879bb25a455d` — deployed 2026-04-25 01:42:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x627ea69929212916ec57b1b26d2e1a19f6129b53` — deployed 2026-03-30 12:16:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc58d044404d8b14e953c115e67823784dea53d8f` — deployed 2025-10-02 23:03:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4c91f24e20ee8ed5eda905e501a1136334c2f27` — deployed 2026-05-18 02:26:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x65a44528e8868166401ea08b549e19552af589db` — deployed 2026-02-05 20:18:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Strata_Tranches_report.pdf | IsUSDe | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | sUSDeCooldownRequestImpl | own contract | sUSDeCooldownRequestImpl (selected) `0x00a96056c30a22b684ff7a09f4a0afeae426dde2` — deployed 2025-10-02 22:56:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | sUSDeStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xdbf4fb6c310c1c85d0b41b5dbca06096f2e7099f` — deployed 2025-10-02 23:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | ERC20Cooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd6dad17d025cddded27305aebab8b277996a6faf` — deployed 2025-10-02 22:55:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4c2680ae06a0bb0b091e5ccca13cb03f4f72296e` — deployed 2026-04-10 11:12:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbe71d21addba5c9aac5b4e006db1715ef1e324be` — deployed 2026-05-18 02:21:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x25138d10837ab0278eb860454e1045f2b92929ab` — deployed 2026-04-25 01:32:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71ec07bba60e854c4b2466068be1c8d5b5788fda` — deployed 2026-03-30 12:08:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1abc3c3c15a862276d057b2acbcfeab358907990` — deployed 2026-02-05 19:42:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-02 was 8d from audit; next candidate 118d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | UnstakeCooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x440938fcb03d64afe50a8168d4b3cfcc341bfbaa` — deployed 2026-05-18 02:21:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2a52363a2a0d765b31cb117a8e4d9ce58c2bc749` — deployed 2026-02-05 19:43:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6f6904ed406cefb34893054a742c6148e9d681c1` — deployed 2026-04-10 11:13:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7910cb19a4f5a36caa2bed0af82cbfff2e08805c` — deployed 2026-03-30 12:08:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x735eddf50ca2371aa48466469c742e684c610f74` — deployed 2025-10-02 22:56:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x616af703d5739f2122af48c0d1ce0b37e09381ac` — deployed 2026-04-25 01:33:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-02 was 8d from audit; next candidate 118d; normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x040ef225f885fc1e0d3bd09f3acc02f707f8c74a` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x06e84a0fe0c4bc5c4ee3edb580b32eb4b88203e4` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ce1aa78a196af86b752b92a2daee047ab601c36` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd5d18db904fe7df2207c3f9491c5441143e44014` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd61990c228fa5d4223231bf90896899daad399b8` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x180f7b3b807fa91edb6e864802e4664d6ee8cf88` | Accounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5a8d34d785b5008cce9b9f4aaa0e445f6959cbff` | Accounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1695a2ff3e45365ab4111d2e1083b2a143b4d171` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x21d616977f355afd0eab7a1d11c9fd58c8579115` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2bb416614d740e5313aa64a0e3e419b39e800ec2` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbd184402d691b0f703c718042b044027cd94d5bb` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd1fc85a0993ecf975aeeaf92c0764af8a182e4e9` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xece4808a7d2076a6eac56333fd6dcfc0eaf28d64` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b7258e8cc89894b56f757bc886b430d0c018bf0` | ConstantOracleAprPairProvider | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd7bac4d57a2cae923b3dc7dd21398ed707b9eadc` | ConstantOracleAprPairProvider | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0e90b8971bc0abba696641eee85b39fd986267d7` | DiscreteAccounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x628bdd8f6d74160944c5668e7bc38bb85a35872e` | DiscreteAccounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf32d44d510b82b64f13602f4a22c6a7fff2b228` | DiscreteAccounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1abc3c3c15a862276d057b2acbcfeab358907990` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x25138d10837ab0278eb860454e1045f2b92929ab` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c2680ae06a0bb0b091e5ccca13cb03f4f72296e` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5a428cafaba7d4fb2a73546d6ddb7512dc75c1a4` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbe71d21addba5c9aac5b4e006db1715ef1e324be` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x837ab05bb244c4a6528f1ecc9a2ec04041127da4` | FigureCooldownRequestImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x46d68d3f663fd03564a5719a46954a4c41697376` | FigureStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ce2fa93fccd8796351f6c54289e8d9877a12348` | MidasCooldownRequestImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb4605c3091eb09a4199bc6993f0e3e0a55f7752e` | MidasCooldownRequestImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8071500d237a8da2a2a020419d7bb5f8e2fd184d` | MidasStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96ef7de683b8ffb8dc378fb1ea68d8b4e671cf6e` | MidasStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4bcc15f6c0c63e511a1b55a7625f311a93854be8` | SaturnAprPairProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfb8db761fd3be2a4255fd74230656654799ac84e` | SaturnCooldownRequestImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce7b00d1004d9ed22e702a6a7f5bbdce7297b090` | SaturnStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x25f7ce4cd3b5faef99350a9964ce9356ea58bcae` | SharesCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8da07f0050f1a36682164657d72c7fa3606638cf` | SharesCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa9e7e9ddc6c93fa95c66b0b69deddae3d24982b8` | SharesCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb562409ffa131106aa3764b9f1f1700352b01a08` | SharesCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12db794342437aaa93970c106f2b5d5dfe2f9eab` | sNUSDAprPairProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3cef2c09c4fad37e9bdd86cd9810c3042fb5de88` | sNUSDStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f8d08037f8d42e0c4664fb3ed00cbce2e448bc1` | StrataCDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x39c7e67b25fb14eaec8717b20664c2e35327e6cf` | StrataCDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x93f45b56eb1e5d2e51f949c74eaa5656154fa358` | StrataCDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa617763ceb808f43ec9d532cbe8c65819afb846b` | StrataCDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb2a3cf69c97afd4de7882e5fee120e4efc77b706` | StrataMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x011e55d2b28306458e37ca7e997c879bb25a455d` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35bff778d3fc53a561486bf28e761428499232eb` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3d7d6fdf07ee548b939a80edbc9b2256d0cdc003` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x461d16d844599fc68d33ccde736a3807945d0b83` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x65a44528e8868166401ea08b549e19552af589db` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96f88f528b224eed97e6924056c791e16530c1c9` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb4eea61e674bdf50cace3d2d4ea905fd8644f2b1` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb8e946cf071de67fd05e12f7658a762b4e80499e` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc58d044404d8b14e953c115e67823784dea53d8f` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc71b908fa50ce773c248e3632e46c7192807e767` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcced21d609cac4a272d0c01a8ff4de9cebc40d60` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4c91f24e20ee8ed5eda905e501a1136334c2f27` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x127f27d2154c8761d4576cffbbd6d86213d4eb80` | TrancheDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x22f92940c5d053ccbae47f88fb51752cc04cabaa` | TrancheDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x50e850641f43f65bf8fb3a7d0cf082a1d252f47e` | TrancheDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x03dbbc507360a16f477e53af985261c3ce11dbcc` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x084fe180ceed7b33c6235752505a081b1a9fa11c` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0a0e72a4f25a915fd7bbc585bcf61896a2a846c8` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xadbba0b62fa156dd0b7429cc48e0edfb0cc25afc` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd85d0f4fd18ca9ae5e8b0eba0e65519fbbfd3341` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2822b8d7db77102937b040ed17ac6785dfd98ce5` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x440938fcb03d64afe50a8168d4b3cfcc341bfbaa` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x616af703d5739f2122af48c0d1ce0b37e09381ac` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6f6904ed406cefb34893054a742c6148e9d681c1` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7910cb19a4f5a36caa2bed0af82cbfff2e08805c` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 118 |
| upstream | 3 |
| standard_library | 2 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 17 own (13 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 15 unmatched
- Matched-own operational status: 17 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=4
- Match method counts: temporal_name=12, unique_name=5

Zero-match audit list:

- [4595] audits.md
- [4596] index.html
- [4602] www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b
- [4603] www.papermark.com/view/cmgm9op9b0003l404g395i6a5

Fork inheritance lineage and inherited audits are included when available.
