# Agentic Audit Brief: Cypher

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Cypher (`cypher`)
- Website: [https://cyphereth.com/](https://cyphereth.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 109 unique implementations (109 raw deployments)
- Coverage basis: 0/23 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Cypher in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AlgebraFactory (`0xfb8ed3485efa29a0e4bed93351dd51b59fc4b0f0`, chain 1)
- AlgebraFeePluginFactoryV1 (`0x478dc624b9cfb68ed1cea0e7b51a6279905f7fb3`, chain 1)
- BCTokenDeployer (`0xe5a1438aca8e48a0d6ef6fc402254b709ec67d79`, chain 1)
- BCTokenFactory (`0x5145e18526b6851f9e6aa28f11cb667956aa0920`, chain 1)
- BondingCurve (`0x035d264b16d445eb6a5b3109a40224e210035245`, chain 1)
- CurveMath (`0x78e6b8e6f479323fbbeb31878c1538c270199e32`, chain 1)
- CypherFactory (`0xcc8e4c2998395e56d06d985ba791138edf48a8d4`, chain 1)
- CypherRouter (`0xadfd0ebc71afcd38070a9fb5cecf9a932cbcc46f`, chain 1)
- CypherYakRouter (`0x37ca43556bb981ca6827b4a92369a28eb61995e3`, chain 1)
- Distributor (`0x2a7b9e22a76edec50167590fd3198b27040362d4`, chain 1)
- ERC1967Proxy (`0x3f75580cd579547a69854ac2924371209261b9d1`, chain 1)
- ERC1967Proxy (`0x5163b56b5275401bdfa5e46c75eb7c9d728848b6`, chain 1)
- ERC1967Proxy (`0xa279ca693d66fe65ba0062d0218578f424249dfd`, chain 1)
- Harvester (`0x59716fb1d8a2131c1cab3847842fd6c8583f3681`, chain 1)
- HighlightsManager (`0x6ef6dec7a077f68424e23f090d5fd57e01415e35`, chain 1)
- LiquidityManager (`0x14127323b4b84e9688ef1018ab5f641344aa07dc`, chain 1)
- NonfungiblePositionManager (`0x0a984a446a116335ac90425d2d1e69a7199a2f7c`, chain 1)
- Quoter (`0x02f22d58d161d1c291abfe88764d84120f20f723`, chain 1)
- ReferralManager (`0x4e06b03a4a84fea63c565cd0e47747f8cb88f773`, chain 1)
- StakingVaultFactory (`0xb4a217606603f68dc18ec88b8622464c4c90aa55`, chain 1)
- SwapRouter (`0x20c5893f69f635f55b0367c519f3f95e59c0b0ab`, chain 1)
- TokenVesting (`0x3590194aaf1dbf5923bd5a4e69f2ada90c94b348`, chain 1)
- TransparentUpgradeableProxy (`0xcaf7d2ae2c8de1512b2bd392eebb0b95192b2262`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/23 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 86 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 23 of 109 unique; 86 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 86
- Unique implementations: 109
- Raw deployments: 109
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383649 | `0xfb8ed3485efa29a0e4bed93351dd51b59fc4b0f0` | ⚠️ Unaudited |
| AlgebraFeePluginFactoryV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383639 | `0x478dc624b9cfb68ed1cea0e7b51a6279905f7fb3` | ⚠️ Unaudited |
| BCTokenDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383648 | `0xe5a1438aca8e48a0d6ef6fc402254b709ec67d79` | ⚠️ Unaudited |
| BCTokenFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383641 | `0x5145e18526b6851f9e6aa28f11cb667956aa0920` | ⚠️ Unaudited |
| BondingCurve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383632 | `0x035d264b16d445eb6a5b3109a40224e210035245` | ⚠️ Unaudited |
| CampaignFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383651 | `0xcaf7d2ae2c8de1512b2bd392eebb0b95192b2262` | ⚠️ Unaudited |
| CurveMath | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383644 | `0x78e6b8e6f479323fbbeb31878c1538c270199e32` | ⚠️ Unaudited |
| CypherFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383647 | `0xcc8e4c2998395e56d06d985ba791138edf48a8d4` | ⚠️ Unaudited |
| CypherRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383645 | `0xadfd0ebc71afcd38070a9fb5cecf9a932cbcc46f` | ⚠️ Unaudited |
| CypherYakRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383638 | `0x37ca43556bb981ca6827b4a92369a28eb61995e3` | ⚠️ Unaudited |
| Distributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383636 | `0x2a7b9e22a76edec50167590fd3198b27040362d4` | ⚠️ Unaudited |
| EscrowToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383650 | `0x5163b56b5275401bdfa5e46c75eb7c9d728848b6` | ⚠️ Unaudited |
| Harvester | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383642 | `0x59716fb1d8a2131c1cab3847842fd6c8583f3681` | ⚠️ Unaudited |
| HighlightsManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383643 | `0x6ef6dec7a077f68424e23f090d5fd57e01415e35` | ⚠️ Unaudited |
| LiquidityManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383634 | `0x14127323b4b84e9688ef1018ab5f641344aa07dc` | ⚠️ Unaudited |
| MainToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383653 | `0xa279ca693d66fe65ba0062d0218578f424249dfd` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383633 | `0x0a984a446a116335ac90425d2d1e69a7199a2f7c` | ⚠️ Unaudited |
| OptionsToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383652 | `0x3f75580cd579547a69854ac2924371209261b9d1` | ⚠️ Unaudited |
| Quoter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383631 | `0x02f22d58d161d1c291abfe88764d84120f20f723` | ⚠️ Unaudited |
| ReferralManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383640 | `0x4e06b03a4a84fea63c565cd0e47747f8cb88f773` | ⚠️ Unaudited |
| StakingVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383646 | `0xb4a217606603f68dc18ec88b8622464c4c90aa55` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383635 | `0x20c5893f69f635f55b0367c519f3f95e59c0b0ab` | ⚠️ Unaudited |
| TokenVesting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383637 | `0x3590194aaf1dbf5923bd5a4e69f2ada90c94b348` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (86)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0836a00366f0ce6b6873876da6d73a11476d1d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10407163160f94d0106935ea6518f813e83ae6c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x127c4c4043d18a5bf0f636f2ec561b7288d3239c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x166a5f5d655d2fb10bcc3deb7a4e4084ffe654c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168abf9fd2c1b7019afae6a66382504d18b64cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17315e27ac0f465887658deb06175056ab803bd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a221523d3c73f680e1a46d8020b6bccb6e2dee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a24ba9a366790cf0cf1a3d41dcee95565f35cb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21968d171338be99dbb847ae7fbd6a3798f9c883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x231806a423babe1cd91ce1fee9a643552c30645b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25335bfe39901a34d9fbb47507dcd6d3c5d1c966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25534f7a1d3fac64327278566202fb4c10c8a03e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x266d986d42366c28dc2ad56394deb99bc3757ed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26a1534e1f322be74a76a81abb35f19120defe7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290ed80b43e904633d31f0f352b6a2dbc5977125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b541c3a2c068bd42a4c74eb494ea35883035d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ce78ac2acb582fa6eb8b5455824afc37fdaccfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x315384fb391ca5960206e94e4d59b340d6632d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x393de38831472852286eebddadf333dd790527ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cd955a77b8842fa5e7e1765e718905c04381ab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e15f8ca4ebc937f00b73c7852c5b52290cb51d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e77b03d72f1536a63023d041ebd95d8f366cb17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42ac1bef3f25c29bbe5e06ef5df3d00ead7cf20f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4398fb1ca1db4fd3b2604f99efb24428e75b510e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44e80a3efa9e4bfcfa34dde827c69dd9181b2583` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x462c685ff1ed0cb744a91fc07642b8e326436f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a03f21b01769e72b293c822d0490eeca18db52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4854fa62b84750f9e809be0940bd9c6e759563db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aa5073e07355c3be8e6fac733f71b367b272c1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4da465e96e586b127ac0c8d02871aa73f226ccc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52e7e9664d16c4f1f50f63382e3f690b019c7432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c9f432af500e5cab0968a65feb9ebdf099f7cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cc14f681b76be1337df6f3ec5e196d63f9e5d99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f6ce28db54976286420081065d2e726e065a8f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x658f9099e96c60231437d6549da2242fe969c46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x674639f1e2d9642b3eff68acc97d7e648516c60f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d4b95555c35bf38d8fca7d3918f3e9c2c1deb30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dabb17d555dc149b62ffdb150067aef273a2199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e101f83b0758d7c78291525cda4361348ab14f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e80e39bf2fd98bbbca67fe6c9967e01dfb84f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f3b1b184b3640b997cb524e2954c6a8144f45f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73c3feeb40a88b9f0fbc1fc87e9add7ed656dc87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7545202873b706317ca8ccc7479fb4b21098b205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75d8276b71513e373506c4a5aa110149effd662a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77f9f6a310b5f06d9407de15808f7b4c8cb21596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7812d3113a6477df9b4282eefdbac1c92ea8ee4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79616564db0294ecba5912f1ce985fd1c11eef51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82d7bfcee19e6a5c761be8469cc96a2d94728f60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842215152eb3d7c6d7a4585d8366a4817f5967bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85d63dc01cf69ac44580444a640250d50e63f9df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x898e1e5597135af161cb240835cc3451b43beeda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a02a4e687b8674feef927d85b050216924ef16c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ca5e9b39fcb5e5d3f91cf2821d486b49bb13fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f9d916f348b76324acfc33317cc85abfa774dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fb54a452e5b279eca1c8bf1edabda3df5af0773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95a83b75cda227583b4200f9a7baf7ae7b8418e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96e88f632c3488c5bacdfa1afa958aa16d4746b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x981b54183de5c6d00d16a7bd581179c3273caf1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a735f6234ca486874dd990a83bc63b767781268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b0936afb17254ff88f5e4fdfe65dc84a9817c7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4b3a45022cc2a9d579851aed83c4c0d66ffdf88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94882e85b885ea96d3ef3a6285bf0e268aecd66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacf1af774ab859324dc905680268fc80c4502d66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad5c1b8173a3ecb30e940e9700403fbb040d1f48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6e39ac5476feff07933b5424204de95c95068a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc84330654fa1ce49f45130f9c76fa182ca836cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8be5a6642b5514f9b1c9f29e6a3232d6545de30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc94ada2326d752565253d29de6e5874ddaf254d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca46d634162c5f8655c6aaed0283b11f1cf37cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8f60c40ce6b3c5b552a1a169640071d470f409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd8c78125526d73ad2e273b8c971fb9b69670786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce070ad577804423bcd7d28748b6109d833a35a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd06a653dc3f3d66fd6228fed98559e73f1947785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0796686cab198dae133aa5b5bfa18434d74bd3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3345a8ad89efa6879e651e8c8113dd990099785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd39effe86a6bfb6fcc058810187f24635caf3d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd685c6d77c2efe9b763a0564dd7e11912caf2d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9ca5fe0a1df4ae5266259736d3302b85b896e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde44695d117554f6e61c0a9654209eb242b1cc63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3b50cb715d1052ab384ebf400858e2b353650fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5d75692b528e31760d2bd02aab5f46ee61c9d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f5d3a278f89df073ee4004a6b86e4d3529996f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeae871c4a8dd267146558c362c86805fb7e3fd2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4404e9a6dc4ee18e6a8dc05b7c0c97af18e4193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf741b14ad6aa4a117574bd0f42e79b8c26f7513c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf80e6ad9a4e56b6b66629c3f610de0e196ab7f5c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 86
- Live contracts: 0
- Unknown liveness contracts: 86
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=86

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0836a00366f0ce6b6873876da6d73a11476d1d4c` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x10407163160f94d0106935ea6518f813e83ae6c7` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x127c4c4043d18a5bf0f636f2ec561b7288d3239c` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x166a5f5d655d2fb10bcc3deb7a4e4084ffe654c7` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x168abf9fd2c1b7019afae6a66382504d18b64cb4` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x17315e27ac0f465887658deb06175056ab803bd0` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x1a221523d3c73f680e1a46d8020b6bccb6e2dee9` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x1a24ba9a366790cf0cf1a3d41dcee95565f35cb1` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x21968d171338be99dbb847ae7fbd6a3798f9c883` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x231806a423babe1cd91ce1fee9a643552c30645b` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x25335bfe39901a34d9fbb47507dcd6d3c5d1c966` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x25534f7a1d3fac64327278566202fb4c10c8a03e` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x266d986d42366c28dc2ad56394deb99bc3757ed1` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x26a1534e1f322be74a76a81abb35f19120defe7c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x290ed80b43e904633d31f0f352b6a2dbc5977125` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x2b541c3a2c068bd42a4c74eb494ea35883035d75` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x2ce78ac2acb582fa6eb8b5455824afc37fdaccfa` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x315384fb391ca5960206e94e4d59b340d6632d6e` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x393de38831472852286eebddadf333dd790527ef` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x3cd955a77b8842fa5e7e1765e718905c04381ab7` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x3e15f8ca4ebc937f00b73c7852c5b52290cb51d4` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x3e77b03d72f1536a63023d041ebd95d8f366cb17` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x42ac1bef3f25c29bbe5e06ef5df3d00ead7cf20f` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x4398fb1ca1db4fd3b2604f99efb24428e75b510e` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x44e80a3efa9e4bfcfa34dde827c69dd9181b2583` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x462c685ff1ed0cb744a91fc07642b8e326436f06` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x47a03f21b01769e72b293c822d0490eeca18db52` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x4854fa62b84750f9e809be0940bd9c6e759563db` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x4aa5073e07355c3be8e6fac733f71b367b272c1c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x4da465e96e586b127ac0c8d02871aa73f226ccc4` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x52e7e9664d16c4f1f50f63382e3f690b019c7432` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x53c9f432af500e5cab0968a65feb9ebdf099f7cd` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x5cc14f681b76be1337df6f3ec5e196d63f9e5d99` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x5f6ce28db54976286420081065d2e726e065a8f9` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x658f9099e96c60231437d6549da2242fe969c46b` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x674639f1e2d9642b3eff68acc97d7e648516c60f` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x6d4b95555c35bf38d8fca7d3918f3e9c2c1deb30` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x6dabb17d555dc149b62ffdb150067aef273a2199` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x6e101f83b0758d7c78291525cda4361348ab14f8` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x6e80e39bf2fd98bbbca67fe6c9967e01dfb84f74` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x6f3b1b184b3640b997cb524e2954c6a8144f45f2` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x73c3feeb40a88b9f0fbc1fc87e9add7ed656dc87` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x7545202873b706317ca8ccc7479fb4b21098b205` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x75d8276b71513e373506c4a5aa110149effd662a` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x77f9f6a310b5f06d9407de15808f7b4c8cb21596` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x7812d3113a6477df9b4282eefdbac1c92ea8ee4a` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x79616564db0294ecba5912f1ce985fd1c11eef51` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x82d7bfcee19e6a5c761be8469cc96a2d94728f60` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x842215152eb3d7c6d7a4585d8366a4817f5967bb` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x85d63dc01cf69ac44580444a640250d50e63f9df` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x898e1e5597135af161cb240835cc3451b43beeda` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x8a02a4e687b8674feef927d85b050216924ef16c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x8ca5e9b39fcb5e5d3f91cf2821d486b49bb13fd4` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x8f9d916f348b76324acfc33317cc85abfa774dff` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x8fb54a452e5b279eca1c8bf1edabda3df5af0773` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x95a83b75cda227583b4200f9a7baf7ae7b8418e2` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x96e88f632c3488c5bacdfa1afa958aa16d4746b8` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x981b54183de5c6d00d16a7bd581179c3273caf1e` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0x9a735f6234ca486874dd990a83bc63b767781268` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0x9b0936afb17254ff88f5e4fdfe65dc84a9817c7b` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0xa4b3a45022cc2a9d579851aed83c4c0d66ffdf88` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0xa94882e85b885ea96d3ef3a6285bf0e268aecd66` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0xacf1af774ab859324dc905680268fc80c4502d66` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0xad5c1b8173a3ecb30e940e9700403fbb040d1f48` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0xb6e39ac5476feff07933b5424204de95c95068a2` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0xc84330654fa1ce49f45130f9c76fa182ca836cbd` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0xc8be5a6642b5514f9b1c9f29e6a3232d6545de30` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0xc94ada2326d752565253d29de6e5874ddaf254d4` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0xca46d634162c5f8655c6aaed0283b11f1cf37cbd` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0xcb8f60c40ce6b3c5b552a1a169640071d470f409` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0xcd8c78125526d73ad2e273b8c971fb9b69670786` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0xce070ad577804423bcd7d28748b6109d833a35a0` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0xd06a653dc3f3d66fd6228fed98559e73f1947785` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0xd0796686cab198dae133aa5b5bfa18434d74bd3c` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0xd3345a8ad89efa6879e651e8c8113dd990099785` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0xd39effe86a6bfb6fcc058810187f24635caf3d1c` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0xd685c6d77c2efe9b763a0564dd7e11912caf2d33` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0xd9ca5fe0a1df4ae5266259736d3302b85b896e0c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0xde44695d117554f6e61c0a9654209eb242b1cc63` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0xe3b50cb715d1052ab384ebf400858e2b353650fd` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0xe5d75692b528e31760d2bd02aab5f46ee61c9d9a` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0xe7f5d3a278f89df073ee4004a6b86e4d3529996f` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0xeae871c4a8dd267146558c362c86805fb7e3fd2f` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0xf4404e9a6dc4ee18e6a8dc05b7c0c97af18e4193` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |
| unverified unclassified | UnnamedContract<br>`0xf741b14ad6aa4a117574bd0f42e79b8c26f7513c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d305b896cc8f031118e0b535e3cd2078ef5a6d9` |
| unverified unclassified | UnnamedContract<br>`0xf80e6ad9a4e56b6b66629c3f610de0e196ab7f5c` | non_address_book | unknown | unknown | unverified | n/a | `0x7dee01b85029acf51ef1341285592f3c2d6912da` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 109 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
