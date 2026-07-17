# Agentic Audit Brief: Polygon Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Polygon Bridge (`polygon-bridge`)
- Website: [https://polygon.technology/](https://polygon.technology/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
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

**ValidatorShare** (`0x01d5dc56ad4206bb0c132d834644d57f51fed5ec`, chain 1)
Origin: katana-pre-launch (`0x7e94d6cabb20114b22a088d828772645f68cc67b`)
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

- UnnamedContract (`0x01f645dcd6c796f6bc6c982159b32faaaebdc96a`, chain 1)
- UnnamedContract (`0x2a88696e0ffa76baa1338f2c74497cc013495922`, chain 1)
- UnnamedContract (`0x4ef5123a30e4cfec02b3e2f5ce97f1328b29f7de`, chain 1)
- UnnamedContract (`0x536c55cfe4892e581806e10b38dfe8083551bd03`, chain 1)
- UnnamedContract (`0x54150f44c785d412ec262fe895cc3b689c72f49b`, chain 1)
- UnnamedContract (`0x550b7cdac6f5a0d9e840505c3df74ac045530446`, chain 1)
- UnnamedContract (`0x5e3ef299fddf15eaa0432e6e66473ace8c13d908`, chain 1)
- UnnamedContract (`0x5e875267f65537768435c3c6c81cd313a570b422`, chain 1)
- UnnamedContract (`0x61addcd534bdc1721c91740cf711dbece936053e`, chain 1)
- UnnamedContract (`0x6df5cb08d3f0193c768c8a01f42ac4424dc5086b`, chain 1)
- UnnamedContract (`0x86e4dc95c7fbdbf52e33d563bbdb00823894c287`, chain 1)
- UnnamedContract (`0x8b90c7633f1f751e19e76433990b1663c625b258`, chain 1)
- UnnamedContract (`0x98165b71cddea047c0a49413350c40571195fd07`, chain 1)
- UnnamedContract (`0xa59c847bd5ac0172ff4fe912c5d29e5a71a7512b`, chain 1)
- UnnamedContract (`0xba9ac3c9983a3e967f0f387c75ccbd38ad484963`, chain 1)
- UnnamedContract (`0xbc9f74b3b14f460a6c47dcddfd17411cbc7b6c53`, chain 1)
- UnnamedContract (`0xc4fa447a0e77eff9717b09c057b40570813bb642`, chain 1)
- UnnamedContract (`0xcaf0aa768a3ae1297df20072419db8bb8b5c8cef`, chain 1)
- UnnamedContract (`0xd9c7c4ed4b66858301d0cb28cc88bf655fe34861`, chain 1)
- UnnamedContract (`0xddac6d3a2a787b1f4bf26ab6faf519ae3f1a94cf`, chain 1)
- UnnamedContract (`0xdf74156420bd57ab387b195ed81eca36f9fabaca`, chain 1)
- BytesLib (`0x1d21facfc8cad068ef0cbc87fdacdfb20d7e2417`, chain 1)
- Common (`0x31851aaf1fa4cc6632f45570c2086adcf8b7bd75`, chain 1)
- DepositManager (`0x401f6c983ea34274ec46f84d70b31c151321188b`, chain 1)
- ECVerify (`0x71d91a8988d81617be53427126ee62471321b7df`, chain 1)
- EIP1559Burn (`0x70bca57f4579f58670ab2d18ef16e02c17553c38`, chain 1)
- ERC20PredicateBurnOnly (`0x158d5fa3ef8e4dda8a5367decf76b94e7effce95`, chain 1)
- Governance (`0x6e7a5820bad6ceba8ef5ea69c0c92ebbdac9ce48`, chain 1)
- MaticToken (`0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0`, chain 1)
- MaticWETH (`0xa45b966996374e9e65ab991c6fe4bfce3a56dde8`, chain 1)
- MerklePatriciaProof (`0x8e51a119e892d3fb324c0410f11f39f61dec9dc8`, chain 1)
- PolygonEcosystemToken (`0x455e53cbb86018ac2b8092fdcd39d8444affc3f6`, chain 1)
- PolygonMigration (`0x29e7df7b6a1b2b07b731457f499e1696c60e2c4e`, chain 1)
- Registry (`0x33a02e6cc863d393d6bf231b697b82f6e499ca71`, chain 1)
- RLPEncode (`0x021c2bf4d2941ce3d593e07317ec355937bae495`, chain 1)
- RLPReader (`0xd75f1d6a8a7dc558a65c2f30ebf876ddbee035a2`, chain 1)
- RootERC721 (`0x96cddf45c0cd9a59876a2a29029d7c54f6e54ad3`, chain 1)
- SafeMath (`0x96d358795782a73d90f2ed2d505ab235d197ca05`, chain 1)
- StakingNFT (`0x47cbe25bbdb40a774cc37e1da92d10c2c7ec897f`, chain 1)
- StateSender (`0x28e4f3a7f651294b9564800b2d01f35189a5bfbe`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 22; live-surface rows included: 22 (20 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/153 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/20 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 40 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 67 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 6 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 40 of 115 unique; 75 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/66
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 49
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
| ChainSecurity | Tier 1 | 3 | 4.5% | 2023-10 |
| unknown | Tier 2 | 1 | 1.5% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DepositManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251743 | `0x401f6c983ea34274ec46f84d70b31c151321188b` | ✅ Audited |
| PolygonEcosystemToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251612 | `0x455e53cbb86018ac2b8092fdcd39d8444affc3f6` | ✅ Audited |
| PolygonMigration | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251744 | `0x29e7df7b6a1b2b07b731457f499e1696c60e2c4e` | ✅ Audited |
| ValidatorShare | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251594 | `0x01d5dc56ad4206bb0c132d834644d57f51fed5ec` | ✅ Audited |

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BytesLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251600 | `0x1d21facfc8cad068ef0cbc87fdacdfb20d7e2417` | ⚠️ Unaudited |
| ChainExitERC1155Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea748e5b9d0106854cc7479a9b95c92f7061d216` | ⚠️ Unaudited |
| ChildChain | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251734 | `0xd9c7c4ed4b66858301d0cb28cc88bf655fe34861` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa40fc0782bee28dd2cf8cb4ac2ecdb05c537f1b5` | ⚠️ Unaudited |
| ChildERC20Proxified | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf251b57dd11b708cb0385f1f058ec1211fc58b56` | ⚠️ Unaudited |
| ChildTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ff58e665531953a3c667e2d831586777fe4be31` | ⚠️ Unaudited |
| Common | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251604 | `0x31851aaf1fa4cc6632f45570c2086adcf8b7bd75` | ⚠️ Unaudited |
| CommunityTreasuryVotes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8b435481da1ed5abc895e03535ce0bba3b6905` | ⚠️ Unaudited |
| DefaultEmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x152442d77e9fb9c210953d583cbb2da88027fcb9` | ⚠️ Unaudited |
| DelegationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40730f34668afcb3884f050cbc3d376a444bbe44` | ⚠️ Unaudited |
| ECVerify | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251630 | `0x71d91a8988d81617be53427126ee62471321b7df` | ⚠️ Unaudited |
| EIP1559Burn | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251629 | `0x70bca57f4579f58670ab2d18ef16e02c17553c38` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x91cf48ab3c652ee9908cb072e7f52e1e8449894d` | ⚠️ Unaudited |
| ERC20PredicateBurnOnly | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251598 | `0x158d5fa3ef8e4dda8a5367decf76b94e7effce95` | ⚠️ Unaudited |
| ERC721PredicateBurnOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031848f9487219cc538c42dac150968f95596447` | ⚠️ Unaudited |
| EventsHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0672777617caa1e778083a4f74ebc997262c9edd` | ⚠️ Unaudited |
| ExitNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b54d2ee48eb06becf706aa37c39ee334abca6aa` | ⚠️ Unaudited |
| FxRoot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe5e5d361b2ad62c541bab87c45a0b9b018389a2` | ⚠️ Unaudited |
| GasSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1646a4761aa54f23d7f4d5deb5d393f67d318b80` | ⚠️ Unaudited |
| GenericCustomTokenLayerZero | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xee9bf5069ce00cf106f1bb6fe214b6c0228c65cf` | ⚠️ Unaudited |
| GenericCustomTokenPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45541c765f6834389601434150832725dadf8879` | ⚠️ Unaudited |
| Governance | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251742 | 2 deployments: ethereum `0x6e7a5820bad6ceba8ef5ea69c0c92ebbdac9ce48`; ethereum `0x98165b71cddea047c0a49413350c40571195fd07` | ⚠️ Unaudited |
| GovernanceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc7f59668986b620330dd23fde2a173ce3bcf41` | ⚠️ Unaudited |
| MaticToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251634 | `0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0` | ⚠️ Unaudited |
| MaticTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x164255531e730788cb1e68a93c81edb585419f5e` | ⚠️ Unaudited |
| MaticWETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251646 | `0xa45b966996374e9e65ab991c6fe4bfce3a56dde8` | ⚠️ Unaudited |
| Merkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032a138ef9b6efb91c8df33082e7abf17aae2ac4` | ⚠️ Unaudited |
| MerklePatriciaProof | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251640 | `0x8e51a119e892d3fb324c0410f11f39f61dec9dc8` | ⚠️ Unaudited |
| MintableERC721Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fbd00c577caa70318bcf1c6c11e23732823b387` | ⚠️ Unaudited |
| MRC20 | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251665 | `0x0000000000000000000000000000000000001010` | ⚠️ Unaudited |
| NewBurn1559 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bd455c30ad8e2b8df40df44a2ef923d67b33feb` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2de16d15215a6db2fe1c927e01a5294a833d117b` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7a8e43ef0e579c3d64618d2a34dd456ae14dc0a` | ⚠️ Unaudited |
| PeerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4babee541c2fa1ea55ce9af9eb3b5c76b0ce5c7` | ⚠️ Unaudited |
| PriorityQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c1d34e469e2c0b43432dc1fea91b1ea804ee4e2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x409834270b6f2591dd6c1e9f351e4194b112da44` | ⚠️ Unaudited |
| Registry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251605 | `0x33a02e6cc863d393d6bf231b697b82f6e499ca71` | ⚠️ Unaudited |
| RLPEncode | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251596 | `0x021c2bf4d2941ce3d593e07317ec355937bae495` | ⚠️ Unaudited |
| RLPReader | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251656 | `0xd75f1d6a8a7dc558a65c2f30ebf876ddbee035a2` | ⚠️ Unaudited |
| RootChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17ad93683697ce557ef7774660394456a7412b00` | ⚠️ Unaudited |
| RootChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4015ccad9218b109d3339b356392c6ee8438e5d0` | ⚠️ Unaudited |
| RootERC721 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251641 | `0x96cddf45c0cd9a59876a2a29029d7c54f6e54ad3` | ⚠️ Unaudited |
| SafeMath | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251642 | `0x96d358795782a73d90f2ed2d505ab235d197ca05` | ⚠️ Unaudited |
| StakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a8b34d222bb4169b36bc07aa9ca85d61d3b8ee0` | ⚠️ Unaudited |
| StakeManagerExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef49ea6996073752b6840cda34773ffa78f78166` | ⚠️ Unaudited |
| StakeManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x88f65097ba6e10f25e93bf41987f9416bbb303eb` | ⚠️ Unaudited |
| StakingInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ff58e665531953a3c667e2d831586777fe4be31` | ⚠️ Unaudited |
| StakingNFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251613 | `0x47cbe25bbdb40a774cc37e1da92d10c2c7ec897f` | ⚠️ Unaudited |
| StateSender | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251602 | `0x28e4f3a7f651294b9564800b2d01f35189a5bfbe` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db715989da05c1d17441683b5b41d4510512722` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x933dcf4b58d3ae8fb0cde6e10e22f6c0e062cdc1` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bee30d716c380ea7001dec1bb64c8b095e19038` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2c24b57e2ccd1f273045af6a5f632504c432374f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2dc70fb75b88d2eb4715bc06e1595e6d97c34dff` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x417d01b64ea30c4e163873f3a1f77b727c689e02` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x7995b8b819bbcd43086a9d0490730db90e2957b9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0xa4a666fc6474de50608cc0fc8a41478fcf81a743` | ⚠️ Unaudited |
| ValidatorShareFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x379e6aae389f284d5e54b2aa0beba8833c3fe308` | ⚠️ Unaudited |
| VaultBridgeTokenInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ec4d99c82417257f41b2c8ceda0962c03945f5` | ⚠️ Unaudited |
| VaultBridgeTokenPart2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c8565f454f8239b854fe62c99b90b3fc9298e80` | ⚠️ Unaudited |
| WithdrawManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017c89ca4bda3d66cc65e3d20dd95432258201ca` | ⚠️ Unaudited |
| ZkEVMWrapperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bd2f45b2d389c5bdeea7a09d7b0f5e2270fcae8` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251595 | `0x01f645dcd6c796f6bc6c982159b32faaaebdc96a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251603 | `0x2a88696e0ffa76baa1338f2c74497cc013495922` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251616 | `0x4ef5123a30e4cfec02b3e2f5ce97f1328b29f7de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-251617 | `0x4f9cd8a945ee035523979d7a120a23999d17d8c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251618 | `0x536c55cfe4892e581806e10b38dfe8083551bd03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251619 | `0x54150f44c785d412ec262fe895cc3b689c72f49b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251620 | `0x550b7cdac6f5a0d9e840505c3df74ac045530446` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251622 | `0x5e3ef299fddf15eaa0432e6e66473ace8c13d908` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251623 | `0x5e875267f65537768435c3c6c81cd313a570b422` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251624 | `0x61addcd534bdc1721c91740cf711dbece936053e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251626 | `0x6df5cb08d3f0193c768c8a01f42ac4424dc5086b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251637 | `0x86e4dc95c7fbdbf52e33d563bbdb00823894c287` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251638 | `0x8b90c7633f1f751e19e76433990b1663c625b258` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251647 | `0xa59c847bd5ac0172ff4fe912c5d29e5a71a7512b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251649 | `0xba9ac3c9983a3e967f0f387c75ccbd38ad484963` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251650 | `0xbc9f74b3b14f460a6c47dcddfd17411cbc7b6c53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251652 | `0xc4fa447a0e77eff9717b09c057b40570813bb642` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251654 | `0xcaf0aa768a3ae1297df20072419db8bb8b5c8cef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251657 | `0xd9c7c4ed4b66858301d0cb28cc88bf655fe34861` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251658 | `0xddac6d3a2a787b1f4bf26ab6faf519ae3f1a94cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251659 | `0xdf74156420bd57ab387b195ed81eca36f9fabaca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251705 | `0x70bca57f4579f58670ab2d18ef16e02c17553c38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251709 | `0x7a8ed27f4c30512326878652d20fc85727401854` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251710 | `0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251715 | `0x8cc8538d60901d19692f5ba22684732bc28f54a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251723 | `0xa45b966996374e9e65ab991c6fe4bfce3a56dde8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x0000000000000000000000000000000000001010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x3adbc484ff0cfeb657e1a9af8f3cb16dc0b53e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x41dc3c8eb8368bd9139cec50434a0c294c8c1102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x4f9cd8a945ee035523979d7a120a23999d17d8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0059bbf8e5b9b071acc7682b6fe198c32aaa2a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x13b0edd9312886ac0c73116e767208bed1199679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x15ea6c538cf4b4a4f51999f433557285d5639820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x20393ff3b3c38b72a16eb7d7a474cd38abd8ff27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a3b750e7d4d389bc1d0be20e5d09530f82b9911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3fd0a53f4bf853985a95f4eb3f9c9fde1f8e2b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x44499312f493f62f2dfd3c6435ca3603ebfceeba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x44ad17990f9128c6d823ee10db7f0a5d40a731a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49e307fa5a58ff1834e0f8a60eb2a9609e6a5f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68eb9202b48d3980832ade89d580ba883b313b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x700dde29de87ed2c01c27c896dc8badb4f671302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x700e0f2afbd92e2b3ff91cad8c62a564690ddf39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7270e1fa2f0569d50dcd1d038d940135bde6167f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x822db7e79096e7247d9273e5782ecaec464eb96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9b4d4fc98c2aa924a65ab827494159a76fce6ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa37f2a3df304a7c6aba3492146bc8b89170beab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc70198ad91082c4d6eeb70d991cc4b2b61cb3d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe1d0ddd817ca39301c9e4f5a7218bbdaf59d248d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xecdd77ce6f146ccf5dab707941d318bd50eed2c9` | ❓ Unverified |

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
| ChainSecurity_Polygon_Staking_Contracts_audit.pdf | ValidatorShare | own contract | ValidatorShare (selected) `0x01d5dc56ad4206bb0c132d834644d57f51fed5ec` — deployed 2021-03-26 19:04:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Polygon_Staking_Contracts_audit.pdf | EventsHub | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Polygon_Staking_Contracts_audit.pdf | EventsHubProxy | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Polygon_Staking_Contracts_audit.pdf | StakingInfo | unmatched — not counted | — | listed in scope | no |
| plasma-bridge-update.pdf | DepositManager | own proxy deployment | DepositManager (proxy) (selected) `0x401f6c983ea34274ec46f84d70b31c151321188b` — deployed 2020-05-30 17:57:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf | DefaultEmissionManager | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf | PolygonEcosystemToken | own contract | PolygonEcosystemToken (selected) `0x455e53cbb86018ac2b8092fdcd39d8444affc3f6` — deployed 2023-10-25 12:06:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf | PolygonMigration | own proxy deployment | PolygonMigration (proxy) (selected) `0x29e7df7b6a1b2b07b731457f499e1696c60e2c4e` — deployed 2023-10-25 12:06:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf | IDefaultEmissionManager | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf | IPolygonEcosystemToken | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Polygon_Polygon_Token_(POL)_audit.pdf | IPolygonMigration | unmatched — not counted | — | listed in scope table | no |
| Hexens_Polygon_zkEVM_PUBLIC_fork13_Nov_2024.pdf | p256verify | unmatched — not counted | — | listed in scope | no |
| Hexens_Polygon_zkEVM_PUBLIC_fork13_Nov_2024.pdf | dblScalarMulSecp256r1 | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1d21facfc8cad068ef0cbc87fdacdfb20d7e2417` | BytesLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31851aaf1fa4cc6632f45570c2086adcf8b7bd75` | Common | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x71d91a8988d81617be53427126ee62471321b7df` | ECVerify | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x70bca57f4579f58670ab2d18ef16e02c17553c38` | EIP1559Burn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x158d5fa3ef8e4dda8a5367decf76b94e7effce95` | ERC20PredicateBurnOnly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6e7a5820bad6ceba8ef5ea69c0c92ebbdac9ce48` | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0` | MaticToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa45b966996374e9e65ab991c6fe4bfce3a56dde8` | MaticWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8e51a119e892d3fb324c0410f11f39f61dec9dc8` | MerklePatriciaProof | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x33a02e6cc863d393d6bf231b697b82f6e499ca71` | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x021c2bf4d2941ce3d593e07317ec355937bae495` | RLPEncode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd75f1d6a8a7dc558a65c2f30ebf876ddbee035a2` | RLPReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96cddf45c0cd9a59876a2a29029d7c54f6e54ad3` | RootERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96d358795782a73d90f2ed2d505ab235d197ca05` | SafeMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x47cbe25bbdb40a774cc37e1da92d10c2c7ec897f` | StakingNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x28e4f3a7f651294b9564800b2d01f35189a5bfbe` | StateSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
