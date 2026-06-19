# Agentic Audit Brief: Bio Protocol

## Project Overview

- Project: Bio Protocol (`bio-protocol`)
- Website: [https://www.bio.xyz/](https://www.bio.xyz/)
- Lifecycle: active (Tier 0, 77.2% below peak)
- Generated: 2026-06-19T06:13:21.043Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: base, ethereum
- Contract surface: 33 unique implementations (89 raw deployments)
- DeFi Llama TVL: $4,307,036.04
- On-chain TVL (included contracts): $143,807,019.12
- TVL by chain: Ethereum $133,719,926.37 | Base $10,087,092.75

## Project Description

Bio Protocol is a launchpad for decentralized science (DeSci) projects, enabling tokenization and liquidity for biotech intellectual property. It provides infrastructure for creating, staking, and governing tokens tied to scientific assets.

### Architecture

The Bio Protocol family provides the staking and governance layer for the BIO token, while Neuron-Gale tokens represent individual DeSci projects that may be launched or supported through the Bio Protocol launchpad. Shared infrastructure includes proxy-based upgradeability and cross-chain bridges (OptimismMintableERC20) used by Neuron-Gale tokens.

## Contract Surface Quality

- Indexed contracts: 155; live-surface contracts included: 89 (89 live, 0 unknown).
- Excluded by liveness: 37 inactive, 29 singleton, 0 uninitialized.
- Deployment units: 6/20 live.
- Detected codebases: none
- Dependencies extracted: 6; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/32 (9.4%)
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 33
- Raw deployments: 89
- Audits discovered: 6
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $139,622,135.90
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 3 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| FYEO | Tier 2 | 2 | 6.3% | 2025-07 |
| Pashov Audit Group | Tier 2 | 1 | 3.1% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentToken | token | base | n/a | 10 deployments: base [`0x036994...401127`](./contracts/base-8453/0x03699469849a6cf876a65b4fd01fbd663c401127/); base `0x492ae2...9d6d43`; base `0x54f16b...f48a0a`; base `0x5d4d25...b2dcd3`; base `0x7db6df...ec21ec`; base `0x896a0b...294250`; base `0x9d56c2...27581d`; base `0xd9bf91...298411`; base `0xe183b1...bce582`; base `0xe8f802...8a69fa` | ✅ Audited |
| TokenVesting | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x4f55ed...fd6517`](./contracts/ethereum-1/0x4f55edffd4e9325577d4c8dde6f15782cefd6517/); ethereum `0x7c36c6...733aab` | ✅ Audited |
| VeBIO | unknown | base | unit-35311 | [`0xe1b48c...49a3bd`](./contracts/base-8453/0xe1b48c0279cd95d984f1290293116c45d049a3bd/) | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BioToken | token | ethereum | n/a | [`0xcb1592...ee5ffa`](./contracts/ethereum-1/0xcb1592591996765ec0efc1f92599a19767ee5ffa/) | ⚠️ Unaudited |
| HairToken | token | ethereum | n/a | [`0x9ce115...8a6f42`](./contracts/ethereum-1/0x9ce115f0341ae5dabc8b477b74e83db2018a6f42/) | ⚠️ Unaudited |
| Token | token | base | n/a | [`0x226a2f...077dd2`](./contracts/base-8453/0x226a2fa2556c48245e57cd1cba4c6c9e67077dd2/) | ⚠️ Unaudited |
| GrowToken | token | ethereum | n/a | [`0x761a35...2f97fa`](./contracts/ethereum-1/0x761a3557184cbc07b7493da0661c41177b2f97fa/) | ⚠️ Unaudited |
| IPToken | token | ethereum | n/a | 4 deployments: ethereum [`0x3c4268...72d9d3`](./contracts/ethereum-1/0x3c426812f39337679265ea407f744cdac672d9d3/); ethereum `0x7b66e8...05f9c2`; ethereum `0xd07ea8...be4113`; ethereum `0xd79fe2...f3a0a9` | ⚠️ Unaudited |
| CerebrumDAOToken | token | ethereum | n/a | [`0xab814c...394a6b`](./contracts/ethereum-1/0xab814ce69e15f6b9660a3b184c0b0c97b9394a6b/) | ⚠️ Unaudited |
| AthenaDAOToken | token | ethereum | n/a | [`0xa4ffdf...754739`](./contracts/ethereum-1/0xa4ffdf3208f46898ce063e25c1c43056fa754739/) | ⚠️ Unaudited |
| QBioToken | token | ethereum | n/a | [`0x3e6a1b...f89bde`](./contracts/ethereum-1/0x3e6a1b21bd267677fa49be6425aebe2fc0f89bde/) | ⚠️ Unaudited |
| JBToken | token | ethereum | n/a | [`0xf4308b...8079d0`](./contracts/ethereum-1/0xf4308b0263723b121056938c2172868e408079d0/) | ⚠️ Unaudited |
| OtoCoToken | token | ethereum | n/a | [`0x2196b8...e1d47a`](./contracts/ethereum-1/0x2196b84eace74867b73fb003aff93c11fce1d47a/) | ⚠️ Unaudited |
| StakedLockingCrowdSale | token | ethereum | n/a | [`0x35bce2...2b29b7`](./contracts/ethereum-1/0x35bce29f52f51f547998717cd598068afa2b29b7/) | ⚠️ Unaudited |
| AccessResolver | unknown | ethereum | n/a | [`0xa1ed7a...a60691`](./contracts/ethereum-1/0xa1ed7ae99abeab2883a4a9486dbbb1c020a60691/) | ⚠️ Unaudited |
| CrowdSale | unknown | ethereum | n/a | [`0xf0a8d2...5bc6c2`](./contracts/ethereum-1/0xf0a8d23f38e9cbbe01c4ed37f23bd519b65bc6c2/) | ⚠️ Unaudited |
| DAOToken | token | ethereum | n/a | [`0xc85f5d...8f976f`](./contracts/ethereum-1/0xc85f5dd5880d5162faf5fdb24d40845b7c8f976f/) | ⚠️ Unaudited |
| ERC20Mock | token | ethereum | n/a | [`0x41e916...7c6fd3`](./contracts/ethereum-1/0x41e9163856b37fa79dc676d3805de88e917c6fd3/) | ⚠️ Unaudited |
| FairAuctionVesting | operational_periphery | ethereum | n/a | 12 deployments: ethereum [`0x122a15...13d722`](./contracts/ethereum-1/0x122a151d6cf3213d2d00920887cac1986c13d722/); ethereum `0x2dc49e...c522ef`; ethereum `0x3068a5...de9824`; ethereum `0x50926e...bf905b`; ethereum `0x7bbb1b...d2cdd2`; ethereum `0x87621f...6df2e6`; ethereum `0x88d6dd...cd586b`; ethereum `0xa4c91a...17b18a`; ethereum `0xe1a159...dd265b`; ethereum `0xe5e2ec...838b24`; ethereum `0xf6380a...3788da`; ethereum `0xf6d0f5...45d83e` | ⚠️ Unaudited |
| LockedToken | token | ethereum | n/a | 2 deployments: ethereum [`0xb1729b...a8f3b8`](./contracts/ethereum-1/0xb1729b20dad1fa670f96e4cf4bffe21ac6a8f3b8/); ethereum `0xc8cd72...582b5b` | ⚠️ Unaudited |
| LockingCrowdSale | unknown | ethereum | n/a | [`0xfbfd26...66db26`](./contracts/ethereum-1/0xfbfd266bf3b49db8746155aa318d4533cc66db26/) | ⚠️ Unaudited |
| MockUsdc | unknown | ethereum | n/a | [`0x42d018...618e8b`](./contracts/ethereum-1/0x42d01846f7b3669a5b0167c938168afe22618e8b/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | 10 deployments: base [`0x1f4446...ad1c36`](./contracts/base-8453/0x1f4446faaaed23090f324f051c3f8c5ce5ad1c36/); base `0x321725...30a58c`; base `0x3568c7...4e9a79`; base `0x3a38dd...08f0b3`; base `0x490a4b...071937`; base `0x58d75a...40b8a3`; base `0x85d0e1...e59a97`; base `0x937573...bdaa21`; base `0xe18c07...d04e28`; base `0xfbad5b...8bf4d8` | ⚠️ Unaudited |
| StakedToken | token | ethereum | n/a | 23 deployments: ethereum [`0x023c3e...fb98be`](./contracts/ethereum-1/0x023c3e7cc97b5d00bc88b47e068d324faffb98be/); ethereum `0x0bb564...126cca`; ethereum `0x335015...002588`; ethereum `0x357d6e...d0ae7c`; ethereum `0x450ee6...0ef313`; ethereum `0x67cdf8...dfcecc`; ethereum `0x75edde...5e92ba`; ethereum `0x88835d...469ad7`; ethereum `0xa41cea...74de48`; ethereum `0xb840c4...690687`; ethereum `0xb90f10...830f69`; ethereum `0xd12e41...121e79`; ethereum `0xe41ba1...c52352`; base `0x6c85e4...7ca9f8`; base `0x852c11...342e53`; base `0x85ecbc...a66797`; base `0x9dff3a...9c6a7f`; base `0xafb64a...9e07d0`; base `0xcbd956...3845db`; base `0xe01b67...6dc29b`; base `0xe1ea71...ebe13f`; base `0xec6375...f72f9a`; base `0xee8ea7...f3b4a1` | ⚠️ Unaudited |
| TokenVestingMerklePurchasable | operational_periphery | ethereum | n/a | [`0x2141b4...aaa9b3`](./contracts/ethereum-1/0x2141b47a1c7de6df073d23ff94f04d9fd2aaa9b3/) | ⚠️ Unaudited |
| VITA | unknown | ethereum | n/a | [`0x81f8f0...6fa321`](./contracts/ethereum-1/0x81f8f0bb1cb2a06649e51913a151f0e7ef6fa321/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | unit-35292 | [`0x107abd...191b5e`](./contracts/ethereum-1/0x107abd279d67c1dbb196a5c1a4d74abcba191b5e/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | unit-35293 | [`0x164359...dd6867`](./contracts/ethereum-1/0x164359844eb77995ecd74c70c4e023b7abdd6867/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | unit-35296 | [`0x548f84...a88e31`](./contracts/ethereum-1/0x548f8474ffdab0203eae82131b680a99c4a88e31/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | unit-35298 | [`0x676cd8...c8a3e1`](./contracts/ethereum-1/0x676cd89c6b6f02d6975547fd7da1d5a8dbc8a3e1/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | base | unit-35310 | [`0xcb75cc...dd483f`](./contracts/base-8453/0xcb75cc365abd9713b9a9b9613d90e9c359dd483f/) | ⚠️ Unaudited |
| WrappedIPToken | token | ethereum | n/a | [`0x0ca5f5...f1352f`](./contracts/ethereum-1/0x0ca5f50a8a59a59ef8c8d610f5ebf99e41f1352f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x6034e0...d33d36` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FuYIpl4lmoMs2hOgnrj18%2FLaunchpad%20v2%20Contracts%20(FYEO).pdf?alt=media) | FYEO | Audit | 2025-07 | fresh | Direct | contract_name | 11 | high |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FW7mPQHDWHGApxw1jl6CO%2FBio-security-review_2025-03-12.pdf?alt=media) | Code4rena | Contest | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FwUCj5OeWCmIpLizDug9d%2FBio%20-%20Security%20Code%20Review%20of%20Bio%20Launchpad%20v0.1.pdf?alt=media) | FYEO | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2Ff5zTFrmYvglsJ6WAXZxM%2FDesciLaunchpad-security-review_2025-02-07.pdf?alt=media) | Pashov Audit Group | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/Xm1EkQX20KCOrH0s1e3Y/Bio-security-review.pdf](https://499247139-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FXm1EkQX20KCOrH0s1e3Y%2FBio-security-review.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TokenVesting (Pashov Audit Group)](https://github.com/bio-xyz/vesting-contracts/blob/main/audits/2023-04-pashov.md) | Pashov Audit Group | Audit | 2023-04 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xcb1592...ee5ffa`](./contracts/ethereum-1/0xcb1592591996765ec0efc1f92599a19767ee5ffa/) | BioToken | token | $101,408,249.62 | Verified native implementation with $101,408,249.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ce115...8a6f42`](./contracts/ethereum-1/0x9ce115f0341ae5dabc8b477b74e83db2018a6f42/) | HairToken | token | $18,262,955.54 | Verified native implementation with $18,262,955.54 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x226a2f...077dd2`](./contracts/base-8453/0x226a2fa2556c48245e57cd1cba4c6c9e67077dd2/) | Token | token | $5,902,209.53 | Verified native implementation with $5,902,209.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x761a35...2f97fa`](./contracts/ethereum-1/0x761a3557184cbc07b7493da0661c41177b2f97fa/) | GrowToken | token | $3,749,881.41 | Verified native implementation with $3,749,881.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c4268...72d9d3`](./contracts/ethereum-1/0x3c426812f39337679265ea407f744cdac672d9d3/) | IPToken | token | $3,185,670.78 | Verified native implementation with $3,185,670.78 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab814c...394a6b`](./contracts/ethereum-1/0xab814ce69e15f6b9660a3b184c0b0c97b9394a6b/) | CerebrumDAOToken | token | $2,915,221.52 | Verified native implementation with $2,915,221.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4ffdf...754739`](./contracts/ethereum-1/0xa4ffdf3208f46898ce063e25c1c43056fa754739/) | AthenaDAOToken | token | $1,613,870.10 | Verified native implementation with $1,613,870.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e6a1b...f89bde`](./contracts/ethereum-1/0x3e6a1b21bd267677fa49be6425aebe2fc0f89bde/) | QBioToken | token | $1,266,460.43 | Verified native implementation with $1,266,460.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35bce2...2b29b7`](./contracts/ethereum-1/0x35bce29f52f51f547998717cd598068afa2b29b7/) | StakedLockingCrowdSale | token | $10,285.06 | Verified native implementation with $10,285.06 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1ed7a...a60691`](./contracts/ethereum-1/0xa1ed7ae99abeab2883a4a9486dbbb1c020a60691/) | AccessResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0a8d2...5bc6c2`](./contracts/ethereum-1/0xf0a8d23f38e9cbbe01c4ed37f23bd519b65bc6c2/) | CrowdSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc85f5d...8f976f`](./contracts/ethereum-1/0xc85f5dd5880d5162faf5fdb24d40845b7c8f976f/) | DAOToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x122a15...13d722`](./contracts/ethereum-1/0x122a151d6cf3213d2d00920887cac1986c13d722/) | FairAuctionVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1729b...a8f3b8`](./contracts/ethereum-1/0xb1729b20dad1fa670f96e4cf4bffe21ac6a8f3b8/) | LockedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbfd26...66db26`](./contracts/ethereum-1/0xfbfd266bf3b49db8746155aa318d4533cc66db26/) | LockingCrowdSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42d018...618e8b`](./contracts/ethereum-1/0x42d01846f7b3669a5b0167c938168afe22618e8b/) | MockUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x023c3e...fb98be`](./contracts/ethereum-1/0x023c3e7cc97b5d00bc88b47e068d324faffb98be/) | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2141b4...aaa9b3`](./contracts/ethereum-1/0x2141b47a1c7de6df073d23ff94f04d9fd2aaa9b3/) | TokenVestingMerklePurchasable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ca5f5...f1352f`](./contracts/ethereum-1/0x0ca5f50a8a59a59ef8c8d610f5ebf99e41f1352f/) | WrappedIPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 1 |
| standard_library | 7 |
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
