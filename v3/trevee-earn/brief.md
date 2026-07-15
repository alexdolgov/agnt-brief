# Agentic Audit Brief: Trevee Earn

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Trevee Earn (`trevee-earn`)
- Website: [https://rings.money/](https://rings.money/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, optimism, plasma, polygon, sonic
- Contract surface: 114 unique implementations (187 raw deployments)
- Coverage basis: 0/40 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $962,180.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Trevee Earn. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 49 contract row(s) across arbitrum, ethereum, optimism, plasma, polygon, sonic. Structural roles: 33 core, 7 unclassified, 5 supporting, 4 infra. 11 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 49
- Structural roles: core (33), unclassified (7), supporting (5), infra (4)
- Contract kinds: contract (49)
- Detected standards: erc165 (11), erc20permit (11), erc1967proxy (7), ownable (6), erc20 (3), erc4626 (3), erc721 (3), ownable2step (3), chainlinkaggregator (2), pausable (1)
- Frameworks: openzeppelin (33), solmate (22), boringcrypto (7), solady (7), chainlink (4), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 11

## Fork Analysis

7 of 72 contracts are derived from known codebases. 65 contracts have no detected origin.

### Forked Contracts

**LayerZeroTeller** (`0x31a5a9...18f5b8`, chain 1)
Origin: veda (`0x31a5a9...18f5b8`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TellerWithMultiAssetSupport** (`0x49aceb...cc6562`, chain 146)
Origin: trevee-earn (`0x5e3902...60dae0`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TellerWithMultiAssetSupport** (`0x5e3902...60dae0`, chain 146)
Origin: veda (`0x31a5a9...18f5b8`)
Containment: 59.3% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- addChain(uint32,bool,bool,address,uint128)
- allowMessagesFromChain(uint32,address)
- allowMessagesToChain(uint32,address,uint128)
- bridge(uint96,address,bytes,ERC20,uint256)
- depositAndBridge(ERC20,uint256,uint256,address,bytes,ERC20,uint256)
- depositAndBridgeWithPermit(ERC20,uint256,uint256,uint256,uint8,bytes32,bytes32,address,bytes,ERC20,uint256)
- previewFee(uint96,address,bytes,ERC20)
- removeChain(uint32)
- setChainGasLimit(uint32,uint128)
- stopMessagesFromChain(uint32)
- stopMessagesToChain(uint32)

**TellerWithMultiAssetSupport** (`0x825254...e1f4a9`, chain 146)
Origin: trevee-earn (`0x5e3902...60dae0`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VotingEscrow** (`0x0966ca...5bb86b`, chain 146)
Origin: stable-jack (`0x1ec2b9...e3a578`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VotingEscrow** (`0x1ec2b9...e3a578`, chain 146)
Origin: stable-jack (`0x1ec2b9...e3a578`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VotingEscrow** (`0x7585d9...5afa9e`, chain 146)
Origin: stable-jack (`0x1ec2b9...e3a578`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1327c8...cb51eb`, chain 1)
- UnnamedContract (`0x1f7b4b...992af4`, chain 1)
- UnnamedContract (`0x2dd049...8069bf`, chain 1)
- UnnamedContract (`0x59abf8...4ff02d`, chain 1)
- UnnamedContract (`0x76a3eb...d29078`, chain 1)
- UnnamedContract (`0x8964c7...4d7c9a`, chain 1)
- UnnamedContract (`0xaa1698...4558c6`, chain 1)
- UnnamedContract (`0xaeb799...1e8674`, chain 1)
- UnnamedContract (`0xdd3cbe...3d7e9c`, chain 1)
- UnnamedContract (`0xfd9f19...c1a222`, chain 1)
- UnnamedContract (`0xfeb352...805dab`, chain 1)
- UnnamedContract (`0x2e2f6a...11f1eb`, chain 10)
- UnnamedContract (`0x0482a2...fe17ca`, chain 137)
- UnnamedContract (`0x368251...8e5f9f`, chain 137)
- UnnamedContract (`0xa6ed52...2834b3`, chain 137)
- UnnamedContract (`0xe0be96...83b4c7`, chain 137)
- UnnamedContract (`0x488000...55b48b`, chain 146)
- UnnamedContract (`0xace7de...cff079`, chain 146)
- UnnamedContract (`0x04c70a...c65a22`, chain 42161)
- UnnamedContract (`0x089154...912482`, chain 42161)
- UnnamedContract (`0x12da7e...3e6748`, chain 42161)
- UnnamedContract (`0x1afa84...82d9b1`, chain 42161)
- UnnamedContract (`0x2aa638...d9fbf8`, chain 42161)
- UnnamedContract (`0x4772ca...d272b3`, chain 42161)
- UnnamedContract (`0x997523...f4e5f1`, chain 42161)
- UnnamedContract (`0xa04a36...167828`, chain 42161)
- BoringOnChainQueue (`0x375448...1be720`, chain 1)
- BoringOnChainQueue (`0x555f4d...fb7957`, chain 1)
- BoringOnChainQueue (`0x375448...1be720`, chain 146)
- BoringOnChainQueue (`0x5448a6...39d8cc`, chain 146)
- BoringOnChainQueue (`0x555f4d...fb7957`, chain 146)
- BoringOnChainQueue (`0x65b6af...90e133`, chain 146)
- BoringOnChainQueue (`0x6df97e...8b6ef3`, chain 146)
- BoringVault (`0x3bce5c...4c7812`, chain 1)
- BoringVault (`0xd3dce7...9b97ae`, chain 1)
- BoringVault (`0x3bce5c...4c7812`, chain 146)
- BoringVault (`0x455d5f...f85265`, chain 146)
- BoringVault (`0x4d85ba...a932ba`, chain 146)
- BoringVault (`0xbb30e7...32bfbd`, chain 146)
- BoringVault (`0xd08510...5948d0`, chain 146)
- BoringVault (`0xd3dce7...9b97ae`, chain 146)
- LayerZeroTeller (`0x358cfa...2c776a`, chain 1)
- LayerZeroTeller (`0x31a5a9...18f5b8`, chain 146)
- LayerZeroTeller (`0x358cfa...2c776a`, chain 146)
- plUSD (`0x14723d...dc7431`, chain 9745)
- PlUsdCustomAggregatorFeed (`0x11428a...a6c772`, chain 9745)
- PlUsdDataFeed (`0x574f31...fa35a4`, chain 9745)
- PlUsdDepositVault (`0xc50c3d...82b77d`, chain 9745)
- PlUsdRedemptionVaultWithSwapper (`0x850ec1...7bc0fc`, chain 9745)
- splUSD (`0xf1e3c1...aa9053`, chain 9745)
- SplUsdCustomAggregatorFeed (`0xae7d92...8652b0`, chain 9745)
- SplUsdRedemptionVaultWithSwapper (`0x340467...2796ce`, chain 9745)
- TransparentUpgradeableProxy (`0x24e49d...f6bd75`, chain 9745)
- TransparentUpgradeableProxy (`0x2b3f35...683432`, chain 9745)
- TransparentUpgradeableProxy (`0x2b690c...1b0615`, chain 9745)
- TransparentUpgradeableProxy (`0x4718e6...e9a7d3`, chain 9745)
- TransparentUpgradeableProxy (`0x69ecab...30ae50`, chain 9745)
- TransparentUpgradeableProxy (`0xaa24ba...d84455`, chain 9745)
- TransparentUpgradeableProxy (`0xfe5ae6...a59566`, chain 9745)
- Voter (`0x43739b...55fa05`, chain 146)
- Voter (`0xb84194...469337`, chain 146)
- Voter (`0xc31c4b...1ee7c3`, chain 146)
- Wrapper (`0x9fb76f...494206`, chain 146)
- Wrapper (`0xdb58c4...10c866`, chain 146)
- Wrapper (`0xe8a41c...f37c47`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 49; live-surface rows included: 49 (49 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 66/77 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/40 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 66 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 47
- Confirmed-live implementations: 66 of 114 unique; 48 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/81
- Verified + Unaudited implementations: 81
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 114
- Raw deployments: 187
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

### ⚠️ Verified + Unaudited (81)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirdropDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x244c88...05a831`; sonic `0xc49182...9c124c` | ⚠️ Unaudited |
| AirdropReclaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5db8d9...5d261a` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x238789...d4086a`; ethereum `0x32a626...9a4259`; ethereum `0x4d5f47...c514e8`; ethereum `0x98c23e...e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 2 deployments: sonic `0x578ee1...cd11c6`; sonic `0xe18ab8...1ece96` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259403 | `0x375448...1be720` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259405 | `0x555f4d...fb7957` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | sonic | unit-259427 | `0x375448...1be720` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | sonic | unit-259434 | `0x5448a6...39d8cc` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | sonic | unit-259435 | `0x555f4d...fb7957` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | sonic | unit-259437 | `0x65b6af...90e133` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | sonic | unit-259438 | `0x6df97e...8b6ef3` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-259404 | `0x3bce5c...4c7812` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb30e7...32bfbd` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-259411 | `0xd3dce7...9b97ae` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259428 | `0x3bce5c...4c7812` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259430 | `0x455d5f...f85265` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259433 | `0x4d85ba...a932ba` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259444 | `0xbb30e7...32bfbd` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259446 | `0xd08510...5948d0` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259447 | `0xd3dce7...9b97ae` | ⚠️ Unaudited |
| DistributionSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 18 deployments: sonic `0x05d61a...bfee01`; sonic `0x14cedd...227230`; sonic `0x1bc06e...d86e52`; sonic `0x324a04...64527c`; sonic `0x3692b1...28d3a6`; sonic `0x3a15cc...4b53eb`; sonic `0x4cba4a...c338fd`; sonic `0x4ce11a...e7fb29`; sonic `0x58d02d...df52b2`; sonic `0x61b9bf...54dd5b`; sonic `0x633ff2...7b3b83`; sonic `0x67e199...24875d`; sonic `0x7f8a67...da3743`; sonic `0x9a7d08...19cf7b`; sonic `0xa55d93...891248`; sonic `0xa9d889...b67eb3`; sonic `0xb8c5b4...6b8b5d`; sonic `0xed801d...8678c5` | ⚠️ Unaudited |
| FraxOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | sonic | n/a | 3 deployments: sonic `0x3ec384...7fde45`; sonic `0x43edd7...5a9050`; sonic `0x90581e...cf7927` | ⚠️ Unaudited |
| FraxOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xeed9de...8c1483` | ⚠️ Unaudited |
| FrxUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcacd6f...586e29` | ⚠️ Unaudited |
| FrxUSDOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x80eede...d600df` | ⚠️ Unaudited |
| fToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 4 deployments: ethereum `0x5c20b5...cedd18`; ethereum `0x6a29a4...605c5b`; ethereum `0x9fb7b4...251b33`; plasma `0x1dd4b1...2ed27b` | ⚠️ Unaudited |
| GhoToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40d16f...ae6c2f` | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-259401 | `0x31a5a9...18f5b8` | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-259402 | `0x358cfa...2c776a` | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259425 | `0x31a5a9...18f5b8` | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259426 | `0x358cfa...2c776a` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2371e1...740618`; ethereum `0xbeef01...2a64cb`; ethereum `0xd63070...d33a3d` | ⚠️ Unaudited |
| mHYPER | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0xb31bea...a75f8a`; plasma `0xd3239a...893eb0` | ⚠️ Unaudited |
| MHyperCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0xaa0163...68899a`; plasma `0xfc3e47...1a08f0` | ⚠️ Unaudited |
| MHyperDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x2eb410...076bc9`; plasma `0x73b372...e15c0b` | ⚠️ Unaudited |
| MHyperDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x062ea1...a603e4`; plasma `0xa603cf...d4286e` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x429409...b98681`; plasma `0x880661...6cb77c` | ⚠️ Unaudited |
| MidasAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | plasma | n/a | 4 deployments: plasma `0x0ee21b...d8974b`; plasma `0x3ea351...4fab72`; plasma `0x4e7caa...cd0f39`; plasma `0x88b70f...6890fa` | ⚠️ Unaudited |
| MidasTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe4ccb5...fd3c2e` | ⚠️ Unaudited |
| MintedERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x50c42d...f2634b` | ⚠️ Unaudited |
| plUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x09ef71...965f5a` | ⚠️ Unaudited |
| plUSD | unknown | project_anchor | own_supporting | 1 | plasma | unit-259467 | 2 deployments: plasma `0x14723d...dc7431`; plasma `0xf91c31...f358cd` | ⚠️ Unaudited |
| PlUsdCustomAggregatorFeed | unknown | project_anchor | own_supporting | 1 | plasma | unit-259466 | 2 deployments: plasma `0x11428a...a6c772`; plasma `0x4718e6...e9a7d3` | ⚠️ Unaudited |
| PlUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x428d01...a01829` | ⚠️ Unaudited |
| PlUsdDataFeed | unknown | project_anchor | own_supporting | 1 | plasma | unit-259469 | 2 deployments: plasma `0x2b3f35...683432`; plasma `0x574f31...fa35a4` | ⚠️ Unaudited |
| PlUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x8a7bd8...47f96f` | ⚠️ Unaudited |
| PlUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x0a0817...3588a8` | ⚠️ Unaudited |
| PlUsdDepositVault | core_logic | project_anchor | own_supporting | 1 | plasma | unit-259473 | 2 deployments: plasma `0x2b690c...1b0615`; plasma `0xc50c3d...82b77d` | ⚠️ Unaudited |
| PlUsdRedemptionVaultWithSwapper | adapter | project_anchor | own_supporting | 1 | plasma | unit-259470 | 2 deployments: plasma `0x24e49d...f6bd75`; plasma `0x850ec1...7bc0fc` | ⚠️ Unaudited |
| PlUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0xf76488...b43cc9` | ⚠️ Unaudited |
| PoolV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff9499...81244b` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 15 deployments: sonic `0x0ab6d0...1de1d3`; sonic `0x266c10...6e80b6`; sonic `0x29dafa...c8057f`; sonic `0x485eab...a784bd`; sonic `0x66df6a...27d7ed`; sonic `0x7545dd...8fb931`; sonic `0x7b949a...1c33b5`; sonic `0x8329d2...8f85e9`; sonic `0x87c165...cfde21`; sonic `0x9981a5...8333f5`; sonic `0x9987a6...6638af`; sonic `0xa10466...3b11d7`; sonic `0xadeeb0...9f3ec0`; sonic `0xee1e11...145177`; sonic `0xfc7d3e...e4094a` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x10c490...30a829`; sonic `0x4d6223...8dc9e0` | ⚠️ Unaudited |
| SfrxUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcf62f9...c9c5b6` | ⚠️ Unaudited |
| SFrxUSDOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x5bff88...c070c0` | ⚠️ Unaudited |
| splUSD | unknown | project_anchor | own_supporting | 1 | plasma | unit-259474 | 2 deployments: plasma `0x616185...598343`; plasma `0xf1e3c1...aa9053` | ⚠️ Unaudited |
| SplUsdCustomAggregatorFeed | unknown | project_anchor | own_supporting | 1 | plasma | unit-259472 | 2 deployments: plasma `0xae7d92...8652b0`; plasma `0xfe5ae6...a59566` | ⚠️ Unaudited |
| SplUsdDataFeed | unknown | project_anchor | own_supporting | 1 | plasma | unit-259471 | 2 deployments: plasma `0x853d18...737d57`; plasma `0xaa24ba...d84455` | ⚠️ Unaudited |
| SplUsdDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x4ef9ff...84093f`; plasma `0xd93346...3be283` | ⚠️ Unaudited |
| SplUsdRedemptionVaultWithSwapper | unknown | project_anchor | own_supporting | 1 | plasma | unit-259468 | 2 deployments: plasma `0x340467...2796ce`; plasma `0x69ecab...30ae50` | ⚠️ Unaudited |
| StakeToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1a88df...c1885d` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259432 | `0x49aceb...cc6562` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259436 | `0x5e3902...60dae0` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259440 | `0x825254...e1f4a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | plasma | n/a | 3 deployments: plasma `0xa4812e...6e828b`; plasma `0xda56c2...e62404`; plasma `0xedb387...75d78a` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x14f6fb...5f0e1a`; sonic `0xeae33e...9ed7b2` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x2fc1e7...ec27e9`; sonic `0xf2b303...4c90d6` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x47bf4c...15d234`; sonic `0xf00941...470689` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x724749...47a245`; sonic `0xa0943a...d601cd` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x18708a...d8c65c`; sonic `0x9842be...92706e`; sonic `0xeada1c...bbff2f`; sonic `0xedb1d0...875292`; sonic `0xf365c4...f44afb`; sonic `0xfed36f...650c34` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 0 | sonic | unit-259429 | `0x43739b...55fa05` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 0 | sonic | unit-259443 | `0xb84194...469337` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 0 | sonic | unit-259445 | `0xc31c4b...1ee7c3` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-259423 | `0x0966ca...5bb86b` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-259424 | `0x1ec2b9...e3a578` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-259439 | `0x7585d9...5afa9e` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7e330b...18c1f1` | ⚠️ Unaudited |
| WFRAXTokenOFTUpgradeable | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x64445f...4e561a` | ⚠️ Unaudited |
| Wrapper | unknown | project_anchor | own_supporting | 0 | sonic | unit-259441 | `0x9fb76f...494206` | ⚠️ Unaudited |
| Wrapper | unknown | project_anchor | own_supporting | 0 | sonic | unit-259448 | `0xdb58c4...10c866` | ⚠️ Unaudited |
| Wrapper | unknown | project_anchor | own_supporting | 0 | sonic | unit-259449 | `0xe8a41c...f37c47` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x78bb1c...5d90be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259398 | `0x1327c8...cb51eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259399 | `0x1f7b4b...992af4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259400 | `0x2dd049...8069bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259406 | `0x59abf8...4ff02d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259407 | `0x76a3eb...d29078` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259408 | `0x8964c7...4d7c9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259409 | `0xaa1698...4558c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259410 | `0xaeb799...1e8674` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259412 | `0xdd3cbe...3d7e9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259413 | `0xfd9f19...c1a222` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259414 | `0xfeb352...805dab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-259415 | `0x2e2f6a...11f1eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259417 | `0x0482a2...fe17ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259418 | `0x368251...8e5f9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259421 | `0xa6ed52...2834b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259422 | `0xe0be96...83b4c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-259431 | `0x488000...55b48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8f1b9c...f16250` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-259442 | `0xace7de...cff079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc19921...95fb16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259450 | `0x04c70a...c65a22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259451 | `0x089154...912482` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-259452 | `0x0da8d5...d4391e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259453 | `0x12da7e...3e6748` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259454 | `0x1afa84...82d9b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259455 | `0x2aa638...d9fbf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259457 | `0x4772ca...d272b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-259459 | `0x5e90fb...7d7e6a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-259460 | `0x8edcfe...77abbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259462 | `0x997523...f4e5f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259463 | `0xa04a36...167828` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-259464 | `0xb5757d...d5b90e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x375448...1be720` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x555f4d...fb7957` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x375448...1be720` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5448a6...39d8cc` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x555f4d...fb7957` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x65b6af...90e133` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x6df97e...8b6ef3` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3bce5c...4c7812` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd3dce7...9b97ae` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3bce5c...4c7812` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x455d5f...f85265` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x4d85ba...a932ba` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xbb30e7...32bfbd` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xd08510...5948d0` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xd3dce7...9b97ae` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x14723d...dc7431` | plUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x11428a...a6c772` | PlUsdCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x2b3f35...683432` | PlUsdDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x2b690c...1b0615` | PlUsdDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x24e49d...f6bd75` | PlUsdRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x616185...598343` | splUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xae7d92...8652b0` | SplUsdCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x853d18...737d57` | SplUsdDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x340467...2796ce` | SplUsdRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x49aceb...cc6562` | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5e3902...60dae0` | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x825254...e1f4a9` | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x43739b...55fa05` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb84194...469337` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xc31c4b...1ee7c3` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0966ca...5bb86b` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x1ec2b9...e3a578` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x7585d9...5afa9e` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x9fb76f...494206` | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xdb58c4...10c866` | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe8a41c...f37c47` | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 7 |
| standard_library | 1 |
| needs_review | 33 |

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
