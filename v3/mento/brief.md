# Agentic Audit Brief: Mento

## Project Overview

- Project: Mento (`mento`)
- Website: [https://www.mento.org/](https://www.mento.org/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:22.935Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: celo
- Contract surface: 161 unique implementations (215 raw deployments)
- DeFi Llama TVL: $13,334,653.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Algo-Stables. Structurally: 70 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 12 common project-authored base contract(s) (usingregistry, proxy, usingprecompiles). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 278; live-surface contracts included: 202 (88 live, 114 unknown).
- Excluded by liveness: 76 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 22/54 (40.7%)
- Deployed-live implementations: 55 of 161 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 22/63
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 98
- Unique implementations: 161
- Raw deployments: 215
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 3 fresh, 3 aging, 9 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 23 match-unverified
- Tier 1 coverage: 35.2% (ChainSecurity, Cyfrin, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 14 | 22.2% | 2026-02 |
| OpenZeppelin | Tier 1 | 5 | 7.9% | 2021-02 |
| 0xMacro | Tier 2 | 3 | 4.8% | 2024-03 |
| Cyfrin | Tier 1 | 1 | 1.6% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Accounts | unknown | celo | n/a | 4 deployments: celo [`0x0fe151...67ef53`](./contracts/celo-42220/0x0fe15138b6ecf2b9cc3b2bc12fe9671d4267ef53/); celo `0x565677...e2b98c`; celo `0xbac4a3...05f603`; celo `0xccf3e2...0d3c08` | ✅ Audited |
| ActivePool | core_logic | celo | n/a | [`0xa7873f...8473b2`](./contracts/celo-42220/0xa7873f4bf2a1ea2eb20b1e8a992c4748e78473b2/) | ✅ Audited |
| AddressesRegistry | registry | celo | n/a | [`0xb3136d...fe0c6e`](./contracts/celo-42220/0xb3136dbadb14ab587ffa91545538126938fe0c6e/) | ✅ Audited |
| BiPoolManager | core_logic | celo | n/a | [`0x22d9db...4ec901`](./contracts/celo-42220/0x22d9db95e6ae61c104a7b6f6c78d7993b94ec901/) | ✅ Audited |
| BorrowerOperations | core_logic | celo | n/a | [`0x8ec9a8...943b8a`](./contracts/celo-42220/0x8ec9a81871f816f1ef007a82293703057a943b8a/) | ✅ Audited |
| CollateralRegistry | registry | celo | n/a | [`0x1bedd4...a605fb`](./contracts/celo-42220/0x1bedd4334335522b0a0e8e610d326b16b0a605fb/) | ✅ Audited |
| CollSurplusPool | core_logic | celo | n/a | [`0xfff48e...09d4b6`](./contracts/celo-42220/0xfff48ee3bd2d534e35b54d538de30a9d7709d4b6/) | ✅ Audited |
| DefaultPool | core_logic | celo | n/a | [`0x95191e...8d0047`](./contracts/celo-42220/0x95191e52d01ec060cea753cdadfeeb07b78d0047/) | ✅ Audited |
| Election | unknown | celo | n/a | 6 deployments: celo [`0x169c94...3009bc`](./contracts/celo-42220/0x169c946c9f70094b8ad74ee16477f27e713009bc/); celo `0x31efa3...70d77b`; celo `0x3db69c...9f6f28`; celo `0x5ad30f...c0d10b`; celo `0xbd7d39...31780e`; celo `0xcde503...c455d4` | ✅ Audited |
| EpochRewards | unknown | celo | n/a | 2 deployments: celo [`0x4cadba...562aba`](./contracts/celo-42220/0x4cadba6ae9984b408b492a3f8f451e1bb3562aba/); celo `0x9dc549...f050d9` | ✅ Audited |
| GasPool | core_logic | celo | n/a | [`0x8b61f9...79817b`](./contracts/celo-42220/0x8b61f941d89560c7d8b3d595f44f7fd97d79817b/) | ✅ Audited |
| GoldToken | token | celo | n/a | 3 deployments: celo [`0x04a182...c7edb2`](./contracts/celo-42220/0x04a182a01a303a4f1333a5ce1213ae54f0c7edb2/); celo `0x4ddeb8...f4abb4`; celo `0xb16516...b2c19d` | ✅ Audited |
| Governance | unknown | celo | n/a | 8 deployments: celo [`0x074a48...3db55e`](./contracts/celo-42220/0x074a4810015d67bafac5fe522c70761f343db55e/); celo `0x1914ea...347f46`; celo `0x19f78d...211b28`; celo `0x40bca4...1824e6`; celo `0x40cac0...a6c57a`; celo `0xd8476f...490966`; celo `0xf2d7aa...24cb13`; celo `0xf51d27...7a215d` | ✅ Audited |
| Locking | unknown | celo | n/a | [`0x001bb6...80279c`](./contracts/celo-42220/0x001bb66636dcd149a1a2ba8c50e408bddd80279c/) | ✅ Audited |
| MarketHoursBreaker | unknown | celo | n/a | [`0x0a18b8...4e0daf`](./contracts/celo-42220/0x0a18b8e7338ef8d6025529257aa5ccd5a14e0daf/) | ✅ Audited |
| MentoToken | token | celo | n/a | [`0x7ff62f...77cfb6`](./contracts/celo-42220/0x7ff62f59e3e89ea34163ea1458eebcc81177cfb6/) | ✅ Audited |
| Router | adapter | celo | n/a | [`0x486184...f9b6f6`](./contracts/celo-42220/0x4861840c2efb2b98312b0ae34d86fd73e8f9b6f6/) | ✅ Audited |
| SortedTroves | unknown | celo | n/a | [`0x46d0c9...12bf9b`](./contracts/celo-42220/0x46d0c9e51e05d6ff38b2a19d6310488f3112bf9b/) | ✅ Audited |
| StableTokenV3 | token | celo | n/a | [`0x4b9b0e...e7a2a2`](./contracts/celo-42220/0x4b9b0e94197b7b2b11d311239e1420106ce7a2a2/) | ✅ Audited |
| TroveManager | governance | celo | n/a | [`0xb38aef...3885c9`](./contracts/celo-42220/0xb38aef2bf4e34b997330d626ebcd7629de3885c9/) | ✅ Audited |
| TroveNFT | token | celo | n/a | [`0x46273a...72c6b6`](./contracts/celo-42220/0x46273a5792013973b64a42e760e6f81d0472c6b6/) | ✅ Audited |
| VirtualPoolFactory | registry | celo | n/a | [`0x22abd4...e5acb3`](./contracts/celo-42220/0x22abd4adf6aab38ac1022352d496a07acee5acb3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressSortedLinkedList | unknown | celo | n/a | [`0x0e3e96...5a1552`](./contracts/celo-42220/0x0e3e96a0d64b59b46872432f47bed6a1825a1552/) | ⚠️ Unaudited |
| Attestations | unknown | celo | n/a | [`0x936d74...dd40a8`](./contracts/celo-42220/0x936d74304a17440488e02197285a2ea5f6dd40a8/) | ⚠️ Unaudited |
| AttestationsProxy | unknown | celo | n/a | 18 deployments: celo [`0x2496fd...8e9a3d`](./contracts/celo-42220/0x2496fda4b928e8cf799ac04ea79861ac828e9a3d/); celo `0x252b03...5f1649`; celo `0x30b3c1...0595ac`; celo `0x3a4936...edb3f4`; celo `0x488deb...6c8fa6`; celo `0x4a241b...877da9`; celo `0x65e25c...799411`; celo `0x673f19...74eecb`; celo `0x68da81...504785`; celo `0x93d52a...a0ecf7`; celo `0xb53ce2...d8d96a`; celo `0xc834e7...359afd`; celo `0xcc6517...9e8fbe`; celo `0xdadd05...6f9303`; celo `0xdd944d...99f451`; celo `0xeaaf55...bc9149`; celo `0xf114c7...f5406a`; celo `0xff2ba5...c9fd2d` | ⚠️ Unaudited |
| CeloUnreleasedTreasury | unknown | celo | n/a | 2 deployments: celo [`0x0148a2...0ec9d7`](./contracts/celo-42220/0x0148a25d13cbd39d2ff5749369356cbde20ec9d7/); celo `0x7a8c7a...8a434f` | ⚠️ Unaudited |
| CeloUnreleasedTreasuryProxy | unknown | celo | n/a | 2 deployments: celo [`0x2efd9e...e86c03`](./contracts/celo-42220/0x2efd9e29cfbfaf32713fbe53fd9033217ee86c03/); celo `0xc50a46...c90c12` | ⚠️ Unaudited |
| DowntimeSlasher | unknown | celo | n/a | 2 deployments: celo [`0x71cac3...463fdd`](./contracts/celo-42220/0x71cac3b31c138f3327c6ca14f9a1c8d752463fdd/); celo `0xb07329...8e4c4b` | ⚠️ Unaudited |
| EpochManager | unknown | celo | n/a | 2 deployments: celo [`0x2f9592...530c0e`](./contracts/celo-42220/0x2f95928bcb41c4bc9468f95189ccceebed530c0e/); celo `0xf424b5...26725e` | ⚠️ Unaudited |
| EpochManager | governance | celo | n/a | [`0x91e35c...dfc535`](./contracts/celo-42220/0x91e35ccea07a15af477e189c1e2bd12569dfc535/) | ⚠️ Unaudited |
| EpochManagerEnabler | unknown | celo | n/a | 2 deployments: celo [`0x27075b...5bf0e3`](./contracts/celo-42220/0x27075b83a1df9dcc098c95f0bc45f079f05bf0e3/); celo `0x2d4148...38b687` | ⚠️ Unaudited |
| EpochManagerEnablerProxy | unknown | celo | n/a | [`0xb50216...f223a3`](./contracts/celo-42220/0xb50216c8225b0802f0197cc8c7e567a6d5f223a3/) | ⚠️ Unaudited |
| Escrow | unknown | celo | n/a | [`0x7a097d...4420c1`](./contracts/celo-42220/0x7a097d13f2b9f4e32efffbf2a5ea756dab4420c1/) | ⚠️ Unaudited |
| ExchangeBRL | unknown | celo | n/a | 2 deployments: celo [`0x0d4a42...a2d112`](./contracts/celo-42220/0x0d4a42b2fc30afbf6b6e8f5ce49a659e38a2d112/); celo `0x8f2cf9...68a4ea` | ⚠️ Unaudited |
| ExchangeEUR | unknown | celo | n/a | 2 deployments: celo [`0x32c2dc...b5dc8d`](./contracts/celo-42220/0x32c2dcb7730ed6fc1eac0444a668f38fd7b5dc8d/); celo `0xe38339...d53d1d` | ⚠️ Unaudited |
| ExchangeEUR | unknown | celo | n/a | [`0x622833...0234d9`](./contracts/celo-42220/0x622833ab6e9501c9072d2c706c60aab5ff0234d9/) | ⚠️ Unaudited |
| FederatedAttestations | unknown | celo | n/a | 2 deployments: celo [`0x0ad5b1...d6aff2`](./contracts/celo-42220/0x0ad5b1d0c25ecf6266dd951403723b2687d6aff2/); celo `0x76a4da...53ea85` | ⚠️ Unaudited |
| FeeCurrencyDirectory | unknown | celo | n/a | 2 deployments: celo [`0x15f344...2c6276`](./contracts/celo-42220/0x15f344b9e6c3cb6f0376a36a64928b13f62c6276/); celo `0xf6fb74...6d0463` | ⚠️ Unaudited |
| FeeCurrencyDirectoryProxy | unknown | celo | n/a | [`0x60f636...d210fa`](./contracts/celo-42220/0x60f6362550868fd1d6e92b2f680f5e02f4d210fa/) | ⚠️ Unaudited |
| FeeHandler | unknown | celo | n/a | 2 deployments: celo [`0x558c20...fea36c`](./contracts/celo-42220/0x558c209b246d5f21cc32a11da29a1cdbdcfea36c/); celo `0xcd4377...6b8778` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | celo | n/a | [`0x876477...9e9ae1`](./contracts/celo-42220/0x87647780180b8f55980c7d3ffefe08a9b29e9ae1/) | ⚠️ Unaudited |
| GovernanceSlasher | unknown | celo | n/a | [`0xb1b7b6...c51e9e`](./contracts/celo-42220/0xb1b7b6af5bb6b527094c7cc5ce8bab32f4c51e9e/) | ⚠️ Unaudited |
| GrandaMento | unknown | celo | n/a | 2 deployments: celo [`0x03f684...454a49`](./contracts/celo-42220/0x03f6842b82dd2c9276931a17dd23d73c16454a49/); celo `0x40857e...e73007` | ⚠️ Unaudited |
| GrandaMento | unknown | celo | n/a | [`0x5b2c9e...6f9ab4`](./contracts/celo-42220/0x5b2c9e7932b08d8f2ce70ef9e5c98528256f9ab4/) | ⚠️ Unaudited |
| HintHelpers | periphery | celo | n/a | [`0xafd741...374d82`](./contracts/celo-42220/0xafd741674bc4aa965a788dace5b0434fd4374d82/) | ⚠️ Unaudited |
| IntegerSortedLinkedList | unknown | celo | n/a | [`0xa86051...0d047c`](./contracts/celo-42220/0xa86051f29c45218b5f6cd121ebafb690660d047c/) | ⚠️ Unaudited |
| LockedGold | unknown | celo | n/a | [`0xc683d9...58283f`](./contracts/celo-42220/0xc683d91656ed9024addd7a40a181398e0258283f/) | ⚠️ Unaudited |
| MentoFeeHandlerSeller | unknown | celo | n/a | 2 deployments: celo [`0x4efa27...921a74`](./contracts/celo-42220/0x4efa274b7e33476c961065000d58ee09f7921a74/); celo `0x86142c...e12b82` | ⚠️ Unaudited |
| MultiSig | governance | celo | n/a | 3 deployments: celo [`0x68e231...ee3903`](./contracts/celo-42220/0x68e231b208d82dedba0cf7d97db0d3bf9bee3903/); celo `0xad52b8...14e7fc`; celo `0xed68f8...84aaf7` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | celo | n/a | [`0x78fd33...f8327f`](./contracts/celo-42220/0x78fd33d2bce0389cf41e15947b0eb0ce9df8327f/) | ⚠️ Unaudited |
| OdisPayments | unknown | celo | n/a | 2 deployments: celo [`0x9ea5e9...14bf78`](./contracts/celo-42220/0x9ea5e9b9b48a72325d59b3eba147f42b1b14bf78/); celo `0xae6b29...56d0cb` | ⚠️ Unaudited |
| Proposals | unknown | celo | n/a | [`0x38afc0...ebfba8`](./contracts/celo-42220/0x38afc0dc55415ae27b81c24b5a5fbfe433ebfba8/) | ⚠️ Unaudited |
| Proxy | unknown | celo | n/a | 3 deployments: celo [`0x38dd9f...181c9f`](./contracts/celo-42220/0x38dd9fa2409758fa0d73440ee18f8e0249181c9f/); celo `0xd626c0...a1bbbb`; celo `0xf10011...e4cf27` | ⚠️ Unaudited |
| Reserve | unknown | celo | n/a | [`0xc683e6...85d607`](./contracts/celo-42220/0xc683e6f77b58d814b31f8661331ebdf63785d607/) | ⚠️ Unaudited |
| ReserveTroveFactory | registry | celo | n/a | [`0x028594...9519e1`](./contracts/celo-42220/0x02859465dcc7d7f2bee183fc7fac78544c9519e1/) | ⚠️ Unaudited |
| SafeProxy | unknown | celo | n/a | [`0xd3d2e5...2137e1`](./contracts/celo-42220/0xd3d2e5c5af667da817b2d752d86c8f40c22137e1/) | ⚠️ Unaudited |
| ScoreManager | unknown | celo | n/a | 2 deployments: celo [`0x1077e8...d5a937`](./contracts/celo-42220/0x1077e8bd92b2fe31f605631390cb7436aed5a937/); celo `0xef3b9c...2f603b` | ⚠️ Unaudited |
| ScoreManagerProxy | unknown | celo | n/a | [`0x19cdf4...620505`](./contracts/celo-42220/0x19cdf4689d9ee3590fdbe75adefee375b4620505/) | ⚠️ Unaudited |
| SortedOracles | unknown | celo | n/a | 2 deployments: celo [`0x35a4f0...6f6ab5`](./contracts/celo-42220/0x35a4f0c8c0b48769f036b79f9d428bea286f6ab5/); celo `0x6ceb70...09d171` | ⚠️ Unaudited |
| StableTokenCADProxy | token | celo | n/a | [`0xff4ab1...2b6325`](./contracts/celo-42220/0xff4ab19391af240c311c54200a492233052b6325/) | ⚠️ Unaudited |
| StableTokenV2 | unknown | celo | n/a | [`0xe8537a...ab4787`](./contracts/celo-42220/0xe8537a3d056da446677b9e9d6c5db704eaab4787/) | ⚠️ Unaudited |
| StableTokenV3 | unknown | celo | n/a | [`0xd8763c...d6ca73`](./contracts/celo-42220/0xd8763cba276a3738e6de85b4b3bf5fded6d6ca73/) | ⚠️ Unaudited |
| Validators | unknown | celo | n/a | [`0xbc8ca2...b88d1a`](./contracts/celo-42220/0xbc8ca2220f72719a12ca64a4b5e8cfbd43b88d1a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (98)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | celo | n/a | `0x017fa8...763148` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x031961...c0c5ff` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x033392...4d7d5e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x03e39a...7d1089` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x05bda1...f22faf` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x066f67...bd25f2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0775ce...580259` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x086732...e1df0e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x08a4b5...f0bd29` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0bfe85...5f20eb` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0cb6fd...42422f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x100a08...48bf03` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x120c00...49e892` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x147f2a...86c941` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x176697...adfd79` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x195bbd...8c3994` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1e3d01...42ba5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x28079a...7bc798` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2abea6...a9dd09` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2abf27...cea929` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2c4c1f...3cbd7d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2dad1c...64f261` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x30584e...9f3f7d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x311a6b...106f74` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x34c1c7...32e63b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x34fe12...119725` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x399e78...6e5a8b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4c83d1...61af45` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4efa94...8bc05e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4f86a6...2cc01a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x5519a8...9d7deb` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x55f3b4...ecb381` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x585109...685427` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x5d90c0...8c5377` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x65534a...043372` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x660668...21e73e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6fd841...057e62` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x719936...b2fe87` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x72306f...72c33d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x72a1fc...d3543e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x72ce6c...eb3771` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7b586a...060860` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7da5cf...f188a1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7e3278...471cb3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8162ed...c1c148` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x822515...2022e5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x843fdc...4e49e6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8bc96d...272e59` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8c2756...11e014` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8cccd3...e903af` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8d7049...58428b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8db17f...d97f8d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x942bc5...5dd617` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x99de1b...61e2ff` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa16fb1...10a360` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa987a6...dc5752` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa9d3dc...b4b716` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa9da17...ebd17e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xab8650...703c23` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb511ed...52b488` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb658b5...be2b54` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb7feac...ff582a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb98746...ae9feb` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb9e35d...7a1664` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbcb789...c3a567` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbdec4c...18b2ce` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbef9ee...57148a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc285ed...afc73b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc4cf82...a4a77e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc682c3...67330d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc870dc...91c4bd` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc99d54...dd411e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xcb32ea...d10f3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xcc5df0...010455` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xcf4840...3fe4e3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd0716c...015c3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd161fb...550caa` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd3c300...f2d9ed` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd66c72...339491` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd6d02c...16e6d1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd8459c...473d34` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdbfa3e...76f1bc` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xddf776...0b27fe` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe0bd67...cf5657` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe26ae3...79c025` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe46ffe...6f75cb` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe4f927...3984bc` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe507f1...70aea0` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe52eac...f2c697` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe7a9d3...b6fd37` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xea736c...53abba` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xee3708...07213f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xeee820...ba66e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf488ad...1aba21` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf895f9...c40855` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf8dc3b...0d9374` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf9cc29...dcffdf` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xfabf6a...8464c5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-04-11-cyfrin-wormhole-evm-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/evm/2024-04-11-cyfrin-wormhole-evm-ntt.pdf) | Cyfrin | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [2024-07-23-cyfrin-wormhole-evm-ntt-diff-v1.1.0.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/evm/2024-07-23-cyfrin-wormhole-evm-ntt-diff-v1.1.0.pdf) | Cyfrin | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [2024-03-28-ottersec-solana-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2024-03-28-ottersec-solana-ntt.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [2024-04-12-neodyme-solana-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2024-04-12-neodyme-solana-ntt.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [2024-08-02-ottersec-solana-ntt-token-extensions.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2024-08-02-ottersec-solana-ntt-token-extensions.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [2025-04-18-wormhole-ottersec-ntt-v3.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2025-04-18-wormhole-ottersec-ntt-v3.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-05-05-wormhole-ottersec-ntt-v3-solana.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2025-05-05-wormhole-ottersec-ntt-v3-solana.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-08-22-ottersec-sui-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/sui/2025-08-22-ottersec-sui-ntt.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [README.md](https://github.com/mento-protocol/docs/blob/main/dive-deeper/security/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit-reports.md](https://github.com/mento-protocol/docs/blob/main/dive-deeper/security/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [risk-overview.md](https://github.com/mento-protocol/docs/blob/main/dive-deeper/security/risk-overview.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [celo.org/audits](https://celo.org/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.chainsecurity.com/security-audit/mento-core-v3](https://www.chainsecurity.com/security-audit/mento-core-v3) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity_Mento_MentoCoreV3_Audit.pdf](https://reports.chainsecurity.com/Mento/ChainSecurity_Mento_MentoCoreV3_Audit.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | 4 | n/a |
| [www.chainsecurity.com/security-audit/mento-liquity-v2](https://www.chainsecurity.com/security-audit/mento-liquity-v2) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity_Mento_MentoLiquityV2_Audit.pdf](https://reports.chainsecurity.com/Mento/ChainSecurity_Mento_MentoLiquityV2_Audit.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | 11 | n/a |
| [0xmacro.com/library/audits/mento-3](https://0xmacro.com/library/audits/mento-3) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | 2 | n/a |
| [audits.sherlock.xyz/dashboard/404ec017225af69f6deff9b722393a44](https://audits.sherlock.xyz/dashboard/404ec017225af69f6deff9b722393a44) | Sherlock | Contest | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [0xmacro.com/library/audits/mento-2](https://0xmacro.com/library/audits/mento-2) | 0xMacro | Audit | 2024-01 | stale | Direct | contract_name | 2 | n/a |
| [0xmacro.com/library/audits/mento-1](https://0xmacro.com/library/audits/mento-1) | 0xMacro | Audit | 2023-08 | stale | Direct | contract_name | 1 | n/a |
| [www.verilog.solutions/audits/mento](https://www.verilog.solutions/audits/mento) | Verilog Solutions | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.openzeppelin.com/news/celo-contracts-audit](https://www.openzeppelin.com/news/celo-contracts-audit) | OpenZeppelin | Audit | 2021-02 | stale | Direct | contract_name | 6 | n/a |
| [audits.sherlock.xyz/contests/187](https://audits.sherlock.xyz/contests/187) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 161 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=27

Zero-match audit list:

- [6140] 2024-07-23-cyfrin-wormhole-evm-ntt-diff-v1.1.0.pdf
- [6141] 2024-03-28-ottersec-solana-ntt.pdf
- [6142] 2024-04-12-neodyme-solana-ntt.pdf
- [6143] 2024-08-02-ottersec-solana-ntt-token-extensions.pdf
- [6144] 2025-04-18-wormhole-ottersec-ntt-v3.pdf
- [6145] 2025-05-05-wormhole-ottersec-ntt-v3-solana.pdf
- [6146] 2025-08-22-ottersec-sui-ntt.pdf
- [6184] README.md
- [6185] audit-reports.md
- [6186] risk-overview.md
- [12415] celo.org/audits
- [12416] www.chainsecurity.com/security-audit/mento-core-v3
- [12418] www.chainsecurity.com/security-audit/mento-liquity-v2
- [12421] audits.sherlock.xyz/dashboard/404ec017225af69f6deff9b722393a44
- [12424] www.verilog.solutions/audits/mento
- [12426] audits.sherlock.xyz/contests/187

Fork inheritance lineage and inherited audits are included when available.
