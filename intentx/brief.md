# Agentic Audit Brief: IntentX

## Project Overview

- Project: IntentX (`intentx`)
- Website: [https://intentx.io](https://intentx.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:22.097Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, base, mantle
- Contract surface: 106 unique implementations (197 raw deployments)
- DeFi Llama TVL: $5,673,214.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 78 project-authored contract(s) across 3 chain(s); 7 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 8 common project-authored base contract(s) (accessibility, oftcore, oapp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 339; live-surface contracts included: 153 (101 live, 52 unknown).
- Excluded by liveness: 186 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/57 (0.0%)
- Deployed-live implementations: 62 of 106 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/62
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 44
- Unique implementations: 106
- Raw deployments: 197
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CallProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5640af...c91cb1`](./contracts/arbitrum-42161/0x5640afec6252b0e25b431f28a1fd1285c3c91cb1/); arbitrum `0xb7a912...b3e866` | ⚠️ Unaudited |
| CarbonFeeRebate | unknown | base | n/a | 2 deployments: base [`0x6c81c0...157164`](./contracts/base-8453/0x6c81c0efa63cb8c705fb98d79ad88852c5157164/); base `0xcb420c...ad1357` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0xb49cae...3362be`](./contracts/base-8453/0xb49cae38c96f6425ce4a46e8220549c6a13362be/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | mantle | n/a | [`0xef23f5...afd7a2`](./contracts/mantle-5000/0xef23f554af7fa7421af1ff53f2b4838c05afd7a2/) | ⚠️ Unaudited |
| ICOClaimXINTX | unknown | mantle | n/a | 2 deployments: mantle [`0x229795...3c2927`](./contracts/mantle-5000/0x229795d6d3f3cb11dd0bb7973038fd2f733c2927/); mantle `0xd4e5aa...165c10` | ⚠️ Unaudited |
| IntentXAffiliates | unknown | mantle | n/a | 2 deployments: mantle [`0x6ed953...6c5ff6`](./contracts/mantle-5000/0x6ed953a7124d77258a6e43a342615d61fb6c5ff6/); mantle `0x98f632...a158cf` | ⚠️ Unaudited |
| IntentXFeeRebate | unknown | mantle | n/a | 2 deployments: mantle [`0x01a97c...6a3ab9`](./contracts/mantle-5000/0x01a97c03fce8dce233a269678fb5f9ba6c6a3ab9/); mantle `0xf5a10b...1964dc` | ⚠️ Unaudited |
| IntentXMinigame | unknown | mantle | n/a | 2 deployments: mantle [`0x433be5...9d579d`](./contracts/mantle-5000/0x433be520b115d771d6da17a573fdcb01d69d579d/); mantle `0x55477c...8d627d` | ⚠️ Unaudited |
| IntxOFT | unknown | base | n/a | [`0x7d2718...4fa342`](./contracts/base-8453/0x7d27187eb33a7b1d99258ff222633670f84fa342/) | ⚠️ Unaudited |
| IntxOFTAdapter | adapter | mantle | n/a | [`0x5d55e5...acc3c2`](./contracts/mantle-5000/0x5d55e52e32266459ecf09684f0abaab6c2acc3c2/) | ⚠️ Unaudited |
| IntxToken | unknown | mantle | n/a | 2 deployments: mantle [`0x1cb4b1...e2830c`](./contracts/mantle-5000/0x1cb4b1dcee1ebde41c272c7c14bf55d565e2830c/); mantle `0x4b7f28...f5a877` | ⚠️ Unaudited |
| LiquidationFacet | unknown | base | n/a | [`0x91cf2d...2dbe43`](./contracts/base-8453/0x91cf2d8ed503ec52768999aa6d8dbea6e52dbe43/) | ⚠️ Unaudited |
| MultiAccount | unknown | mantle | n/a | 3 deployments: mantle [`0x359ffa...6dd262`](./contracts/mantle-5000/0x359ffa5a49c8ee0e6a481c4a698f90fd896dd262/); mantle `0xd6ee1f...f02a5e`; mantle `0xfa8a07...2f369e` | ⚠️ Unaudited |
| MultiAccount | unknown | mantle | n/a | 2 deployments: mantle [`0x829af7...ad8373`](./contracts/mantle-5000/0x829af7dda2538b78acf64babe683a7eb34ad8373/); mantle `0xecbd07...26e456` | ⚠️ Unaudited |
| MultiAccount | unknown | base | n/a | 2 deployments: base [`0x39ecc7...e95314`](./contracts/base-8453/0x39ecc772f6073242d6fd1646d81fa2d87fe95314/); base `0xc38342...ffb47d` | ⚠️ Unaudited |
| MultiAccount | unknown | base | n/a | 2 deployments: base [`0x54a870...1bb887`](./contracts/base-8453/0x54a870306b2ed367d135c43f2c2dafa9061bb887/); base `0x921dd8...b53fe1` | ⚠️ Unaudited |
| MultiAccount | unknown | base | n/a | 2 deployments: base [`0x934152...4f1c53`](./contracts/base-8453/0x9341529a0cf73d6165ed98e5705d8e54f74f1c53/); base `0xbc0292...b4f379` | ⚠️ Unaudited |
| MultiAccount | core_logic | base | n/a | 3 deployments: base [`0xa78429...2926c7`](./contracts/base-8453/0xa784292b2dae2922303a712e039159fe452926c7/); base `0xbcf806...b46e84`; base `0xe33374...4ba7b0` | ⚠️ Unaudited |
| MultiAccount | unknown | base | n/a | 2 deployments: base [`0xb95d17...5be7a2`](./contracts/base-8453/0xb95d177398916b2b1fc1e648717e85115c5be7a2/); base `0xc3ecd8...6f5896` | ⚠️ Unaudited |
| MultiAccount | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x141269...f20109`](./contracts/arbitrum-42161/0x141269e29a770644c34e05b127ab621511f20109/); arbitrum `0x1cb4b1...e2830c` | ⚠️ Unaudited |
| MultiAccount | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x152a8e...53e6d6`](./contracts/arbitrum-42161/0x152a8e045a30f350f8784a20b6d8f0f39353e6d6/); arbitrum `0x45850f...c06715`; arbitrum `0x6a3c63...6602d6`; arbitrum `0xc25853...488309` | ⚠️ Unaudited |
| MultiAccount | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x48d0d5...22508b`](./contracts/arbitrum-42161/0x48d0d59b3660f07f85f5b87b65567ed1f322508b/); arbitrum `0xbc0292...b4f379` | ⚠️ Unaudited |
| MultiAccount | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x627324...caafe4`](./contracts/arbitrum-42161/0x6273242a7e88b3de90822b31648c212215caafe4/); arbitrum `0xb057dc...05d99c` | ⚠️ Unaudited |
| MultiCall | unknown | mantle | n/a | [`0xfb515c...b57919`](./contracts/mantle-5000/0xfb515c78f799e1b71c7153914583645f04b57919/) | ⚠️ Unaudited |
| MultiCall | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1224b4...17cc75`](./contracts/arbitrum-42161/0x1224b47f1b68f2bc244a1bc3ccd094b88c17cc75/); arbitrum `0x94e313...e187cc` | ⚠️ Unaudited |
| NoxPartyB | unknown | base | n/a | 2 deployments: base [`0x324de1...fd330d`](./contracts/base-8453/0x324de1e7078b9809b4c17849f3ddbf39befd330d/); base `0xabf0c8...4ad914` | ⚠️ Unaudited |
| NoxPartyB | unknown | base | n/a | 2 deployments: base [`0x9f20ba...65bad5`](./contracts/base-8453/0x9f20bad77cca97f2f96de88b146603ca3f65bad5/); base `0xdd409c...e0089d` | ⚠️ Unaudited |
| NoxPartyB | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3c3de3...062855`](./contracts/arbitrum-42161/0x3c3de3739d1c8092ad378e44220829eebe062855/); arbitrum `0xd600a4...70e574` | ⚠️ Unaudited |
| OnChainSymmioVaultV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x40423e...9cd1ae`](./contracts/arbitrum-42161/0x40423ef1fdcc21738a9031d0295b7ce6739cd1ae/); arbitrum `0x68ef30...446ac9` | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | 12 deployments: mantle `0x2d2463...453188`; mantle `0x3adc81...ae6cde`; mantle `0x4b9693...d65865`; base `0x48d0d5...22508b`; base `0x55df51...9bee49`; base `0xd0ecc7...5458e7`; base `0xf2b9d5...e77637`; arbitrum [`0x0392e9...1d7375`](./contracts/arbitrum-42161/0x0392e9cf758cd1566dab547fdaf3ddcfed1d7375/); arbitrum `0x2d2463...453188`; arbitrum `0x433be5...9d579d`; arbitrum `0x9f6d3e...83399e`; arbitrum `0xb5317e...b7d112` | ⚠️ Unaudited |
| RasaOffChainSymmioDepositor | unknown | mantle | n/a | 2 deployments: mantle [`0x578489...f37ea3`](./contracts/mantle-5000/0x5784899b4f5e0589394a9fcf52b2423de2f37ea3/); mantle `0xf8c1cb...72b9bb` | ⚠️ Unaudited |
| RasaOnChainSymmioDepositor | unknown | mantle | n/a | 2 deployments: mantle [`0x1f050a...62c320`](./contracts/mantle-5000/0x1f050a434763de043363adc58cabcd8f3662c320/); mantle `0xb814fd...04f6f0` | ⚠️ Unaudited |
| SolverVault | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x219031...9d53e9`](./contracts/arbitrum-42161/0x2190315d8497b721d28401e4acb268496c9d53e9/); arbitrum `0x319f10...324fa6`; arbitrum `0x7d2718...4fa342`; arbitrum `0x8e4226...94587c`; arbitrum `0x98058a...3f59f1`; arbitrum `0xadbb55...009179`; arbitrum `0xb86b96...52d73c`; arbitrum `0xbb62c3...1373d1` | ⚠️ Unaudited |
| StakedINTX | unknown | mantle | n/a | 2 deployments: mantle [`0x255472...845362`](./contracts/mantle-5000/0x2554727881c5fb22965c6fcb7c6042b367845362/); mantle `0xf8be57...65e9b6` | ⚠️ Unaudited |
| SymmExecutorUpgradeable | unknown | mantle | n/a | 3 deployments: mantle [`0xb90fce...c267bf`](./contracts/mantle-5000/0xb90fce52618ca0f46bd5f750978be6874fc267bf/); mantle `0xeb02a6...19db05`; mantle `0xf7b6d0...a12bcf` | ⚠️ Unaudited |
| SymmExecutorUpgradeable | unknown | base | n/a | 6 deployments: base [`0x1c529c...0686a4`](./contracts/base-8453/0x1c529cf1392cde198b5cdac11c7e50780a0686a4/); base `0x25d757...983f0a`; base `0x2d36f5...ee5eca`; base `0x3c3de3...062855`; base `0x433be5...9d579d`; base `0xbf41d1...8155d5` | ⚠️ Unaudited |
| SymmExecutorUpgradeable | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x19e3ef...622dbe`](./contracts/arbitrum-42161/0x19e3efce03fecc63af0fc8769ee7799551622dbe/); arbitrum `0xee93f2...b7a63b`; arbitrum `0xf7b6d0...a12bcf` | ⚠️ Unaudited |
| SymmioFeeDistributor | unknown | mantle | n/a | 4 deployments: mantle [`0x471806...8a1a4a`](./contracts/mantle-5000/0x471806397f95a1184c623465c6f79ee3188a1a4a/); mantle `0x488290...b72e85`; mantle `0x8952f2...1aeb3c`; mantle `0xa2c779...b29c19` | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | base | n/a | [`0x127965...1d4f99`](./contracts/base-8453/0x1279655feed886f44958733bbb6b26252d1d4f99/) | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x0532c5...e6fb22`](./contracts/arbitrum-42161/0x0532c5008a9214e669c41ce782c0e64095e6fb22/); arbitrum `0x8452ed...258538` | ⚠️ Unaudited |
| SymmioFeeDistributor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x196a2b...f0c1c1`](./contracts/arbitrum-42161/0x196a2bf382f55e53cc555aa018aebab32bf0c1c1/); arbitrum `0x940546...2375b5` | ⚠️ Unaudited |
| SymmioFeeDistributor | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x59b00d...4608f4`](./contracts/arbitrum-42161/0x59b00d7097b7952ec9180590b3bd43c39a4608f4/); arbitrum `0x96af9f...c8f74b`; arbitrum `0xaf2abc...67989a`; arbitrum `0xb71954...086ed8` | ⚠️ Unaudited |
| SymmioPartyB | unknown | mantle | n/a | 2 deployments: mantle [`0x504423...d56648`](./contracts/mantle-5000/0x5044238ea045585c704dc2c6387d66d29ed56648/); mantle `0x50e88c...e0d5ba` | ⚠️ Unaudited |
| SymmioPartyB | unknown | base | n/a | 3 deployments: base [`0x1bd0c5...0ed424`](./contracts/base-8453/0x1bd0c5557f63921ad7553b7ad5cce1585a0ed424/); base `0x4a23e0...16404e`; base `0xb3ccac...93499c` | ⚠️ Unaudited |
| SymmioPartyB | unknown | base | n/a | [`0x9206d9...a23c59`](./contracts/base-8453/0x9206d9d8f7f1b212a4183827d20de32af3a23c59/) | ⚠️ Unaudited |
| SymmioPartyB | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0b5b3f...40f5f5`](./contracts/arbitrum-42161/0x0b5b3f9b727656a254ec1203d8b2a86b4540f5f5/); arbitrum `0x556f25...22ed3a`; arbitrum `0xe72284...a94a6a` | ⚠️ Unaudited |
| SymmioPartyB | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0eb92f...fc2dec`](./contracts/arbitrum-42161/0x0eb92f476a9a74b15a9fdcc6c252b2013afc2dec/); arbitrum `0x1347a8...8cf8d1` | ⚠️ Unaudited |
| TestToken | unknown | base | n/a | 2 deployments: base [`0x3256de...807b66`](./contracts/base-8453/0x3256de92e1e2f588950b009346f5c77d07807b66/); base `0xade616...873fa9` | ⚠️ Unaudited |
| TradingCompetitionClaim | unknown | mantle | n/a | 2 deployments: mantle [`0x490249...9ed8e2`](./contracts/mantle-5000/0x49024995376c4218348c5c9f578f8c80a99ed8e2/); mantle `0x839d23...0c2be7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x0f5af1...1e83b2`](./contracts/mantle-5000/0x0f5af1ab88350cc62875e7c57ebfbb95091e83b2/); mantle `0xc7e3f4...1ce20c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x327945...8e7022`](./contracts/mantle-5000/0x327945c6acc9d554594666b5e9ebd29a588e7022/); mantle `0xec9190...e47d22` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 4 deployments: mantle [`0x4318fd...19b672`](./contracts/mantle-5000/0x4318fd1edb3ed2b5e018b00fe1b886e85719b672/); mantle `0x77263f...477641`; mantle `0xb5317e...b7d112`; mantle `0xfaf5c6...b79aea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x4fad27...b50d1a`](./contracts/mantle-5000/0x4fad271896eaf7228da1d7c23efb63cb62b50d1a/); mantle `0xbea144...a0dfd2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 3 deployments: mantle [`0x6d0be4...d8e7f5`](./contracts/mantle-5000/0x6d0be4100407b2d198a253ec88efe75e1cd8e7f5/); mantle `0x7495e8...e082e9`; mantle `0x8e9342...18ea82` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x73c9c5...cf7529`](./contracts/mantle-5000/0x73c9c5c09435886e58ba0a4265702cc607cf7529/); mantle `0xa6e69f...abfa90` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x703c49...aaddb6`](./contracts/base-8453/0x703c4927945aac2b5a76f4c1d85bc85e6faaddb6/); base `0xa6b670...619e56` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x78c985...905091`](./contracts/base-8453/0x78c98512ba92b8f27557b8861c811343f5905091/); base `0xc9f8a5...d8da21` | ⚠️ Unaudited |
| VestingXINTX | unknown | mantle | n/a | 3 deployments: mantle [`0x083e44...f6366f`](./contracts/mantle-5000/0x083e449ac8ddd874efb2d9315301b8188df6366f/); mantle `0x0863c4...508146`; mantle `0x805045...1186dc` | ⚠️ Unaudited |
| VestingXINTX | unknown | mantle | n/a | 3 deployments: mantle [`0x1c529c...0686a4`](./contracts/mantle-5000/0x1c529cf1392cde198b5cdac11c7e50780a0686a4/); mantle `0x388e7a...e55d60`; mantle `0xb98b24...4120cc` | ⚠️ Unaudited |
| VestingXINTX | unknown | mantle | n/a | 2 deployments: mantle [`0xb33b67...dea44b`](./contracts/mantle-5000/0xb33b67be2774b6ed634ffd041b6900f5e1dea44b/); mantle `0xd012ec...7a5040` | ⚠️ Unaudited |
| VestingXINTXAdv | unknown | mantle | n/a | 2 deployments: mantle [`0x5a2426...e97edf`](./contracts/mantle-5000/0x5a242601270389ce307de3ce2283f7a4b7e97edf/); mantle `0xef7964...671ef8` | ⚠️ Unaudited |
| XIntentXTraderIncentives | unknown | mantle | n/a | 2 deployments: mantle [`0x316cee...da653c`](./contracts/mantle-5000/0x316cee10dd877c4b503ad50afbbc216b08da653c/); mantle `0xd1eb4a...b1b95f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | mantle | n/a | `0x01114b...a4fb59` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1221da...550586` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x349993...c4d2b6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3683f0...214a0e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x39f64b...dfc024` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x40423e...9cd1ae` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x41ad9f...e31d60` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4458a9...72fad5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x458d17...5b3f27` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x46c397...563656` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4951f0...bede3d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4d8835...57273c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x5996d8...f924b3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6d8a38...81362a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x78253f...11b4f6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7d8691...928de0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x93c9bf...edbbb3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9c4011...2a8ad5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb86b96...52d73c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc1680d...7b7b78` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xca8e34...0d7bfb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd008af...adb5d0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd6e116...1452ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x141269...f20109` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2d2463...453188` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc4a63...5fa725` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6118a...95767a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3d7d3...a2477c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x00e158...7a33f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09f917...da80d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c6b14...3420ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2a26a2...273284` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4a17c9...d2496c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4cf142...c22185` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x628233...e0a7a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63dc3c...a892e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x68e300...554cff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8bf928...36d3af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x90d563...392a9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x940ac5...ef77fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c1d3b...3bdd1e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2a1fc...f045b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe067ab...c423a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0df46...1c76dd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audits.sherlock.xyz/contests/85](https://audits.sherlock.xyz/contests/85) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [index.html](https://certificate.quantstamp.com/full/intent-x/a195e62f-30b6-4219-b9e5-42af8a9e2fd5/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x5640af...c91cb1`](./contracts/arbitrum-42161/0x5640afec6252b0e25b431f28a1fd1285c3c91cb1/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6c81c0...157164`](./contracts/base-8453/0x6c81c0efa63cb8c705fb98d79ad88852c5157164/) | CarbonFeeRebate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x229795...3c2927`](./contracts/mantle-5000/0x229795d6d3f3cb11dd0bb7973038fd2f733c2927/) | ICOClaimXINTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x6ed953...6c5ff6`](./contracts/mantle-5000/0x6ed953a7124d77258a6e43a342615d61fb6c5ff6/) | IntentXAffiliates | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x01a97c...6a3ab9`](./contracts/mantle-5000/0x01a97c03fce8dce233a269678fb5f9ba6c6a3ab9/) | IntentXFeeRebate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x433be5...9d579d`](./contracts/mantle-5000/0x433be520b115d771d6da17a573fdcb01d69d579d/) | IntentXMinigame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7d2718...4fa342`](./contracts/base-8453/0x7d27187eb33a7b1d99258ff222633670f84fa342/) | IntxOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5d55e5...acc3c2`](./contracts/mantle-5000/0x5d55e52e32266459ecf09684f0abaab6c2acc3c2/) | IntxOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1cb4b1...e2830c`](./contracts/mantle-5000/0x1cb4b1dcee1ebde41c272c7c14bf55d565e2830c/) | IntxToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x91cf2d...2dbe43`](./contracts/base-8453/0x91cf2d8ed503ec52768999aa6d8dbea6e52dbe43/) | LiquidationFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x359ffa...6dd262`](./contracts/mantle-5000/0x359ffa5a49c8ee0e6a481c4a698f90fd896dd262/) | MultiAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x829af7...ad8373`](./contracts/mantle-5000/0x829af7dda2538b78acf64babe683a7eb34ad8373/) | MultiAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x39ecc7...e95314`](./contracts/base-8453/0x39ecc772f6073242d6fd1646d81fa2d87fe95314/) | MultiAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x54a870...1bb887`](./contracts/base-8453/0x54a870306b2ed367d135c43f2c2dafa9061bb887/) | MultiAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x934152...4f1c53`](./contracts/base-8453/0x9341529a0cf73d6165ed98e5705d8e54f74f1c53/) | MultiAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa78429...2926c7`](./contracts/base-8453/0xa784292b2dae2922303a712e039159fe452926c7/) | MultiAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb95d17...5be7a2`](./contracts/base-8453/0xb95d177398916b2b1fc1e648717e85115c5be7a2/) | MultiAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x141269...f20109`](./contracts/arbitrum-42161/0x141269e29a770644c34e05b127ab621511f20109/) | MultiAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x152a8e...53e6d6`](./contracts/arbitrum-42161/0x152a8e045a30f350f8784a20b6d8f0f39353e6d6/) | MultiAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x48d0d5...22508b`](./contracts/arbitrum-42161/0x48d0d59b3660f07f85f5b87b65567ed1f322508b/) | MultiAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x627324...caafe4`](./contracts/arbitrum-42161/0x6273242a7e88b3de90822b31648c212215caafe4/) | MultiAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x324de1...fd330d`](./contracts/base-8453/0x324de1e7078b9809b4c17849f3ddbf39befd330d/) | NoxPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9f20ba...65bad5`](./contracts/base-8453/0x9f20bad77cca97f2f96de88b146603ca3f65bad5/) | NoxPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3c3de3...062855`](./contracts/arbitrum-42161/0x3c3de3739d1c8092ad378e44220829eebe062855/) | NoxPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x40423e...9cd1ae`](./contracts/arbitrum-42161/0x40423ef1fdcc21738a9031d0295b7ce6739cd1ae/) | OnChainSymmioVaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x578489...f37ea3`](./contracts/mantle-5000/0x5784899b4f5e0589394a9fcf52b2423de2f37ea3/) | RasaOffChainSymmioDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1f050a...62c320`](./contracts/mantle-5000/0x1f050a434763de043363adc58cabcd8f3662c320/) | RasaOnChainSymmioDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x219031...9d53e9`](./contracts/arbitrum-42161/0x2190315d8497b721d28401e4acb268496c9d53e9/) | SolverVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x255472...845362`](./contracts/mantle-5000/0x2554727881c5fb22965c6fcb7c6042b367845362/) | StakedINTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xb90fce...c267bf`](./contracts/mantle-5000/0xb90fce52618ca0f46bd5f750978be6874fc267bf/) | SymmExecutorUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1c529c...0686a4`](./contracts/base-8453/0x1c529cf1392cde198b5cdac11c7e50780a0686a4/) | SymmExecutorUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19e3ef...622dbe`](./contracts/arbitrum-42161/0x19e3efce03fecc63af0fc8769ee7799551622dbe/) | SymmExecutorUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x471806...8a1a4a`](./contracts/mantle-5000/0x471806397f95a1184c623465c6f79ee3188a1a4a/) | SymmioFeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x127965...1d4f99`](./contracts/base-8453/0x1279655feed886f44958733bbb6b26252d1d4f99/) | SymmioFeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0532c5...e6fb22`](./contracts/arbitrum-42161/0x0532c5008a9214e669c41ce782c0e64095e6fb22/) | SymmioFeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x196a2b...f0c1c1`](./contracts/arbitrum-42161/0x196a2bf382f55e53cc555aa018aebab32bf0c1c1/) | SymmioFeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x59b00d...4608f4`](./contracts/arbitrum-42161/0x59b00d7097b7952ec9180590b3bd43c39a4608f4/) | SymmioFeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x504423...d56648`](./contracts/mantle-5000/0x5044238ea045585c704dc2c6387d66d29ed56648/) | SymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1bd0c5...0ed424`](./contracts/base-8453/0x1bd0c5557f63921ad7553b7ad5cce1585a0ed424/) | SymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9206d9...a23c59`](./contracts/base-8453/0x9206d9d8f7f1b212a4183827d20de32af3a23c59/) | SymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b5b3f...40f5f5`](./contracts/arbitrum-42161/0x0b5b3f9b727656a254ec1203d8b2a86b4540f5f5/) | SymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0eb92f...fc2dec`](./contracts/arbitrum-42161/0x0eb92f476a9a74b15a9fdcc6c252b2013afc2dec/) | SymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3256de...807b66`](./contracts/base-8453/0x3256de92e1e2f588950b009346f5c77d07807b66/) | TestToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x490249...9ed8e2`](./contracts/mantle-5000/0x49024995376c4218348c5c9f578f8c80a99ed8e2/) | TradingCompetitionClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x083e44...f6366f`](./contracts/mantle-5000/0x083e449ac8ddd874efb2d9315301b8188df6366f/) | VestingXINTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1c529c...0686a4`](./contracts/mantle-5000/0x1c529cf1392cde198b5cdac11c7e50780a0686a4/) | VestingXINTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xb33b67...dea44b`](./contracts/mantle-5000/0xb33b67be2774b6ed634ffd041b6900f5e1dea44b/) | VestingXINTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5a2426...e97edf`](./contracts/mantle-5000/0x5a242601270389ce307de3ce2283f7a4b7e97edf/) | VestingXINTXAdv | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x316cee...da653c`](./contracts/mantle-5000/0x316cee10dd877c4b503ad50afbbc216b08da653c/) | XIntentXTraderIncentives | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2415] audits.sherlock.xyz/contests/85
- [2416] index.html

Fork inheritance lineage and inherited audits are included when available.
