# Agentic Audit Brief: Bio Protocol

## Project Overview

- Project: Bio Protocol (`bio-protocol`)
- Website: [https://www.bio.xyz/](https://www.bio.xyz/)
- Lifecycle: active (Tier 0, 79.5% below peak)
- Generated: 2026-07-04T14:53:07.479Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: base, ethereum
- Contract surface: 47 unique implementations (134 raw deployments)
- DeFi Llama TVL: $4,112,254.28
- On-chain TVL (included contracts): $133,528,280.50
- TVL by chain: Ethereum $124,791,536.09 | Base $8,736,744.41

## Project Description

Launchpad. Structurally: 47 project-authored contract(s) across 2 chain(s); 22 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 19 common project-authored base contract(s) (reentrancyguardupgradeable, accesscontrolupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 164; live-surface contracts included: 133 (126 live, 7 unknown).
- Excluded by liveness: 31 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/31 (9.7%)
- Deployed-live implementations: 40 of 47 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/40
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 47
- Raw deployments: 134
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $129,996,520.19
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| FYEO | Tier 2 | 2 | 5.0% | 2025-07 |
| Pashov Audit Group | Tier 2 | 2 | 5.0% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentToken | token | base | n/a | 10 deployments: base [`0x036994...401127`](./contracts/base-8453/0x03699469849a6cf876a65b4fd01fbd663c401127/); base `0x492ae2...9d6d43`; base `0x54f16b...f48a0a`; base `0x5d4d25...b2dcd3`; base `0x7db6df...ec21ec`; base `0x896a0b...294250`; base `0x9d56c2...27581d`; base `0xd9bf91...298411`; base `0xe183b1...bce582`; base `0xe8f802...8a69fa` | ✅ Audited |
| FairAuctionVesting | operational_periphery | ethereum | n/a | 24 deployments: ethereum [`0x122a15...13d722`](./contracts/ethereum-1/0x122a151d6cf3213d2d00920887cac1986c13d722/); ethereum `0x2dc49e...c522ef`; ethereum `0x3068a5...de9824`; ethereum `0x40e153...6165c7`; ethereum `0x482155...62bbb3`; ethereum `0x50926e...bf905b`; ethereum `0x50fb8e...062540`; ethereum `0x513639...edfd1f`; ethereum `0x5d4f4b...4231bc`; ethereum `0x6f4744...d0c36d`; ethereum `0x7bbb1b...d2cdd2`; ethereum `0x86206f...f2a836`; ethereum `0x87621f...6df2e6`; ethereum `0x88d6dd...cd586b`; ethereum `0xa4c91a...17b18a`; ethereum `0xad032c...cb42c1`; ethereum `0xb35d73...cb400f`; ethereum `0xd20e71...e84507`; ethereum `0xe1a159...dd265b`; ethereum `0xe5e2ec...838b24`; ethereum `0xeb46ed...ee64b3`; ethereum `0xf6380a...3788da`; ethereum `0xf6d0f5...45d83e`; ethereum `0xfbda21...c899a6` | ✅ Audited |
| TokenVesting | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x4f55ed...fd6517`](./contracts/ethereum-1/0x4f55edffd4e9325577d4c8dde6f15782cefd6517/); ethereum `0x7c36c6...733aab`; ethereum `0xde659c...73926d`; ethereum `0xf9f8a1...be58e9` | ✅ Audited |
| VeBIO | unknown | base | n/a | [`0xe1b48c...49a3bd`](./contracts/base-8453/0xe1b48c0279cd95d984f1290293116c45d049a3bd/) | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BioToken | token | ethereum | n/a | [`0xcb1592...ee5ffa`](./contracts/ethereum-1/0xcb1592591996765ec0efc1f92599a19767ee5ffa/) | ⚠️ Unaudited |
| HairToken | token | ethereum | n/a | [`0x9ce115...8a6f42`](./contracts/ethereum-1/0x9ce115f0341ae5dabc8b477b74e83db2018a6f42/) | ⚠️ Unaudited |
| IPToken | unknown | ethereum | n/a | 7 deployments: ethereum [`0x0d6866...61add1`](./contracts/ethereum-1/0x0d6866f3369e4825ce07f226a424f1c11861add1/); ethereum `0x3c4268...72d9d3`; ethereum `0x7b66e8...05f9c2`; ethereum `0x89a14b...67b72b`; ethereum `0x9e4fc6...06997a`; ethereum `0xd07ea8...be4113`; ethereum `0xd79fe2...f3a0a9` | ⚠️ Unaudited |
| Token | token | base | n/a | [`0x226a2f...077dd2`](./contracts/base-8453/0x226a2fa2556c48245e57cd1cba4c6c9e67077dd2/) | ⚠️ Unaudited |
| GrowToken | token | ethereum | n/a | [`0x761a35...2f97fa`](./contracts/ethereum-1/0x761a3557184cbc07b7493da0661c41177b2f97fa/) | ⚠️ Unaudited |
| CerebrumDAOToken | token | ethereum | n/a | [`0xab814c...394a6b`](./contracts/ethereum-1/0xab814ce69e15f6b9660a3b184c0b0c97b9394a6b/) | ⚠️ Unaudited |
| AthenaDAOToken | token | ethereum | n/a | [`0xa4ffdf...754739`](./contracts/ethereum-1/0xa4ffdf3208f46898ce063e25c1c43056fa754739/) | ⚠️ Unaudited |
| JBToken | token | ethereum | n/a | [`0xf4308b...8079d0`](./contracts/ethereum-1/0xf4308b0263723b121056938c2172868e408079d0/) | ⚠️ Unaudited |
| QBioToken | token | ethereum | n/a | [`0x3e6a1b...f89bde`](./contracts/ethereum-1/0x3e6a1b21bd267677fa49be6425aebe2fc0f89bde/) | ⚠️ Unaudited |
| OtoCoToken | token | ethereum | n/a | [`0x2196b8...e1d47a`](./contracts/ethereum-1/0x2196b84eace74867b73fb003aff93c11fce1d47a/) | ⚠️ Unaudited |
| StakedLockingCrowdSale | token | ethereum | n/a | [`0x35bce2...2b29b7`](./contracts/ethereum-1/0x35bce29f52f51f547998717cd598068afa2b29b7/) | ⚠️ Unaudited |
| AccessResolver | unknown | ethereum | n/a | [`0xa1ed7a...a60691`](./contracts/ethereum-1/0xa1ed7ae99abeab2883a4a9486dbbb1c020a60691/) | ⚠️ Unaudited |
| CrowdSale | unknown | ethereum | n/a | [`0xf0a8d2...5bc6c2`](./contracts/ethereum-1/0xf0a8d23f38e9cbbe01c4ed37f23bd519b65bc6c2/) | ⚠️ Unaudited |
| DAOToken | token | ethereum | n/a | [`0xc85f5d...8f976f`](./contracts/ethereum-1/0xc85f5dd5880d5162faf5fdb24d40845b7c8f976f/) | ⚠️ Unaudited |
| ERC20Mock | token | ethereum | n/a | [`0x41e916...7c6fd3`](./contracts/ethereum-1/0x41e9163856b37fa79dc676d3805de88e917c6fd3/) | ⚠️ Unaudited |
| IPNFT | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0443df...8ae45d`](./contracts/ethereum-1/0x0443dfac8e510cfbdfdb9247e77400e9728ae45d/); ethereum `0x096c80...63e3dc`; ethereum `0x6b179d...847f80`; ethereum `0xd03542...c57384`; ethereum `0xdbdf50...2cc060` | ⚠️ Unaudited |
| LockedToken | token | ethereum | n/a | 2 deployments: ethereum [`0xb1729b...a8f3b8`](./contracts/ethereum-1/0xb1729b20dad1fa670f96e4cf4bffe21ac6a8f3b8/); ethereum `0xc8cd72...582b5b` | ⚠️ Unaudited |
| LockedTokenFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x829969...c3199a`](./contracts/ethereum-1/0x8299699969d696bd9c05fd4fb89f8840e2c3199a/); ethereum `0xf6fee6...8ccae0` | ⚠️ Unaudited |
| LockingCrowdSale | unknown | ethereum | n/a | [`0xfbfd26...66db26`](./contracts/ethereum-1/0xfbfd266bf3b49db8746155aa318d4533cc66db26/) | ⚠️ Unaudited |
| MockUsdc | unknown | ethereum | n/a | [`0x42d018...618e8b`](./contracts/ethereum-1/0x42d01846f7b3669a5b0167c938168afe22618e8b/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | 10 deployments: base [`0x1f4446...ad1c36`](./contracts/base-8453/0x1f4446faaaed23090f324f051c3f8c5ce5ad1c36/); base `0x321725...30a58c`; base `0x3568c7...4e9a79`; base `0x3a38dd...08f0b3`; base `0x490a4b...071937`; base `0x58d75a...40b8a3`; base `0x85d0e1...e59a97`; base `0x937573...bdaa21`; base `0xe18c07...d04e28`; base `0xfbad5b...8bf4d8` | ⚠️ Unaudited |
| StakedToken | token | ethereum | n/a | 23 deployments: ethereum [`0x023c3e...fb98be`](./contracts/ethereum-1/0x023c3e7cc97b5d00bc88b47e068d324faffb98be/); ethereum `0x0bb564...126cca`; ethereum `0x335015...002588`; ethereum `0x357d6e...d0ae7c`; ethereum `0x450ee6...0ef313`; ethereum `0x67cdf8...dfcecc`; ethereum `0x75edde...5e92ba`; ethereum `0x88835d...469ad7`; ethereum `0xa41cea...74de48`; ethereum `0xb840c4...690687`; ethereum `0xb90f10...830f69`; ethereum `0xd12e41...121e79`; ethereum `0xe41ba1...c52352`; base `0x6c85e4...7ca9f8`; base `0x852c11...342e53`; base `0x85ecbc...a66797`; base `0x9dff3a...9c6a7f`; base `0xafb64a...9e07d0`; base `0xcbd956...3845db`; base `0xe01b67...6dc29b`; base `0xe1ea71...ebe13f`; base `0xec6375...f72f9a`; base `0xee8ea7...f3b4a1` | ⚠️ Unaudited |
| Synthesizer | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4b62ec...f0850a`](./contracts/ethereum-1/0x4b62ec784479c5520ec77de8d10c1a85d8f0850a/); ethereum `0x5372b3...f6a60d`; ethereum `0xb050a8...bc348f` | ⚠️ Unaudited |
| TermsAcceptedPermissioner | unknown | ethereum | n/a | [`0xc837e0...a628fa`](./contracts/ethereum-1/0xc837e02982992b701a1b5e4e21fa01ceb0a628fa/) | ⚠️ Unaudited |
| TimelockedToken | unknown | ethereum | n/a | [`0x625ed6...576e8f`](./contracts/ethereum-1/0x625ed621d814645aa81c50c4f333d4a407576e8f/) | ⚠️ Unaudited |
| Tokenizer | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0d781e...6dd43f`](./contracts/ethereum-1/0x0d781edf9c75cf9136aac6600873d0a20a6dd43f/); ethereum `0x6517dd...a3654c`; ethereum `0x9c70fa...4a36f3`; ethereum `0xe87013...42557a` | ⚠️ Unaudited |
| TokenVestingMerkle | unknown | ethereum | n/a | [`0x1510e9...e9857b`](./contracts/ethereum-1/0x1510e9cf00daeb33e9fc9566a70de7c75be9857b/) | ⚠️ Unaudited |
| TokenVestingMerklePurchasable | unknown | ethereum | n/a | 4 deployments: ethereum [`0x067c1e...0036dd`](./contracts/ethereum-1/0x067c1ec64c8cdfc28cb53bff742974f1150036dd/); ethereum `0x1362ed...40a793`; ethereum `0x2141b4...aaa9b3`; ethereum `0x637b11...6f0868` | ⚠️ Unaudited |
| VeBIO | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc0a2ca...403e93`](./contracts/ethereum-1/0xc0a2ca1c2c05ac200c109f0bb571fd5710403e93/); ethereum `0xf91a12...56f40c` | ⚠️ Unaudited |
| VITA | unknown | ethereum | n/a | [`0x81f8f0...6fa321`](./contracts/ethereum-1/0x81f8f0bb1cb2a06649e51913a151f0e7ef6fa321/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x107abd...191b5e`](./contracts/ethereum-1/0x107abd279d67c1dbb196a5c1a4d74abcba191b5e/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x164359...dd6867`](./contracts/ethereum-1/0x164359844eb77995ecd74c70c4e023b7abdd6867/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x548f84...a88e31`](./contracts/ethereum-1/0x548f8474ffdab0203eae82131b680a99c4a88e31/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x676cd8...c8a3e1`](./contracts/ethereum-1/0x676cd89c6b6f02d6975547fd7da1d5a8dbc8a3e1/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | base | n/a | [`0xcb75cc...dd483f`](./contracts/base-8453/0xcb75cc365abd9713b9a9b9613d90e9c359dd483f/) | ⚠️ Unaudited |
| WrappedIPToken | token | ethereum | n/a | [`0x0ca5f5...f1352f`](./contracts/ethereum-1/0x0ca5f50a8a59a59ef8c8d610f5ebf99e41f1352f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x6034e0...d33d36` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x023c3e...fb98be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2196b8...e1d47a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x357d6e...d0ae7c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e6a1b...f89bde` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xab814c...394a6b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe41ba1...c52352` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FuYIpl4lmoMs2hOgnrj18%2FLaunchpad%20v2%20Contracts%20(FYEO).pdf?alt=media) | FYEO | Audit | 2025-07 | aging | Direct | contract_name | 2 | n/a |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FW7mPQHDWHGApxw1jl6CO%2FBio-security-review_2025-03-12.pdf?alt=media) | Code4rena | Contest | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FwUCj5OeWCmIpLizDug9d%2FBio%20-%20Security%20Code%20Review%20of%20Bio%20Launchpad%20v0.1.pdf?alt=media) | FYEO | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2Ff5zTFrmYvglsJ6WAXZxM%2FDesciLaunchpad-security-review_2025-02-07.pdf?alt=media) | Pashov Audit Group | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/Xm1EkQX20KCOrH0s1e3Y/Bio-security-review.pdf](https://499247139-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FXm1EkQX20KCOrH0s1e3Y%2FBio-security-review.pdf) | Pashov Audit Group | Audit | 2024-06 | stale | Direct | contract_name | 24 | high |
| [2023-04-pashov.md](https://github.com/bio-xyz/vesting-contracts/blob/main/audits/2023-04-pashov.md) | Pashov Audit Group | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xcb1592...ee5ffa`](./contracts/ethereum-1/0xcb1592591996765ec0efc1f92599a19767ee5ffa/) | BioToken | token | $89,366,879.30 | Verified native implementation with $89,366,879.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ce115...8a6f42`](./contracts/ethereum-1/0x9ce115f0341ae5dabc8b477b74e83db2018a6f42/) | HairToken | token | $17,304,317.80 | Verified native implementation with $17,304,317.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d6866...61add1`](./contracts/ethereum-1/0x0d6866f3369e4825ce07f226a424f1c11861add1/) | IPToken | unknown | $10,175,660.45 | Verified native implementation with $10,175,660.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x226a2f...077dd2`](./contracts/base-8453/0x226a2fa2556c48245e57cd1cba4c6c9e67077dd2/) | Token | token | $5,204,984.10 | Verified native implementation with $5,204,984.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x761a35...2f97fa`](./contracts/ethereum-1/0x761a3557184cbc07b7493da0661c41177b2f97fa/) | GrowToken | token | $3,136,584.19 | Verified native implementation with $3,136,584.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab814c...394a6b`](./contracts/ethereum-1/0xab814ce69e15f6b9660a3b184c0b0c97b9394a6b/) | CerebrumDAOToken | token | $1,894,767.32 | Verified native implementation with $1,894,767.32 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4ffdf...754739`](./contracts/ethereum-1/0xa4ffdf3208f46898ce063e25c1c43056fa754739/) | AthenaDAOToken | token | $941,780.46 | Verified native implementation with $941,780.46 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e6a1b...f89bde`](./contracts/ethereum-1/0x3e6a1b21bd267677fa49be6425aebe2fc0f89bde/) | QBioToken | token | $819,325.80 | Verified native implementation with $819,325.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2196b8...e1d47a`](./contracts/ethereum-1/0x2196b84eace74867b73fb003aff93c11fce1d47a/) | OtoCoToken | token | $318,136.76 | Verified native implementation with $318,136.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35bce2...2b29b7`](./contracts/ethereum-1/0x35bce29f52f51f547998717cd598068afa2b29b7/) | StakedLockingCrowdSale | token | $7,796.67 | Verified native implementation with $7,796.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1ed7a...a60691`](./contracts/ethereum-1/0xa1ed7ae99abeab2883a4a9486dbbb1c020a60691/) | AccessResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0a8d2...5bc6c2`](./contracts/ethereum-1/0xf0a8d23f38e9cbbe01c4ed37f23bd519b65bc6c2/) | CrowdSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc85f5d...8f976f`](./contracts/ethereum-1/0xc85f5dd5880d5162faf5fdb24d40845b7c8f976f/) | DAOToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0443df...8ae45d`](./contracts/ethereum-1/0x0443dfac8e510cfbdfdb9247e77400e9728ae45d/) | IPNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1729b...a8f3b8`](./contracts/ethereum-1/0xb1729b20dad1fa670f96e4cf4bffe21ac6a8f3b8/) | LockedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x829969...c3199a`](./contracts/ethereum-1/0x8299699969d696bd9c05fd4fb89f8840e2c3199a/) | LockedTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbfd26...66db26`](./contracts/ethereum-1/0xfbfd266bf3b49db8746155aa318d4533cc66db26/) | LockingCrowdSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x023c3e...fb98be`](./contracts/ethereum-1/0x023c3e7cc97b5d00bc88b47e068d324faffb98be/) | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b62ec...f0850a`](./contracts/ethereum-1/0x4b62ec784479c5520ec77de8d10c1a85d8f0850a/) | Synthesizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc837e0...a628fa`](./contracts/ethereum-1/0xc837e02982992b701a1b5e4e21fa01ceb0a628fa/) | TermsAcceptedPermissioner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x625ed6...576e8f`](./contracts/ethereum-1/0x625ed621d814645aa81c50c4f333d4a407576e8f/) | TimelockedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d781e...6dd43f`](./contracts/ethereum-1/0x0d781edf9c75cf9136aac6600873d0a20a6dd43f/) | Tokenizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1510e9...e9857b`](./contracts/ethereum-1/0x1510e9cf00daeb33e9fc9566a70de7c75be9857b/) | TokenVestingMerkle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x067c1e...0036dd`](./contracts/ethereum-1/0x067c1ec64c8cdfc28cb53bff742974f1150036dd/) | TokenVestingMerklePurchasable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0a2ca...403e93`](./contracts/ethereum-1/0xc0a2ca1c2c05ac200c109f0bb571fd5710403e93/) | VeBIO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ca5f5...f1352f`](./contracts/ethereum-1/0x0ca5f50a8a59a59ef8c8d610f5ebf99e41f1352f/) | WrappedIPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 1 |
| standard_library | 8 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=3, extraction_exact=24

Zero-match audit list:

- [2524] spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf
- [2525] spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf
- [2526] spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf

Fork inheritance lineage and inherited audits are included when available.
