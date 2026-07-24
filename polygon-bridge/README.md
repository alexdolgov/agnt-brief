# Agentic Audit Brief: Polygon Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Polygon Bridge (`polygon-bridge`)
- Website: [https://polygon.technology/](https://polygon.technology/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, polygon, polygon-amoy, sepolia
- Contract surface: 491 unique implementations (498 raw deployments)
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
- Outside the address book: 443 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 40 of 491 unique; 451 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/66
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 425
- Unique implementations: 491
- Raw deployments: 498
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
| StakeManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3025349b8bbbd3324afe90c89157dbc567a7e5ff`; ethereum `0x88f65097ba6e10f25e93bf41987f9416bbb303eb` | ⚠️ Unaudited |
| StakingInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ff58e665531953a3c667e2d831586777fe4be31` | ⚠️ Unaudited |
| StakingNFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251613 | `0x47cbe25bbdb40a774cc37e1da92d10c2c7ec897f` | ⚠️ Unaudited |
| StateSender | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251602 | `0x28e4f3a7f651294b9564800b2d01f35189a5bfbe` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db715989da05c1d17441683b5b41d4510512722` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x933dcf4b58d3ae8fb0cde6e10e22f6c0e062cdc1` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bee30d716c380ea7001dec1bb64c8b095e19038` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2c24b57e2ccd1f273045af6a5f632504c432374f`; ethereum `0xcc865b0324121b43728176024f58bdbb3afd6f29` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2dc70fb75b88d2eb4715bc06e1595e6d97c34dff`; ethereum `0x81c16f89222c32806daf01f5129937dfe19d525e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x417d01b64ea30c4e163873f3a1f77b727c689e02`; ethereum `0xc6dd6399eae419a0a33a8dc307f4c1db26d30e45` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7995b8b819bbcd43086a9d0490730db90e2957b9`; polygon `0x82ffafb42ae3ac7b36c38086c5b412a86de54f54` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xa4a666fc6474de50608cc0fc8a41478fcf81a743`; polygon `0xf5a675058bbd344a9f1ab1af00576dfb404d57b2` | ⚠️ Unaudited |
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

### ❓ Unverified (425)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251595 | `0x01f645dcd6c796f6bc6c982159b32faaaebdc96a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x053fa9b934b83e1e0ffc7e98a41aadc3640bb462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f332ed151c8fd2ee30a388931db2f200912ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0af266633a52175343deb9090a983ea12a268156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c6431d03e214f61d4c301a38efb2d807328209f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x185486869e615f5a5644991a491212582caa08fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb29699fdb5fa576d6c7e62c459eb3e118878e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2126e6952c3af75c9d4cf21f63f509195c79ce44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x282fd46e108e40a45e4ce425ba75f80245e6c2e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29a6f32f36eded399763524018f17f03b1435b18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29d2706cdb97783a652314863668ed5cab971db2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251603 | `0x2a88696e0ffa76baa1338f2c74497cc013495922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d3a389027b9468074c67a1a5204dcd80413c2a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d4ab10a0aba7d7feebea2b0fc07d93bdaec2714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d864bc9cb5d24188e53b42051d79f1f11ae751c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dcad61350ec531910da683d396d92e3ae5e5c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e8838900605f9140ca0b36b6ba6c67fc1c49fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34b0c7244bf67632296f2e2608e9d4f161969f08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37596efb83da377fa0d7216f6e5b55882c052543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39f900307579fe66cab529e3606fbcc9ef2ca11c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ad88467e40399dc6ae10427f8b0842348d9076c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c7fcaa93490b28dfad75e789ecda8d2fc1afc08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dd459de96f9c28e3a343b831cbdc2b93c8c4855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x453b75d29541b389298da00d4daad1ac3550ab5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4602c95e3afbb3dc5f5a2ec957803f5d1665c964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46ce937a70412dfdcf01f29d6d4fe15ada1faeb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a5020dc88541c4e0ed19fd7e1da2f6722012c56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251616 | `0x4ef5123a30e4cfec02b3e2f5ce97f1328b29f7de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-251617 | `0x4f9cd8a945ee035523979d7a120a23999d17d8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5052053d958c763e96d4908990e74df2e04299eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251618 | `0x536c55cfe4892e581806e10b38dfe8083551bd03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53a0bbccac4945ddc09819b9686ddfc2295d2616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e82abbb12638f09d9e624578ccb666217a765e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x540bde6642a8cb547a6887934044e465914112d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251619 | `0x54150f44c785d412ec262fe895cc3b689c72f49b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251620 | `0x550b7cdac6f5a0d9e840505c3df74ac045530446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58303c355f734173bdf3df4ac05b235ad3781e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5934a49dfaa763b9ab7688b4c0c801d8b5a36faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a09cd4601b66bc107d377ab81e0dbb5dfabaa84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251622 | `0x5e3ef299fddf15eaa0432e6e66473ace8c13d908` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251623 | `0x5e875267f65537768435c3c6c81cd313a570b422` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251624 | `0x61addcd534bdc1721c91740cf711dbece936053e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6395e321a17d83524bc292e2e3649fc9d4d3f4e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x639f13d5f30b47c792b6851238c05d0b623c77de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x644a0a4a4a9892f57af7dff1db23ce2a235a255e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65b392e19ce83b77001a539f2cbcbcb5c19e2ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65b6c510d9663e8ecde46263be9aa934af4208b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6894e03d6c9cf815195f25084efbc3ce2916cbb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d4b17facc1bdb850ee69748e6c615b946f4588e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d4f9f9f8f0155509ecd6ac6c544ff27999845cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251626 | `0x6df5cb08d3f0193c768c8a01f42ac4424dc5086b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f8a42cf6f3ce657b66a9d5849f1251de7a35168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f8a8a1b774d82aa84945dab841ad4fa4ccd95b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x714d22e67c1c98588e9968b4f5bbb880a063c2a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x762540db57abdb6d32e5b5b8856986c0418a3b82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a66dd821c54d59cb804b715ea99e67d429818ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bd2a2001e9f83046df90f931a1fbaa69448d8f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cfa0f105a4922e89666d7d63689d9c9b1ea7a19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e94d6cabb20114b22a088d828772645f68cc67b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815af166e45b7605d44b00d93586a5903964fe62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815e5b0380e455167a3826a52614484c4b5e7d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84000b263080bc37d1dd73a29d92794a6cf1564e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251637 | `0x86e4dc95c7fbdbf52e33d563bbdb00823894c287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886e02327cad4e1e29688c7db0c9d28879ac44da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8902eb7da33c1eb4bf5a0ced015d754a95c6d02a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251638 | `0x8b90c7633f1f751e19e76433990b1663c625b258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d0e5ca0e0427743442b8c1b358c78ad4a736698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e31cf45a30269d9a6115ab76f56eefb559cffc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e4dd06afe08daea3f2ac18e917abad52d425e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9168f089b5eb2318421b0ce18970e43e37eb778b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97a3500083348a147f419b8a65717909762c389f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x988d367bb08a39c00560a9d0ec7a683d6c0963f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a6bc66ce2e008d59654bc0053ce2d01f09c8b90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c445cabd5d377b493b8d72a7f6d09c2e87138fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f4efbb5f25ae977f8491cb2a8967aa02ad24c6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0caaefd809b946de6de929545ea55f0267af84b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa36e2dad65ef886c69eb49591e5e0894141d2324` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251647 | `0xa59c847bd5ac0172ff4fe912c5d29e5a71a7512b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa674f17a211fb2436908dd6c995efb5e737cde62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad758ddd05c851abfe184d6b1be0a5f1b3bcab78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb00aa68b87256e2f22058fb2ba3246eec54a44fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb037347ef306db3b41ab0b250f891887039d9231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb35c9eaa5957563594f7411c6ca2755640253c15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7c9356bcaf26d5a738060c4ed83ab7bc0f103c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb955ee20a7f1d6f9bd68805e6eefe2cbc5d8220d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251649 | `0xba9ac3c9983a3e967f0f387c75ccbd38ad484963` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251650 | `0xbc9f74b3b14f460a6c47dcddfd17411cbc7b6c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef0b1cc54d94a1f8b97806016f6ed4446ac23c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfaea5dccba49db25a9f9dd0e4245ba7b1858ab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1a5deebfa5316f1d3dcb0a5e4ca12d329e8149d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc354bea902429a3c47467967e55fd337ca2e1ad0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251652 | `0xc4fa447a0e77eff9717b09c057b40570813bb642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcabcd836a7c9a4a50f1a42203b723fc7079ce4c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251654 | `0xcaf0aa768a3ae1297df20072419db8bb8b5c8cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbfe11b78c2e6cb25c6eda2c6ff46cd4755c8fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce911ae0ffe9f54f96afe49fc9bcba0658f5cd1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf968d99799176a17c75bf94f761f4b59f01af02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd24d501994146eb260be7dbcc3000376a9ccfcca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2cb630fd8e56c4a96b9cb3a03fa6bf96ba4b7ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd43b9efde0868bc45d809ec3ea18b3fc50a96179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd505c3822c787d51d5c2b1ae9adb943b2304eb23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6f5c46d4e1a02f9d145cee41d2f8af30d8d2d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8eeb76bf9fec7efe3772383d5f38fd02243e56c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251657 | `0xd9c7c4ed4b66858301d0cb28cc88bf655fe34861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e4cd9346a58167c561865ee54610da38cbe407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcbf56f8fe315a78dbe3aa3409c0c051e16c6c67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251658 | `0xddac6d3a2a787b1f4bf26ab6faf519ae3f1a94cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde4612e2cfc8c1f2e6b6e07df86910f1fefc61a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251659 | `0xdf74156420bd57ab387b195ed81eca36f9fabaca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe307798ec35136320528b24d35c0bb086f02de80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4924d8708d6646c0a6b2985dcfe2855211f4ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe56faea14ae47ee920b4e6a44c2565157cd85481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe85f3b0773d614755f7668fe43b5339876d91171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8f74365bfdb427ec44a02c5daa58574b423690f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb67b9fbe9c4d654fe344938897942c8e6213feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebea33f2c92d03556b417f4f572b2fbbe62c39c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02ee269471fb0966d9d43b2c9cd7d7a647155cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf16d0bfcefcae7ded61351344abf8e42445faccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf251b57dd11b708cb0385f1f058ec1211fc58b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf357cd7233c7f584f51c94b6bc413a8cd642aa49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf58ec2f599ec32f2ae104984f41c1fb1377eceba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf66f01bc2d3e83312e26244550537fe2d2995fee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7ae8c7366f35e2decb573fcf4310519b42403aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf98864da30a5bd657b13e70a57f5718abf7bab31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb102690a37a3da6feda2844f23aea8518af0fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb3a3a64e12fa787a6b709bf57834bdad958d797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff2331661cbe723aee36d74647137c13ea73bc9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x106cbb7361c3d3d0a12a8160a714879cc13c5a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18211a76c9230335882549612fc7fcd2bdbeecd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28285d23b9b06727128f1b689959559df2d154d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3000a70f9bf2c1bcf6dfb37d07c7ae4b99d9e60e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x34b0c7244bf67632296f2e2608e9d4f161969f08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3afbd158cf7b1e6be4dac88bc173fa65ebdf2ecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x453b75d29541b389298da00d4daad1ac3550ab5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53a0bbccac4945ddc09819b9686ddfc2295d2616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x557a42cf864355fa0c0a4c1a9f66cae40460b3f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6a99f2004044357a80e5d43345229179adc871d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6bd64dd61b39c0d42d58cffdfe32d87019bf76b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251705 | `0x70bca57f4579f58670ab2d18ef16e02c17553c38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x714d22e67c1c98588e9968b4f5bbb880a063c2a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a02c28081b10d49fff06adbcbe7418919d8be54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a7960cc97c01ecba34f8bbf022de62e987534d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251709 | `0x7a8ed27f4c30512326878652d20fc85727401854` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251710 | `0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x84000b263080bc37d1dd73a29d92794a6cf1564e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8704ed4b0281e107869d615154a7640aac5db817` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251715 | `0x8cc8538d60901d19692f5ba22684732bc28f54a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9bd4facbb811deae3e6cfe2ae164c65d9f6fb052` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon | unit-251723 | `0xa45b966996374e9e65ab991c6fe4bfce3a56dde8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa916209258e247b4e2e17970de50cb8b387f37e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab70441ff3af4f7ab7e6c7b9e417b0e9a8168444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac8ac17e03b58a23d4603b501b595bd47baedf5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0954dfb7ef5cf217d7ef4aec16fb84675ebfb4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb3b33eba8f3c268be693b6a410a4b977c323a89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd2cb630fd8e56c4a96b9cb3a03fa6bf96ba4b7ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd3bafd1be563b3e618c75a014f2542c6b4abbab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd8a986afbb7e44e9f7d71cc529d7b28f7084028c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdce6af6e017011d1b79cc4f7592a3815152c9006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7cc24ab295cc52e7ce4407feebe505586a879ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x0000000000000000000000000000000000001010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x02f83d4110d3595872481f677ae323d50aa09209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x0507b845ff73c463f3c73450787daef46f3548db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x0a188e9e680479838846cf226b13cd3fa3ce1b66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x105132c5400b75366b103b3f711f32635c051675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x26ef72ba96c74ac93d9493693ac6c580b1547d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x2a7be90e5b28fdcd9598f48fbad0f9e771e699ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x31afcffe2085d7504f5e34654b4835673c9d5b21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x3227b1be1ba1ae4777e68a7197bc8551d478bf0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x368091f6fb48c89379b97e5ad41a37d8b3218f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x37ca00a17e2f5430506eea60a51088ef4d95509f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x39be733b63ad7577b75cfadd4a1349883428eabc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x3a8b34d222bb4169b36bc07aa9ca85d61d3b8ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x3adbc484ff0cfeb657e1a9af8f3cb16dc0b53e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x3b8c56a3b788df75e6feaa84bce8017eee01a3a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x3c6439b65f0ff06970abb1fc15565c5357745c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x3e9e92208b8bb107b01ed60d29e1b9b667679737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x41dc3c8eb8368bd9139cec50434a0c294c8c1102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x488afdfef019f511e343becb98b7c24ee02fa639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x4f9cd8a945ee035523979d7a120a23999d17d8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x52ef3d68bab452a294342dc3e5f464d7f610f72e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x55519f2d84e036803aa81287dccc1e2c9eb7b676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x59e860059b3441adea812a0d6779aad270640649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x5f76f67eddaa88a2a69ee8bb4477ac54ab5e31cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x687c1d2dd0f422421bef7ac2a52f50e858caa867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x72730acd0be46d811906996c6d4daeb067dd27a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x7acf04ce4ebe4dd813318313de3fd981426c08c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x7bd2f45b2d389c5bdeea7a09d7b0f5e2270fcae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x80089e9c5256a9682faafdc371af68300e3872ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x83e58428928f9f5587e6bcb0a286e7d0de1f8268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x887c78c68d45f090e98b509bda673362f2155c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x8e434dca54636ba921b2a20af7e99efcd236932c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x9027a107337155a289cc552f4cce1648161a9268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x921d1ed589311f743676f78d8bf54f0664b067f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x95e72c12d69b2e471c3b850131e122354c3398f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x98c7fcffa3f1c2c468b63c7af170c35c9fd749a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xb991e39a401136348dee93c75143b159fabf483f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xbe6ab8199b2b2d13d0e75f8012029e41da3db0eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xc88105ac4d4e7dd1675dd4f5a4e2f74fa80215c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xcb705e9e798fad7d7fde7dc8a7045a24b23d5839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xcbc2ab6c7df2c9b242abff3c53a711c161c9daea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xd78c9b9fb11f052e85d0dc95a8b06b6079100c99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xd80298a3cf21f136a5a476d116019330c6c2bb0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xd9eab72718497d87082e90e7dc21124b13047029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xe17f0cabcbe4e3ac8325dbbba1e1c2465107f77f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xe5930336866d0388f0f745a2d9207c7781047c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xee12368fe3fbf7730763ff32459b3a2901dbce12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xf3202e7270a10e599394d8a7da2f4fbd475e96ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xf509890d9cba915948872791dcd435ab5cd1bee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xf52f0c0fbd0ab86d714109b1215928f92ce2ba8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xf5d2463d0176462d797afcd57ec477b7b0ccbe70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xfbbca2bfe809015a26fba7559af7506ae491cca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0059bbf8e5b9b071acc7682b6fe198c32aaa2a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x009911015655db4e889d6f3037073ae2eec1e55e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x02f83d4110d3595872481f677ae323d50aa09209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0507b845ff73c463f3c73450787daef46f3548db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x074dd758c11550b437a71f3763a7b56b6d3b9026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0760653fb129c96fd4fcb40405b7c3129c038d2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x085c505139c3ec6dd3d285f350f1155cf63ad7e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x095dd31b6473c4a32548d2a5b09e0f2f3f30d8f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0a08430072e8d0fbc649860f1b2e360e779942cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0e13ebeddb8cf9f5987512d5e081fdc2f5b0991e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0f04f8434bac2e1db8fca8a34d3e177b6c7ccaba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x105132c5400b75366b103b3f711f32635c051675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x13b0edd9312886ac0c73116e767208bed1199679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x141cda42ef5982f1ea3f6af640d4388a04e85e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x14a55ff53863467acd1d88809ff6596269b5a70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x15ea6c538cf4b4a4f51999f433557285d5639820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x16bacf0b801986fbaf8833029b744bc78cc3245c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1707157b9221204869ed67705e42fb65e026586c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x18ebe5aadccf5cce86f418f6c8dcb992e425af28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1a5cdec2517ad4bb1673662e50df6a7d23a61d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1a89d2603dc486b9a436eaa25e5fe8afdf61f9d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1a9f3bcb2053901735b49279f4eba691abca88f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1acb66777ac167c7c8f5c94d169f953a9773555f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1b4544147ce9bb1accb30645bc63ac7babc3cddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1d20c2db90c979fe42ed37aa1fb5249198e3c060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1eebd02d6be09ea59416ab7d69a6c3dadd8ff50a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x202dcb623e169658650f1f380256acbf917ead05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x20393ff3b3c38b72a16eb7d7a474cd38abd8ff27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x20aafb06941040d844062d4c1408072d817b6e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2231dc9f70b111fddd3db0baa2a363a5ad8e438d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x226d589590484d3bccfa88cf62e0bc804a092f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x23336fe4dc442ad722a1a2add6258ee2da637362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x24807284ca404023870ec11d98f46e4741c5f6fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x25318c8c387ee9329eb1f085c895d9f3de50f4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x26ef72ba96c74ac93d9493693ac6c580b1547d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x277a3f85f10fccc006771c7852e93d1a0c748abe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x28cdce6ffe44d03da1f7b15b474a0e72243873f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2a7be90e5b28fdcd9598f48fbad0f9e771e699ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2aa5be55763747eb40a0eb3a27feb861d30a94ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2d9c9a3f476febd17c302b21c97540ffbd4f6b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2eab8e08ac64b2050907c38d08ecd50ae21bf929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x31afcffe2085d7504f5e34654b4835673c9d5b21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3227b1be1ba1ae4777e68a7197bc8551d478bf0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x34f5a25b627f50bb3f5cab72807c4d4f405a9232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x368091f6fb48c89379b97e5ad41a37d8b3218f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x37ca00a17e2f5430506eea60a51088ef4d95509f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x38e3f334cb5fa0f2ae3d3a2d9c6db2bed758004f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x39be733b63ad7577b75cfadd4a1349883428eabc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a3b750e7d4d389bc1d0be20e5d09530f82b9911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a8b34d222bb4169b36bc07aa9ca85d61d3b8ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b8c56a3b788df75e6feaa84bce8017eee01a3a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3c6439b65f0ff06970abb1fc15565c5357745c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3ddf630901a73c1fac9d53163f992159cba7f590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3e9e92208b8bb107b01ed60d29e1b9b667679737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3fbd41064298ef747864a764c595976053311f79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3fd0a53f4bf853985a95f4eb3f9c9fde1f8e2b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3fdce5105d3f4aac240d060915227c7cd83517c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x421dbb7b5dfcb112d7a13944defb80b28ec5d22c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4258c75b752c812b7fa586bdeb259f2d4bd17f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x42f7af67c47df96be0e6b53136de09c8175dd579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x44499312f493f62f2dfd3c6435ca3603ebfceeba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x44ad17990f9128c6d823ee10db7f0a5d40a731a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x469c354f59660eb7370f529ed891df02932a664a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x488afdfef019f511e343becb98b7c24ee02fa639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49e307fa5a58ff1834e0f8a60eb2a9609e6a5f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4ae8f648b1ec892b6cc68c89cc088583964d08be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b915dc5d123631c53ae619d2222f7124a2143fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4be2391b9942494e30dc5e430687601dae12e396` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4f9cd8a945ee035523979d7a120a23999d17d8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52ef3d68bab452a294342dc3e5f464d7f610f72e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x54b6fe64db240a19b31ae6f91f7d7830804ddec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x55519f2d84e036803aa81287dccc1e2c9eb7b676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x582ab1f237531b33ec173c9ddfbf9d54faaa61bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x59e860059b3441adea812a0d6779aad270640649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5a1ed51d71cdbb5136865ab2a6ef1b666b378bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5dd80bc14564fa741a837649a708c70c7a53a1d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5e3111a5d928d24718c1a7897261d0b9087002ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5f4b5b4ec3445f8b7996fdb35b5625165e4e7eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5f76f67eddaa88a2a69ee8bb4477ac54ab5e31cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6074c6ed10e780bfb131ac44f5142818f851d37f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x60e371b23e4dd30b831f1b718dac7d2d2a0ecb53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x64e7dc43cc6dd65f87bb5d7942c0d9a7f5f3d933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x65ce26bc27ad5a39c5df7f2599f5de6a3e919278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x65d63363c1cb7da4fa0e7d6532ed02c4e7eccab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x667d8f1ebbb80446e9ea7f0777ea3369b0f83688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x687c1d2dd0f422421bef7ac2a52f50e858caa867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68eb9202b48d3980832ade89d580ba883b313b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x692bd2e4c4aa7a7189d772a4d5e40bf0415d04d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x69d6be2fb24d834bdc3289146a5d054156f7ba34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6a54b373dfa92be7ecda5e7e91aec9603cab1cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6aed57d7d2778946bafff7452da6f9f3623bac8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6b37e846c79f10d1cf542fb2f29a77228216b70f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6d5e942717d2c128bd0c87f5d8312cad6360d8f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6daea5ca81c3c559e9d16108fa5d2f3225da53bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6fc92d3c8d9eb440fc2a6f0cd6eac513983129fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x700dde29de87ed2c01c27c896dc8badb4f671302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x700e0f2afbd92e2b3ff91cad8c62a564690ddf39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7270e1fa2f0569d50dcd1d038d940135bde6167f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x72730acd0be46d811906996c6d4daeb067dd27a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x72cf5618142eb369e75ec6529a907e9a6fe99bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x759730118cc78a93474b6d75f010c57bdae5a127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7618f69adaeeda4fb44cf3b4b19f348f8d195a9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x76b850312f22abe7bd0252a4ec51388e92f93255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7acf04ce4ebe4dd813318313de3fd981426c08c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7bd2f45b2d389c5bdeea7a09d7b0f5e2270fcae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7d30c4a2428775215ca860861b122af12eadd0b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7ebdec03873994a02aca5dbfac665e5e39287d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x80089e9c5256a9682faafdc371af68300e3872ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x809260ab21ce8dc8aa2171e3ab6c5e8ce8ebe523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x822db7e79096e7247d9273e5782ecaec464eb96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x83e58428928f9f5587e6bcb0a286e7d0de1f8268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x845024812b85125884f4c8e818899340916f6b42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x887c78c68d45f090e98b509bda673362f2155c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a27427954b90e9a74305c58ec4e5a4b07f4dd17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8b78e1f3e4ffa3cb68055817bba1be5e209dff53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8e434dca54636ba921b2a20af7e99efcd236932c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8f116a04c699ee18b4dc3c4546f54782eb29eb1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8f89e212a08fa52f739fa418196f2d27b89bfe8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9027a107337155a289cc552f4cce1648161a9268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x912180038eafd47e7639828eeb9c87f2c4269648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x91c1f97944ff0515eb1e4f57977e155f22e6bf8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x92053fd2e732764287c3532867dc745a06dcefb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x921d1ed589311f743676f78d8bf54f0664b067f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x924df4ba99b0967cb6b0544a9f6188e161878e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x930c824c1e423a4b4949c665c4e92bd8f6ccf04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x93d32cbfd2b3ced11da7d0af18c3b83eb2cc70a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x95e72c12d69b2e471c3b850131e122354c3398f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x96b8a7be4a205a88a97d113f592f30cf53c505c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x97f6ddf7c21e05dd2c41d59d886cf63129326bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98c7fcffa3f1c2c468b63c7af170c35c9fd749a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9ad936ff297c669e4a0a31010f6d602fd7e0b1b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9b4d4fc98c2aa924a65ab827494159a76fce6ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9c5ffa1a1be2f364535e0789b27440726aca10a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9c87adba93b7da01934aa3a92f494a9a14312831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9e688939cb5d484e401933d850207d6750852053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9e699267858ce513eacf3b66420334785f9c8e4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa014d13b077d1b777ceca36023ec2fb2ca431b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa054864cea38839796cdeb16c110eb9cc350dd97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa2864e9134fc5b8494d8ddaeab1eb490a42c57aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa37f2a3df304a7c6aba3492146bc8b89170beab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa57224fce5886683b78f6b4fd0dbef8f27cc0a44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa84538ba18b43d11ab4dc869b3fdac358cf5688a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xabbd4515ba73baae0a8f25eb8b1ffb97ba820d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xac5f5715abf2bd1c2f3ef1fdbdb03686cd6068e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xae25bd50d3aa98c36756b1547888bf486b7c22f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xae731bff79c8c97a9e2bc66ffe0c7be806275298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb480378044d92c96d16589eb95986df6a97f2cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb7086eda3180c728c1536b35c4d54f6a2b33d6ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb991e39a401136348dee93c75143b159fabf483f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb9a2f2708f5f340efcd079fb907dd5a02eed20bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xba3253e05316ade7ba16dafdc1457178b012d317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xba5def0cdd15384b219e720b7b906f695acf4827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbc0efac4101f22abeca3ded7386ea649cfb3a21b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbcbb115f85dcbeb8c90fb046e9d5e42d285c4cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd07d7e1e93c8d4b2a261327f3c28a8ea7167209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbe6ab8199b2b2d13d0e75f8012029e41da3db0eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbea13b92cdf9014aa7492fe0a6183ebd5673e664` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbf1b745c3b341743842542394438fb734a3ebccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc0e2019129512d08c2feca46f0197ebdc46b498c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc14792b368b58480304b6994da2d43688d198a1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc70198ad91082c4d6eeb70d991cc4b2b61cb3d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc88105ac4d4e7dd1675dd4f5a4e2f74fa80215c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc97413b33978fef0255cdf5a32fbc1b427d2d596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xca8ecb73a3fa3b1730e90f8cc4def81a09baf3e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcb705e9e798fad7d7fde7dc8a7045a24b23d5839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcbc2ab6c7df2c9b242abff3c53a711c161c9daea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcd4d9bbf62700469fb41eacccfd4d47db5880e21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd138c75ab47b2ce893624005cde24e642d84eb00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd1cba165ce987ec496c7c2a8e12712d0165241da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd23e7ebb837de8625f16f575077d176b9d6b9b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd2c032b3b1ec35703eb67e49a09bc477cf73fe1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd2cd8c278e9d20e6ec40f06dc8abfcc650c35775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd43663fc0a91a08e829097af69c5041d7c457db1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd49802c4bafa6b1cb8a257e471756840b6e2d155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd548988d0e66fbf316a226be4bdf86abac791496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd681ed88d4559fc7a7fb247b0fe11cb02776a2e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd78c9b9fb11f052e85d0dc95a8b06b6079100c99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd80298a3cf21f136a5a476d116019330c6c2bb0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd9eab72718497d87082e90e7dc21124b13047029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdbfc068f588763e575421d08fa10054ff123bd2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde171c07bea37351ddf0da8fb3210b740090771c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdecd750fce5baf41fef988f29c832ccfeea5e4a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe17f0cabcbe4e3ac8325dbbba1e1c2465107f77f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe1d0ddd817ca39301c9e4f5a7218bbdaf59d248d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe221d5f173cd3d2fefd1176e31820dec2931f511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe2771cf5f04d28275ebba9340c431f637fbf49a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe3104cc25c94b21a162d316064fe50fdda0635ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe5443d5eb184320f754730552737d3d5c1334ce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe5930336866d0388f0f745a2d9207c7781047c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe70eb09201ba7412a312906004a546186217f2a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe7a27c74731a91f27d47ed7335cbfdf164b443fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xecdd77ce6f146ccf5dab707941d318bd50eed2c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xed17ae6e5b38fd2a3b6006dd00fbb4ea9de3e44f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee12368fe3fbf7730763ff32459b3a2901dbce12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeee1352065c2d6a8c14502a0fd0165d996a9b2fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf04f91f0e0cb1689885f1961a2aa7d23f6d3a3b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf103fd9567d1b8ee38d71f6933160b850d0e8ff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf126a20fea5437fdabd91f640f7a8ef4ba0a6049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf195cb095a88ccce995efbf9bb4a96ee0d1020a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf3202e7270a10e599394d8a7da2f4fbd475e96ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf35e40ba249a1cbf5dc3e0ab3084a0df836c0d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf3afcce8e77b6f53cdf0a09ae2986c75ee86078a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf4433c9d0f051fb3eb595a796347aa8b4f88601e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf509890d9cba915948872791dcd435ab5cd1bee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf52f0c0fbd0ab86d714109b1215928f92ce2ba8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf5d2463d0176462d797afcd57ec477b7b0ccbe70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf5f09458ecc701dd93fa4c88b67d550289ae6805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf6f3d1c706b791097439b270d331783529da5e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf8d2ecca43f50f04922a13c417aed05c34f1ef52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfbbca2bfe809015a26fba7559af7506ae491cca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc43a890c4849d075c2fa90931363231005b28ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfe3d84869b7dd0ba5bdad9e40764e5a93648c7fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfe92f7c3a701e43d8479738c8844bcc555b9e5cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xff472ceef8f6ef86bf9a8f06fe4e1eb35612a469` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 382
- Live contracts: 0
- Unknown liveness contracts: 382
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=382

Showing first 200 of 382 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x29a6f32f36eded399763524018f17f03b1435b18` | non_address_book | unknown | unknown | unverified | n/a | `0x099198353446a9e3a20672edc1bd461e978842c3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65b392e19ce83b77001a539f2cbcbcb5c19e2ad6` | non_address_book | unknown | unknown | unverified | n/a | `0x099198353446a9e3a20672edc1bd461e978842c3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7bd2a2001e9f83046df90f931a1fbaa69448d8f5` | non_address_book | unknown | unknown | unverified | n/a | `0x099198353446a9e3a20672edc1bd461e978842c3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe8f74365bfdb427ec44a02c5daa58574b423690f` | non_address_book | unknown | unknown | unverified | n/a | `0x099198353446a9e3a20672edc1bd461e978842c3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x053fa9b934b83e1e0ffc7e98a41aadc3640bb462` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x282fd46e108e40a45e4ce425ba75f80245e6c2e0` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ad88467e40399dc6ae10427f8b0842348d9076c` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3dd459de96f9c28e3a343b831cbdc2b93c8c4855` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x46ce937a70412dfdcf01f29d6d4fe15ada1faeb8` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53e82abbb12638f09d9e624578ccb666217a765e` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x639f13d5f30b47c792b6851238c05d0b623c77de` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d4f9f9f8f0155509ecd6ac6c544ff27999845cc` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f8a42cf6f3ce657b66a9d5849f1251de7a35168` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e94d6cabb20114b22a088d828772645f68cc67b` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81c16f89222c32806daf01f5129937dfe19d525e` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x97a3500083348a147f419b8a65717909762c389f` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb00aa68b87256e2f22058fb2ba3246eec54a44fc` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb037347ef306db3b41ab0b250f891887039d9231` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6dd6399eae419a0a33a8dc307f4c1db26d30e45` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc865b0324121b43728176024f58bdbb3afd6f29` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe307798ec35136320528b24d35c0bb086f02de80` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb3a3a64e12fa787a6b709bf57834bdad958d797` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff2331661cbe723aee36d74647137c13ea73bc9c` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0af266633a52175343deb9090a983ea12a268156` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0c6431d03e214f61d4c301a38efb2d807328209f` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1fb29699fdb5fa576d6c7e62c459eb3e118878e6` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2e8838900605f9140ca0b36b6ba6c67fc1c49fd8` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37596efb83da377fa0d7216f6e5b55882c052543` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c7fcaa93490b28dfad75e789ecda8d2fc1afc08` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4602c95e3afbb3dc5f5a2ec957803f5d1665c964` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x540bde6642a8cb547a6887934044e465914112d0` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x644a0a4a4a9892f57af7dff1db23ce2a235a255e` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65b6c510d9663e8ecde46263be9aa934af4208b5` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6894e03d6c9cf815195f25084efbc3ce2916cbb3` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d4b17facc1bdb850ee69748e6c615b946f4588e` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x762540db57abdb6d32e5b5b8856986c0418a3b82` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a66dd821c54d59cb804b715ea99e67d429818ea` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7cfa0f105a4922e89666d7d63689d9c9b1ea7a19` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x988d367bb08a39c00560a9d0ec7a683d6c0963f6` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9f4efbb5f25ae977f8491cb2a8967aa02ad24c6d` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb35c9eaa5957563594f7411c6ca2755640253c15` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb7c9356bcaf26d5a738060c4ed83ab7bc0f103c9` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb955ee20a7f1d6f9bd68805e6eefe2cbc5d8220d` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6f5c46d4e1a02f9d145cee41d2f8af30d8d2d76` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8eeb76bf9fec7efe3772383d5f38fd02243e56c` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd9e4cd9346a58167c561865ee54610da38cbe407` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde4612e2cfc8c1f2e6b6e07df86910f1fefc61a4` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe56faea14ae47ee920b4e6a44c2565157cd85481` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb67b9fbe9c4d654fe344938897942c8e6213feb` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf357cd7233c7f584f51c94b6bc413a8cd642aa49` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf98864da30a5bd657b13e70a57f5718abf7bab31` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb102690a37a3da6feda2844f23aea8518af0fba` | non_address_book | unknown | unknown | unverified | n/a | `0x427ceb53c3532835ccfdbbe4c533286e15d3576e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x185486869e615f5a5644991a491212582caa08fb` | non_address_book | unknown | unknown | unverified | n/a | `0x78655080b65f42e2cee5fa5673689cc44d4e1cfc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a5020dc88541c4e0ed19fd7e1da2f6722012c56` | non_address_book | unknown | unknown | unverified | n/a | `0x78655080b65f42e2cee5fa5673689cc44d4e1cfc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcbfe11b78c2e6cb25c6eda2c6ff46cd4755c8fca` | non_address_book | unknown | unknown | unverified | n/a | `0x78655080b65f42e2cee5fa5673689cc44d4e1cfc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe85f3b0773d614755f7668fe43b5339876d91171` | non_address_book | unknown | unknown | unverified | n/a | `0x78655080b65f42e2cee5fa5673689cc44d4e1cfc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09f332ed151c8fd2ee30a388931db2f200912ec5` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29d2706cdb97783a652314863668ed5cab971db2` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d3a389027b9468074c67a1a5204dcd80413c2a6` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d4ab10a0aba7d7feebea2b0fc07d93bdaec2714` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d864bc9cb5d24188e53b42051d79f1f11ae751c` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2dcad61350ec531910da683d396d92e3ae5e5c8d` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3025349b8bbbd3324afe90c89157dbc567a7e5ff` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34b0c7244bf67632296f2e2608e9d4f161969f08` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x39f900307579fe66cab529e3606fbcc9ef2ca11c` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x453b75d29541b389298da00d4daad1ac3550ab5e` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5052053d958c763e96d4908990e74df2e04299eb` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53a0bbccac4945ddc09819b9686ddfc2295d2616` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58303c355f734173bdf3df4ac05b235ad3781e73` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5934a49dfaa763b9ab7688b4c0c801d8b5a36faa` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a09cd4601b66bc107d377ab81e0dbb5dfabaa84` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6395e321a17d83524bc292e2e3649fc9d4d3f4e2` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f8a8a1b774d82aa84945dab841ad4fa4ccd95b9` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x714d22e67c1c98588e9968b4f5bbb880a063c2a0` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x815af166e45b7605d44b00d93586a5903964fe62` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x815e5b0380e455167a3826a52614484c4b5e7d2c` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84000b263080bc37d1dd73a29d92794a6cf1564e` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x886e02327cad4e1e29688c7db0c9d28879ac44da` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8902eb7da33c1eb4bf5a0ced015d754a95c6d02a` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d0e5ca0e0427743442b8c1b358c78ad4a736698` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e31cf45a30269d9a6115ab76f56eefb559cffc3` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e4dd06afe08daea3f2ac18e917abad52d425e3f` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9168f089b5eb2318421b0ce18970e43e37eb778b` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9a6bc66ce2e008d59654bc0053ce2d01f09c8b90` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c445cabd5d377b493b8d72a7f6d09c2e87138fc` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa0caaefd809b946de6de929545ea55f0267af84b` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa36e2dad65ef886c69eb49591e5e0894141d2324` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa674f17a211fb2436908dd6c995efb5e737cde62` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xad758ddd05c851abfe184d6b1be0a5f1b3bcab78` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbef0b1cc54d94a1f8b97806016f6ed4446ac23c4` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbfaea5dccba49db25a9f9dd0e4245ba7b1858ab4` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1a5deebfa5316f1d3dcb0a5e4ca12d329e8149d` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc354bea902429a3c47467967e55fd337ca2e1ad0` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcabcd836a7c9a4a50f1a42203b723fc7079ce4c7` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce911ae0ffe9f54f96afe49fc9bcba0658f5cd1f` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf968d99799176a17c75bf94f761f4b59f01af02` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd24d501994146eb260be7dbcc3000376a9ccfcca` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2cb630fd8e56c4a96b9cb3a03fa6bf96ba4b7ad` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd43b9efde0868bc45d809ec3ea18b3fc50a96179` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd505c3822c787d51d5c2b1ae9adb943b2304eb23` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdcbf56f8fe315a78dbe3aa3409c0c051e16c6c67` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4924d8708d6646c0a6b2985dcfe2855211f4ddd` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf02ee269471fb0966d9d43b2c9cd7d7a647155cf` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf16d0bfcefcae7ded61351344abf8e42445faccc` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf251b57dd11b708cb0385f1f058ec1211fc58b56` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf58ec2f599ec32f2ae104984f41c1fb1377eceba` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf66f01bc2d3e83312e26244550537fe2d2995fee` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7ae8c7366f35e2decb573fcf4310519b42403aa` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2126e6952c3af75c9d4cf21f63f509195c79ce44` | non_address_book | unknown | unknown | unverified | n/a | `0xb8d66fb00061378afd77c5c22e47cff9c57ca62f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xebea33f2c92d03556b417f4f572b2fbbe62c39c3` | non_address_book | unknown | unknown | unverified | n/a | `0xb8d66fb00061378afd77c5c22e47cff9c57ca62f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x18211a76c9230335882549612fc7fcd2bdbeecd9` | non_address_book | unknown | unknown | unverified | n/a | `0x78655080b65f42e2cee5fa5673689cc44d4e1cfc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x28285d23b9b06727128f1b689959559df2d154d6` | non_address_book | unknown | unknown | unverified | n/a | `0x78655080b65f42e2cee5fa5673689cc44d4e1cfc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3000a70f9bf2c1bcf6dfb37d07c7ae4b99d9e60e` | non_address_book | unknown | unknown | unverified | n/a | `0x78655080b65f42e2cee5fa5673689cc44d4e1cfc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6bd64dd61b39c0d42d58cffdfe32d87019bf76b8` | non_address_book | unknown | unknown | unverified | n/a | `0x78655080b65f42e2cee5fa5673689cc44d4e1cfc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7a7960cc97c01ecba34f8bbf022de62e987534d4` | non_address_book | unknown | unknown | unverified | n/a | `0x78655080b65f42e2cee5fa5673689cc44d4e1cfc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9bd4facbb811deae3e6cfe2ae164c65d9f6fb052` | non_address_book | unknown | unknown | unverified | n/a | `0x78655080b65f42e2cee5fa5673689cc44d4e1cfc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd3bafd1be563b3e618c75a014f2542c6b4abbab0` | non_address_book | unknown | unknown | unverified | n/a | `0x78655080b65f42e2cee5fa5673689cc44d4e1cfc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf7cc24ab295cc52e7ce4407feebe505586a879ad` | non_address_book | unknown | unknown | unverified | n/a | `0x78655080b65f42e2cee5fa5673689cc44d4e1cfc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x34b0c7244bf67632296f2e2608e9d4f161969f08` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| polygon | unverified unclassified | UnnamedContract<br>`0x453b75d29541b389298da00d4daad1ac3550ab5e` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| polygon | unverified unclassified | UnnamedContract<br>`0x53a0bbccac4945ddc09819b9686ddfc2295d2616` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| polygon | unverified unclassified | UnnamedContract<br>`0x714d22e67c1c98588e9968b4f5bbb880a063c2a0` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| polygon | unverified unclassified | UnnamedContract<br>`0x84000b263080bc37d1dd73a29d92794a6cf1564e` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| polygon | unverified unclassified | UnnamedContract<br>`0xab70441ff3af4f7ab7e6c7b9e417b0e9a8168444` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd2cb630fd8e56c4a96b9cb3a03fa6bf96ba4b7ad` | non_address_book | unknown | unknown | unverified | n/a | `0xa2d9846c352ca61dcb20d6aad40cec1d1b228a78` |
| polygon | unverified unclassified | UnnamedContract<br>`0x106cbb7361c3d3d0a12a8160a714879cc13c5a29` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3afbd158cf7b1e6be4dac88bc173fa65ebdf2ecd` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x557a42cf864355fa0c0a4c1a9f66cae40460b3f1` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6a99f2004044357a80e5d43345229179adc871d4` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7a02c28081b10d49fff06adbcbe7418919d8be54` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x82ffafb42ae3ac7b36c38086c5b412a86de54f54` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8704ed4b0281e107869d615154a7640aac5db817` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa916209258e247b4e2e17970de50cb8b387f37e2` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xac8ac17e03b58a23d4603b501b595bd47baedf5c` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb0954dfb7ef5cf217d7ef4aec16fb84675ebfb4b` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbb3b33eba8f3c268be693b6a410a4b977c323a89` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd8a986afbb7e44e9f7d71cc529d7b28f7084028c` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdce6af6e017011d1b79cc4f7592a3815152c9006` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf5a675058bbd344a9f1ab1af00576dfb404d57b2` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x02f83d4110d3595872481f677ae323d50aa09209` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x0507b845ff73c463f3c73450787daef46f3548db` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x0a188e9e680479838846cf226b13cd3fa3ce1b66` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x105132c5400b75366b103b3f711f32635c051675` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x26ef72ba96c74ac93d9493693ac6c580b1547d00` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x2a7be90e5b28fdcd9598f48fbad0f9e771e699ee` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x31afcffe2085d7504f5e34654b4835673c9d5b21` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x3227b1be1ba1ae4777e68a7197bc8551d478bf0b` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x368091f6fb48c89379b97e5ad41a37d8b3218f0a` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x37ca00a17e2f5430506eea60a51088ef4d95509f` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x39be733b63ad7577b75cfadd4a1349883428eabc` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x3a8b34d222bb4169b36bc07aa9ca85d61d3b8ee0` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x3b8c56a3b788df75e6feaa84bce8017eee01a3a3` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x3c6439b65f0ff06970abb1fc15565c5357745c86` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x3e9e92208b8bb107b01ed60d29e1b9b667679737` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x488afdfef019f511e343becb98b7c24ee02fa639` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x52ef3d68bab452a294342dc3e5f464d7f610f72e` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x55519f2d84e036803aa81287dccc1e2c9eb7b676` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x59e860059b3441adea812a0d6779aad270640649` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x5f76f67eddaa88a2a69ee8bb4477ac54ab5e31cc` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x687c1d2dd0f422421bef7ac2a52f50e858caa867` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x72730acd0be46d811906996c6d4daeb067dd27a7` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x7acf04ce4ebe4dd813318313de3fd981426c08c4` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x7bd2f45b2d389c5bdeea7a09d7b0f5e2270fcae8` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x80089e9c5256a9682faafdc371af68300e3872ca` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x83e58428928f9f5587e6bcb0a286e7d0de1f8268` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x887c78c68d45f090e98b509bda673362f2155c4c` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x8e434dca54636ba921b2a20af7e99efcd236932c` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x9027a107337155a289cc552f4cce1648161a9268` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x921d1ed589311f743676f78d8bf54f0664b067f9` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x95e72c12d69b2e471c3b850131e122354c3398f4` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x98c7fcffa3f1c2c468b63c7af170c35c9fd749a2` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xb991e39a401136348dee93c75143b159fabf483f` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xbe6ab8199b2b2d13d0e75f8012029e41da3db0eb` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xc88105ac4d4e7dd1675dd4f5a4e2f74fa80215c5` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xcb705e9e798fad7d7fde7dc8a7045a24b23d5839` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xcbc2ab6c7df2c9b242abff3c53a711c161c9daea` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xd78c9b9fb11f052e85d0dc95a8b06b6079100c99` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xd80298a3cf21f136a5a476d116019330c6c2bb0f` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xd9eab72718497d87082e90e7dc21124b13047029` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xe17f0cabcbe4e3ac8325dbbba1e1c2465107f77f` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xe5930336866d0388f0f745a2d9207c7781047c0f` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xee12368fe3fbf7730763ff32459b3a2901dbce12` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xf3202e7270a10e599394d8a7da2f4fbd475e96ba` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xf509890d9cba915948872791dcd435ab5cd1bee7` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xf52f0c0fbd0ab86d714109b1215928f92ce2ba8a` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xf5d2463d0176462d797afcd57ec477b7b0ccbe70` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xfbbca2bfe809015a26fba7559af7506ae491cca1` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1a5cdec2517ad4bb1673662e50df6a7d23a61d9f` | non_address_book | unknown | unknown | unverified | n/a | `0x20cdd706f76d41f3c5059a24cadc24e80a822d82` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xde171c07bea37351ddf0da8fb3210b740090771c` | non_address_book | unknown | unknown | unverified | n/a | `0x20cdd706f76d41f3c5059a24cadc24e80a822d82` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x009911015655db4e889d6f3037073ae2eec1e55e` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x02f83d4110d3595872481f677ae323d50aa09209` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0507b845ff73c463f3c73450787daef46f3548db` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x074dd758c11550b437a71f3763a7b56b6d3b9026` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0760653fb129c96fd4fcb40405b7c3129c038d2d` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x085c505139c3ec6dd3d285f350f1155cf63ad7e2` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x095dd31b6473c4a32548d2a5b09e0f2f3f30d8f1` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0a08430072e8d0fbc649860f1b2e360e779942cd` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0e13ebeddb8cf9f5987512d5e081fdc2f5b0991e` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0f04f8434bac2e1db8fca8a34d3e177b6c7ccaba` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x105132c5400b75366b103b3f711f32635c051675` | non_address_book | unknown | unknown | unverified | n/a | `0x21c7360b49d0fc1af267203e659f71df2234cffb` |

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
| native | 57 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 426 |

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
