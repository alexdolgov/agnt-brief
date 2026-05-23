# Agentic Audit Brief: Bio Protocol

## Project Overview

- Project: Bio Protocol (`bio-protocol`)
- Website: [https://www.bio.xyz/](https://www.bio.xyz/)
- Lifecycle: active (Tier 0, 77.4% below peak)
- Generated: 2026-05-23T19:02:10.201Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base, ethereum
- Contract surface: 41 unique implementations (155 raw deployments)
- DeFi Llama TVL: $4,898,198.28
- On-chain TVL (included contracts): $143,807,338.43
- TVL by chain: Ethereum $133,720,245.68 | Base $10,087,092.75

## Project Description

Bio Protocol is a launchpad for decentralized science (DeSci) projects, enabling tokenization and liquidity for biotech intellectual property. It provides infrastructure for creating, staking, and governing tokens tied to scientific assets.

### Architecture

The Bio Protocol family provides the staking and governance layer for the BIO token, while Neuron-Gale tokens represent individual DeSci projects that may be launched or supported through the Bio Protocol launchpad. Shared infrastructure includes proxy-based upgradeability and cross-chain bridges (OptimismMintableERC20) used by Neuron-Gale tokens.

## Audit Coverage Summary

- Verified implementations audited: 4/40 (10.0%)
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 41
- Raw deployments: 155
- Audits discovered: 6
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $139,622,455.21
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 3 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| FYEO | Tier 2 | 2 | 5.0% | 2025-07 |
| Pashov Audit Group | Tier 2 | 2 | 5.0% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AgentToken | token | base | 10 deployments: base [`0x036994...401127`](./contracts/base-8453/0x03699469849a6cf876a65b4fd01fbd663c401127/); base `0x492ae2...9d6d43`; base `0x54f16b...f48a0a`; base `0x5d4d25...b2dcd3`; base `0x7db6df...ec21ec`; base `0x896a0b...294250`; base `0x9d56c2...27581d`; base `0xd9bf91...298411`; base `0xe183b1...bce582`; base `0xe8f802...8a69fa` | ✅ Audited |
| TokenVesting | operational_periphery | ethereum | 4 deployments: ethereum [`0x4f55ed...fd6517`](./contracts/ethereum-1/0x4f55edffd4e9325577d4c8dde6f15782cefd6517/); ethereum `0x7c36c6...733aab`; ethereum `0xde659c...73926d`; ethereum `0xf9f8a1...be58e9` | ✅ Audited |
| TokenVestingMerkle | operational_periphery | ethereum | [`0x1510e9...e9857b`](./contracts/ethereum-1/0x1510e9cf00daeb33e9fc9566a70de7c75be9857b/) | ✅ Audited |
| VeBIO | unknown | ethereum | 7 deployments: ethereum [`0x66ffe6...ad8022`](./contracts/ethereum-1/0x66ffe61b9eabb77a30685143329d6b0726ad8022/); ethereum `0xb5df43...fc31d1`; ethereum `0xbb1bc5...5beb20`; ethereum `0xbcb830...7ab19c`; ethereum `0xc0a2ca...403e93`; ethereum `0xf91a12...56f40c`; base `0xe1b48c...49a3bd` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BioToken | token | ethereum | [`0xcb1592...ee5ffa`](./contracts/ethereum-1/0xcb1592591996765ec0efc1f92599a19767ee5ffa/) | ⚠️ Unaudited |
| HairToken | token | ethereum | [`0x9ce115...8a6f42`](./contracts/ethereum-1/0x9ce115f0341ae5dabc8b477b74e83db2018a6f42/) | ⚠️ Unaudited |
| Token | token | base | [`0x226a2f...077dd2`](./contracts/base-8453/0x226a2fa2556c48245e57cd1cba4c6c9e67077dd2/) | ⚠️ Unaudited |
| GrowToken | token | ethereum | [`0x761a35...2f97fa`](./contracts/ethereum-1/0x761a3557184cbc07b7493da0661c41177b2f97fa/) | ⚠️ Unaudited |
| IPToken | token | ethereum | 7 deployments: ethereum [`0x0d6866...61add1`](./contracts/ethereum-1/0x0d6866f3369e4825ce07f226a424f1c11861add1/); ethereum `0x3c4268...72d9d3`; ethereum `0x7b66e8...05f9c2`; ethereum `0x89a14b...67b72b`; ethereum `0x9e4fc6...06997a`; ethereum `0xd07ea8...be4113`; ethereum `0xd79fe2...f3a0a9` | ⚠️ Unaudited |
| CerebrumDAOToken | token | ethereum | [`0xab814c...394a6b`](./contracts/ethereum-1/0xab814ce69e15f6b9660a3b184c0b0c97b9394a6b/) | ⚠️ Unaudited |
| AthenaDAOToken | token | ethereum | [`0xa4ffdf...754739`](./contracts/ethereum-1/0xa4ffdf3208f46898ce063e25c1c43056fa754739/) | ⚠️ Unaudited |
| QBioToken | token | ethereum | [`0x3e6a1b...f89bde`](./contracts/ethereum-1/0x3e6a1b21bd267677fa49be6425aebe2fc0f89bde/) | ⚠️ Unaudited |
| JBToken | token | ethereum | [`0xf4308b...8079d0`](./contracts/ethereum-1/0xf4308b0263723b121056938c2172868e408079d0/) | ⚠️ Unaudited |
| OtoCoToken | token | ethereum | [`0x2196b8...e1d47a`](./contracts/ethereum-1/0x2196b84eace74867b73fb003aff93c11fce1d47a/) | ⚠️ Unaudited |
| StakedLockingCrowdSale | token | ethereum | [`0x35bce2...2b29b7`](./contracts/ethereum-1/0x35bce29f52f51f547998717cd598068afa2b29b7/) | ⚠️ Unaudited |
| IPNFT | token | ethereum | 6 deployments: ethereum [`0x0443df...8ae45d`](./contracts/ethereum-1/0x0443dfac8e510cfbdfdb9247e77400e9728ae45d/); ethereum `0x096c80...63e3dc`; ethereum `0x6b179d...847f80`; ethereum `0xcad886...d54fc1`; ethereum `0xd03542...c57384`; ethereum `0xdbdf50...2cc060` | ⚠️ Unaudited |
| AccessResolver | unknown | ethereum | 3 deployments: ethereum [`0x97b7f5...181b80`](./contracts/ethereum-1/0x97b7f5ddb5699a5b3d93f4a7d7df29143f181b80/); ethereum `0xa1ed7a...a60691`; ethereum `0xc130e0...c99cd0` | ⚠️ Unaudited |
| CrowdSale | unknown | ethereum | [`0xf0a8d2...5bc6c2`](./contracts/ethereum-1/0xf0a8d23f38e9cbbe01c4ed37f23bd519b65bc6c2/) | ⚠️ Unaudited |
| DAOToken | token | ethereum | 3 deployments: ethereum [`0x3ae5ea...d9ed2f`](./contracts/ethereum-1/0x3ae5eae997d2031f78177bfb4bbee511edd9ed2f/); ethereum `0xc85f5d...8f976f`; ethereum `0xd25954...78f6fe` | ⚠️ Unaudited |
| ERC20Mock | token | ethereum | [`0x41e916...7c6fd3`](./contracts/ethereum-1/0x41e9163856b37fa79dc676d3805de88e917c6fd3/) | ⚠️ Unaudited |
| FairAuctionVesting | operational_periphery | ethereum | 24 deployments: ethereum [`0x122a15...13d722`](./contracts/ethereum-1/0x122a151d6cf3213d2d00920887cac1986c13d722/); ethereum `0x2dc49e...c522ef`; ethereum `0x3068a5...de9824`; ethereum `0x40e153...6165c7`; ethereum `0x482155...62bbb3`; ethereum `0x50926e...bf905b`; ethereum `0x50fb8e...062540`; ethereum `0x513639...edfd1f`; ethereum `0x5d4f4b...4231bc`; ethereum `0x6f4744...d0c36d`; ethereum `0x7bbb1b...d2cdd2`; ethereum `0x86206f...f2a836`; ethereum `0x87621f...6df2e6`; ethereum `0x88d6dd...cd586b`; ethereum `0xa4c91a...17b18a`; ethereum `0xad032c...cb42c1`; ethereum `0xb35d73...cb400f`; ethereum `0xd20e71...e84507`; ethereum `0xe1a159...dd265b`; ethereum `0xe5e2ec...838b24`; ethereum `0xeb46ed...ee64b3`; ethereum `0xf6380a...3788da`; ethereum `0xf6d0f5...45d83e`; ethereum `0xfbda21...c899a6` | ⚠️ Unaudited |
| LockedToken | token | ethereum | 2 deployments: ethereum [`0xb1729b...a8f3b8`](./contracts/ethereum-1/0xb1729b20dad1fa670f96e4cf4bffe21ac6a8f3b8/); ethereum `0xc8cd72...582b5b` | ⚠️ Unaudited |
| LockedTokenFactory | registry | ethereum | 4 deployments: ethereum [`0x829969...c3199a`](./contracts/ethereum-1/0x8299699969d696bd9c05fd4fb89f8840e2c3199a/); ethereum `0xc9be11...0fd825`; ethereum `0xde1ca9...e9f57b`; ethereum `0xf6fee6...8ccae0` | ⚠️ Unaudited |
| LockingCrowdSale | unknown | ethereum | [`0xfbfd26...66db26`](./contracts/ethereum-1/0xfbfd266bf3b49db8746155aa318d4533cc66db26/) | ⚠️ Unaudited |
| MerkleAirdrop | operational_periphery | ethereum | [`0x26d6a8...2e0716`](./contracts/ethereum-1/0x26d6a8b2df727edf20dd73f5e4754d94e52e0716/) | ⚠️ Unaudited |
| MockUsdc | unknown | ethereum | [`0x42d018...618e8b`](./contracts/ethereum-1/0x42d01846f7b3669a5b0167c938168afe22618e8b/) | ⚠️ Unaudited |
| NttManager | governance | ethereum | 10 deployments: ethereum [`0x1783e7...dc7f4c`](./contracts/ethereum-1/0x1783e7d1f498321d7e15044d769621e1bedc7f4c/); ethereum `0x2bbacb...f3e9e3`; ethereum `0x2c6c5c...c8dcf8`; ethereum `0x7620d0...39ec0a`; ethereum `0x9e2de6...7a7237`; ethereum `0xa05f71...fed7f1`; ethereum `0xb7a1c2...1be9ee`; ethereum `0xf758df...a5c9ad`; base `0x565c2b...4d7625`; base `0x9afebc...d89571` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | 11 deployments: base [`0x1f4446...ad1c36`](./contracts/base-8453/0x1f4446faaaed23090f324f051c3f8c5ce5ad1c36/); base `0x1fbaf8...ee6773`; base `0x321725...30a58c`; base `0x3568c7...4e9a79`; base `0x3a38dd...08f0b3`; base `0x490a4b...071937`; base `0x58d75a...40b8a3`; base `0x85d0e1...e59a97`; base `0x937573...bdaa21`; base `0xe18c07...d04e28`; base `0xfbad5b...8bf4d8` | ⚠️ Unaudited |
| Raphael | unknown | ethereum | [`0x9abf28...afff7a`](./contracts/ethereum-1/0x9abf28ab6f80c1ef666f983935437e717aafff7a/) | ⚠️ Unaudited |
| SignedMintAuthorizer | unknown | ethereum | [`0xbc5fbb...5c5865`](./contracts/ethereum-1/0xbc5fbb45a2bbb64d9b2eebfa327284a35d5c5865/) | ⚠️ Unaudited |
| StakedToken | token | ethereum | 20 deployments: ethereum [`0x0bb564...126cca`](./contracts/ethereum-1/0x0bb56479c5d9d253e22380ecfe9a2885aa126cca/); ethereum `0x335015...002588`; ethereum `0x450ee6...0ef313`; ethereum `0x67cdf8...dfcecc`; ethereum `0x75edde...5e92ba`; ethereum `0x88835d...469ad7`; ethereum `0xa41cea...74de48`; ethereum `0xb840c4...690687`; ethereum `0xb90f10...830f69`; ethereum `0xd12e41...121e79`; base `0x6c85e4...7ca9f8`; base `0x852c11...342e53`; base `0x85ecbc...a66797`; base `0x9dff3a...9c6a7f`; base `0xafb64a...9e07d0`; base `0xcbd956...3845db`; base `0xe01b67...6dc29b`; base `0xe1ea71...ebe13f`; base `0xec6375...f72f9a`; base `0xee8ea7...f3b4a1` | ⚠️ Unaudited |
| Staking | unknown | ethereum | [`0x711f2a...17a66d`](./contracts/ethereum-1/0x711f2ac9e39615e07b4fe4548154d698b517a66d/) | ⚠️ Unaudited |
| Synthesizer | unknown | ethereum | 5 deployments: ethereum [`0x4b62ec...f0850a`](./contracts/ethereum-1/0x4b62ec784479c5520ec77de8d10c1a85d8f0850a/); ethereum `0x534e08...d5fa5e`; ethereum `0x5372b3...f6a60d`; ethereum `0x769c68...a43585`; ethereum `0xb050a8...bc348f` | ⚠️ Unaudited |
| TermsAcceptedPermissioner | unknown | ethereum | 2 deployments: ethereum [`0xc3191d...d35705`](./contracts/ethereum-1/0xc3191defe827d504885f47cfb3fe0919ebd35705/); ethereum `0xc837e0...a628fa` | ⚠️ Unaudited |
| TimelockedToken | governance | ethereum | [`0x625ed6...576e8f`](./contracts/ethereum-1/0x625ed621d814645aa81c50c4f333d4a407576e8f/) | ⚠️ Unaudited |
| Tokenizer | token | ethereum | 5 deployments: ethereum [`0x0d781e...6dd43f`](./contracts/ethereum-1/0x0d781edf9c75cf9136aac6600873d0a20a6dd43f/); ethereum `0x58eb89...82f436`; ethereum `0x6517dd...a3654c`; ethereum `0x9c70fa...4a36f3`; ethereum `0xe87013...42557a` | ⚠️ Unaudited |
| TokenVestingMerklePurchasable | operational_periphery | ethereum | 4 deployments: ethereum [`0x067c1e...0036dd`](./contracts/ethereum-1/0x067c1ec64c8cdfc28cb53bff742974f1150036dd/); ethereum `0x1362ed...40a793`; ethereum `0x2141b4...aaa9b3`; ethereum `0x637b11...6f0868` | ⚠️ Unaudited |
| VITA | unknown | ethereum | [`0x81f8f0...6fa321`](./contracts/ethereum-1/0x81f8f0bb1cb2a06649e51913a151f0e7ef6fa321/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | 5 deployments: ethereum [`0x107abd...191b5e`](./contracts/ethereum-1/0x107abd279d67c1dbb196a5c1a4d74abcba191b5e/); ethereum `0x164359...dd6867`; ethereum `0x548f84...a88e31`; ethereum `0x676cd8...c8a3e1`; base `0xcb75cc...dd483f` | ⚠️ Unaudited |
| WrappedIPToken | token | ethereum | [`0x0ca5f5...f1352f`](./contracts/ethereum-1/0x0ca5f50a8a59a59ef8c8d610f5ebf99e41f1352f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x6034e0...d33d36` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FuYIpl4lmoMs2hOgnrj18%2FLaunchpad%20v2%20Contracts%20(FYEO).pdf?alt=media) | FYEO | Audit | 2025-07 | fresh | Direct | contract_name | 17 | high |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FW7mPQHDWHGApxw1jl6CO%2FBio-security-review_2025-03-12.pdf?alt=media) | Code4rena | Contest | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FwUCj5OeWCmIpLizDug9d%2FBio%20-%20Security%20Code%20Review%20of%20Bio%20Launchpad%20v0.1.pdf?alt=media) | FYEO | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2Ff5zTFrmYvglsJ6WAXZxM%2FDesciLaunchpad-security-review_2025-02-07.pdf?alt=media) | Pashov Audit Group | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/Xm1EkQX20KCOrH0s1e3Y/Bio-security-review.pdf](https://499247139-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FXm1EkQX20KCOrH0s1e3Y%2FBio-security-review.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TokenVesting (Pashov Audit Group)](https://github.com/bio-xyz/vesting-contracts/blob/main/audits/2023-04-pashov.md) | Pashov Audit Group | Audit | 2023-04 | stale | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xcb1592...ee5ffa`](./contracts/ethereum-1/0xcb1592591996765ec0efc1f92599a19767ee5ffa/) | BioToken | token | $101,408,249.62 | Verified native implementation with $101,408,249.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ce115...8a6f42`](./contracts/ethereum-1/0x9ce115f0341ae5dabc8b477b74e83db2018a6f42/) | HairToken | token | $18,262,955.54 | Verified native implementation with $18,262,955.54 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x226a2f...077dd2`](./contracts/base-8453/0x226a2fa2556c48245e57cd1cba4c6c9e67077dd2/) | Token | token | $5,902,209.53 | Verified native implementation with $5,902,209.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x761a35...2f97fa`](./contracts/ethereum-1/0x761a3557184cbc07b7493da0661c41177b2f97fa/) | GrowToken | token | $3,749,881.41 | Verified native implementation with $3,749,881.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d6866...61add1`](./contracts/ethereum-1/0x0d6866f3369e4825ce07f226a424f1c11861add1/) | IPToken | token | $3,185,670.78 | Verified native implementation with $3,185,670.78 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab814c...394a6b`](./contracts/ethereum-1/0xab814ce69e15f6b9660a3b184c0b0c97b9394a6b/) | CerebrumDAOToken | token | $2,915,221.52 | Verified native implementation with $2,915,221.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4ffdf...754739`](./contracts/ethereum-1/0xa4ffdf3208f46898ce063e25c1c43056fa754739/) | AthenaDAOToken | token | $1,613,870.10 | Verified native implementation with $1,613,870.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e6a1b...f89bde`](./contracts/ethereum-1/0x3e6a1b21bd267677fa49be6425aebe2fc0f89bde/) | QBioToken | token | $1,266,460.43 | Verified native implementation with $1,266,460.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35bce2...2b29b7`](./contracts/ethereum-1/0x35bce29f52f51f547998717cd598068afa2b29b7/) | StakedLockingCrowdSale | token | $10,285.06 | Verified native implementation with $10,285.06 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0443df...8ae45d`](./contracts/ethereum-1/0x0443dfac8e510cfbdfdb9247e77400e9728ae45d/) | IPNFT | token | $319.31 | Verified native implementation with $319.31 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x97b7f5...181b80`](./contracts/ethereum-1/0x97b7f5ddb5699a5b3d93f4a7d7df29143f181b80/) | AccessResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0a8d2...5bc6c2`](./contracts/ethereum-1/0xf0a8d23f38e9cbbe01c4ed37f23bd519b65bc6c2/) | CrowdSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ae5ea...d9ed2f`](./contracts/ethereum-1/0x3ae5eae997d2031f78177bfb4bbee511edd9ed2f/) | DAOToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41e916...7c6fd3`](./contracts/ethereum-1/0x41e9163856b37fa79dc676d3805de88e917c6fd3/) | ERC20Mock | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x122a15...13d722`](./contracts/ethereum-1/0x122a151d6cf3213d2d00920887cac1986c13d722/) | FairAuctionVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1729b...a8f3b8`](./contracts/ethereum-1/0xb1729b20dad1fa670f96e4cf4bffe21ac6a8f3b8/) | LockedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x829969...c3199a`](./contracts/ethereum-1/0x8299699969d696bd9c05fd4fb89f8840e2c3199a/) | LockedTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbfd26...66db26`](./contracts/ethereum-1/0xfbfd266bf3b49db8746155aa318d4533cc66db26/) | LockingCrowdSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26d6a8...2e0716`](./contracts/ethereum-1/0x26d6a8b2df727edf20dd73f5e4754d94e52e0716/) | MerkleAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42d018...618e8b`](./contracts/ethereum-1/0x42d01846f7b3669a5b0167c938168afe22618e8b/) | MockUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9abf28...afff7a`](./contracts/ethereum-1/0x9abf28ab6f80c1ef666f983935437e717aafff7a/) | Raphael | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc5fbb...5c5865`](./contracts/ethereum-1/0xbc5fbb45a2bbb64d9b2eebfa327284a35d5c5865/) | SignedMintAuthorizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bb564...126cca`](./contracts/ethereum-1/0x0bb56479c5d9d253e22380ecfe9a2885aa126cca/) | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x711f2a...17a66d`](./contracts/ethereum-1/0x711f2ac9e39615e07b4fe4548154d698b517a66d/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b62ec...f0850a`](./contracts/ethereum-1/0x4b62ec784479c5520ec77de8d10c1a85d8f0850a/) | Synthesizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3191d...d35705`](./contracts/ethereum-1/0xc3191defe827d504885f47cfb3fe0919ebd35705/) | TermsAcceptedPermissioner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x625ed6...576e8f`](./contracts/ethereum-1/0x625ed621d814645aa81c50c4f333d4a407576e8f/) | TimelockedToken | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d781e...6dd43f`](./contracts/ethereum-1/0x0d781edf9c75cf9136aac6600873d0a20a6dd43f/) | Tokenizer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x067c1e...0036dd`](./contracts/ethereum-1/0x067c1ec64c8cdfc28cb53bff742974f1150036dd/) | TokenVestingMerklePurchasable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ca5f5...f1352f`](./contracts/ethereum-1/0x0ca5f50a8a59a59ef8c8d610f5ebf99e41f1352f/) | WrappedIPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=22

Zero-match audit list:

- [2524] spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf
- [2525] spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf
- [2526] spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf
- [2527] spaces/3ba2jNU6BPQUl4RXgHor/uploads/Xm1EkQX20KCOrH0s1e3Y/Bio-security-review.pdf

Fork inheritance lineage and inherited audits are included when available.
