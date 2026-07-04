# Agentic Audit Brief: stake.link

## Project Overview

- Project: stake.link (`stake.link`)
- Website: [https://stake.link](https://stake.link)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.735Z
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

- Coverage of deployed-live implementations: 33/58 (56.9%)
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
- Tier 1 coverage: 51.7% (Cyfrin)

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
| CommunityVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x63b26e...803b5b`](./contracts/ethereum-1/0x63b26ebd8586c18ed7e0ddba8df2ff690d803b5b/); ethereum `0x94277a...33791a`; ethereum `0xe162e1...96a850` | ✅ Audited |
| CommunityVCS | unknown | ethereum | n/a | 4 deployments: ethereum [`0x11721f...f4f864`](./contracts/ethereum-1/0x11721f9e0152b2abda99b8b86e77d7820ef4f864/); ethereum `0x2339ad...c3f647`; ethereum `0x96418d...fad41b`; ethereum `0xdd0c42...ec21e5` | ✅ Audited |
| CommunityVCS | unknown | ethereum | n/a | 2 deployments: ethereum [`0x14024f...990744`](./contracts/ethereum-1/0x14024f4e7fef08cb19f8051456e39ee899990744/); ethereum `0xac1229...fbc1b5` | ✅ Audited |
| EspressoFundFlowController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x439709...db934f`](./contracts/ethereum-1/0x4397095f3d69c64aad1e8de61980064e3bdb934f/); ethereum `0xf36bdb...7104bd` | ✅ Audited |
| EspressoStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc0d185...a6f70c`](./contracts/ethereum-1/0xc0d18551f249494f5900f5f99c03cf1d8ea6f70c/); ethereum `0xf0fb3a...540344` | ✅ Audited |
| EspressoVault | unknown | ethereum | n/a | [`0xe3dd72...1c2ab8`](./contracts/ethereum-1/0xe3dd720ccf01493a4921b5ddf2a542ea1e1c2ab8/) | ✅ Audited |
| FundFlowController | unknown | ethereum | n/a | 2 deployments: ethereum [`0xacbfc0...90a8e0`](./contracts/ethereum-1/0xacbfc09a1c4966f11c969080374010536090a8e0/); ethereum `0xd2e738...6a0200` | ✅ Audited |
| FundFlowController | unknown | ethereum | n/a | [`0xb8cc47...013061`](./contracts/ethereum-1/0xb8cc47b8a76b33b5330dc1f6c5f2eee5d0013061/) | ✅ Audited |
| LINKMigrator | periphery | ethereum | n/a | 2 deployments: ethereum [`0x08e11a...cf7786`](./contracts/ethereum-1/0x08e11a9a74e7acc51ace382b6d02abe8b7cf7786/); ethereum `0xda77b1...85fb15` | ✅ Audited |
| LiquidSDIndexPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3509d9...293c14`](./contracts/ethereum-1/0x3509d9320660b2ffea0225b0006c98f1d6293c14/); ethereum `0x535321...6c1fa1` | ✅ Audited |
| LSTRewardsSplitterController | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x5e1bfb...1f78c8`](./contracts/ethereum-1/0x5e1bfbb052c3f7bfe0e7386f435343982b1f78c8/); ethereum `0x73c433...72e154` | ✅ Audited |
| MerkleDistributor | operational_periphery | ethereum | n/a | [`0x6f6fb6...319ac0`](./contracts/ethereum-1/0x6f6fb6fbec4fb65a6535357d9d7e8f4f62319ac0/) | ✅ Audited |
| OperatorVault | unknown | ethereum | n/a | 16 deployments: ethereum [`0x025ca4...27bad1`](./contracts/ethereum-1/0x025ca436f644b61ded1bc9fcdb1f0b560b27bad1/); ethereum `0x42e71e...a7f883`; ethereum `0x63b835...d01a74`; ethereum `0x687967...619298`; ethereum `0x6df26a...c26a4b`; ethereum `0x7d96bd...7557ea`; ethereum `0x8d87cb...b7d03b`; ethereum `0xa3b3da...8c2835`; ethereum `0xa7c576...55facc`; ethereum `0xaa0eec...f82d0c`; ethereum `0xaabc1c...abd392`; ethereum `0xb6196b...3d68ac`; ethereum `0xc7f587...60c7a3`; ethereum `0xc96d63...b6394c`; ethereum `0xda8531...22c83f`; ethereum `0xdd629d...0a6d76` | ✅ Audited |
| OperatorVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x6564fe...c6fb45`](./contracts/ethereum-1/0x6564fe0809e8b520a0e26ee644d98c4ea2c6fb45/); ethereum `0x73cf93...710387`; ethereum `0xac1d9c...c165ee`; ethereum `0xc4baf9...b4c2e4` | ✅ Audited |
| OperatorVCS | unknown | ethereum | n/a | 2 deployments: ethereum [`0x25fb2b...baaf57`](./contracts/ethereum-1/0x25fb2b9030f8c0002d018bb02b7d86b844baaf57/); ethereum `0x4852e4...39d2a4` | ✅ Audited |
| OperatorVCS | unknown | ethereum | n/a | 4 deployments: ethereum [`0x584338...07bc29`](./contracts/ethereum-1/0x584338dabae9e5429c334fc1ad41c46ac007bc29/); ethereum `0x6059ce...3fe286`; ethereum `0x9fe5d5...e049e6`; ethereum `0xfb8256...e30567` | ✅ Audited |
| PolygonFundFlowController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x70f7da...f65951`](./contracts/ethereum-1/0x70f7daba7f2d0866088ecb1e3b29401a97f65951/); ethereum `0xf11af8...f21e91` | ✅ Audited |
| PolygonStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0c1b99...07e129`](./contracts/ethereum-1/0x0c1b992616915871ba921bbe14bb51928a07e129/); ethereum `0x7d145a...0300aa` | ✅ Audited |
| PolygonVault | unknown | ethereum | n/a | [`0x33db65...04414e`](./contracts/ethereum-1/0x33db657264a28555da73bd6696e810cfcb04414e/) | ✅ Audited |
| PriorityPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x090abe...4cee55`](./contracts/ethereum-1/0x090abe0e6bd58b8cd09b622ff1bde2b48b4cee55/); ethereum `0xdc2686...375fd3` | ✅ Audited |
| PriorityPool | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0bc122...def817`](./contracts/ethereum-1/0x0bc122c224b875ca79250a54a08a6e5df8def817/); ethereum `0x7f89e4...38c054`; ethereum `0x80faea...6e7b8d`; ethereum `0x855039...de1bc3`; ethereum `0xe18550...504923` | ✅ Audited |
| PriorityPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6fb9cc...4d4d26`](./contracts/ethereum-1/0x6fb9cc7d10a5286a864e760c2756e7f6d44d4d26/); ethereum `0xddc796...fd60ea` | ✅ Audited |
| PriorityPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8e0cd4...aaa40e`](./contracts/ethereum-1/0x8e0cd48bc25945114a173749c05ce9c7e7aaa40e/); ethereum `0xcfa197...8b9d67` | ✅ Audited |
| RebaseController | governance | ethereum | n/a | 3 deployments: ethereum [`0x1711e9...bdbec4`](./contracts/ethereum-1/0x1711e93eec78ba83d38c26f0ff284eb478bdbec4/); ethereum `0x5537f6...5ddb90`; ethereum `0xda669f...5b1c1f` | ✅ Audited |
| RewardsPoolWSD | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x4a18ae...490342`](./contracts/ethereum-1/0x4a18aea755bd2ec7c0b7dd6f065bbb3725490342/); ethereum `0x77f555...6b5a56`; ethereum `0x8753c0...f8cc72`; ethereum `0xbcd10c...a307f0`; ethereum `0xd6dbdd...802c59` | ✅ Audited |
| SDLPool | core_logic | ethereum | n/a | [`0x0b2ef9...48ca4d`](./contracts/ethereum-1/0x0b2ef910ad0b34bf575eb09d37fd7da6c148ca4d/) | ✅ Audited |
| SDLVesting | operational_periphery | ethereum | n/a | 19 deployments: ethereum [`0x02a0f6...ba3aba`](./contracts/ethereum-1/0x02a0f6242c43a3cb59e58d5fa7acd9e79bba3aba/); ethereum `0x03c1c1...b1ff94`; ethereum `0x08c1d7...26a8b9`; ethereum `0x378971...5f59df`; ethereum `0x4ccb44...119c86`; ethereum `0x506c02...5ee9c7`; ethereum `0x5eb140...c341e5`; ethereum `0x6185a7...2fcb3d`; ethereum `0x8aaf17...c9f7d5`; ethereum `0x8b5194...61024f`; ethereum `0x8b5256...becfe3`; ethereum `0xb03697...cfd1d4`; ethereum `0xb57b3d...864b02`; ethereum `0xe05edf...0252a6`; ethereum `0xe22ee6...93081a`; ethereum `0xe6476f...7e51e0`; ethereum `0xf12cea...14ea43`; ethereum `0xf509c9...2e3032`; ethereum `0xf7a813...9dc8f2` | ✅ Audited |
| StakingAllowance | operational_periphery | ethereum | n/a | [`0xa95c5e...a28c23`](./contracts/ethereum-1/0xa95c5ebb86e0de73b4fb8c47a45b792cfea28c23/) | ✅ Audited |
| StakingPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1932a6...c182ba`](./contracts/ethereum-1/0x1932a66a2689560d041cb90efa7f623317c182ba/); ethereum `0xecd792...c63111` | ✅ Audited |
| StakingPool | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2fe5a3...308597`](./contracts/ethereum-1/0x2fe5a394f24b3dec644f982a9bb0bafe57308597/); ethereum `0x2ff439...541753`; ethereum `0x5273a7...cb6e50`; ethereum `0xb8b295...c43cd5` | ✅ Audited |
| StakingPool | unknown | ethereum | n/a | 6 deployments: ethereum [`0x880a12...0103ba`](./contracts/ethereum-1/0x880a12f050376ffbd2b37a6ed78b50e93b0103ba/); ethereum `0x88d89a...be9f9a`; ethereum `0x9a9e3e...f3d314`; ethereum `0xb074db...1ae088`; ethereum `0xebc52a...e5f715`; ethereum `0xecb282...2866f8` | ✅ Audited |
| VaultDepositController | unknown | ethereum | n/a | [`0x15fbab...4ea1bc`](./contracts/ethereum-1/0x15fbab6fd5d82fd7b326e4f3a1562a4d464ea1bc/) | ✅ Audited |
| WrappedSDToken | token | ethereum | n/a | 3 deployments: ethereum [`0x2091d8...9555e6`](./contracts/ethereum-1/0x2091d83592d79b4de5fd2ce3d98679c32a9555e6/); ethereum `0x43ff5f...f30a48`; ethereum `0x911d86...c803da` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BurnMintERC20 | token | polygon | n/a | 5 deployments: polygon [`0x0f6c1f...fb6e84`](./contracts/polygon-137/0x0f6c1f639c76b8461476da030e654f25ddfb6e84/); polygon `0x1d0347...b4b2ae`; polygon `0x282d99...a52c54`; polygon `0x593722...aba494`; polygon `0xba754d...d8f553` | ⚠️ Unaudited |
| BurnMintERC677 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x3106e2...4972fb`](./contracts/arbitrum-42161/0x3106e2e148525b3db36795b04691d444c24972fb/); arbitrum `0xdfea35...d0eec0` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | polygon | n/a | [`0xb4d2c0...2376db`](./contracts/polygon-137/0xb4d2c033ea68674e56f6071b0d826d03152376db/) | ⚠️ Unaudited |
| DelegatorPool | unknown | ethereum | n/a | [`0x7f8ced...5b6d75`](./contracts/ethereum-1/0x7f8ced381e6cc79f69721563157b1add0a5b6d75/) | ⚠️ Unaudited |
| DelegatorPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x86637a...ada2a3`](./contracts/ethereum-1/0x86637a9aba90204575db67451ba273b01cada2a3/); ethereum `0xaef186...1c2284` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21bb83...3c131b`](./contracts/ethereum-1/0x21bb83f84d06ad561c7d35872b0dd5aa2f3c131b/); ethereum `0x7700a0...200164` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2401e9...06f197`](./contracts/ethereum-1/0x2401e9ceada76a59753549f71858a3ece906f197/); ethereum `0x70f3b8...c78c4c` | ⚠️ Unaudited |
| EspressoRewardsConsumer | operational_periphery | ethereum | n/a | [`0xe69d92...6e33f9`](./contracts/ethereum-1/0xe69d92f6910b45da1d6ddfb380efaa6af56e33f9/) | ⚠️ Unaudited |
| FactoryBurnMintERC20 | registry | polygon | n/a | 3 deployments: polygon [`0xc271a1...c20a9c`](./contracts/polygon-137/0xc271a17db5ce6f53745a3f466077ec816bc20a9c/); base `0xe5b64a...ce26e6`; base `0xf2f790...771297` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xb351ec...22493d`](./contracts/ethereum-1/0xb351ec0feaf4b99fdfd36b484d9ec90d0422493d/) | ⚠️ Unaudited |
| GovernanceTimelock | governance | ethereum | n/a | [`0xb72d8f...78349f`](./contracts/ethereum-1/0xb72d8f5213b3e52faf13aa074b03c4788e78349f/) | ⚠️ Unaudited |
| L1Strategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x142b98...bf6a64`](./contracts/ethereum-1/0x142b9850f26dc95ff8b8c972de7ce63eadbf6a64/); ethereum `0x93c3d7...b52ef1` | ⚠️ Unaudited |
| L1Strategy | unknown | ethereum | n/a | [`0xd6999c...fe21ca`](./contracts/ethereum-1/0xd6999c1dcb675ae5568931bb0cfca0c4f4fe21ca/) | ⚠️ Unaudited |
| L1Transmitter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e2a7b...f25cde`](./contracts/ethereum-1/0x5e2a7b992769e43d4e76a4bb92de9c0532f25cde/); ethereum `0xb1abe6...6b1063` | ⚠️ Unaudited |
| LidoLSDIndexAdapter | unknown | ethereum | n/a | [`0xeb9f29...f0791d`](./contracts/ethereum-1/0xeb9f29b6395db28c0861c24f1cbfceee1ff0791d/) | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x20c0d7...37d461`](./contracts/ethereum-1/0x20c0d719c2ef30ff5ac6e822261ee655f037d461/); ethereum `0x28d314...f31b05`; ethereum `0x4a36c0...c5f68e`; ethereum `0x553636...e3a1bc`; polygon `0x48c5ca...4b4122` | ⚠️ Unaudited |
| LPOG2 | token | ethereum | n/a | [`0x226ef9...a6ccd8`](./contracts/ethereum-1/0x226ef92ca9c42ab3a786e434f19c8148efa6ccd8/) | ⚠️ Unaudited |
| PoolRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b4f81...979092`](./contracts/ethereum-1/0x6b4f81f9ebf8132d7fe114a1f96e333187979092/); ethereum `0x9ae789...668a9a` | ⚠️ Unaudited |
| RewardsPool | unknown | ethereum | n/a | [`0x19282e...d226eb`](./contracts/ethereum-1/0x19282e0365a5b90c9864446448e29465a9d226eb/) | ⚠️ Unaudited |
| RocketPoolLSDIndexAdapter | unknown | ethereum | n/a | [`0x602553...d66220`](./contracts/ethereum-1/0x6025533b9e095ab2730e1ad50219be8293d66220/) | ⚠️ Unaudited |
| StakingProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x05f534...3d8514`](./contracts/ethereum-1/0x05f5344d4f961643fa5075a4a56a6303923d8514/); ethereum `0xc1b7a5...7da740` | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x7287d9...9a0997`](./contracts/ethereum-1/0x7287d90ed89d586d0d4b09f683c7f06a3e9a0997/); ethereum `0x8d0422...b3e8d9`; ethereum `0x8dbc80...5aefad`; ethereum `0xcc8f8f...4171cb`; ethereum `0xd9d1b5...ea2c6b` | ⚠️ Unaudited |
| WithdrawalPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x908b89...6d3690`](./contracts/ethereum-1/0x908b892276fb70fb6fd362ff97d58e7abf6d3690/); ethereum `0xbb7823...aa44fb` | ⚠️ Unaudited |
| WithdrawalPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9e00fd...18ed17`](./contracts/ethereum-1/0x9e00fd7e4754cc0deca4d653c61190380318ed17/); ethereum `0xa60b51...d0c248` | ⚠️ Unaudited |
| WithdrawalPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbfbf47...096458`](./contracts/ethereum-1/0xbfbf47b2a3b9e54a44257bf57d4b078170096458/); ethereum `0xf3683d...b897aa` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x08341b...dcec15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x213636...c4b713` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37ea41...c87de8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39bbbd...45f947` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b8234...29dbd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x452401...5945d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d577e...f33ce7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5225ef...532041` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x528612...2227af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c1e2d...2c1e82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8aad08...3d674b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ef5d8...b3aa12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90b143...c043a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91aaa7...95dd96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96a591...173d01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9aea3f...695aca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cbb38...90c394` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3cae0...f432dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd12aa...6bd705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc548b1...c3b2b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5842e...97bb93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcee29d...d12547` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0a48c...5fc9e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c3b66...2950a8` | ❓ Unverified |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 82 |

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
