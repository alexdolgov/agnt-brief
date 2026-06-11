# Agentic Audit Brief: stake.link

## Project Overview

- Project: stake.link (`stake.link`)
- Website: [https://stake.link](https://stake.link)
- Lifecycle: active (Tier 0, 53.8% below peak)
- Generated: 2026-06-11T03:05:56.027Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-ce25
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 71 unique implementations (184 raw deployments)
- DeFi Llama TVL: $79,772,694.00
- On-chain TVL (included contracts): $76,781,543.51
- TVL by chain: Ethereum $76,745,638.55 | Arbitrum $35,904.96

## Project Description

stake.link is primarily a Chainlink/LINK liquid staking protocol. It enables users to stake LINK and receive liquid staking-related tokens/derivatives, with additional auxiliary staking, rewards, vesting, and historical index-pool components where supported by current live contracts and documentation.

### Architecture

All staking families share common infrastructure such as StakingPool, PriorityPool, and WithdrawalPool contracts, which are reused across different strategies (Espresso, Polygon, LINK). Token contracts provide the wrapped staking derivatives that represent user positions, and governance contracts like FundFlowController and RebaseController manage rewards and rebasing across the protocol.

## Audit Coverage Summary

- Verified implementations audited: 28/46 (60.9%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 71
- Raw deployments: 184
- Audits discovered: 20
- Scoreable audits (matched contracts): 18
- ASD (verified + unaudited TVL): $35,905.19
- Latest audit: 2026-03 (fresh)
- Staleness: 5 fresh, 7 aging, 8 stale, 0 unknown
- Tier 1 coverage: 45.7% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 21 | 45.7% | 2026-03 |
| Sigma Prime | Tier 2 | 12 | 26.1% | 2023-01 |
| unknown | Tier 2 | 12 | 26.1% | 2025-02 |
| Zellic | Tier 2 | 3 | 6.5% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (28)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakingPool | core_logic | ethereum | 11 deployments: ethereum [`0x1932a6...c182ba`](./contracts/ethereum-1/0x1932a66a2689560d041cb90efa7f623317c182ba/); ethereum `0x2ff439...541753`; ethereum `0x5273a7...cb6e50`; ethereum `0x880a12...0103ba`; ethereum `0x88d89a...be9f9a`; ethereum `0x9a9e3e...f3d314`; ethereum `0xb074db...1ae088`; ethereum `0xb8b295...c43cd5`; ethereum `0xebc52a...e5f715`; ethereum `0xecb282...2866f8`; ethereum `0xecd792...c63111` | ✅ Audited |
| WrappedSDToken | token | ethereum | 4 deployments: ethereum [`0x1a72be...653dec`](./contracts/ethereum-1/0x1a72be10f6e6cf0ca100a407352e50d0ed653dec/); ethereum `0x2091d8...9555e6`; ethereum `0x43ff5f...f30a48`; ethereum `0x911d86...c803da` | ✅ Audited |
| PriorityPool | core_logic | ethereum | 8 deployments: ethereum [`0x0bc122...def817`](./contracts/ethereum-1/0x0bc122c224b875ca79250a54a08a6e5df8def817/); ethereum `0x7f89e4...38c054`; ethereum `0x80faea...6e7b8d`; ethereum `0x855039...de1bc3`; ethereum `0xcfa197...8b9d67`; ethereum `0xdc2686...375fd3`; ethereum `0xddc796...fd60ea`; ethereum `0xe18550...504923` | ✅ Audited |
| EspressoStrategy | core_logic | ethereum | [`0xf0fb3a...540344`](./contracts/ethereum-1/0xf0fb3aa0f6a4b84494b78f81103a789e81540344/) | ✅ Audited |
| OperatorVault | core_logic | ethereum | 20 deployments: ethereum [`0x025ca4...27bad1`](./contracts/ethereum-1/0x025ca436f644b61ded1bc9fcdb1f0b560b27bad1/); ethereum `0x42e71e...a7f883`; ethereum `0x63b835...d01a74`; ethereum `0x6564fe...c6fb45`; ethereum `0x687967...619298`; ethereum `0x6df26a...c26a4b`; ethereum `0x73cf93...710387`; ethereum `0x7d96bd...7557ea`; ethereum `0x8d87cb...b7d03b`; ethereum `0xa3b3da...8c2835`; ethereum `0xa7c576...55facc`; ethereum `0xaa0eec...f82d0c`; ethereum `0xaabc1c...abd392`; ethereum `0xac1d9c...c165ee`; ethereum `0xb6196b...3d68ac`; ethereum `0xc4baf9...b4c2e4`; ethereum `0xc7f587...60c7a3`; ethereum `0xc96d63...b6394c`; ethereum `0xda8531...22c83f`; ethereum `0xdd629d...0a6d76` | ✅ Audited |
| CommunityVault | core_logic | ethereum | 3 deployments: ethereum [`0x63b26e...803b5b`](./contracts/ethereum-1/0x63b26ebd8586c18ed7e0ddba8df2ff690d803b5b/); ethereum `0x94277a...33791a`; ethereum `0xe162e1...96a850` | ✅ Audited |
| CommunityVCS | core_logic | ethereum | 5 deployments: ethereum [`0x11721f...f4f864`](./contracts/ethereum-1/0x11721f9e0152b2abda99b8b86e77d7820ef4f864/); ethereum `0x2339ad...c3f647`; ethereum `0x96418d...fad41b`; ethereum `0xac1229...fbc1b5`; ethereum `0xdd0c42...ec21e5` | ✅ Audited |
| DelegatorPool | core_logic | ethereum | 5 deployments: ethereum [`0x4e2a5a...b85495`](./contracts/ethereum-1/0x4e2a5adcd6abb5196af2b7f4759e6db104b85495/); ethereum `0x728588...3cdd4b`; ethereum `0x7f8ced...5b6d75`; ethereum `0x86637a...ada2a3`; ethereum `0xaef186...1c2284` | ✅ Audited |
| EspressoFundFlowController | governance | ethereum | [`0xf36bdb...7104bd`](./contracts/ethereum-1/0xf36bdbc45219f9fbac0741a92a546f95c97104bd/) | ✅ Audited |
| FundFlowController | governance | ethereum | 2 deployments: ethereum [`0xb8cc47...013061`](./contracts/ethereum-1/0xb8cc47b8a76b33b5330dc1f6c5f2eee5d0013061/); ethereum `0xd2e738...6a0200` | ✅ Audited |
| LinearBoostController | governance | ethereum | [`0x14b2f8...b83698`](./contracts/ethereum-1/0x14b2f86c159199b6cba593438ae89078dfb83698/) | ✅ Audited |
| LINKMigrator | periphery | ethereum | 2 deployments: ethereum [`0x08e11a...cf7786`](./contracts/ethereum-1/0x08e11a9a74e7acc51ace382b6d02abe8b7cf7786/); ethereum `0xda77b1...85fb15` | ✅ Audited |
| LiquidSDIndexPool | core_logic | ethereum | 2 deployments: ethereum [`0x3509d9...293c14`](./contracts/ethereum-1/0x3509d9320660b2ffea0225b0006c98f1d6293c14/); ethereum `0x535321...6c1fa1` | ✅ Audited |
| LSTRewardsSplitterController | operational_periphery | ethereum | 2 deployments: ethereum [`0x5e1bfb...1f78c8`](./contracts/ethereum-1/0x5e1bfbb052c3f7bfe0e7386f435343982b1f78c8/); ethereum `0x73c433...72e154` | ✅ Audited |
| MerkleDistributor | operational_periphery | ethereum | 3 deployments: ethereum [`0x6f6fb6...319ac0`](./contracts/ethereum-1/0x6f6fb6fbec4fb65a6535357d9d7e8f4f62319ac0/); ethereum `0xa0b579...3024f5`; ethereum `0xe7dd77...8b4767` | ✅ Audited |
| OperatorVCS | core_logic | ethereum | 5 deployments: ethereum [`0x4852e4...39d2a4`](./contracts/ethereum-1/0x4852e48215a4785ee99b640caced5378cc39d2a4/); ethereum `0x584338...07bc29`; ethereum `0x6059ce...3fe286`; ethereum `0x9fe5d5...e049e6`; ethereum `0xfb8256...e30567` | ✅ Audited |
| PolygonFundFlowController | governance | ethereum | [`0x70f7da...f65951`](./contracts/ethereum-1/0x70f7daba7f2d0866088ecb1e3b29401a97f65951/) | ✅ Audited |
| PolygonStrategy | core_logic | ethereum | [`0x7d145a...0300aa`](./contracts/ethereum-1/0x7d145ad7860d0a9c7bb824d5b2f85f575d0300aa/) | ✅ Audited |
| PoolRouter | adapter | ethereum | 2 deployments: ethereum [`0x6b4f81...979092`](./contracts/ethereum-1/0x6b4f81f9ebf8132d7fe114a1f96e333187979092/); ethereum `0x9ae789...668a9a` | ✅ Audited |
| RebaseController | governance | ethereum | 3 deployments: ethereum [`0x1711e9...bdbec4`](./contracts/ethereum-1/0x1711e93eec78ba83d38c26f0ff284eb478bdbec4/); ethereum `0x5537f6...5ddb90`; ethereum `0xda669f...5b1c1f` | ✅ Audited |
| RewardsPool | operational_periphery | ethereum | [`0x19282e...d226eb`](./contracts/ethereum-1/0x19282e0365a5b90c9864446448e29465a9d226eb/) | ✅ Audited |
| RewardsPoolWSD | operational_periphery | ethereum | 5 deployments: ethereum [`0x4a18ae...490342`](./contracts/ethereum-1/0x4a18aea755bd2ec7c0b7dd6f065bbb3725490342/); ethereum `0x77f555...6b5a56`; ethereum `0x8753c0...f8cc72`; ethereum `0xbcd10c...a307f0`; ethereum `0xd6dbdd...802c59` | ✅ Audited |
| SDLPool | core_logic | ethereum | 2 deployments: ethereum [`0x0b2ef9...48ca4d`](./contracts/ethereum-1/0x0b2ef910ad0b34bf575eb09d37fd7da6c148ca4d/); ethereum `0x8a7625...16c146` | ✅ Audited |
| SDLVesting | operational_periphery | ethereum | 19 deployments: ethereum [`0x02a0f6...ba3aba`](./contracts/ethereum-1/0x02a0f6242c43a3cb59e58d5fa7acd9e79bba3aba/); ethereum `0x03c1c1...b1ff94`; ethereum `0x08c1d7...26a8b9`; ethereum `0x378971...5f59df`; ethereum `0x4ccb44...119c86`; ethereum `0x506c02...5ee9c7`; ethereum `0x5eb140...c341e5`; ethereum `0x6185a7...2fcb3d`; ethereum `0x8aaf17...c9f7d5`; ethereum `0x8b5194...61024f`; ethereum `0x8b5256...becfe3`; ethereum `0xb03697...cfd1d4`; ethereum `0xb57b3d...864b02`; ethereum `0xe05edf...0252a6`; ethereum `0xe22ee6...93081a`; ethereum `0xe6476f...7e51e0`; ethereum `0xf12cea...14ea43`; ethereum `0xf509c9...2e3032`; ethereum `0xf7a813...9dc8f2` | ✅ Audited |
| StakingAllowance | operational_periphery | ethereum | [`0xa95c5e...a28c23`](./contracts/ethereum-1/0xa95c5ebb86e0de73b4fb8c47a45b792cfea28c23/) | ✅ Audited |
| StakingProxy | proxy | ethereum | 2 deployments: ethereum [`0x05f534...3d8514`](./contracts/ethereum-1/0x05f5344d4f961643fa5075a4a56a6303923d8514/); ethereum `0xc1b7a5...7da740` | ✅ Audited |
| VaultDepositController | core_logic | ethereum | [`0x15fbab...4ea1bc`](./contracts/ethereum-1/0x15fbab6fd5d82fd7b326e4f3a1562a4d464ea1bc/) | ✅ Audited |
| WithdrawalPool | operational_periphery | ethereum | 3 deployments: ethereum [`0x908b89...6d3690`](./contracts/ethereum-1/0x908b892276fb70fb6fd362ff97d58e7abf6d3690/); ethereum `0xa60b51...d0c248`; ethereum `0xbfbf47...096458` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BurnMintERC677 | token | arbitrum | 3 deployments: ethereum `0xd7cf0e...ce0f2b`; arbitrum [`0x3106e2...4972fb`](./contracts/arbitrum-42161/0x3106e2e148525b3db36795b04691d444c24972fb/); arbitrum `0xdfea35...d0eec0` | ⚠️ Unaudited |
| L1Strategy | core_logic | ethereum | 3 deployments: ethereum [`0x142b98...bf6a64`](./contracts/ethereum-1/0x142b9850f26dc95ff8b8c972de7ce63eadbf6a64/); ethereum `0x93c3d7...b52ef1`; ethereum `0xd6999c...fe21ca` | ⚠️ Unaudited |
| BurnMintERC20 | token | polygon | [`0x1d0347...b4b2ae`](./contracts/polygon-137/0x1d0347c535c88cf6bb72df75aed34363edb4b2ae/) | ⚠️ Unaudited |
| DistributionOracle | operational_periphery | ethereum | [`0x2285ac...b443cf`](./contracts/ethereum-1/0x2285ac429cccaae7cc1e27bfbe617bc626b443cf/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | 2 deployments: ethereum [`0x2401e9...06f197`](./contracts/ethereum-1/0x2401e9ceada76a59753549f71858a3ece906f197/); ethereum `0x7700a0...200164` | ⚠️ Unaudited |
| EspressoRewardsConsumer | operational_periphery | ethereum | [`0xe69d92...6e33f9`](./contracts/ethereum-1/0xe69d92f6910b45da1d6ddfb380efaa6af56e33f9/) | ⚠️ Unaudited |
| FactoryBurnMintERC20 | registry | polygon | 3 deployments: polygon [`0xc271a1...c20a9c`](./contracts/polygon-137/0xc271a17db5ce6f53745a3f466077ec816bc20a9c/); base `0xe5b64a...ce26e6`; base `0xf2f790...771297` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xb351ec...22493d`](./contracts/ethereum-1/0xb351ec0feaf4b99fdfd36b484d9ec90d0422493d/) | ⚠️ Unaudited |
| GovernanceTimelock | governance | ethereum | [`0xb72d8f...78349f`](./contracts/ethereum-1/0xb72d8f5213b3e52faf13aa074b03c4788e78349f/) | ⚠️ Unaudited |
| L1Transmitter | operational_periphery | ethereum | 2 deployments: ethereum [`0x5e2a7b...f25cde`](./contracts/ethereum-1/0x5e2a7b992769e43d4e76a4bb92de9c0532f25cde/); ethereum `0xb1abe6...6b1063` | ⚠️ Unaudited |
| LidoLSDIndexAdapter | adapter | ethereum | [`0xeb9f29...f0791d`](./contracts/ethereum-1/0xeb9f29b6395db28c0861c24f1cbfceee1ff0791d/) | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | ethereum | 4 deployments: ethereum [`0x20c0d7...37d461`](./contracts/ethereum-1/0x20c0d719c2ef30ff5ac6e822261ee655f037d461/); ethereum `0x28d314...f31b05`; ethereum `0x4a36c0...c5f68e`; ethereum `0x553636...e3a1bc` | ⚠️ Unaudited |
| LPOG2 | token | ethereum | [`0x226ef9...a6ccd8`](./contracts/ethereum-1/0x226ef92ca9c42ab3a786e434f19c8148efa6ccd8/) | ⚠️ Unaudited |
| OperatorVCSUpgrade | core_logic | ethereum | [`0xf25630...50b54c`](./contracts/ethereum-1/0xf256306b5f8115e3d787f8658fc4904f7050b54c/) | ⚠️ Unaudited |
| RocketPoolLSDIndexAdapter | adapter | ethereum | [`0x602553...d66220`](./contracts/ethereum-1/0x6025533b9e095ab2730e1ad50219be8293d66220/) | ⚠️ Unaudited |
| SDLGaugeDistributor | operational_periphery | ethereum | [`0x07cd2e...11a118`](./contracts/ethereum-1/0x07cd2e45386da2ff8f2db716e733b6f48511a118/) | ⚠️ Unaudited |
| StakedotlinkCouncil | governance | ethereum | [`0x358fb1...847673`](./contracts/ethereum-1/0x358fb1c8e14ce61d3d83f17e6804a678b5847673/) | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | 15 deployments: ethereum [`0x286138...56eae6`](./contracts/ethereum-1/0x2861382ef967e5b539b5bdf9ffcc52fa4056eae6/); ethereum `0x39f9f3...f02194`; ethereum `0x3cb7b3...da5c6c`; ethereum `0x4e930b...6566c6`; ethereum `0x576fc5...465a31`; ethereum `0x6e368c...7918e7`; ethereum `0x7287d9...9a0997`; ethereum `0x80b9d8...b47e40`; ethereum `0x8d0422...b3e8d9`; ethereum `0x8dbc80...5aefad`; ethereum `0xcc8f8f...4171cb`; ethereum `0xcd682d...7849c2`; ethereum `0xd9d1b5...ea2c6b`; ethereum `0xf69f5c...d4cceb`; ethereum `0xfbfef8...ec983e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x08341b...dcec15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x213636...c4b713` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x21bb83...3c131b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x37ea41...c87de8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x39bbbd...45f947` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b8234...29dbd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x452401...5945d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4d577e...f33ce7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5225ef...532041` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x528612...2227af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c1e2d...2c1e82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x70f3b8...c78c4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8aad08...3d674b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8ef5d8...b3aa12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x90b143...c043a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x91aaa7...95dd96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x96a591...173d01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9aea3f...695aca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9cbb38...90c394` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb3cae0...f432dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbd12aa...6bd705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc548b1...c3b2b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc5842e...97bb93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcee29d...d12547` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe0a48c...5fc9e0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [To ensure the highest level of security, stake.link employs a multi-layered defense strategy that goes beyond traditional audits. The protocol actively collaborates with two industry-leading security partners, Hypernative and Immunefi, for continuous, real-time protection. The Polygon contracts are also audited and can be [viewed here]().](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-07-02%5D%20Zellic%20-%20Polygon%20Staking.pdf) | Zellic | Audit | 2025-07 | fresh | Direct | contract_name | 4 | high |
| [[2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2022-08-01%5D%20Sigma%20Prime%20-%20Core%20Staking%20Contracts%20Report.pdf) | Sigma Prime | Audit | 2022-08 | stale | Direct | contract_name | 22 | high |
| [[2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-01-01%5D%20Sigma%20Prime%20-%20Core%20%26%20LINK%20Staking%20Report.pdf) | Sigma Prime | Audit | 2023-01 | stale | Direct | contract_name | 62 | high |
| [[2023-03-07] Cyfrin - LSD Index Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-03-07%5D%20Cyfrin%20-%20LSD%20Index%20Pool%20Report.pdf) | Cyfrin | Audit | 2023-03 | stale | Direct | contract_name | 2 | high |
| [[2023-08-06] Trust Security - SDLPool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-08-06%5D%20Trust%20Security%20-%20SDLPool%20Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 33 | high |
| [[2023-08-25] Cyfrin - Priority Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-08-25%5D%20Cyfrin%20-%20Priority%20Pool%20Report.pdf) | Cyfrin | Audit | 2023-08 | stale | Direct | contract_name | 8 | high |
| [[2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-10-01%5D%20Trust%20Security%20-%20Priority%20Pool%20%26%20LINK%20Staking%20v0.2%20Report.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | 52 | high |
| [[2024-04-30] Trust Security - Insurance Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-04-30%5D%20Trust%20Security%20-%20Insurance%20Pool%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [[2024-04-30] Trust Security - Metis Staking Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-04-30%5D%20Trust%20Security%20-%20Metis%20Staking%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [[2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-09-17%5D%20Cyfrin%20-%20LINK%20Staking%20Withdrawals.pdf) | Cyfrin | Audit | 2024-09 | aging | Direct | contract_name | 46 | high |
| [[2024-11-27] Codehawks - LINK Staking Withdrawals.md](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-11-27%5D%20Codehawks%20-%20LINK%20Staking%20Withdrawals.md) | Cyfrin | Audit | 2024-11 | aging | Direct | contract_name | 57 | high |
| [[2025-01-20] Cyfrin Staking Proxy.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-01-20%5D%20Cyfrin%20Staking%20Proxy.pdf) | Cyfrin | Audit | 2025-01 | aging | Direct | contract_name | 21 | high |
| [[2025-02-04] Trust - LINK Staking Withdrawals.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-02-04%5D%20Trust%20-%20LINK%20Staking%20Withdrawals.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 60 | high |
| [[2025-02-28] Cyfrin - CL Rewards Claiming.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-02-28%5D%20Cyfrin%20-%20CL%20Rewards%20Claiming.pdf) | Cyfrin | Audit | 2025-02 | aging | Direct | contract_name | 35 | high |
| [[2025-05-19] Cyfrin - Polygon Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-05-19%5D%20Cyfrin%20-%20Polygon%20Staking.pdf) | Cyfrin | Audit | 2025-05 | aging | Direct | contract_name | 2 | high |
| [[2025-06-04] Cyfrin - LINK Migrator.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-06-04%5D%20Cyfrin%20-%20LINK%20Migrator.pdf) | Cyfrin | Audit | 2025-06 | aging | Direct | contract_name | 10 | high |
| [[2025-08-02] Cyfrin - SDL Vesting.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-08-02%5D%20Cyfrin%20-%20SDL%20Vesting.pdf) | Cyfrin | Audit | 2025-08 | fresh | Direct | contract_name | 19 | high |
| [[2025-08-02] Cyfrin - Vesting.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-08-02%5D%20Cyfrin%20-%20Vesting.pdf) | Cyfrin | Audit | 2025-08 | fresh | Direct | contract_name | 19 | high |
| [[2026-02-04] Cyfrin - Espresso Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2026-02-04%5D%20Cyfrin%20-%20Espresso%20Staking.pdf) | Cyfrin | Audit | 2026-02 | fresh | Direct | contract_name | 2 | high |
| [[2026-03-23] Cyfrin - Rebase Batching.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2026-03-23%5D%20Cyfrin%20-%20Rebase%20Batching.pdf) | Cyfrin | Audit | 2026-03 | fresh | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x142b98...bf6a64`](./contracts/ethereum-1/0x142b9850f26dc95ff8b8c972de7ce63eadbf6a64/) | L1Strategy | core_logic | $0.23 | Verified native implementation with $0.23 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2285ac...b443cf`](./contracts/ethereum-1/0x2285ac429cccaae7cc1e27bfbe617bc626b443cf/) | DistributionOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe69d92...6e33f9`](./contracts/ethereum-1/0xe69d92f6910b45da1d6ddfb380efaa6af56e33f9/) | EspressoRewardsConsumer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb72d8f...78349f`](./contracts/ethereum-1/0xb72d8f5213b3e52faf13aa074b03c4788e78349f/) | GovernanceTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226ef9...a6ccd8`](./contracts/ethereum-1/0x226ef92ca9c42ab3a786e434f19c8148efa6ccd8/) | LPOG2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf25630...50b54c`](./contracts/ethereum-1/0xf256306b5f8115e3d787f8658fc4904f7050b54c/) | OperatorVCSUpgrade | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07cd2e...11a118`](./contracts/ethereum-1/0x07cd2e45386da2ff8f2db716e733b6f48511a118/) | SDLGaugeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x358fb1...847673`](./contracts/ethereum-1/0x358fb1c8e14ce61d3d83f17e6804a678b5847673/) | StakedotlinkCouncil | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x286138...56eae6`](./contracts/ethereum-1/0x2861382ef967e5b539b5bdf9ffcc52fa4056eae6/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 4 |
| standard_library | 15 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=18
- Match method counts: extraction_exact=459

Zero-match audit list:

- [10458] [2024-04-30] Trust Security - Insurance Pool Report.pdf
- [10459] [2024-04-30] Trust Security - Metis Staking Report.pdf

Fork inheritance lineage and inherited audits are included when available.
