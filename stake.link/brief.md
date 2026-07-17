# Agentic Audit Brief: stake.link

## Project Overview

- Project: stake.link (`stake.link`)
- Website: [https://stake.link](https://stake.link)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.768Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 82 unique implementations (185 raw deployments)
- DeFi Llama TVL: $62,170,842.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 44 project-authored contract(s) across 3 chain(s); 10 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 9 common project-authored base contract(s) (strategy, vaultcontrollerstrategy, erc677). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 207; live-surface contracts included: 178 (152 live, 26 unknown).
- Excluded by liveness: 29 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 33/57 (57.9%)
- Deployed-live implementations: 58 of 82 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 33/58
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 82
- Raw deployments: 185
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 18
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 4 fresh, 8 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 25 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 52.6% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 30 | 51.7% | 2026-03 |
| Sigma Prime | Tier 2 | 5 | 8.6% | 2023-01 |
| unknown | Tier 2 | 4 | 6.9% | 2025-02 |
| Zellic | Tier 2 | 1 | 1.7% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CommunityVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x63b26ebd8586c18ed7e0ddba8df2ff690d803b5b`](./contracts/ethereum-1/0x63b26ebd8586c18ed7e0ddba8df2ff690d803b5b/); ethereum `0x94277a23095b27041bef93eaf9df81e8d733791a`; ethereum `0xe162e1093f30fd0b9434b9b654fc6bd8cf96a850` | ✅ Audited |
| CommunityVCS | unknown | ethereum | n/a | 4 deployments: ethereum [`0x11721f9e0152b2abda99b8b86e77d7820ef4f864`](./contracts/ethereum-1/0x11721f9e0152b2abda99b8b86e77d7820ef4f864/); ethereum `0x2339ad1a674fb8be412df6cc1c80fb2ba5c3f647`; ethereum `0x96418d70832d08cf683be81ee9890e1337fad41b`; ethereum `0xdd0c427d8a4a59e1d99ec2e9b69c6abf85ec21e5` | ✅ Audited |
| CommunityVCS | unknown | ethereum | n/a | 2 deployments: ethereum [`0x14024f4e7fef08cb19f8051456e39ee899990744`](./contracts/ethereum-1/0x14024f4e7fef08cb19f8051456e39ee899990744/); ethereum `0xac12290b097f6893322f5430627e472131fbc1b5` | ✅ Audited |
| EspressoFundFlowController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4397095f3d69c64aad1e8de61980064e3bdb934f`](./contracts/ethereum-1/0x4397095f3d69c64aad1e8de61980064e3bdb934f/); ethereum `0xf36bdbc45219f9fbac0741a92a546f95c97104bd` | ✅ Audited |
| EspressoStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc0d18551f249494f5900f5f99c03cf1d8ea6f70c`](./contracts/ethereum-1/0xc0d18551f249494f5900f5f99c03cf1d8ea6f70c/); ethereum `0xf0fb3aa0f6a4b84494b78f81103a789e81540344` | ✅ Audited |
| EspressoVault | unknown | ethereum | n/a | [`0xe3dd720ccf01493a4921b5ddf2a542ea1e1c2ab8`](./contracts/ethereum-1/0xe3dd720ccf01493a4921b5ddf2a542ea1e1c2ab8/) | ✅ Audited |
| FundFlowController | unknown | ethereum | n/a | 2 deployments: ethereum [`0xacbfc09a1c4966f11c969080374010536090a8e0`](./contracts/ethereum-1/0xacbfc09a1c4966f11c969080374010536090a8e0/); ethereum `0xd2e7381d8d3fcc97c1b4d88761bdbc8dd26a0200` | ✅ Audited |
| FundFlowController | unknown | ethereum | n/a | [`0xb8cc47b8a76b33b5330dc1f6c5f2eee5d0013061`](./contracts/ethereum-1/0xb8cc47b8a76b33b5330dc1f6c5f2eee5d0013061/) | ✅ Audited |
| LINKMigrator | periphery | ethereum | n/a | 2 deployments: ethereum [`0x08e11a9a74e7acc51ace382b6d02abe8b7cf7786`](./contracts/ethereum-1/0x08e11a9a74e7acc51ace382b6d02abe8b7cf7786/); ethereum `0xda77b1a19850606d1f4faa0e200e035faa85fb15` | ✅ Audited |
| LiquidSDIndexPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3509d9320660b2ffea0225b0006c98f1d6293c14`](./contracts/ethereum-1/0x3509d9320660b2ffea0225b0006c98f1d6293c14/); ethereum `0x535321013a1e2d5af3b1853812a64ca3fc6c1fa1` | ✅ Audited |
| LSTRewardsSplitterController | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x5e1bfbb052c3f7bfe0e7386f435343982b1f78c8`](./contracts/ethereum-1/0x5e1bfbb052c3f7bfe0e7386f435343982b1f78c8/); ethereum `0x73c433e006467f46e9f9fb18bc5f5a48e172e154` | ✅ Audited |
| MerkleDistributor | operational_periphery | ethereum | n/a | [`0x6f6fb6fbec4fb65a6535357d9d7e8f4f62319ac0`](./contracts/ethereum-1/0x6f6fb6fbec4fb65a6535357d9d7e8f4f62319ac0/) | ✅ Audited |
| OperatorVault | unknown | ethereum | n/a | 16 deployments: ethereum [`0x025ca436f644b61ded1bc9fcdb1f0b560b27bad1`](./contracts/ethereum-1/0x025ca436f644b61ded1bc9fcdb1f0b560b27bad1/); ethereum `0x42e71e641c1a11d0026f129830a0a2ef8ea7f883`; ethereum `0x63b835015247b60977e53fec357abd854cd01a74`; ethereum `0x6879670b1610406de180d06d19f8746943619298`; ethereum `0x6df26ae1cd755ef743e7b02bf7ef808eb1c26a4b`; ethereum `0x7d96bd72cef72dc1f8cf55bed7ab8f03b97557ea`; ethereum `0x8d87cbd8c3632b7ef117a15f8100943a23b7d03b`; ethereum `0xa3b3da7fd30176f97661ba49f432a093b68c2835`; ethereum `0xa7c576ef7b2742fd92edcdf83a03b5f23055facc`; ethereum `0xaa0eec9be8b23895a8aaaadd33063105c0f82d0c`; ethereum `0xaabc1c74639b2479e79603ca43f0298e7aabd392`; ethereum `0xb6196b3b89981483c27ab642b27743a62c3d68ac`; ethereum `0xc7f5872e3d8d5e994c37087dcee9b9e89960c7a3`; ethereum `0xc96d6382b9000f5a1f815a6ab6fcfc9befb6394c`; ethereum `0xda8531e75a80f553f556da767db46f514222c83f`; ethereum `0xdd629d38285d15847b3c57ae2eff1c3d860a6d76` | ✅ Audited |
| OperatorVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x6564fe0809e8b520a0e26ee644d98c4ea2c6fb45`](./contracts/ethereum-1/0x6564fe0809e8b520a0e26ee644d98c4ea2c6fb45/); ethereum `0x73cf930cf4f86117c308907ce18f8e8f16710387`; ethereum `0xac1d9c2b888fb20f7c20dc3c9313805a8dc165ee`; ethereum `0xc4baf9df7da0db146d8aedee447246ed47b4c2e4` | ✅ Audited |
| OperatorVCS | unknown | ethereum | n/a | 2 deployments: ethereum [`0x25fb2b9030f8c0002d018bb02b7d86b844baaf57`](./contracts/ethereum-1/0x25fb2b9030f8c0002d018bb02b7d86b844baaf57/); ethereum `0x4852e48215a4785ee99b640caced5378cc39d2a4` | ✅ Audited |
| OperatorVCS | unknown | ethereum | n/a | 4 deployments: ethereum [`0x584338dabae9e5429c334fc1ad41c46ac007bc29`](./contracts/ethereum-1/0x584338dabae9e5429c334fc1ad41c46ac007bc29/); ethereum `0x6059cec7604f72eee7cb836a9f42661b603fe286`; ethereum `0x9fe5d564dc0f2b2298f5e28305065f9780e049e6`; ethereum `0xfb8256cfceeacfb4835a3ebf47ebea2902e30567` | ✅ Audited |
| PolygonFundFlowController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x70f7daba7f2d0866088ecb1e3b29401a97f65951`](./contracts/ethereum-1/0x70f7daba7f2d0866088ecb1e3b29401a97f65951/); ethereum `0xf11af84e2c8ea43dfce24bf0fbfbbe4975f21e91` | ✅ Audited |
| PolygonStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0c1b992616915871ba921bbe14bb51928a07e129`](./contracts/ethereum-1/0x0c1b992616915871ba921bbe14bb51928a07e129/); ethereum `0x7d145ad7860d0a9c7bb824d5b2f85f575d0300aa` | ✅ Audited |
| PolygonVault | unknown | ethereum | n/a | [`0x33db657264a28555da73bd6696e810cfcb04414e`](./contracts/ethereum-1/0x33db657264a28555da73bd6696e810cfcb04414e/) | ✅ Audited |
| PriorityPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x090abe0e6bd58b8cd09b622ff1bde2b48b4cee55`](./contracts/ethereum-1/0x090abe0e6bd58b8cd09b622ff1bde2b48b4cee55/); ethereum `0xdc26867b7d0f599bd2def704468a8cf073375fd3` | ✅ Audited |
| PriorityPool | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0bc122c224b875ca79250a54a08a6e5df8def817`](./contracts/ethereum-1/0x0bc122c224b875ca79250a54a08a6e5df8def817/); ethereum `0x7f89e4a071136f8e3ec12d8f87793dc84038c054`; ethereum `0x80faea283474e9fd26ffd168829350ac766e7b8d`; ethereum `0x855039b459cea56707a61e641110097623de1bc3`; ethereum `0xe185500a98db33e3a023d1cd0141698e9c504923` | ✅ Audited |
| PriorityPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6fb9cc7d10a5286a864e760c2756e7f6d44d4d26`](./contracts/ethereum-1/0x6fb9cc7d10a5286a864e760c2756e7f6d44d4d26/); ethereum `0xddc796a66e8b83d0bccd97df33a6ccfba8fd60ea` | ✅ Audited |
| PriorityPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8e0cd48bc25945114a173749c05ce9c7e7aaa40e`](./contracts/ethereum-1/0x8e0cd48bc25945114a173749c05ce9c7e7aaa40e/); ethereum `0xcfa197495cf8e82d7b5df858f55b73208b8b9d67` | ✅ Audited |
| RebaseController | governance | ethereum | n/a | 3 deployments: ethereum [`0x1711e93eec78ba83d38c26f0ff284eb478bdbec4`](./contracts/ethereum-1/0x1711e93eec78ba83d38c26f0ff284eb478bdbec4/); ethereum `0x5537f6762c181125de36b3a6884e9726e35ddb90`; ethereum `0xda669f2ea3a54150242965238392d351235b1c1f` | ✅ Audited |
| RewardsPoolWSD | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x4a18aea755bd2ec7c0b7dd6f065bbb3725490342`](./contracts/ethereum-1/0x4a18aea755bd2ec7c0b7dd6f065bbb3725490342/); ethereum `0x77f555a6b9ec1fbff5f545128046338a566b5a56`; ethereum `0x8753c00d1a94d04a01b931830011d882a3f8cc72`; ethereum `0xbcd10c166b83edb0ebd05aaca5facab9c0a307f0`; ethereum `0xd6dbdda416c10ae2b7acbe2d141c0e52b1802c59` | ✅ Audited |
| SDLPool | core_logic | ethereum | n/a | [`0x0b2ef910ad0b34bf575eb09d37fd7da6c148ca4d`](./contracts/ethereum-1/0x0b2ef910ad0b34bf575eb09d37fd7da6c148ca4d/) | ✅ Audited |
| SDLVesting | operational_periphery | ethereum | n/a | 19 deployments: ethereum [`0x02a0f6242c43a3cb59e58d5fa7acd9e79bba3aba`](./contracts/ethereum-1/0x02a0f6242c43a3cb59e58d5fa7acd9e79bba3aba/); ethereum `0x03c1c19adb2009895422ead742a5e96a08b1ff94`; ethereum `0x08c1d70ff981fe2ff78194c973191bbc8226a8b9`; ethereum `0x378971b51c126834309cd95bea55f19adb5f59df`; ethereum `0x4ccb44bf85ade035c5b57e38edd385788c119c86`; ethereum `0x506c02763131f044b1c08ab9d4dd5dc5505ee9c7`; ethereum `0x5eb140f59e59dad692e13b8480c2f91758c341e5`; ethereum `0x6185a7f5344ff0c320e25ca1ed6526c4692fcb3d`; ethereum `0x8aaf17a93eece176de3e1beec7c775c9d4c9f7d5`; ethereum `0x8b5194fe64a2ee36f34089566b23df357f61024f`; ethereum `0x8b5256ae4a572b6cedbee9f93b60d2171abecfe3`; ethereum `0xb03697a0c4c86aef1a2f73d157dce101bfcfd1d4`; ethereum `0xb57b3d144aa18fe822ef3e4db26c74c34d864b02`; ethereum `0xe05edf1d3e73ddb87ebaa1fa9363efddbb0252a6`; ethereum `0xe22ee628e3aa38133bdd01159057767e1a93081a`; ethereum `0xe6476fff204e5932fce1b8fcdeab1049f97e51e0`; ethereum `0xf12cea09f4f29ba51906f0b95ef09627d714ea43`; ethereum `0xf509c90fbb166edbc06bcd3caa75f926842e3032`; ethereum `0xf7a8138302138b8eff5ffe6a228265ac449dc8f2` | ✅ Audited |
| StakingAllowance | operational_periphery | ethereum | n/a | [`0xa95c5ebb86e0de73b4fb8c47a45b792cfea28c23`](./contracts/ethereum-1/0xa95c5ebb86e0de73b4fb8c47a45b792cfea28c23/) | ✅ Audited |
| StakingPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1932a66a2689560d041cb90efa7f623317c182ba`](./contracts/ethereum-1/0x1932a66a2689560d041cb90efa7f623317c182ba/); ethereum `0xecd7921ecdea1f27994cff2e8a67b069f0c63111` | ✅ Audited |
| StakingPool | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2fe5a394f24b3dec644f982a9bb0bafe57308597`](./contracts/ethereum-1/0x2fe5a394f24b3dec644f982a9bb0bafe57308597/); ethereum `0x2ff4390db61f282ef4e6d4612c776b809a541753`; ethereum `0x5273a75694311a6c4f2acf5c5b8566d965cb6e50`; ethereum `0xb8b295df2cd735b15be5eb419517aa626fc43cd5` | ✅ Audited |
| StakingPool | unknown | ethereum | n/a | 6 deployments: ethereum [`0x880a12f050376ffbd2b37a6ed78b50e93b0103ba`](./contracts/ethereum-1/0x880a12f050376ffbd2b37a6ed78b50e93b0103ba/); ethereum `0x88d89a8b037e9df1a750415826c16e9841be9f9a`; ethereum `0x9a9e3e2b9c3a4a232c752875220be43f06f3d314`; ethereum `0xb074db74dc7f0f7d96c552331e59ae0a6b1ae088`; ethereum `0xebc52afcfc9495ec083264ed68e8e6f454e5f715`; ethereum `0xecb2826ea31edba61990e249a61d611ae82866f8` | ✅ Audited |
| VaultDepositController | unknown | ethereum | n/a | [`0x15fbab6fd5d82fd7b326e4f3a1562a4d464ea1bc`](./contracts/ethereum-1/0x15fbab6fd5d82fd7b326e4f3a1562a4d464ea1bc/) | ✅ Audited |
| WrappedSDToken | token | ethereum | n/a | 3 deployments: ethereum [`0x2091d83592d79b4de5fd2ce3d98679c32a9555e6`](./contracts/ethereum-1/0x2091d83592d79b4de5fd2ce3d98679c32a9555e6/); ethereum `0x43ff5ffab0973815ef8672f71c49ee5e53f30a48`; ethereum `0x911d86c72155c33993d594b0ec7e6206b4c803da` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BurnMintERC20 | token | polygon | n/a | 5 deployments: polygon [`0x0f6c1f639c76b8461476da030e654f25ddfb6e84`](./contracts/polygon-137/0x0f6c1f639c76b8461476da030e654f25ddfb6e84/); polygon `0x1d0347c535c88cf6bb72df75aed34363edb4b2ae`; polygon `0x282d9953b1c1e8d010de44bb98ed1ba9d8a52c54`; polygon `0x593722ed549a7fc69e60ce75b39924e38caba494`; polygon `0xba754d80d0b417f62aeda94a82b6b72e4fd8f553` | ⚠️ Unaudited |
| BurnMintERC677 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x3106e2e148525b3db36795b04691d444c24972fb`](./contracts/arbitrum-42161/0x3106e2e148525b3db36795b04691d444c24972fb/); arbitrum `0xdfea35757264f5b6c0ff21104151d9f991d0eec0` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | polygon | n/a | [`0xb4d2c033ea68674e56f6071b0d826d03152376db`](./contracts/polygon-137/0xb4d2c033ea68674e56f6071b0d826d03152376db/) | ⚠️ Unaudited |
| DelegatorPool | unknown | ethereum | n/a | [`0x7f8ced381e6cc79f69721563157b1add0a5b6d75`](./contracts/ethereum-1/0x7f8ced381e6cc79f69721563157b1add0a5b6d75/) | ⚠️ Unaudited |
| DelegatorPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x86637a9aba90204575db67451ba273b01cada2a3`](./contracts/ethereum-1/0x86637a9aba90204575db67451ba273b01cada2a3/); ethereum `0xaef186611ec96427d161107ffe14bba8aa1c2284` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21bb83f84d06ad561c7d35872b0dd5aa2f3c131b`](./contracts/ethereum-1/0x21bb83f84d06ad561c7d35872b0dd5aa2f3c131b/); ethereum `0x7700a0e892db04f4ee0f2fe7b4f32a2cdf200164` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2401e9ceada76a59753549f71858a3ece906f197`](./contracts/ethereum-1/0x2401e9ceada76a59753549f71858a3ece906f197/); ethereum `0x70f3b8724ea96d89532089e3578aa2a31bc78c4c` | ⚠️ Unaudited |
| EspressoRewardsConsumer | operational_periphery | ethereum | n/a | [`0xe69d92f6910b45da1d6ddfb380efaa6af56e33f9`](./contracts/ethereum-1/0xe69d92f6910b45da1d6ddfb380efaa6af56e33f9/) | ⚠️ Unaudited |
| FactoryBurnMintERC20 | registry | polygon | n/a | 3 deployments: polygon [`0xc271a17db5ce6f53745a3f466077ec816bc20a9c`](./contracts/polygon-137/0xc271a17db5ce6f53745a3f466077ec816bc20a9c/); base `0xe5b64a705db9d2395c471af1608972ccbace26e6`; base `0xf2f7901b7bba5799493b617b06ead1862f771297` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xb351ec0feaf4b99fdfd36b484d9ec90d0422493d`](./contracts/ethereum-1/0xb351ec0feaf4b99fdfd36b484d9ec90d0422493d/) | ⚠️ Unaudited |
| GovernanceTimelock | governance | ethereum | n/a | [`0xb72d8f5213b3e52faf13aa074b03c4788e78349f`](./contracts/ethereum-1/0xb72d8f5213b3e52faf13aa074b03c4788e78349f/) | ⚠️ Unaudited |
| L1Strategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x142b9850f26dc95ff8b8c972de7ce63eadbf6a64`](./contracts/ethereum-1/0x142b9850f26dc95ff8b8c972de7ce63eadbf6a64/); ethereum `0x93c3d7039743f0a8cdb6d3e240f07153f2b52ef1` | ⚠️ Unaudited |
| L1Strategy | unknown | ethereum | n/a | [`0xd6999c1dcb675ae5568931bb0cfca0c4f4fe21ca`](./contracts/ethereum-1/0xd6999c1dcb675ae5568931bb0cfca0c4f4fe21ca/) | ⚠️ Unaudited |
| L1Transmitter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e2a7b992769e43d4e76a4bb92de9c0532f25cde`](./contracts/ethereum-1/0x5e2a7b992769e43d4e76a4bb92de9c0532f25cde/); ethereum `0xb1abe6ddc78caec754b690cc499e5fc8496b1063` | ⚠️ Unaudited |
| LidoLSDIndexAdapter | unknown | ethereum | n/a | [`0xeb9f29b6395db28c0861c24f1cbfceee1ff0791d`](./contracts/ethereum-1/0xeb9f29b6395db28c0861c24f1cbfceee1ff0791d/) | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x20c0d719c2ef30ff5ac6e822261ee655f037d461`](./contracts/ethereum-1/0x20c0d719c2ef30ff5ac6e822261ee655f037d461/); ethereum `0x28d3148b74ecbd1bc410ec3d40ffd86cbff31b05`; ethereum `0x4a36c0c18174a2962d649e2c077fc53bcec5f68e`; ethereum `0x553636e52059b0339592f545d25a4c0a86e3a1bc`; polygon `0x48c5ca5de19a51083554cf58c6d9710c3d4b4122` | ⚠️ Unaudited |
| LPOG2 | token | ethereum | n/a | [`0x226ef92ca9c42ab3a786e434f19c8148efa6ccd8`](./contracts/ethereum-1/0x226ef92ca9c42ab3a786e434f19c8148efa6ccd8/) | ⚠️ Unaudited |
| PoolRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b4f81f9ebf8132d7fe114a1f96e333187979092`](./contracts/ethereum-1/0x6b4f81f9ebf8132d7fe114a1f96e333187979092/); ethereum `0x9ae7895258efb5ebda3e97e26f9819287c668a9a` | ⚠️ Unaudited |
| RewardsPool | unknown | ethereum | n/a | [`0x19282e0365a5b90c9864446448e29465a9d226eb`](./contracts/ethereum-1/0x19282e0365a5b90c9864446448e29465a9d226eb/) | ⚠️ Unaudited |
| RocketPoolLSDIndexAdapter | unknown | ethereum | n/a | [`0x6025533b9e095ab2730e1ad50219be8293d66220`](./contracts/ethereum-1/0x6025533b9e095ab2730e1ad50219be8293d66220/) | ⚠️ Unaudited |
| StakingProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x05f5344d4f961643fa5075a4a56a6303923d8514`](./contracts/ethereum-1/0x05f5344d4f961643fa5075a4a56a6303923d8514/); ethereum `0xc1b7a5346c4342d352205deeb15b049f567da740` | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x7287d90ed89d586d0d4b09f683c7f06a3e9a0997`](./contracts/ethereum-1/0x7287d90ed89d586d0d4b09f683c7f06a3e9a0997/); ethereum `0x8d0422d9859b2cb98761428b4518059e1cb3e8d9`; ethereum `0x8dbc8027ebee31bab05ade462b43a579575aefad`; ethereum `0xcc8f8f89ef7ba61e6a649b48221b0cf2544171cb`; ethereum `0xd9d1b5132ef63fc0e9056d063880e7b943ea2c6b` | ⚠️ Unaudited |
| WithdrawalPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x908b892276fb70fb6fd362ff97d58e7abf6d3690`](./contracts/ethereum-1/0x908b892276fb70fb6fd362ff97d58e7abf6d3690/); ethereum `0xbb782308bed54266a64e61e2dfe4cdc984aa44fb` | ⚠️ Unaudited |
| WithdrawalPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9e00fd7e4754cc0deca4d653c61190380318ed17`](./contracts/ethereum-1/0x9e00fd7e4754cc0deca4d653c61190380318ed17/); ethereum `0xa60b5146e44ff755e32bd51532842ceb41d0c248` | ⚠️ Unaudited |
| WithdrawalPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbfbf47b2a3b9e54a44257bf57d4b078170096458`](./contracts/ethereum-1/0xbfbf47b2a3b9e54a44257bf57d4b078170096458/); ethereum `0xf3683dc79a1447068e17d0d6fe64dd2824b897aa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x08341befe6428568cdf798d19223821697dcec15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21363611b30e133825044b41b897a03843c4b713` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37ea4139343d55b86c48775049defe31fbc87de8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39bbbd81ea05a09234a71b4c77775fe7bf45f947` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b82340a804776ee27b22a833204c637a429dbd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4524011801bb496deaaf675eed123ed2ba5945d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d577e066cccee517080a56a2f28af3b4ff33ce7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5225efaa21aadedd79d1098b46ff0e4059532041` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52861245e940c7fa964d5bd6d0f2fbeaa12227af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c1e2d2c55c83de945e3f37df694cde8452c1e82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8aad084a290c48a1580ef874211d74594e3d674b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ef5d844de9bbf52fcaced2ecf66b7faf0b3aa12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90b14377df02edb410c47debfaaa20b9a1c043a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91aaa787b661419ab7e7eac4dbc665f37295dd96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96a5915df3e4f4911f7c73e28d660ea014173d01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9aea3f26f5de8f5d87f4846c25fae77849695aca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cbb383d2db695abbcbb37d4ff15949f5490c394` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3cae01bfaad7aec11c43844813a4115f3f432dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd12aa47c186385b2c3c41bce663d5379e6bd705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc548b12dc5a8b4a6d1649d038a72b70a1fc3b2b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5842eaebccf357b1eeebc1a34407c112297bb93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcee29d4c99cea758bf887b235650b21d15d12547` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0a48c7f968e79d9e66f89d4bbe09d643b5fc9e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c3b66a9737872b643e8ee34962b9af0942950a8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [[2025-07-02] Zellic - Polygon Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-07-02%5D%20Zellic%20-%20Polygon%20Staking.pdf) | Zellic | Audit | 2025-07 | aging | Direct | contract_name | 1 | n/a |
| [[2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2022-08-01%5D%20Sigma%20Prime%20-%20Core%20Staking%20Contracts%20Report.pdf) | Sigma Prime | Audit | 2022-08 | stale | Direct | contract_name | 4 | n/a |
| [[2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-01-01%5D%20Sigma%20Prime%20-%20Core%20%26%20LINK%20Staking%20Report.pdf) | Sigma Prime | Audit | 2023-01 | stale | Direct | contract_name | 4 | n/a |
| [[2023-03-07] Cyfrin - LSD Index Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-03-07%5D%20Cyfrin%20-%20LSD%20Index%20Pool%20Report.pdf) | Cyfrin | Audit | 2023-03 | stale | Direct | contract_name | 2 | high |
| [[2023-08-06] Trust Security - SDLPool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-08-06%5D%20Trust%20Security%20-%20SDLPool%20Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 1 | n/a |
| [[2023-08-25] Cyfrin - Priority Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-08-25%5D%20Cyfrin%20-%20Priority%20Pool%20Report.pdf) | Cyfrin | Audit | 2023-08 | stale | Direct | contract_name | 1 | n/a |
| [[2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-10-01%5D%20Trust%20Security%20-%20Priority%20Pool%20%26%20LINK%20Staking%20v0.2%20Report.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | 2 | n/a |
| [[2024-04-30] Trust Security - Insurance Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-04-30%5D%20Trust%20Security%20-%20Insurance%20Pool%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [[2024-04-30] Trust Security - Metis Staking Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-04-30%5D%20Trust%20Security%20-%20Metis%20Staking%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [[2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-09-17%5D%20Cyfrin%20-%20LINK%20Staking%20Withdrawals.pdf) | Cyfrin | Audit | 2024-09 | aging | Direct | contract_name | 1 | n/a |
| [[2024-11-27] Codehawks - LINK Staking Withdrawals.md](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-11-27%5D%20Codehawks%20-%20LINK%20Staking%20Withdrawals.md) | Cyfrin | Audit | 2024-11 | aging | Direct | contract_name | 3 | n/a |
| [[2025-01-20] Cyfrin Staking Proxy.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-01-20%5D%20Cyfrin%20Staking%20Proxy.pdf) | Cyfrin | Audit | 2025-01 | aging | Direct | contract_name | 3 | n/a |
| [[2025-02-04] Trust - LINK Staking Withdrawals.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-02-04%5D%20Trust%20-%20LINK%20Staking%20Withdrawals.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 3 | n/a |
| [[2025-02-28] Cyfrin - CL Rewards Claiming.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-02-28%5D%20Cyfrin%20-%20CL%20Rewards%20Claiming.pdf) | Cyfrin | Audit | 2025-02 | aging | Direct | contract_name | 38 | high |
| [[2025-05-19] Cyfrin - Polygon Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-05-19%5D%20Cyfrin%20-%20Polygon%20Staking.pdf) | Cyfrin | Audit | 2025-05 | aging | Direct | contract_name | 5 | high |
| [[2025-06-04] Cyfrin - LINK Migrator.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-06-04%5D%20Cyfrin%20-%20LINK%20Migrator.pdf) | Cyfrin | Audit | 2025-06 | aging | Direct | contract_name | 2 | n/a |
| [[2025-08-02] Cyfrin - SDL Vesting.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-08-02%5D%20Cyfrin%20-%20SDL%20Vesting.pdf) | Cyfrin | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [[2025-08-02] Cyfrin - Vesting.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-08-02%5D%20Cyfrin%20-%20Vesting.pdf) | Cyfrin | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [[2026-02-04] Cyfrin - Espresso Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2026-02-04%5D%20Cyfrin%20-%20Espresso%20Staking.pdf) | Cyfrin | Audit | 2026-02 | fresh | Direct | contract_name | 5 | high |
| [[2026-03-23] Cyfrin - Rebase Batching.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2026-03-23%5D%20Cyfrin%20-%20Rebase%20Batching.pdf) | Cyfrin | Audit | 2026-03 | fresh | Direct | contract_name | 36 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x0f6c1f639c76b8461476da030e654f25ddfb6e84`](./contracts/polygon-137/0x0f6c1f639c76b8461476da030e654f25ddfb6e84/) | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3106e2e148525b3db36795b04691d444c24972fb`](./contracts/arbitrum-42161/0x3106e2e148525b3db36795b04691d444c24972fb/) | BurnMintERC677 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb4d2c033ea68674e56f6071b0d826d03152376db`](./contracts/polygon-137/0xb4d2c033ea68674e56f6071b0d826d03152376db/) | BurnMintTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f8ced381e6cc79f69721563157b1add0a5b6d75`](./contracts/ethereum-1/0x7f8ced381e6cc79f69721563157b1add0a5b6d75/) | DelegatorPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86637a9aba90204575db67451ba273b01cada2a3`](./contracts/ethereum-1/0x86637a9aba90204575db67451ba273b01cada2a3/) | DelegatorPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe69d92f6910b45da1d6ddfb380efaa6af56e33f9`](./contracts/ethereum-1/0xe69d92f6910b45da1d6ddfb380efaa6af56e33f9/) | EspressoRewardsConsumer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc271a17db5ce6f53745a3f466077ec816bc20a9c`](./contracts/polygon-137/0xc271a17db5ce6f53745a3f466077ec816bc20a9c/) | FactoryBurnMintERC20 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb72d8f5213b3e52faf13aa074b03c4788e78349f`](./contracts/ethereum-1/0xb72d8f5213b3e52faf13aa074b03c4788e78349f/) | GovernanceTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x142b9850f26dc95ff8b8c972de7ce63eadbf6a64`](./contracts/ethereum-1/0x142b9850f26dc95ff8b8c972de7ce63eadbf6a64/) | L1Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6999c1dcb675ae5568931bb0cfca0c4f4fe21ca`](./contracts/ethereum-1/0xd6999c1dcb675ae5568931bb0cfca0c4f4fe21ca/) | L1Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e2a7b992769e43d4e76a4bb92de9c0532f25cde`](./contracts/ethereum-1/0x5e2a7b992769e43d4e76a4bb92de9c0532f25cde/) | L1Transmitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb9f29b6395db28c0861c24f1cbfceee1ff0791d`](./contracts/ethereum-1/0xeb9f29b6395db28c0861c24f1cbfceee1ff0791d/) | LidoLSDIndexAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20c0d719c2ef30ff5ac6e822261ee655f037d461`](./contracts/ethereum-1/0x20c0d719c2ef30ff5ac6e822261ee655f037d461/) | LockReleaseTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226ef92ca9c42ab3a786e434f19c8148efa6ccd8`](./contracts/ethereum-1/0x226ef92ca9c42ab3a786e434f19c8148efa6ccd8/) | LPOG2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b4f81f9ebf8132d7fe114a1f96e333187979092`](./contracts/ethereum-1/0x6b4f81f9ebf8132d7fe114a1f96e333187979092/) | PoolRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19282e0365a5b90c9864446448e29465a9d226eb`](./contracts/ethereum-1/0x19282e0365a5b90c9864446448e29465a9d226eb/) | RewardsPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6025533b9e095ab2730e1ad50219be8293d66220`](./contracts/ethereum-1/0x6025533b9e095ab2730e1ad50219be8293d66220/) | RocketPoolLSDIndexAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05f5344d4f961643fa5075a4a56a6303923d8514`](./contracts/ethereum-1/0x05f5344d4f961643fa5075a4a56a6303923d8514/) | StakingProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7287d90ed89d586d0d4b09f683c7f06a3e9a0997`](./contracts/ethereum-1/0x7287d90ed89d586d0d4b09f683c7f06a3e9a0997/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x908b892276fb70fb6fd362ff97d58e7abf6d3690`](./contracts/ethereum-1/0x908b892276fb70fb6fd362ff97d58e7abf6d3690/) | WithdrawalPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e00fd7e4754cc0deca4d653c61190380318ed17`](./contracts/ethereum-1/0x9e00fd7e4754cc0deca4d653c61190380318ed17/) | WithdrawalPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbfbf47b2a3b9e54a44257bf57d4b078170096458`](./contracts/ethereum-1/0xbfbf47b2a3b9e54a44257bf57d4b078170096458/) | WithdrawalPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 55 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: contract_name=27, extraction_exact=86

Zero-match audit list:

- [10458] [2024-04-30] Trust Security - Insurance Pool Report.pdf
- [10459] [2024-04-30] Trust Security - Metis Staking Report.pdf

Fork inheritance lineage and inherited audits are included when available.
