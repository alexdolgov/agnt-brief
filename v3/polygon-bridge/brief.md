# Agentic Audit Brief: Polygon Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Polygon Bridge (`polygon-bridge`)
- Website: [https://polygon.technology/](https://polygon.technology/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, polygon, polygon-amoy, sepolia
- Contract surface: 115 unique implementations (116 raw deployments)
- Coverage basis: 4/20 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,738,904,672.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Polygon Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across ethereum, polygon, polygon-amoy, sepolia. Structural roles: 13 core, 8 supporting, 1 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: core (13), supporting (8), infra (1)
- Contract kinds: contract (14), unclassified (7), abstract (1)
- Detected standards: ownable (6), erc20 (4), erc165 (3), erc1967proxy (2), erc721 (2), accesscontrol (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (17), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 3

## Fork Analysis

1 of 41 contracts are derived from known codebases. 40 contracts have no detected origin.

### Forked Contracts

**ValidatorShare** (`0x01d5dc...fed5ec`, chain 1)
Origin: katana-pre-launch (`0x7e94d6...8cc67b`)
Containment: 63.9% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- _restake(bool)
- _sellVoucher_new(uint256,uint256,bool)
- buyVoucherPOL(uint256,uint256)
- buyVoucherWithPermit(uint256,uint256,uint256,uint8,bytes32,bytes32)
- restakePOL()
- sellVoucher_newPOL(uint256,uint256)
- sellVoucherPOL(uint256,uint256)
- transferPOL(address,uint256)
- unstakeClaimTokens_newPOL(uint256)
- unstakeClaimTokensPOL()
- withdrawRewardsPOL()

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x01f645...bdc96a`, chain 1)
- UnnamedContract (`0x2a8869...495922`, chain 1)
- UnnamedContract (`0x4ef512...29f7de`, chain 1)
- UnnamedContract (`0x536c55...51bd03`, chain 1)
- UnnamedContract (`0x54150f...72f49b`, chain 1)
- UnnamedContract (`0x550b7c...530446`, chain 1)
- UnnamedContract (`0x5e3ef2...13d908`, chain 1)
- UnnamedContract (`0x5e8752...70b422`, chain 1)
- UnnamedContract (`0x61addc...36053e`, chain 1)
- UnnamedContract (`0x6df5cb...c5086b`, chain 1)
- UnnamedContract (`0x86e4dc...94c287`, chain 1)
- UnnamedContract (`0x8b90c7...25b258`, chain 1)
- UnnamedContract (`0x98165b...95fd07`, chain 1)
- UnnamedContract (`0xa59c84...a7512b`, chain 1)
- UnnamedContract (`0xba9ac3...484963`, chain 1)
- UnnamedContract (`0xbc9f74...7b6c53`, chain 1)
- UnnamedContract (`0xc4fa44...3bb642`, chain 1)
- UnnamedContract (`0xcaf0aa...5c8cef`, chain 1)
- UnnamedContract (`0xd9c7c4...e34861`, chain 1)
- UnnamedContract (`0xddac6d...1a94cf`, chain 1)
- UnnamedContract (`0xdf7415...fabaca`, chain 1)
- BytesLib (`0x1d21fa...7e2417`, chain 1)
- Common (`0x31851a...b7bd75`, chain 1)
- DepositManager (`0x401f6c...21188b`, chain 1)
- ECVerify (`0x71d91a...21b7df`, chain 1)
- EIP1559Burn (`0x70bca5...553c38`, chain 1)
- ERC20PredicateBurnOnly (`0x158d5f...ffce95`, chain 1)
- Governance (`0x6e7a58...c9ce48`, chain 1)
- MaticToken (`0x7d1afa...cfebb0`, chain 1)
- MaticWETH (`0xa45b96...56dde8`, chain 1)
- MerklePatriciaProof (`0x8e51a1...ec9dc8`, chain 1)
- PolygonEcosystemToken (`0x455e53...ffc3f6`, chain 1)
- PolygonMigration (`0x29e7df...0e2c4e`, chain 1)
- Registry (`0x33a02e...99ca71`, chain 1)
- RLPEncode (`0x021c2b...bae495`, chain 1)
- RLPReader (`0xd75f1d...e035a2`, chain 1)
- RootERC721 (`0x96cddf...e54ad3`, chain 1)
- SafeMath (`0x96d358...97ca05`, chain 1)
- StakingNFT (`0x47cbe2...ec897f`, chain 1)
- StateSender (`0x28e4f3...a5bfbe`, chain 1)

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (20 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/153 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/20 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 40 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 67 discovered implementations excluded (0 third-party/infra; 6 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Deployed-live implementations: 40 of 115 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/20
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 115
- Raw deployments: 116
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/polygon/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 15.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 3 | 15.0% | 2023-10 |
| unknown | Tier 2 | 1 | 5.0% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DepositManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251743 | `0x401f6c...21188b` | ✅ Audited |
| PolygonEcosystemToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251612 | `0x455e53...ffc3f6` | ✅ Audited |
| PolygonMigration | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251744 | `0x29e7df...0e2c4e` | ✅ Audited |
| ValidatorShare | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251594 | `0x01d5dc...fed5ec` | ✅ Audited |

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BytesLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251600 | `0x1d21fa...7e2417` | ⚠️ Unaudited |
| ChainExitERC1155Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea748e...61d216` | ⚠️ Unaudited |
| ChildChain | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251734 | `0xd9c7c4...e34861` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa40fc0...37f1b5` | ⚠️ Unaudited |
| ChildERC20Proxified | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf251b5...c58b56` | ⚠️ Unaudited |
| ChildTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ff58e...e4be31` | ⚠️ Unaudited |
| Common | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251604 | `0x31851a...b7bd75` | ⚠️ Unaudited |
| CommunityTreasuryVotes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8b43...3b6905` | ⚠️ Unaudited |
| DefaultEmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x152442...27fcb9` | ⚠️ Unaudited |
| DelegationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40730f...4bbe44` | ⚠️ Unaudited |
| ECVerify | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251630 | `0x71d91a...21b7df` | ⚠️ Unaudited |
| EIP1559Burn | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251629 | `0x70bca5...553c38` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x91cf48...49894d` | ⚠️ Unaudited |
| ERC20PredicateBurnOnly | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251598 | `0x158d5f...ffce95` | ⚠️ Unaudited |
| ERC721PredicateBurnOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031848...596447` | ⚠️ Unaudited |
| EventsHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x067277...2c9edd` | ⚠️ Unaudited |
| ExitNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b54d2...bca6aa` | ⚠️ Unaudited |
| FxRoot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe5e5d...8389a2` | ⚠️ Unaudited |
| GasSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1646a4...318b80` | ⚠️ Unaudited |
| GenericCustomTokenLayerZero | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xee9bf5...8c65cf` | ⚠️ Unaudited |
| GenericCustomTokenPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45541c...df8879` | ⚠️ Unaudited |
| Governance | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251742 | 2 deployments: ethereum `0x6e7a58...c9ce48`; ethereum `0x98165b...95fd07` | ⚠️ Unaudited |
| GovernanceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc7f5...3bcf41` | ⚠️ Unaudited |
| MaticToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251634 | `0x7d1afa...cfebb0` | ⚠️ Unaudited |
| MaticTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x164255...419f5e` | ⚠️ Unaudited |
| MaticWETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251646 | `0xa45b96...56dde8` | ⚠️ Unaudited |
| Merkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032a13...ae2ac4` | ⚠️ Unaudited |
| MerklePatriciaProof | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251640 | `0x8e51a1...ec9dc8` | ⚠️ Unaudited |
| MintableERC721Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fbd00...23b387` | ⚠️ Unaudited |
| MRC20 | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251665 | `0x000000...001010` | ⚠️ Unaudited |
| NewBurn1559 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bd455...b33feb` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2de16d...3d117b` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7a8e4...14dc0a` | ⚠️ Unaudited |
| PeerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4babe...0ce5c7` | ⚠️ Unaudited |
| PriorityQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c1d34...4ee4e2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x409834...12da44` | ⚠️ Unaudited |
| Registry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251605 | `0x33a02e...99ca71` | ⚠️ Unaudited |
| RLPEncode | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251596 | `0x021c2b...bae495` | ⚠️ Unaudited |
| RLPReader | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251656 | `0xd75f1d...e035a2` | ⚠️ Unaudited |
| RootChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17ad93...412b00` | ⚠️ Unaudited |
| RootChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4015cc...38e5d0` | ⚠️ Unaudited |
| RootERC721 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251641 | `0x96cddf...e54ad3` | ⚠️ Unaudited |
| SafeMath | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251642 | `0x96d358...97ca05` | ⚠️ Unaudited |
| StakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a8b34...3b8ee0` | ⚠️ Unaudited |
| StakeManagerExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef49ea...f78166` | ⚠️ Unaudited |
| StakeManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x88f650...b303eb` | ⚠️ Unaudited |
| StakingInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ff58e...e4be31` | ⚠️ Unaudited |
| StakingNFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251613 | `0x47cbe2...ec897f` | ⚠️ Unaudited |
| StateSender | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251602 | `0x28e4f3...a5bfbe` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db715...512722` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x933dcf...62cdc1` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bee30...e19038` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2c24b5...32374f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2dc70f...c34dff` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x417d01...689e02` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x7995b8...2957b9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0xa4a666...81a743` | ⚠️ Unaudited |
| ValidatorShareFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x379e6a...3fe308` | ⚠️ Unaudited |
| VaultBridgeTokenInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ec4d...3945f5` | ⚠️ Unaudited |
| VaultBridgeTokenPart2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c8565...298e80` | ⚠️ Unaudited |
| WithdrawManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017c89...8201ca` | ⚠️ Unaudited |
| ZkEVMWrapperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bd2f4...0fcae8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (49)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251595 | `0x01f645...bdc96a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251603 | `0x2a8869...495922` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251616 | `0x4ef512...29f7de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-251617 | `0x4f9cd8...17d8c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251618 | `0x536c55...51bd03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251619 | `0x54150f...72f49b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251620 | `0x550b7c...530446` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251622 | `0x5e3ef2...13d908` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251623 | `0x5e8752...70b422` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251624 | `0x61addc...36053e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251626 | `0x6df5cb...c5086b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251637 | `0x86e4dc...94c287` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251638 | `0x8b90c7...25b258` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251647 | `0xa59c84...a7512b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251649 | `0xba9ac3...484963` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251650 | `0xbc9f74...7b6c53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251652 | `0xc4fa44...3bb642` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251654 | `0xcaf0aa...5c8cef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251657 | `0xd9c7c4...e34861` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251658 | `0xddac6d...1a94cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251659 | `0xdf7415...fabaca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251705 | `0x70bca5...553c38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251709 | `0x7a8ed2...401854` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251710 | `0x7d1afa...cfebb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251715 | `0x8cc853...8f54a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251723 | `0xa45b96...56dde8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x000000...001010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x3adbc4...b53e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x41dc3c...8c1102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x4f9cd8...17d8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0059bb...aa2a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x13b0ed...199679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x15ea6c...639820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x20393f...d8ff27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a3b75...2b9911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3fd0a5...8e2b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x444993...fceeba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x44ad17...a731a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49e307...6a5f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68eb92...313b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x700dde...671302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x700e0f...0ddf39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7270e1...e6167f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x822db7...4eb96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9b4d4f...ce6ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa37f2a...0beab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc70198...cb3d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe1d0dd...9d248d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xecdd77...eed2c9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/polygon/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [ChainSecurity_Polygon_Staking_Contracts_audit.pdf](https://github.com/0xPolygon/pos-contracts/blob/main/audit/ChainSecurity_Polygon_Staking_Contracts_audit.pdf) | ChainSecurity | Audit | 2023-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [plasma-bridge-update.pdf](https://github.com/0xPolygon/pos-contracts/blob/main/audit/plasma-bridge-update.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf](https://github.com/0xPolygon/pol-token/blob/main/audit/ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf) | ChainSecurity | Audit | 2023-10 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 4 | high |
| [Hexens_Polygon_zkEVM_PUBLIC_fork13_Nov_2024.pdf](https://github.com/0xPolygonHermez/zkevm-rom/blob/main/audits/Hexens_Polygon_zkEVM_PUBLIC_fork13_Nov_2024.pdf) | Hexens | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [zkEVM-ROM-upgrade-1-Spearbit-30-May.pdf](https://github.com/0xPolygonHermez/zkevm-rom/blob/main/audits/zkEVM-ROM-upgrade-1-Spearbit-30-May.pdf) | Spearbit | Audit | 2023-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29854] Active Bug Bounty Program — no match: The document is a bug bounty program page, not an audit report. No contracts in scope are listed; only general program information and rewards.
- [29863] ChainSecurity_Polygon_Staking_Contracts_audit.pdf — matched: Scope explicitly lists StakeManager and ValidatorShare folders, EventsHub.sol, EventsHubProxy.sol, StakingInfo.sol. Excludes slashing and auction functionality.
- [29864] plasma-bridge-update.pdf — matched: Only one contract in scope: DepositManager.sol. Audit date from cover page.
- [29866] ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf — matched: Scope section explicitly lists 6 contracts: 3 implementation contracts and 3 interfaces. Audit date is October 04, 2023 from the cover page.
- [29873] Hexens_Polygon_zkEVM_PUBLIC_fork13_Nov_2024.pdf — no match: Extracted contract names from file paths in findings. Audit date from 'delivered 23.12.2024'.
- [29875] zkEVM-ROM-upgrade-1-Spearbit-30-May.pdf — no match: The audit report covers assembly/zkASM files (stack-operations.zkasm, process-tx.zkasm, utils.zkasm, vars.zkasm) rather than smart contracts. No Solidity contracts or named modules are in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_Polygon_Staking_Contracts_audit.pdf | StakeManager | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Polygon_Staking_Contracts_audit.pdf | ValidatorShare | own contract | ValidatorShare (selected) `0x01d5dc...fed5ec` — deployed 2021-03-26 19:04:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Polygon_Staking_Contracts_audit.pdf | EventsHub | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Polygon_Staking_Contracts_audit.pdf | EventsHubProxy | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Polygon_Staking_Contracts_audit.pdf | StakingInfo | unmatched — not counted | — | listed in scope | no |
| plasma-bridge-update.pdf | DepositManager | own proxy deployment | DepositManager (proxy) (selected) `0x401f6c...21188b` — deployed 2020-05-30 17:57:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf | DefaultEmissionManager | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf | PolygonEcosystemToken | own contract | PolygonEcosystemToken (selected) `0x455e53...ffc3f6` — deployed 2023-10-25 12:06:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf | PolygonMigration | own proxy deployment | PolygonMigration (proxy) (selected) `0x29e7df...0e2c4e` — deployed 2023-10-25 12:06:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf | IDefaultEmissionManager | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf | IPolygonEcosystemToken | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf | IPolygonMigration | unmatched — not counted | — | listed in scope table | no |
| Hexens_Polygon_zkEVM_PUBLIC_fork13_Nov_2024.pdf | p256verify | unmatched — not counted | — | listed in scope | no |
| Hexens_Polygon_zkEVM_PUBLIC_fork13_Nov_2024.pdf | dblScalarMulSecp256r1 | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1d21fa...7e2417` | BytesLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31851a...b7bd75` | Common | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x71d91a...21b7df` | ECVerify | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x70bca5...553c38` | EIP1559Burn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x158d5f...ffce95` | ERC20PredicateBurnOnly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6e7a58...c9ce48` | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7d1afa...cfebb0` | MaticToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa45b96...56dde8` | MaticWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8e51a1...ec9dc8` | MerklePatriciaProof | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x33a02e...99ca71` | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x021c2b...bae495` | RLPEncode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd75f1d...e035a2` | RLPReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96cddf...e54ad3` | RootERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96d358...97ca05` | SafeMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x47cbe2...ec897f` | StakingNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x28e4f3...a5bfbe` | StateSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=2
- Match method counts: unique_name=4

Zero-match audit list:

- [29873] Hexens_Polygon_zkEVM_PUBLIC_fork13_Nov_2024.pdf
- [29875] zkEVM-ROM-upgrade-1-Spearbit-30-May.pdf

Fork inheritance lineage and inherited audits are included when available.
