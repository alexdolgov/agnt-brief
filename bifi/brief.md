# Agentic Audit Brief: BiFi

## Project Overview

- Project: BiFi (`bifi`)
- Website: [https://bifi.finance/](https://bifi.finance/)
- Lifecycle: active (Tier 0, 87.7% below peak)
- Generated: 2026-07-04T14:53:07.415Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: avalanche, bsc, ethereum, klaytn
- Contract surface: 224 unique implementations (294 raw deployments)
- DeFi Llama TVL: $5,863,316.09
- On-chain TVL (included contracts): $2,096,772.48
- TVL by chain: Ethereum $1,956,884.42 | Bsc $139,888.06

## Project Description

Lending. Structurally: 74 project-authored contract(s) across 3 chain(s); 1 ERC20 token, 2 ERC721 NFTs, 1 Chainlink feed; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 26 common project-authored base contract(s) (interestmodel, interesterrors, modifier). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 370; live-surface contracts included: 293 (97 live, 196 unknown).
- Excluded by liveness: 77 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 28/35 (80.0%)
- Deployed-live implementations: 35 of 224 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 28/36
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 188
- Unique implementations: 224
- Raw deployments: 294
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 28 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 26 | 72.2% | 2021-08 |
| Theori | Tier 2 | 20 | 55.6% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20 | token | ethereum | n/a | [`0x2791bfd60d232150bff86b39b7146c0eaaa2ba81`](./contracts/ethereum-1/0x2791bfd60d232150bff86b39b7146c0eaaa2ba81/) | ✅ Audited |
| TokenHandler | token | ethereum | n/a | 6 deployments: ethereum [`0x128647690c7733593aa3dd149eebc5e256e79217`](./contracts/ethereum-1/0x128647690c7733593aa3dd149eebc5e256e79217/); ethereum `0x25567603eb61a4a49f27e433652b5b8940d10682`; ethereum `0x47be3d1def039bd85e7570864bb5148e7491a65f`; ethereum `0x808c3ba97268dbf9695b1ec10729e09c7e67a9e3`; ethereum `0x93948aa8488f522d5b079af84fe411fbce476e9f`; ethereum `0xd76b7060f1b646fa14740ff6ac670a4f0a6fc5e3` | ✅ Audited |
| tokenHandler | token | bsc | n/a | 3 deployments: bsc [`0x26d0e4707af1c1daad8e9ba21b99cda7fd24c40b`](./contracts/bsc-56/0x26d0e4707af1c1daad8e9ba21b99cda7fd24c40b/); bsc `0xba9de5a8fd91408826616f2d6d7470a11e34c9f0`; bsc `0xbb9ce7c152f9d6fbbebd90e9b06d021f64e6052b` | ✅ Audited |
| TokenHandler | token | bsc | n/a | 5 deployments: bsc [`0x2a29598cbc17ba112c8fd0e07fbf5402ef57e6b8`](./contracts/bsc-56/0x2a29598cbc17ba112c8fd0e07fbf5402ef57e6b8/); bsc `0x77c59ef81bcb6b5aa5efefa58b9914b2b115941b`; bsc `0x829ed2a2bef8b72e648f92cbf01587c7e12e8c1e`; bsc `0xb67c5433d234d656002f12664d15ab4b40666d9b`; bsc `0xf86d8218bcc15874f5d25c191fddd43f2334c3eb` | ✅ Audited |
| CoinHandler | unknown | ethereum | n/a | 2 deployments: ethereum [`0x13000c4a215efe7e414bb329b2f11c39bcf92d78`](./contracts/ethereum-1/0x13000c4a215efe7e414bb329b2f11c39bcf92d78/); ethereum `0x64d18fd81a30150b8f881cb424677f178ea25c33` | ✅ Audited |
| CoinHandler | unknown | ethereum | n/a | 3 deployments: ethereum [`0x58a059180901fae4089ac5e775e3ce6333f00580`](./contracts/ethereum-1/0x58a059180901fae4089ac5e775e3ce6333f00580/); ethereum `0xfa56855934c1d19b9c2a52331e32a9a44546f92b`; bsc `0xcef7762dc835d3cf80caf81e73eaaf88bafe2289` | ✅ Audited |
| CoinHandler | unknown | bsc | n/a | 2 deployments: bsc [`0x170b6aa872166ec2f8515c2b855c34b6c7563c18`](./contracts/bsc-56/0x170b6aa872166ec2f8515c2b855c34b6c7563c18/); bsc `0x5553bcd4cc9af1a395da99fe8dd0ed3ad4bfdcf1` | ✅ Audited |
| CoinHandler | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3b441812d2081366ae2422eef5a0ec592d7f9f69`](./contracts/avalanche-43114/0x3b441812d2081366ae2422eef5a0ec592d7f9f69/); avalanche `0x446881360d6d39779d292662fca9bc85c5789db3` | ✅ Audited |
| CoinSI | unknown | avalanche | n/a | 3 deployments: ethereum `0x320c3391d1dc3d36e0e1da26809db9e0463517c7`; bsc `0x17aacf9dc6ec3113ce50d943ca931330ad361407`; avalanche [`0x0a58f7955497b9e56d1328512e1ca427d689f577`](./contracts/avalanche-43114/0x0a58f7955497b9e56d1328512e1ca427d689f577/) | ✅ Audited |
| HandlerManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x913f2dee2746cda2ab34106c47abc4a8f4e36fa5`](./contracts/ethereum-1/0x913f2dee2746cda2ab34106c47abc4a8f4e36fa5/); ethereum `0xfed2eddbdf201d6b5469cbd6866d19808d8879fb` | ✅ Audited |
| HandlerManager | unknown | bsc | n/a | 2 deployments: bsc [`0x72e419713551410297b407bf1b61a0dcc1cf5d0a`](./contracts/bsc-56/0x72e419713551410297b407bf1b61a0dcc1cf5d0a/); bsc `0x8010f9e14c8286b9312e624370fddc07fee2fc75` | ✅ Audited |
| HandlerManager | governance | avalanche | n/a | 2 deployments: ethereum `0x54b932b5512d984ac6c02ebe4f32ad032c41b1b5`; avalanche [`0x23964e4677e178647bba6fb94f19e9b3ec95dbc2`](./contracts/avalanche-43114/0x23964e4677e178647bba6fb94f19e9b3ec95dbc2/) | ✅ Audited |
| InterestModel | unknown | bsc | n/a | 15 deployments: ethereum `0x105ea44ffa77f517e31f20d7c22ebebf739bbf87`; ethereum `0x24231014199e0c1a8ec2d963389008d85b658f7d`; ethereum `0x29ecabde2c57b6d4183f915ebca1a25804a60db1`; ethereum `0x614661d42d81eb446f740424ccac24f09e97417e`; ethereum `0x7560ad17e2a0b790019734bf4f9790323cd68cb6`; ethereum `0x75a7ce14e9a07428384c63dc7dd0adefe3b229c2`; ethereum `0xaf9b1d6e89db4d43f3ff9347d5da2d169e97994e`; ethereum `0xcbf361d934e2ac49b2c47c2910ea9489ab955829`; bsc [`0x00a29c8e3a2a8171506b5d67ba4d59441c267178`](./contracts/bsc-56/0x00a29c8e3a2a8171506b5d67ba4d59441c267178/); bsc `0x73e781578af6bfbbe950b7059dc2e99c76d00f20`; bsc `0xc7b7dc64ac2412bd33cb85d5c552276b66612e8b`; avalanche `0x25cb77ddda15075dcf3f681fdc36b14fed27f2a0`; avalanche `0x2a8c94e2397361cde5114ca1618bab46eb8d71bf`; avalanche `0x46a9d54ed07db5a470412d492ee437bf0d079cd7`; avalanche `0xfc36eecbf3fca5d65c73951d4cd7fea1d845c29c` | ✅ Audited |
| LiquidationManager | unknown | bsc | n/a | 2 deployments: bsc [`0x1cf8428c23753d315840293f097bd6d702f2df5f`](./contracts/bsc-56/0x1cf8428c23753d315840293f097bd6d702f2df5f/); avalanche `0x217db0d688889b5b151d26f267082f12f364b34b` | ✅ Audited |
| ManagerDataStorage | unknown | bsc | n/a | 3 deployments: ethereum `0x34e45203669aadd0d6ac342538aa7b62c9128f4a`; bsc [`0x0a95a3b05da318983741360abe29dcda63dbb4d3`](./contracts/bsc-56/0x0a95a3b05da318983741360abe29dcda63dbb4d3/); avalanche `0xe0322f306d285d97eb411cd2e9a86bb92b88c427` | ✅ Audited |
| ManagerFlashLoan | unknown | bsc | n/a | 3 deployments: ethereum `0xe2f26b242107f4c6ee48039555d7211d018ace37`; bsc [`0x8cc8a0d4759d94ecd1e5a0ae2866b3cbe65c4493`](./contracts/bsc-56/0x8cc8a0d4759d94ecd1e5a0ae2866b3cbe65c4493/); avalanche `0xdef0e8f0c3ab944a015554c83fbcf346d3c98f3b` | ✅ Audited |
| OracleProxy | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x0c0420c7aed04b67d8ccef82563af4c8f801f668`](./contracts/ethereum-1/0x0c0420c7aed04b67d8ccef82563af4c8f801f668/); ethereum `0x6ba1ddd63a5680b7c666b74a50be28b24d507beb`; bsc `0x0ed96ea272e634ef5df9150a6d29a0c4c6f61567`; bsc `0xdd80fb1c16a1eb446be94655e5f762c19c7fa89e`; avalanche `0x3bb4b71bc78cef5202ca88ad061e2589dadf9fab`; avalanche `0x4d30d8343093ba8512a411d4633592ea2be21d5d`; avalanche `0x71c5e8ab83f3cf56faa3e22b7a70aa44200a4f79`; avalanche `0xef0443c3871345d7e05a9f81232bdcd489f75e4f` | ✅ Audited |
| PositionStorage | unknown | ethereum | n/a | 3 deployments: ethereum [`0x11a428566ef7039b1fc221992aecaba80aeded3a`](./contracts/ethereum-1/0x11a428566ef7039b1fc221992aecaba80aeded3a/); ethereum `0x836c3afe6104066da3b2d3c244f66d6698623ba9`; bsc `0x8138840d438d2bd78f978c4a27faded119f266f0` | ✅ Audited |
| StrategyLogic | unknown | bsc | n/a | [`0x3513bab078e69209d5749291fc540f744d32993f`](./contracts/bsc-56/0x3513bab078e69209d5749291fc540f744d32993f/) | ✅ Audited |
| tokenHandler | token | ethereum | n/a | 5 deployments: ethereum [`0x04189e20e4691136af0d9bff884cb122a8bf2e16`](./contracts/ethereum-1/0x04189e20e4691136af0d9bff884cb122a8bf2e16/); ethereum `0x07038da741864ff39199aa9ecc38a32916f84610`; ethereum `0x66a2ea39b0413d672fd032389731fc7ee0a33a57`; ethereum `0xf725c0d72d3e5e284077d8fcc357bf8547fa3e8d`; bsc `0xc712bf219aae27b64fb354f2ddd4d6e4e22c9b6e` | ✅ Audited |
| TokenHandler | token | ethereum | n/a | 2 deployments: ethereum [`0x38b3a3b5b53987c9aaf4c41f3534425ac93369b8`](./contracts/ethereum-1/0x38b3a3b5b53987c9aaf4c41f3534425ac93369b8/); ethereum `0x986eb51e67e154901ff9b482835788b8f3054076` | ✅ Audited |
| TokenHandler | token | avalanche | n/a | 2 deployments: avalanche [`0x739068b9cb728c18f04cd7e7f0fe2ef707744c5e`](./contracts/avalanche-43114/0x739068b9cb728c18f04cd7e7f0fe2ef707744c5e/); avalanche `0x8385ea36dd4bdc84b3f2ac718c332e18c1e42d36` | ✅ Audited |
| TokenManager | governance | ethereum | n/a | [`0xfef1974aeb87a92e8b8b99b7bc260f116679938f`](./contracts/ethereum-1/0xfef1974aeb87a92e8b8b99b7bc260f116679938f/) | ✅ Audited |
| TokenSI | token | avalanche | n/a | 2 deployments: bsc `0x9650255a3077d3012deb944b2dfa5741eb2e1929`; avalanche [`0x449e4e12d8fdc140c31f278352d64f5d1deb465e`](./contracts/avalanche-43114/0x449e4e12d8fdc140c31f278352d64f5d1deb465e/) | ✅ Audited |
| UsdcInterestModel | unknown | bsc | n/a | 2 deployments: ethereum `0x864290a03fa4d75b6f0a2afdf5e2b6213f0760db`; bsc [`0x26363f6fb3a5dce8f9bdcf5ae40d772a1582184d`](./contracts/bsc-56/0x26363f6fb3a5dce8f9bdcf5ae40d772a1582184d/) | ✅ Audited |
| XFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x9f9347afc304d5c3c0683a5ed523e5f010e4736f`](./contracts/ethereum-1/0x9f9347afc304d5c3c0683a5ed523e5f010e4736f/); ethereum `0xb74e18c6d337c1c9268a209fa244134f4f60c9b5` | ✅ Audited |
| XFactoryExternal | registry | ethereum | n/a | 2 deployments: ethereum [`0x3d6d4f3640ae84c0baef0a76c35d1ec5668b70e9`](./contracts/ethereum-1/0x3d6d4f3640ae84c0baef0a76c35d1ec5668b70e9/); ethereum `0x97ae437edbaca2db40cff2e0436b894ff72988af` | ✅ Audited |
| XFactoryLogic | unknown | bsc | n/a | 2 deployments: bsc [`0x81f2c2b38c2c347e353f6e6ee50f9814c3dfc28e`](./contracts/bsc-56/0x81f2c2b38c2c347e353f6e6ee50f9814c3dfc28e/); bsc `0xbcc4468b7dc953b5ed81fe937de11e6da0ea7d34` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BFCETHModel | unknown | ethereum | n/a | [`0xeace4e60f68e20797fc696c870066f1e19c2b37d`](./contracts/ethereum-1/0xeace4e60f68e20797fc696c870066f1e19c2b37d/) | ⚠️ Unaudited |
| BFCModel | unknown | ethereum | n/a | [`0x488933457e89656d7ef7e69c10f2f80c7aca19b5`](./contracts/ethereum-1/0x488933457e89656d7ef7e69c10f2f80c7aca19b5/) | ⚠️ Unaudited |
| BiFiETHModel | unknown | ethereum | n/a | [`0x18740cea640cba9ce836dc80ce61c7b9ca4f11cb`](./contracts/ethereum-1/0x18740cea640cba9ce836dc80ce61c7b9ca4f11cb/) | ⚠️ Unaudited |
| callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUser | governance | ethereum | n/a | [`0x4ce8acc2afc1ab5c77915fedb1f74f8d9b63b287`](./contracts/ethereum-1/0x4ce8acc2afc1ab5c77915fedb1f74f8d9b63b287/) | ⚠️ Unaudited |
| EtherHandlerProxy | unknown | avalanche | n/a | [`0x8aba88e8a4ab28319b782199cb17f0001ee67984`](./contracts/avalanche-43114/0x8aba88e8a4ab28319b782199cb17f0001ee67984/) | ⚠️ Unaudited |
| etherLiquidationManager | governance | ethereum | n/a | [`0xfd514b33a361b82fe5d89070db6917cd4f73285d`](./contracts/ethereum-1/0xfd514b33a361b82fe5d89070db6917cd4f73285d/) | ⚠️ Unaudited |
| Manager | governance | avalanche | n/a | [`0x74326d2bfbf22312158850ac3b4f7ae8a0a347fd`](./contracts/avalanche-43114/0x74326d2bfbf22312158850ac3b4f7ae8a0a347fd/) | ⚠️ Unaudited |
| ReqTokenProxy | unknown | bsc | n/a | 4 deployments: bsc [`0x1b0ba3b6fc27c4189869e4a2ecef2404e3e3d996`](./contracts/bsc-56/0x1b0ba3b6fc27c4189869e4a2ecef2404e3e3d996/); avalanche `0x34da42143b0c6e321ceb76931c637c12bd865f7e`; avalanche `0xc4d1e935f02a44d44985e6b1c0ee1ee616fc146a`; avalanche `0xe893233515b7d02dd4e3d888162d4c87dc837943` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (188)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x017da94a04f0567ba97b1e5c79c30c0967a949f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02574ea0055e9a161ad4b3a0647fdad2efecaa31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x031c3139587478c70d206d0673154521a797bf89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0433345552f1af71866ce1c01094a77457d3aaf4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x046eec669321c3687f76edbe8ff63c4ade06c1ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05af846b9ddfa7ac987d5ca80136de09946fec4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09a692d8ae7124ead846c785ac77f217f98fb9fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09c4a0855ff7979656fa42d81423e6487b7b7433` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09f334cc027462d8876dd1ebf0930e1715342d38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b31fee8bf53bfe2f5f7083b73a4c9c8b517e32f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d6b0c426606f45fa23c356ab10f7de4ae4222bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e3d83be06153df8b502e96463f2e671c40c0b08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x103de8469f507e0ea3300f1c53857a72569d6a9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10a8ba5a1fdbd63fd574a3ba7e147ae53470b364` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10de547981c234f0809c3b7cb10a5197841876f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11851a5819e18b5fdb05f4ad5982ef634efe6bc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12186e9d74bfa2429d38e285627c6763f2206550` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1324c528f5f9df916434fec8286e07809a33c664` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13e6266ec6f5ff33b26c974dfdd905e0e7a8397b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15dccb359751ee2aab54a1b1b0fcc346a8392ffd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x168b2d7dd6b9812392f99ba01a14db03ed06dedc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x170721278c46fd8778611456a6af7ac160cb9a07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x194eadfc65c1e19a534aee2dd193ba068eed08af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bc872651d43546842dee55aff0fd9de5fc226cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d51c1ea2a195e5d8c2cc8829c717c2481330977` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e92f03ce0de4d334e2c8139650e898be752c926` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ecfcf5a0b750d4b4063e8edf787e081dc65ad10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2168dab12a6a93181bbad9c9dc769307c36fb45c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26d0e4707af1c1daad8e9ba21b99cda7fd24c40b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2747f01f2b5a5b164926c631df079ccb5f4e5011` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ae85247201a84509c0b2e6420eac9d1de1c07e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c26bc2ebdd70532a2ca70f6739ba7d55bf8019a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c716c6df141d38abcf5d17152f9d2ae1e9b243f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3199611202ed308832cdad856301ed2a7d2d3fc0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x325138d9651724eeacb9261ae784450e26fdb8f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x326e7b85e10849ca2a2f86368ebefde394956513` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34da42143b0c6e321ceb76931c637c12bd865f7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38cd386057d6d0e111c04bdf1e6eb42974cb5ac1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c3439c95fabfc6058868030ad709a0e5f5f0670` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c6ef2fb21c9ef27455943e6c0cd2b19f6106b31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4586fb63f55a2547eb8b152ea255c84f3489af2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46043a7b92e7c6e626126c1d0d2d94adbd0705a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a3dbe5c88ee8dda48dd01a986393774f786a972` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dbacdfb0cf6b3cce37449968ebbc11c3655de67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x501b7f20c3a6e5b26ff975ca80ed7f006424adc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5093385fe9678fe0e8941bb42486af8c8c4f36e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5303570b6f1617869cf3771712369fd27a0b843d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5881b8dac5a672b12022b87cd68db07532740849` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59fa8ee50cf49c507b5b0e87d562e40de3373917` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ac691468aa1a6eebf806a808e112121a6ad2e93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c3cc8de66fdc5fb84211932201d668a9fca5cfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ebb521d7a983452a6bf50f084a51ef9a627944e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61ce8141244e779fdcffd00a1455b6bd82f7ebf1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63e6c867651b51e2b791c3711d5de7b9bd631f38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6496cedfa588a82b6cd3dc4562df3f1f0c983a9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6638b0095e0a730c8f4a3ee8f07248393581df64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6971db652eade476e26c89b32a80491b2614aeb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f46a1fcb9c78fec96374400f2334febe032133e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7069e7e79499b844de4884d8a8cbcb0c9aefb4cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x736a348bb7bdad117755c88bc4e1ab4ef07c5c50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7638aa8040a2ad6147e1dc7aacbf06f15eb88960` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78e9b4b6e1ab6cea01b5891921d7d52814ba4b9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79dcab2f8cce8b15422ed44a26fe35b13a07b922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cb14c469d9fd17e19513f768a0ea3135250db27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d3a66e8401fd29ba83646607b4a32e714db5400` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f925784a74ab264248de8b52205d4a1b6aad485` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80fbd04193b108a649e483a5f4615e1b261a716c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x829ed2a2bef8b72e648f92cbf01587c7e12e8c1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82d48b9847325d422fe1d15c7c5800ea736047c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x831b56747e97eaeeedb4d9e57bcc264c563568d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8385ea36dd4bdc84b3f2ac718c332e18c1e42d36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x844fde067fc37c5f9c8fde5d357b4010a3a005a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x857f5ed4a6de6ceecc8e7f9b13d5235c3ff94bee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8606eb1b72ecc5f30cf1544439d59b48828c38f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86dd17410597af66e0e24c374654c7f940a89592` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8aba88e8a4ab28319b782199cb17f0001ee67984` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d9da054e385a0553f46471c1b06d37683d16e9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dd0c26772561b2ed809243ff6eada41de434bfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8eec50fcd1ad2753c0bcd9c63edca5b75a029f12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fe43cd5e416421b141a8defc13998894ef179ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x942a9bf629d1e17d87294b0f20898eeb8316cdd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9532488c56291ab0a3fed0c0f5703d3b7e21387c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a78496384ba40801b0bf1c2ca4feb4d1205324a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cc762c822254e541b4d7632517bcdff45d0d8a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e1e4a1505927b43326a0e809042e502e9f2d43c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ffef5be382570e9405cb38fd581213a8fcae5d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1bd1d501af7d0b146951fdff49bd4c0bd25e220` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2c2c35595a30b69118b5b94c0279fb60b923cba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7d0b04a6840d50e4342367555443a332d217a45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8dcf3a872ddfa2ee15334e46c6132a524e1e85b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaad3cf01f542f1a58dbd732d927b434883020bcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad26900a85743822a751243cb43d53e7c3884df1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad56db13ee074838d768e87cd7f2bc794e0502ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb169c9540cfd15592cd67dda05711c910c4f1dc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb25a5f055ef4fab877f1657614f8c66c5b386da2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7b1d0f022d7ee6803a4ada06f1c22a945b2878f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8a6215fc1c26215d8b6726a62878a4e29278765` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9537da8347b0f0cf970627404f71d3d3205e42a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9e5575289952da092ad181c47a8fcfd97b555d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba9de5a8fd91408826616f2d6d7470a11e34c9f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbffa399d9feda3282ab35e56bddd11a519cbbb9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc31fcb1154035a1a00de74f006708aae2bf5583d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4d1e935f02a44d44985e6b1c0ee1ee616fc146a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc54d4e48a3b57baa04b872e94fcbc13907dff2e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc80ab388a1fb7190d79ff7c69cd1f28ae8268d85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca56c9e90846d5c15971c73f167e31987d38fe49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbf6065954fc17d07b28102c84902f20ffac0a33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd3efc51d7b047b78cf255390844e0ace173ea18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcdead090ed860e4a0f64dc3fabf1a1dbfc43d8a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xceebaeef7b1ae562fbf7ddc2741ab60df71c972c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf2fc1d354018a39d5ef036aa865ad8cbf7b611e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd07f5208f7f94003712c6d3f4d5fffbb3764430a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd68e26498eee76ee02d9db7acd1cea68618c93fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddabbffbbfaa1bed070f3a6deb6033f94d8c8f26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe53bd427ebcd1a5fe1f0f9429812907ce85113b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe893233515b7d02dd4e3d888162d4c87dc837943` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe899f1d6a86589b0a8224e3c7ea920df76df2785` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8db0e11d2867a98295df64b12e9937e8257689a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8fe727044dd51fbd4601764ac01dbe4743b28b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea3b4a2da5dbe8379ad4c60aad5184df69d7c9ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec25e2d394bb3cb59f7a3243e30b28fcdb54091b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed0a7a9096beb91db2b9bb30d4718fadde23237b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed7b0974dc5d98b9e7c83695c415d68b8781b0f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedd2ba1f9c401f33ec22fa7f189aa72bc09e8655` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf21dd227c2ccbdca725b3101250c62f8ea836180` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2dafc08a5d2c62fa721ea6c4b054a780761cfb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2f4145bfc1023b5eca25df9c8e4a94467e77db5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4f6ff3e44419780c7b0faa22dc5f2442931f191` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf61cb7d7c2b6e684b97e5b7bd1e67101bc7292dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf86d8218bcc15874f5d25c191fddd43f2334c3eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd36d0283de498adf7ad6fc65d231d3aed941194` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff4ad928194a82173d48947163bc12da97bbe079` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x027cb9b17335798b8df7327e33a386ab6517b2e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x087d63a5b5e4597d66e8d95150dfbd30053247f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c7d5ae016f806603cb1782bea29ac69471cab9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0dd2500a4c6ae96b17e7fe52eaf6c231a672a627` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x108bff6101734bfe3f0ad8f88ef53beee3dd8576` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16cf55c32fdd0e4e32ac64c59e557019221808e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x17cc53217ccb586ba37cf51e048442c421036c3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c2cf265694a790a9bdb3a6452f800868a941780` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1de101a72e945a1ce33e9d45fdeef8a03d903c4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24898ebfd99c6be4a6d421daf241fcfc45ad8a50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ab6bc11836a47bbc6c0460f3dcea630b3dcf6cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30a3924f695304e48149b9dcc987e9fe96da2fd7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36fea61e0c09f53cf4d7f01dd5303fcbb945578a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x416a1809d1dd4f8bcb8d854acdb24d210b4645eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x439f4f638a37ac66a77df01184ec388b7edb8c78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x488933457e89656d7ef7e69c10f2f80c7aca19b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b1791422de4807b2999eeb65359f3e13fa9d11d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4bbf98cc2b19950b4530769560dfc9d8ae0c09b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x517797f26b1bf6cdfede4eb718bb4ba753ebc8ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52c6cc4c433aba8415a0d43f9b978ab2945aadcc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x557703bd78c6711c2920e004734d4921f3f4ff90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60479f5b218965e1ee3a1babc909258bcba97c98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66d8dce96a5e3059f391252217fa14735eb9e9e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e183f138f1b945b449440cbfd256de69d89858f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7fa719dca583b5fe08a28fb168c8f55892092716` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x806059fbd70081b7494e36259268df35eeebf328` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80f3c1b46b541a581b1ba3057d3dcad1df0ddeb9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86873ca2c3e8db349f2b64c5e643519b8ce85d1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87592565d02db2b851ffa3efa75b576abc5506fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8df5620a549cdd8b18a34f421416d1efa810bf7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e8cb4f0861bcf6df7cc3602e63b8976303c2ee9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabd41c2bfb4d5e0d625fc15ae7a2995336609641` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb31fd6e9d7d016b731261995025c8ac7097c8cf7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb483c1dcae61200bacfdaaa2fa8b6235b44630f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb503f3e76b6527f48440a61209eac12ccd24326c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb7b4661f3f224d315bd52ed759b2e15f78209879` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc127e585e382b26ae1bb91ead31863da075fdfbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc59fddd72d043b188b6441fcfa89d0b144a88f2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd411939f2375271acc95ebdce10d5bde5c728437` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdddb02be857396de24609b322a30026354929a11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0bcab1c619d67973e4827ec81bed8a66cebef39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe33f9e2ead0b79d6882f1f1b39cc18875ee40af6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe49900b8a0707b751df58857b706fc84c068882d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeee856dad367a95f0f4f1756392b331ff3c85894` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf4e2d5dffbcde924c76daa1c6e962c74f50055f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf9b2f6d2a61923e61ad9f6daa78f52b7e1722b12` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc4870a0c190f4d191e85bd26d73747d487c040d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd9bbe6a9cd9cfbe1c862de3cbc91b26858c3758` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | 8 deployments: klaytn `0x07970f9d979d8594b394fe12345211c376adff89`; klaytn `0x4800577a71f68ed7ef4c09cfbe7fd6e066d5f0da`; klaytn `0x4bae7ba39e4e71660307dce780f1ec9b7b7666ee`; klaytn `0x808c707c53c3d30d0247e4b8d78aa0d8b75caae1`; klaytn `0x829fcfb6a6eea9d14eb4c14fac5b29874bdbad13`; klaytn `0xa6ade2e6c6f50a2d9b9c4b819e84b367f88c1598`; klaytn `0xe03487927e137526a2db796a9b3b4048ab615043`; klaytn `0xe0e67b991d6b5cf73d8a17a10c3de74616c1ec11` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x2791bfd60d232150bff86b39b7146c0eaaa2ba81` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1568486ca7c907238594722080ef34ddf945b2c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x24901703113c02f638a10597989a80c755ef23e0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x66dc86619bc07b36a39b2ebd37b11b29c83949ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c3be3a3d93f066b0fb13b5323af99e727e4dc49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa3d95cad2500bdc0f8ede58a2d5a24d7592c741e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb295608d148abe91c9f4d1befd51029161261067` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [bifrost_bifix_audit.pdf](https://github.com/bifrost-platform/BiFi-X/blob/main/docs/bifrost_bifix_audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 36 | high |
| [(ENG)_BiFi_BIFROST_Extension_Theori.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_BIFROST_Extension_Theori.pdf) | unknown | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [(ENG)_BiFi_Lending_Sooho_EN_Public.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_Lending_Sooho_EN_Public.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 65 | high |
| [(ENG)_BiFi_Token_Hexlant_EN.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_Token_Hexlant_EN.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | high |
| [(ENG)_BiFrost_BTC_Extension_CertiK.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFrost_BTC_Extension_CertiK.pdf) | CertiK | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [bifrost_bifi_audit.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/bifrost_bifi_audit.pdf) | Theori | Audit | 2021-02 | stale | Direct | contract_name | 70 | low |
| [theori-audit-rev-2.0.pdf](https://github.com/bifrost-platform/BiFi-staking-protocol/blob/main/docs/theori-audit-rev-2.0.pdf) | Theori | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xeace4e60f68e20797fc696c870066f1e19c2b37d`](./contracts/ethereum-1/0xeace4e60f68e20797fc696c870066f1e19c2b37d/) | BFCETHModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x488933457e89656d7ef7e69c10f2f80c7aca19b5`](./contracts/ethereum-1/0x488933457e89656d7ef7e69c10f2f80c7aca19b5/) | BFCModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18740cea640cba9ce836dc80ce61c7b9ca4f11cb`](./contracts/ethereum-1/0x18740cea640cba9ce836dc80ce61c7b9ca4f11cb/) | BiFiETHModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ce8acc2afc1ab5c77915fedb1f74f8d9b63b287`](./contracts/ethereum-1/0x4ce8acc2afc1ab5c77915fedb1f74f8d9b63b287/) | callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUser | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8aba88e8a4ab28319b782199cb17f0001ee67984`](./contracts/avalanche-43114/0x8aba88e8a4ab28319b782199cb17f0001ee67984/) | EtherHandlerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd514b33a361b82fe5d89070db6917cd4f73285d`](./contracts/ethereum-1/0xfd514b33a361b82fe5d89070db6917cd4f73285d/) | etherLiquidationManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x74326d2bfbf22312158850ac3b4f7ae8a0a347fd`](./contracts/avalanche-43114/0x74326d2bfbf22312158850ac3b4f7ae8a0a347fd/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1b0ba3b6fc27c4189869e4a2ecef2404e3e3d996`](./contracts/bsc-56/0x1b0ba3b6fc27c4189869e4a2ecef2404e3e3d996/) | ReqTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 92 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 132 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, low=1
- Match method counts: extraction_exact=172

Zero-match audit list:

- [2155] (ENG)_BiFi_BIFROST_Extension_Theori.pdf
- [2158] (ENG)_BiFrost_BTC_Extension_CertiK.pdf
- [2160] theori-audit-rev-2.0.pdf

Fork inheritance lineage and inherited audits are included when available.
