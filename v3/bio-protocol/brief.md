# Agentic Audit Brief: Bio Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Bio Protocol (`bio-protocol`)
- Website: [https://www.bio.xyz/](https://www.bio.xyz/)
- Lifecycle: active (Tier 0, 79.5% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 64 unique implementations (165 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,112,254.28
- On-chain TVL (included contracts): $133,528,280.50
- TVL by chain: Ethereum $124,791,536.09 | Base $8,736,744.41

## Project Description

This brief describes the observed EVM deployment and audit surface for Bio Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across base, ethereum. Structural roles: 2 core, 2 supporting, 1 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (2), supporting (2), unclassified (1)
- Contract kinds: contract (5)
- Detected standards: accesscontrol (2), erc165 (2), erc1967proxy (2), erc20 (2), ownable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d2adb...7d2ef4`, chain 1)
- BioToken (`0xcb1592...ee5ffa`, chain 1)
- ERC1967Proxy (`0xf91a12...56f40c`, chain 1)
- ERC1967Proxy (`0xe1b48c...49a3bd`, chain 8453)
- Token (`0x226a2f...077dd2`, chain 8453)
- VeBIO (`0xc0a2ca...403e93`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 59 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 21
- Confirmed-live implementations: 5 of 64 unique; 59 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/56
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 64
- Raw deployments: 165
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $94,571,863.40
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (56)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BioToken | token | project_anchor | own_supporting | 0 | ethereum | unit-380595 | `0xcb1592...ee5ffa` | ⚠️ Unaudited |
| HairToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ce115...8a6f42` | ⚠️ Unaudited |
| IPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0d6866...61add1`; ethereum `0x3c4268...72d9d3`; ethereum `0x7b66e8...05f9c2`; ethereum `0x89a14b...67b72b`; ethereum `0x9e4fc6...06997a`; ethereum `0xd07ea8...be4113`; ethereum `0xd79fe2...f3a0a9` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | base | unit-380596 | `0x226a2f...077dd2` | ⚠️ Unaudited |
| AgentToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: base `0x036994...401127`; base `0x492ae2...9d6d43`; base `0x54f16b...f48a0a`; base `0x5d4d25...b2dcd3`; base `0x7db6df...ec21ec`; base `0x896a0b...294250`; base `0x9d56c2...27581d`; base `0xd9bf91...298411`; base `0xe183b1...bce582`; base `0xe8f802...8a69fa` | ⚠️ Unaudited |
| GrowToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x761a35...2f97fa` | ⚠️ Unaudited |
| CerebrumDAOToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab814c...394a6b` | ⚠️ Unaudited |
| AthenaDAOToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4ffdf...754739` | ⚠️ Unaudited |
| JBToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4308b...8079d0` | ⚠️ Unaudited |
| QBioToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e6a1b...f89bde` | ⚠️ Unaudited |
| OtoCoToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2196b8...e1d47a` | ⚠️ Unaudited |
| StakedLockingCrowdSale | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35bce2...2b29b7` | ⚠️ Unaudited |
| AccessResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x97b7f5...181b80`; ethereum `0xc130e0...c99cd0` | ⚠️ Unaudited |
| AccessResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1ed7a...a60691` | ⚠️ Unaudited |
| CrowdSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0a8d2...5bc6c2` | ⚠️ Unaudited |
| DAOToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3ae5ea...d9ed2f`; ethereum `0xc85f5d...8f976f`; ethereum `0xd25954...78f6fe` | ⚠️ Unaudited |
| ERC20Mock | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41e916...7c6fd3` | ⚠️ Unaudited |
| FairAuctionVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 24 deployments: ethereum `0x122a15...13d722`; ethereum `0x2dc49e...c522ef`; ethereum `0x3068a5...de9824`; ethereum `0x40e153...6165c7`; ethereum `0x482155...62bbb3`; ethereum `0x50926e...bf905b`; ethereum `0x50fb8e...062540`; ethereum `0x513639...edfd1f`; ethereum `0x5d4f4b...4231bc`; ethereum `0x6f4744...d0c36d`; ethereum `0x7bbb1b...d2cdd2`; ethereum `0x86206f...f2a836`; ethereum `0x87621f...6df2e6`; ethereum `0x88d6dd...cd586b`; ethereum `0xa4c91a...17b18a`; ethereum `0xad032c...cb42c1`; ethereum `0xb35d73...cb400f`; ethereum `0xd20e71...e84507`; ethereum `0xe1a159...dd265b`; ethereum `0xe5e2ec...838b24`; ethereum `0xeb46ed...ee64b3`; ethereum `0xf6380a...3788da`; ethereum `0xf6d0f5...45d83e`; ethereum `0xfbda21...c899a6` | ⚠️ Unaudited |
| IPNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0443df...8ae45d`; ethereum `0x096c80...63e3dc`; ethereum `0x6b179d...847f80`; ethereum `0xdbdf50...2cc060` | ⚠️ Unaudited |
| IPNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcad886...d54fc1`; ethereum `0xd03542...c57384` | ⚠️ Unaudited |
| LockedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb1729b...a8f3b8`; ethereum `0xc8cd72...582b5b` | ⚠️ Unaudited |
| LockedTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x829969...c3199a`; ethereum `0xc9be11...0fd825` | ⚠️ Unaudited |
| LockedTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xde1ca9...e9f57b`; ethereum `0xf6fee6...8ccae0` | ⚠️ Unaudited |
| LockingCrowdSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbfd26...66db26` | ⚠️ Unaudited |
| MerkleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26d6a8...2e0716` | ⚠️ Unaudited |
| MockUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42d018...618e8b` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1783e7...dc7f4c`; ethereum `0x2bbacb...f3e9e3` | ⚠️ Unaudited |
| NttManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2c6c5c...c8dcf8`; ethereum `0xf758df...a5c9ad` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7620d0...39ec0a`; ethereum `0xb7a1c2...1be9ee` | ⚠️ Unaudited |
| NttManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9e2de6...7a7237`; ethereum `0xa05f71...fed7f1` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x565c2b...4d7625`; base `0x9afebc...d89571` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: base `0x1f4446...ad1c36`; base `0x1fbaf8...ee6773`; base `0x321725...30a58c`; base `0x3568c7...4e9a79`; base `0x3a38dd...08f0b3`; base `0x490a4b...071937`; base `0x58d75a...40b8a3`; base `0x85d0e1...e59a97`; base `0x937573...bdaa21`; base `0xe18c07...d04e28`; base `0xfbad5b...8bf4d8` | ⚠️ Unaudited |
| Raphael | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9abf28...afff7a` | ⚠️ Unaudited |
| SignedMintAuthorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc5fbb...5c5865` | ⚠️ Unaudited |
| StakedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x023c3e...fb98be`; ethereum `0x0bb564...126cca`; ethereum `0x335015...002588`; ethereum `0x357d6e...d0ae7c`; ethereum `0x450ee6...0ef313`; ethereum `0x67cdf8...dfcecc`; ethereum `0x75edde...5e92ba`; ethereum `0x88835d...469ad7`; ethereum `0xa41cea...74de48`; ethereum `0xb840c4...690687`; ethereum `0xb90f10...830f69`; ethereum `0xd12e41...121e79`; ethereum `0xe41ba1...c52352`; base `0x6c85e4...7ca9f8`; base `0x852c11...342e53`; base `0x85ecbc...a66797`; base `0x9dff3a...9c6a7f`; base `0xafb64a...9e07d0`; base `0xcbd956...3845db`; base `0xe01b67...6dc29b`; base `0xe1ea71...ebe13f`; base `0xec6375...f72f9a`; base `0xee8ea7...f3b4a1` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x711f2a...17a66d` | ⚠️ Unaudited |
| Synthesizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4b62ec...f0850a`; ethereum `0xb050a8...bc348f` | ⚠️ Unaudited |
| Synthesizer | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x534e08...d5fa5e`; ethereum `0x5372b3...f6a60d`; ethereum `0x769c68...a43585` | ⚠️ Unaudited |
| TermsAcceptedPermissioner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc3191d...d35705`; ethereum `0xc837e0...a628fa` | ⚠️ Unaudited |
| TimelockedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x625ed6...576e8f` | ⚠️ Unaudited |
| Tokenizer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d781e...6dd43f`; ethereum `0x58eb89...82f436` | ⚠️ Unaudited |
| Tokenizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6517dd...a3654c`; ethereum `0x9c70fa...4a36f3`; ethereum `0xe87013...42557a` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4f55ed...fd6517`; ethereum `0x7c36c6...733aab`; ethereum `0xde659c...73926d`; ethereum `0xf9f8a1...be58e9` | ⚠️ Unaudited |
| TokenVestingMerkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1510e9...e9857b` | ⚠️ Unaudited |
| TokenVestingMerklePurchasable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x067c1e...0036dd`; ethereum `0x1362ed...40a793`; ethereum `0x2141b4...aaa9b3`; ethereum `0x637b11...6f0868` | ⚠️ Unaudited |
| VeBIO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x66ffe6...ad8022`; ethereum `0xbb1bc5...5beb20` | ⚠️ Unaudited |
| VeBIO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb5df43...fc31d1`; ethereum `0xbcb830...7ab19c` | ⚠️ Unaudited |
| VeBIO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-380597 | 2 deployments: ethereum `0xc0a2ca...403e93`; ethereum `0xf91a12...56f40c` | ⚠️ Unaudited |
| VeBIO | unknown | project_anchor | own_supporting | 1 | base | unit-380598 | `0xe1b48c...49a3bd` | ⚠️ Unaudited |
| VITA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81f8f0...6fa321` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x107abd...191b5e` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x164359...dd6867` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x548f84...a88e31` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x676cd8...c8a3e1` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xcb75cc...dd483f` | ⚠️ Unaudited |
| WrappedIPToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca5f5...f1352f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380594 | `0x0d2adb...7d2ef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6034e0...d33d36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x023c3e...fb98be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2196b8...e1d47a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x357d6e...d0ae7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e6a1b...f89bde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xab814c...394a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe41ba1...c52352` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FuYIpl4lmoMs2hOgnrj18%2FLaunchpad%20v2%20Contracts%20(FYEO).pdf?alt=media) | FYEO | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FW7mPQHDWHGApxw1jl6CO%2FBio-security-review_2025-03-12.pdf?alt=media) | Code4rena | Contest | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FwUCj5OeWCmIpLizDug9d%2FBio%20-%20Security%20Code%20Review%20of%20Bio%20Launchpad%20v0.1.pdf?alt=media) | FYEO | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2Ff5zTFrmYvglsJ6WAXZxM%2FDesciLaunchpad-security-review_2025-02-07.pdf?alt=media) | Pashov Audit Group | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/Xm1EkQX20KCOrH0s1e3Y/Bio-security-review.pdf](https://499247139-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FXm1EkQX20KCOrH0s1e3Y%2FBio-security-review.pdf) | Pashov Audit Group | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2023-04-pashov.md](https://github.com/bio-xyz/vesting-contracts/blob/main/audits/2023-04-pashov.md) | Pashov Audit Group | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2523] spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf — no match: All contracts listed in the scope table (Table 1) are extracted. The audit date is from the cover page: '29 July 2025'.
- [2524] spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf — no match: Scope section explicitly lists 'Curation' and 'LaunchFactory' as the smart contracts in scope.
- [2525] spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf — no match: The scope table lists the entire 'bio-launchpad' program directory. No individual contract names are given; the program is a single Solana program.
- [2526] spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf — no match: Scope section lists Rust source files (modules) rather than Solidity contracts. Extracted names from the scope list.
- [2527] spaces/3ba2jNU6BPQUl4RXgHor/uploads/Xm1EkQX20KCOrH0s1e3Y/Bio-security-review.pdf — no match: Only one contract explicitly in scope. TokenVesting is referenced but not listed in scope.
- [2528] 2023-04-pashov.md — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | Launch | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | LaunchFactory | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | LaunchLib | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | LaunchTypes | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IAgentFactory | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IAgentToken | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IAgentVeToken | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IERC20Config | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IUniswapV2Factory | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IUniswapV2Pair | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | AgentFactory | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | AgentToken | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | AgentVeToken | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf | veBIO | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xf91a12...56f40c` — deployed 2025-08-05 14:28:23+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xe1b48c...49a3bd` — deployed 2025-07-30 13:42:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf | Curation | unmatched — not counted | — | listed in scope section | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf | LaunchFactory | unmatched — not counted | — | listed in scope section | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf | bio-launchpad | unmatched — not counted | — | listed in scope table | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | buy_token | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | claim_revenue | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | claim_token | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | create_token | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | deposit_token | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | init_stats | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | mod | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | update_token | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | withdraw_token | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | state | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | lib | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | error | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf | constants | unmatched — not counted | — | listed in scope | no |
| spaces/3ba2jNU6BPQUl4RXgHor/uploads/Xm1EkQX20KCOrH0s1e3Y/Bio-security-review.pdf | FairAuctionVesting | unmatched — not counted | — | Listed in scope section: 'The following smart contracts were in scope of the audit: FairAuctionVesting' | no |
| 2023-04-pashov.md | TokenVesting | unmatched — not counted | — | — | no |
| 2023-04-pashov.md | TokenVestingMerkle | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xcb1592...ee5ffa` | BioToken | token | $89,366,879.30 | Verified native implementation with $89,366,879.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x226a2f...077dd2` | Token | token | $5,204,984.10 | Verified native implementation with $5,204,984.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc0a2ca...403e93` | VeBIO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 1 |
| standard_library | 10 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 34 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [2523] spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf
- [2524] spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf
- [2525] spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf
- [2526] spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf
- [2527] spaces/3ba2jNU6BPQUl4RXgHor/uploads/Xm1EkQX20KCOrH0s1e3Y/Bio-security-review.pdf
- [2528] 2023-04-pashov.md

Fork inheritance lineage and inherited audits are included when available.
