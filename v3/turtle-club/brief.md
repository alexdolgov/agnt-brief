# Agentic Audit Brief: Turtle Club

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Turtle Club (`turtle-club`)
- Website: [https://app.turtle.xyz/](https://app.turtle.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum, linea
- Contract surface: 765 unique implementations (2075 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $850,321.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Turtle Club. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across avalanche, bsc, ethereum, linea. Structural roles: 10 core, 7 supporting. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (10), supporting (7)
- Contract kinds: contract (15), abstract (2)
- Detected standards: erc1967proxy (9), ownable (9), erc165 (4), erc20 (4), erc20permit (4), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (13), openzeppelin-upgradeable (12), chainlink (3), foundry (2)
- Upgradeable-pattern rows: 12

## Fork Analysis

1 of 17 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

**TurtleGovernor** (`0x665160...5a97e3`, chain 1)
Origin: turtle-club (`0xa11885...2cd3f4`)
Containment: 100.0% - 29 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- BurnMintTokenPool (`0xd3bd7d...2f8bbb`, chain 1)
- BurnMintTokenPool (`0x455960...04335a`, chain 56)
- BurnMintTokenPool (`0x7263bc...c0c647`, chain 59144)
- Drip (`0x56aa6d...bae8ef`, chain 56)
- ERC1967Proxy (`0x233cbc...73e7fc`, chain 1)
- SafeProxy (`0x2e0355...7f25b2`, chain 1)
- Stake (`0x194e34...9826c8`, chain 1)
- StakeProxy (`0x7c329f...d48825`, chain 1)
- StakeToken (`0xe2a8cd...375ec5`, chain 1)
- Turtle (`0x67e718...9ba3f0`, chain 1)
- Turtle (`0x67e718...9ba3f0`, chain 56)
- Turtle (`0x7ab965...a52551`, chain 59144)
- TurtleGovernorProxy (`0x27cbb9...4ffece`, chain 1)
- TurtleProxy (`0x66fd8d...0d3afd`, chain 1)
- TurtleProxy (`0x66fd8d...0d3afd`, chain 56)
- TurtleProxy (`0x56aa6d...bae8ef`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 754 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 243
- Confirmed-live implementations: 11 of 765 unique; 754 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/662
- Verified + Unaudited implementations: 662
- Verified by bytecode match: 0
- Unverified implementations: 103
- Unique implementations: 765
- Raw deployments: 2075
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (662)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a395...8c1053` | ⚠️ Unaudited |
| AaveV3BorrowFuse | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe3abae...de4c5e`; ethereum `0xf020b9...78d884` | ⚠️ Unaudited |
| AaveV3CollateralFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06f56...c44b22` | ⚠️ Unaudited |
| AaveV3WithPriceOracleMiddlewareBalanceFuse | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9eeee...a12612` | ⚠️ Unaudited |
| AccessControlManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4195ed...b6bc56`; ethereum `0x796592...e3333f` | ⚠️ Unaudited |
| AccessControlManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x527d6d...855d23`; ethereum `0x52b5f5...8a7d11` | ⚠️ Unaudited |
| AccessControlManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x625087...b95eac`; ethereum `0xbb7b99...593e64` | ⚠️ Unaudited |
| AccessControlManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc011a...91cf18` | ⚠️ Unaudited |
| AccessManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0d6028...00a740`; ethereum `0xced97f...89305e`; ethereum `0xf902af...8ea3c1` | ⚠️ Unaudited |
| AccessManagerUpgradeable | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6e22a6...fce86e`; ethereum `0xd5e4ac...5f7bfb` | ⚠️ Unaudited |
| AccessManagerUpgradeable | governance | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6e22a6...fce86e`; bsc `0xd5e4ac...5f7bfb` | ⚠️ Unaudited |
| AccessManagerUpgradeable | governance | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6e22a6...fce86e`; avalanche `0xd5e4ac...5f7bfb` | ⚠️ Unaudited |
| AccessManagerUpgradeable | governance | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x1071d9...7f54dc`; linea `0xd3bd7d...2f8bbb` | ⚠️ Unaudited |
| AccessManagerUpgradeable | governance | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x66fd8d...0d3afd`; linea `0x67e718...9ba3f0` | ⚠️ Unaudited |
| AccountingModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77fb6f...de469a` | ⚠️ Unaudited |
| AccountingToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb39822...071421` | ⚠️ Unaudited |
| AccountLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x5903c5...91b45a`; ethereum `0x61e09a...160119`; ethereum `0x8f59c6...b68753`; ethereum `0xbd1bbb...53aaef`; ethereum `0xe5b2ad...6c246f` | ⚠️ Unaudited |
| AirdropClaimKey | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x142665...4e31e4` | ⚠️ Unaudited |
| AirdropDistribution | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x89e813...0896ed`; ethereum `0xefc39e...1181ef` | ⚠️ Unaudited |
| AirdropTaxCollector | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa6cd24...2a4c01`; ethereum `0xd4ab6c...313434` | ⚠️ Unaudited |
| AlgebraV1Twap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb28d2...4c21fd` | ⚠️ Unaudited |
| Allowance | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xcc96a8...543a78`; ethereum `0xfc80f4...e82c75` | ⚠️ Unaudited |
| AmmCloseSwapLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x066cbd...bbaac2`; ethereum `0x17bf30...94095d`; ethereum `0x8d99d6...132aa0`; ethereum `0xff69f7...32aaf8` | ⚠️ Unaudited |
| AmmCloseSwapService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6650de...825ee3`; ethereum `0x7dc23a...10ecb5` | ⚠️ Unaudited |
| AmmCloseSwapServiceDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x072467...1dd183`; ethereum `0x735b3f...6fc3d9`; ethereum `0xe14a72...a849e4` | ⚠️ Unaudited |
| AmmCloseSwapServiceStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x578ba0...2973c2`; ethereum `0xe26126...eb6524` | ⚠️ Unaudited |
| AmmCloseSwapServiceStEthBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa07f30...292734` | ⚠️ Unaudited |
| AmmCloseSwapServiceUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x128ced...aa747f`; ethereum `0x623750...673d95`; ethereum `0x9a9f60...69f8e8` | ⚠️ Unaudited |
| AmmCloseSwapServiceUsdt | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x11a02a...ab56f9`; ethereum `0x6d0045...d94237`; ethereum `0x8fe90f...743ed2` | ⚠️ Unaudited |
| AmmGovernanceService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x4f7ef2...bda46d`; ethereum `0x8ab4d1...6e2023`; ethereum `0x8ec9ae...52158d`; ethereum `0xbd7407...95264d`; ethereum `0xbf0a6e...03f4bc` | ⚠️ Unaudited |
| AmmGovernanceServiceBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64f71...5f0470` | ⚠️ Unaudited |
| AmmOpenSwapService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ef45e...8016d1`; ethereum `0x78034b...7ae119` | ⚠️ Unaudited |
| AmmOpenSwapServiceStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x042ec3...59cd2c`; ethereum `0x0ccccd...3ab361` | ⚠️ Unaudited |
| AmmPoolsLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f44c5...40e04a`; ethereum `0xb653ed...940d01` | ⚠️ Unaudited |
| AmmPoolsLensBaseV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce9680...7db70d` | ⚠️ Unaudited |
| AmmPoolsLensEth | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bea65...28be1e` | ⚠️ Unaudited |
| AmmPoolsLensStEth | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0a485...24904a` | ⚠️ Unaudited |
| AmmPoolsLensUsdm | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326293...eac8eb` | ⚠️ Unaudited |
| AmmPoolsLensWeEth | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0d64c...e165a6` | ⚠️ Unaudited |
| AmmPoolsService | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x912ae5...98f337`; ethereum `0x9bcde3...400517` | ⚠️ Unaudited |
| AmmPoolsServiceEth | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa30845...1a9bed` | ⚠️ Unaudited |
| AmmPoolsServiceStEth | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x406812...428be1`; ethereum `0xcd96ba...fbebbc` | ⚠️ Unaudited |
| AmmPoolsServiceUsdm | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5765d0...95294c` | ⚠️ Unaudited |
| AmmPoolsServiceWeEth | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6966de...c5a318`; ethereum `0x7b071c...e475ac` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x229e0b...7411fe`; ethereum `0x98123c...de36da`; ethereum `0xec6f77...d283e6` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x364f11...f5b1ce`; ethereum `0x622827...593f2e` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4508ce...e8c0f0`; ethereum `0xb99f2a...c56e61` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x91c35e...8f6ab1`; ethereum `0xb3d1c1...924ba5` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x08a8ec...0197c6`; ethereum `0x95257e...94a281` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b0277...f114d0`; ethereum `0x9c9846...701017` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4f4f16...84ef8c`; ethereum `0x77fe3a...41e3b5` | ⚠️ Unaudited |
| AmmSwapsLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x41e347...0172cf`; ethereum `0x476c44...2dcd8c`; ethereum `0x5a1cf5...4c50c2` | ⚠️ Unaudited |
| AmmSwapsLensLibBaseV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1decfd...c7032c` | ⚠️ Unaudited |
| AmmTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x137000...2e7dc9`; ethereum `0x866d6c...a0eb49` | ⚠️ Unaudited |
| AmmTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x28bc58...96b687`; ethereum `0xabcb3a...49a82b` | ⚠️ Unaudited |
| AmmTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6f4506...dc5944`; ethereum `0x916202...d3aa48`; ethereum `0xeb011b...f88a0c` | ⚠️ Unaudited |
| AmmTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe9facd...b74dc1`; ethereum `0xed7d74...4e7523` | ⚠️ Unaudited |
| AmmTreasuryBaseV1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x060bf7...40556a`; ethereum `0xa19b16...1bfaad` | ⚠️ Unaudited |
| AmmTreasuryBaseV1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x390e7e...68aabd`; ethereum `0x9a449e...37123b` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x30ae18...05153c`; ethereum `0x63395e...8dee4e` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb1c0cc...44f0c0`; ethereum `0xcc2ff2...d74196` | ⚠️ Unaudited |
| AmmTreasuryEth | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7193c...50dc22` | ⚠️ Unaudited |
| ApexMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf98ea8...e4f18e` | ⚠️ Unaudited |
| ApexMakerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bf597...4e53ab` | ⚠️ Unaudited |
| ApexPremier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd189d2...d8daac` | ⚠️ Unaudited |
| ApexPremierAccess | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x734d8c...d38f79` | ⚠️ Unaudited |
| ApexPremierFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xd92558...c4929f`; avalanche `0xe3593d...8f8cfa` | ⚠️ Unaudited |
| ArtifactHardwareProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc095ec...24194c` | ⚠️ Unaudited |
| AssetLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x376862...6b8853`; avalanche `0xd7c8f6...cbd07b` | ⚠️ Unaudited |
| AssetManagementDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x160dae...cdace3`; ethereum `0xa6ac8b...96e2b0` | ⚠️ Unaudited |
| AssetManagementLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d4c4c...5f6e09`; ethereum `0xb8dbde...192389` | ⚠️ Unaudited |
| AssetManagementUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7aa7b0...9bf260`; ethereum `0xd9f0c6...0d2a7b` | ⚠️ Unaudited |
| AssetManagementUsdt | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6416e3...7f7ddd`; ethereum `0x8e679c...64d6b5` | ⚠️ Unaudited |
| AssetRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0734ca...904101`; ethereum `0x54ab85...5bafce` | ⚠️ Unaudited |
| AssetRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x081755...20f4a9`; ethereum `0xedb597...f62576` | ⚠️ Unaudited |
| AssetRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x323c93...4270fd` | ⚠️ Unaudited |
| AssetRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x84da5a...755eac`; ethereum `0x94db8f...a125bd` | ⚠️ Unaudited |
| AsyncActionBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37fb99...92bf6f` | ⚠️ Unaudited |
| AsyncActionFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bd1e...671870` | ⚠️ Unaudited |
| AsyncWithdrawalLib | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa4ce33...16610c`; ethereum `0xee25e8...322684` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x238789...d4086a` | ⚠️ Unaudited |
| AuraSwEthBbAWethSYV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb6ea7...27b96b` | ⚠️ Unaudited |
| AutoETHAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcac2b...20ae4e` | ⚠️ Unaudited |
| AutoUSDAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcf18d...9bafa9` | ⚠️ Unaudited |
| AvalancheHardwareRental | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x456a6e...76e87b`; avalanche `0xf45117...e27848` | ⚠️ Unaudited |
| AztecDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xafcbe8...be8362`; ethereum `0xdfe98d...e8d6c6` | ⚠️ Unaudited |
| Balance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9c86fc...cda956`; ethereum `0xe5ca50...e6bd57` | ⚠️ Unaudited |
| BalanceForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa252af...84fee5` | ⚠️ Unaudited |
| BalanceFusesReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870e1f...0aec1f` | ⚠️ Unaudited |
| BaseRules | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f582d...0d2410` | ⚠️ Unaudited |
| BIFKN314 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 15 deployments: avalanche `0x1d2771...0e1192`; avalanche `0x301946...37cd6e`; avalanche `0x666a53...2d1909`; avalanche `0x6aba46...d788eb`; avalanche `0x801089...8b89e9`; avalanche `0x958704...486a92`; avalanche `0xa0de70...ce0a82`; avalanche `0xa55894...8d06d1`; avalanche `0xbc47f3...09890b`; avalanche `0xc6f992...05d89b`; avalanche `0xcbcc39...79d338`; avalanche `0xcffb86...9363dd`; avalanche `0xd74fd3...eab9e7`; avalanche `0xe0ee1a...ef035e`; avalanche `0xfe47b6...d529ee` | ⚠️ Unaudited |
| BIFKN314Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3d193d...106a87`; avalanche `0x96a97d...dab0f0`; avalanche `0xad2203...8bc71d` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x2aabaf...32a2b2`; avalanche `0xb39224...71e8c9` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x4ecd8b...59f450`; avalanche `0x576fbd...da622b`; avalanche `0x58dd21...99eded`; avalanche `0xabfbfe...345e9a`; avalanche `0xeed436...afb465` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4f7078...eaf769`; avalanche `0x72cf3a...7cd315` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x754a0c...820f01`; avalanche `0xdcaece...81f99a` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x759a06...c7a8e5` | ⚠️ Unaudited |
| BIFKN314FeeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x2af654...038306`; avalanche `0xa56b59...8ac70c` | ⚠️ Unaudited |
| BIFKN314FeeHookLegacyFix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3aa19b...2bc262` | ⚠️ Unaudited |
| BIFKN314Locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdfb880...845802` | ⚠️ Unaudited |
| BIFKN314Mintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 31 deployments: avalanche `0x18e015...25a649`; avalanche `0x19b7cc...7f4fed`; avalanche `0x1b923f...3b1516`; avalanche `0x1c7b3f...aad39a`; avalanche `0x1ff575...914d2f`; avalanche `0x2aaad9...974761`; avalanche `0x2e3ac2...e536fb`; avalanche `0x463a7e...c75e9a`; avalanche `0x490bf7...02e3eb`; avalanche `0x4a8876...2e6138`; avalanche `0x4ab51b...404d80`; avalanche `0x4df08c...f5dc9a`; avalanche `0x5b5913...481ce1`; avalanche `0x5facc8...a26461`; avalanche `0x65fcc0...e053f0`; avalanche `0x772ebf...308cdc`; avalanche `0x836094...e47cd1`; avalanche `0x8ab6a0...c4aa02`; avalanche `0x8bb1e4...324bed`; avalanche `0x8e02a1...f65d96`; avalanche `0x9a25d8...f70736`; avalanche `0x9af107...5d697e`; avalanche `0x9fa9b0...92c15e`; avalanche `0xb643d9...5b5720`; avalanche `0xbe2ff4...fc545b`; avalanche `0xbf835b...ae176d`; avalanche `0xce6450...616da6`; avalanche `0xcec0b5...0442bd`; avalanche `0xda5d3f...b00947`; avalanche `0xdd4bfa...956d14`; avalanche `0xeb3dfd...6a8734` | ⚠️ Unaudited |
| BIFKN314Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x2c4ea5...305c96`; avalanche `0x42bff7...255951`; avalanche `0xa0f24a...8f5760`; avalanche `0xc04d3a...c44020`; avalanche `0xca94e2...7b38e3`; avalanche `0xf8ac03...e98df1` | ⚠️ Unaudited |
| BIFKN314Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f4378...03d8cd` | ⚠️ Unaudited |
| BIFKN314RouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x5d2dda...28082b`; avalanche `0x6242c8...2744fc`; avalanche `0xa6d21c...11a682` | ⚠️ Unaudited |
| BIFKN314Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x36ef5b...624b00`; avalanche `0x884400...e2ec61`; avalanche `0x978f58...a7e951`; avalanche `0xd153fe...8d1e92`; avalanche `0xf43d68...33a15e`; avalanche `0xfd3a5a...1cdee3` | ⚠️ Unaudited |
| BIFKN314WrapperFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x39ab4a...83f4b4`; avalanche `0xa242da...23e8b5` | ⚠️ Unaudited |
| BIFKN314WrapperFactoryV2 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x709d66...6315cc`; avalanche `0xfb68c9...5c5bd2` | ⚠️ Unaudited |
| BIFKN314WrapperMintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 31 deployments: avalanche `0x0133a8...374bff`; avalanche `0x098086...18b3da`; avalanche `0x1a308e...620f54`; avalanche `0x1f6c7e...f8e50f`; avalanche `0x1fb3f2...49c612`; avalanche `0x26ab72...3124d5`; avalanche `0x28f699...ad020c`; avalanche `0x430dde...ab2f46`; avalanche `0x485ea0...d6ed82`; avalanche `0x52e44b...e119ad`; avalanche `0x5c84b4...c3e9f9`; avalanche `0x5fe449...1ac6d6`; avalanche `0x636483...3b8941`; avalanche `0x69e852...87143b`; avalanche `0x6c5d31...5f05a2`; avalanche `0x737805...6a2e68`; avalanche `0x77cb12...9e8573`; avalanche `0x7e4126...811b5d`; avalanche `0x9dcde3...8be6c4`; avalanche `0xa28745...c00abe`; avalanche `0xae3f01...1b47a0`; avalanche `0xb47f0d...7ce5c3`; avalanche `0xb51dfb...361f31`; avalanche `0xbf2b86...97789e`; avalanche `0xbf88e0...31bb18`; avalanche `0xc80f88...fc817d`; avalanche `0xd714f2...fba4ec`; avalanche `0xde2468...0114a1`; avalanche `0xf31856...7d639a`; avalanche `0xfb0cf8...d29332`; avalanche `0xfc6c9b...4e3d81` | ⚠️ Unaudited |
| BIFKNChefStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x421d0d...128815` | ⚠️ Unaudited |
| BIFKNChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x317828...ea4573`; avalanche `0x599587...ed38d3`; avalanche `0x87f073...74d66e` | ⚠️ Unaudited |
| BIFKNRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 38 deployments: avalanche `0x0d4c97...134a4b`; avalanche `0x273a7a...433025`; avalanche `0x3438fe...bc7c01`; avalanche `0x3f7229...a2416a`; avalanche `0x43b617...f30ddf`; avalanche `0x49070a...912382`; avalanche `0x4da6c4...9dd044`; avalanche `0x518a8d...6715b0`; avalanche `0x59c76d...bfb5ac`; avalanche `0x5a2d94...b51c64`; avalanche `0x6e33f5...36d041`; avalanche `0x70e5e1...71d058`; avalanche `0x78ce75...9ff37b`; avalanche `0x7d8416...4332b0`; avalanche `0x812f7e...c45248`; avalanche `0x882342...aed475`; avalanche `0x8890c4...1aad8b`; avalanche `0x88db87...9d97f3`; avalanche `0x8d7946...fa85b8`; avalanche `0x8df656...3cd581`; avalanche `0x982c47...da4418`; avalanche `0x9a78ec...0bb340`; avalanche `0x9f1908...745aeb`; avalanche `0xb32f18...d8163e`; avalanche `0xb683a3...eff7b0`; avalanche `0xc05d6a...e0d70a`; avalanche `0xc158d2...67194f`; avalanche `0xc36a0b...7da63d`; avalanche `0xc52749...f37727`; avalanche `0xc9b97d...3cc2f7`; avalanche `0xcc5cd9...361da7`; avalanche `0xdc35e5...42e34c`; avalanche `0xde7780...e015b2`; avalanche `0xe95da2...7c99e8`; avalanche `0xeda361...026a71`; avalanche `0xf07776...9296e1`; avalanche `0xf11e82...31f7ea`; avalanche `0xfde2ea...a81f19` | ⚠️ Unaudited |
| Blacklist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x86ac05...5703a5`; ethereum `0xfb739b...06f935` | ⚠️ Unaudited |
| BlackPearl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x677365...65e8af` | ⚠️ Unaudited |
| Blub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f6698...b1b5cd` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x294eec...a9fbad`; ethereum `0x699e04...976490`; ethereum `0x6bf340...1c3ddf` | ⚠️ Unaudited |
| Borrowing | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x639156...605acf` | ⚠️ Unaudited |
| BrevUniversity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xcf7b2c...ee3532`; avalanche `0xd13510...8bf5c8` | ⚠️ Unaudited |
| BribeFactoryV4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x795998...ef0886` | ⚠️ Unaudited |
| BribeFactoryV4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0xca79b7...b325b0` | ⚠️ Unaudited |
| BribeV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb03c9d...3f8aed` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-259841 | `0xd3bd7d...2f8bbb` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-259842 | `0x455960...04335a` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | project_anchor | own_supporting | 0 | linea | unit-259844 | `0x7263bc...c0c647` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe9a64f...d612b2` | ⚠️ Unaudited |
| BurnRequestFeeFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79e8b1...d29ab4` | ⚠️ Unaudited |
| BurstFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x286fab...848205`; avalanche `0x2affb6...dcb9bb`; avalanche `0xbb6b57...a7d43a`; avalanche `0xcf5de4...e8f857` | ⚠️ Unaudited |
| BurstFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x7e71e4...ee4813`; avalanche `0x84926d...913d8b` | ⚠️ Unaudited |
| BurstFactory | registry | non_address_book | non_address_book_inventory (excluded) | 3 | avalanche | n/a | 4 deployments: avalanche `0x8ade2c...1d591b`; avalanche `0xc331d7...3a9f8b`; avalanche `0xdd4d94...91ad42`; avalanche `0xdef673...ad5ef6` | ⚠️ Unaudited |
| BurstFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xd49d18...bfb6e7` | ⚠️ Unaudited |
| BurstFactoryV2 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a47cd...952c76` | ⚠️ Unaudited |
| BurstFactoryV3 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x6c8823...612602`; avalanche `0xef89a7...276644` | ⚠️ Unaudited |
| BurstFactoryV4 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x1f62f4...36f1ba`; avalanche `0xce4d39...d9677b` | ⚠️ Unaudited |
| BurstFactoryV5 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x27b12f...c84c7e`; avalanche `0xab9356...0d1ad6`; avalanche `0xb86490...0a2b6d`; avalanche `0xdaebd8...71b72a` | ⚠️ Unaudited |
| BurstFactoryV5 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xb83ad9...13a903`; avalanche `0xb91b66...f463d1` | ⚠️ Unaudited |
| BurstFactoryV6 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xbc74a3...c07cdd`; avalanche `0xde2762...d0c9a7` | ⚠️ Unaudited |
| BurstToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 10 deployments: avalanche `0x1c8df0...1d0dfc`; avalanche `0x2025ad...cffea8`; avalanche `0x52d370...1203b6`; avalanche `0x5410bb...15c0b6`; avalanche `0x6c0a29...b05e98`; avalanche `0x737729...ad4893`; avalanche `0x7824ef...5e3b5e`; avalanche `0x9e8502...ef486a`; avalanche `0xbb5deb...efff66`; avalanche `0xe33d44...b2928d` | ⚠️ Unaudited |
| CalculateWeightedLpTokenBalanceEthereum | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3843f9...c18915`; ethereum `0x6df58f...ca5971`; ethereum `0x77bf38...ff549c` | ⚠️ Unaudited |
| CallbackHandlerEuler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b219f...d98602` | ⚠️ Unaudited |
| CallbackHandlerReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b0584...20e393` | ⚠️ Unaudited |
| ChronicleOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x420a98...e0d9c6`; ethereum `0x5a4741...cfcde6`; ethereum `0x5c5b67...9a25cf`; ethereum `0x6245cd...006cfc`; ethereum `0x956c9b...bd1b86`; ethereum `0x9ee335...953130`; ethereum `0xdc8af4...760721` | ⚠️ Unaudited |
| ClaimNodeOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb42cfa...afc35c` | ⚠️ Unaudited |
| ClaimProtocolDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4169cf...49476c`; avalanche `0x6476a7...bb286c` | ⚠️ Unaudited |
| CLFeesVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4569f2...15f5e7` | ⚠️ Unaudited |
| CockpitDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x124bc6...0e97dc`; ethereum `0x720e64...b144ee`; ethereum `0xacbb7e...cc09f5` | ⚠️ Unaudited |
| CollateralTokenOnMorphoMarketPriceFeedFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ed13e...8bb5a7` | ⚠️ Unaudited |
| ConfigManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9b3fac...49f03f`; ethereum `0xb88600...d35d64` | ⚠️ Unaudited |
| ConfigureInstantWithdrawalFuse | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd58f0e...b33799` | ⚠️ Unaudited |
| Connector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc98dce...0919cb`; ethereum `0xd4f8cc...eb514d` | ⚠️ Unaudited |
| ContextManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x0f2e1c...9592b7`; ethereum `0x0fe8d7...62a702`; ethereum `0x1822a8...664d4f`; ethereum `0x226b2c...a6d167`; ethereum `0x3782bc...3c9fd8`; ethereum `0x3db87a...a910c1`; ethereum `0x446f85...700153`; ethereum `0x4f1f51...aa3dd2`; ethereum `0x503873...b3ab72`; ethereum `0x58f50b...f4cb9b`; ethereum `0x695d74...68de3a`; ethereum `0x75c991...b7bf5b`; ethereum `0x9627ed...236014`; ethereum `0xabc0fd...67df0e`; ethereum `0xba6839...270317`; ethereum `0xc223ea...8cc210`; ethereum `0xe5b4ff...49f8af`; ethereum `0xe62a03...fcab36`; ethereum `0xecb36d...90243a`; ethereum `0xeda1e6...78c0a4`; ethereum `0xeeddc5...fe7d10`; ethereum `0xfdb898...f1b526`; ethereum `0xfdd67a...8e731f` | ⚠️ Unaudited |
| ContextManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1a8404...2decc4`; ethereum `0x9a5b39...9a9850`; ethereum `0xea0b11...607815` | ⚠️ Unaudited |
| ContractAddresses | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x32d9e8...60bd62`; ethereum `0x923ab4...7ef9c4`; ethereum `0xa694c0...678f32`; ethereum `0xaa5ea9...307d02` | ⚠️ Unaudited |
| ContractRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dbc09...b214bd` | ⚠️ Unaudited |
| ControllerContract | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7c33ab...c9cb99`; ethereum `0xed9273...d4c774` | ⚠️ Unaudited |
| CoqnetHardwareRental | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x7a212f...b9a6dc`; avalanche `0x8a2de3...9ac366` | ⚠️ Unaudited |
| CrossAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 90 deployments: ethereum `0x007274...3ff43d`; ethereum `0x02dd5b...9528d7`; ethereum `0x04a566...d0cf1c`; ethereum `0x0a7b3d...1544e4`; ethereum `0x0bfb5f...de52c2`; ethereum `0x0c27d5...d4a29f`; ethereum `0x0c5ec7...3404ce`; ethereum `0x1aa4b1...30fd7d`; ethereum `0x1bb5d7...a713ca`; ethereum `0x1df4f5...525496`; ethereum `0x1e87e5...326ebf`; ethereum `0x205934...44422c`; ethereum `0x26bda7...275a07`; ethereum `0x2a0cda...66c5dd`; ethereum `0x2b23b4...9a8205`; ethereum `0x301a93...c04685`; ethereum `0x30f7eb...746e3e`; ethereum `0x33141f...9ebb74`; ethereum `0x3981e3...7037a9`; ethereum `0x3ecfac...9df903`; ethereum `0x3ef9cd...1b0b4e`; ethereum `0x3fbff9...437637`; ethereum `0x438d3b...7f25fe`; ethereum `0x445102...f2ab70`; ethereum `0x4add41...6581b7`; ethereum `0x4c00c5...0f1c59`; ethereum `0x4c2a73...fd7499`; ethereum `0x4f1bb8...d3271e`; ethereum `0x509ab7...a899d1`; ethereum `0x5412ed...d87d57`; ethereum `0x5454c1...26c7f3`; ethereum `0x5520ec...a5865f`; ethereum `0x5601a6...d5230e`; ethereum `0x575232...894a85`; ethereum `0x5bc213...39fb3d`; ethereum `0x5d16d2...687d5a`; ethereum `0x5ed265...7c6299`; ethereum `0x5ffc9c...5e2f06`; ethereum `0x62fd67...976ded`; ethereum `0x6653f1...6fa21b`; ethereum `0x66af61...67ca91`; ethereum `0x6a7c5b...7a72af`; ethereum `0x6c68d8...f02f10`; ethereum `0x6fa8e7...58c957`; ethereum `0x7185a1...ffd024`; ethereum `0x73bddd...49ebe9`; ethereum `0x77ab13...d14220`; ethereum `0x7cebec...20dd10`; ethereum `0x7f12be...a53fc5`; ethereum `0x7f2e2a...564e82`; ethereum `0x833ab7...acc25c`; ethereum `0x83a27c...fbf440`; ethereum `0x85a8d8...f3d201`; ethereum `0x871001...dd7444`; ethereum `0x8ce524...59beff`; ethereum `0x8f3586...40ebe2`; ethereum `0x9046a3...3f522c`; ethereum `0x92587b...59af90`; ethereum `0x93de27...b12d20`; ethereum `0x951bcd...432928`; ethereum `0x98184f...bee902`; ethereum `0x9c3282...5c66ec`; ethereum `0x9d927d...f854d2`; ethereum `0xa0a951...f1edd7`; ethereum `0xa4496d...e17ce8`; ethereum `0xa9d733...8c62be`; ethereum `0xa9e18e...7f6128`; ethereum `0xaa9215...af2b0c`; ethereum `0xae9ece...c91205`; ethereum `0xafdb48...e0c127`; ethereum `0xbc3bf0...23d6b1`; ethereum `0xbe3735...8611de`; ethereum `0xc4406e...e64c6b`; ethereum `0xc667d2...1cb2ed`; ethereum `0xc9775f...d28b2a`; ethereum `0xcab67d...2e68f4`; ethereum `0xd3e5ef...326c84`; ethereum `0xd92742...17a3a1`; ethereum `0xdacb0d...6c227f`; ethereum `0xdc149e...27beab`; ethereum `0xdf12b8...748f5e`; ethereum `0xe4e191...a4dc93`; ethereum `0xe56d93...56d2bd`; ethereum `0xe7a32e...58ec27`; ethereum `0xe8b751...4a5bf3`; ethereum `0xe8d293...572812`; ethereum `0xea876b...16ac23`; ethereum `0xeb3ed6...68c4ec`; ethereum `0xf8147c...fe2058`; ethereum `0xf8e463...6e6e9e` | ⚠️ Unaudited |
| CumulativeMerkleDrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x342f0d...739d75` | ⚠️ Unaudited |
| CurveStableswapNGSingleSideSupplyFuse | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcb0b6...18293a` | ⚠️ Unaudited |
| DaoCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0eec86...22af4e`; ethereum `0x472dd0...75d185` | ⚠️ Unaudited |
| DepositManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2a41d5...92ea28`; ethereum `0x38956b...8d80a7`; ethereum `0xb987fa...370df6` | ⚠️ Unaudited |
| DepositManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5e6342...9a4889` | ⚠️ Unaudited |
| DepositManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb3d9cf...5b8f39`; ethereum `0xeee620...f4524b` | ⚠️ Unaudited |
| DistributeFees | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0xf7fff8...8454ad`; linea `0xfa638e...45c469` | ⚠️ Unaudited |
| DistributionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x373114...adb24b`; ethereum `0xa60677...03260f` | ⚠️ Unaudited |
| DistributionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x75cc0c...11e36a` | ⚠️ Unaudited |
| DogWifTrainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e3751...85f63d` | ⚠️ Unaudited |
| Drip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0c140d...dc01a5`; ethereum `0x455960...04335a`; ethereum `0x4d7017...d3466a`; ethereum `0x6b7239...5e6bbd`; ethereum `0x904de7...814a4b`; linea `0xd3fd41...4f1cd3` | ⚠️ Unaudited |
| Drip | unknown | project_anchor | own_supporting | 0 | bsc | unit-259843 | `0x56aa6d...bae8ef` | ⚠️ Unaudited |
| DToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x03601e...6975d7`; ethereum `0x169fcd...99be8c`; ethereum `0x29dadd...bbff79`; ethereum `0x6e0f1a...153b2c`; ethereum `0xc293f2...64a4c6`; ethereum `0xe374b7...2924e5` | ⚠️ Unaudited |
| DualCrossReferencePriceFeedFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x78f46f...5a4357`; ethereum `0x8b94c1...d0b303` | ⚠️ Unaudited |
| EbisuAdjustInterestRateFuse | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf82a57...6c67f9` | ⚠️ Unaudited |
| EbisuAdjustTroveFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe30b07...7cc9e8` | ⚠️ Unaudited |
| EbisuWethEthAdapterAddressReader | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe88ed7...b53451` | ⚠️ Unaudited |
| EbisuZapperBalanceFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3a7f1...eefb33` | ⚠️ Unaudited |
| EbisuZapperCreateFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1aba47...37069e`; ethereum `0x586a81...2551f4` | ⚠️ Unaudited |
| EbisuZapperLeverModifyFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3babe...836102` | ⚠️ Unaudited |
| EdgeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66f616...09927a` | ⚠️ Unaudited |
| EdgeFactoryPerspective | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9ffeb...a66309` | ⚠️ Unaudited |
| EigenLayerManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc94cff...6d0936` | ⚠️ Unaudited |
| EigenStrategyManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7390cd...5701e5` | ⚠️ Unaudited |
| EigenStrategyManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x92d904...5a68fc` | ⚠️ Unaudited |
| EigenStrategyManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb1c635...36e94d` | ⚠️ Unaudited |
| EmissionsToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaaab9d...081c6b` | ⚠️ Unaudited |
| EpochController | governance | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x62fc3b...6f0822`; linea `0xd8a570...f8a9b9` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 3 | avalanche | n/a | 4 deployments: avalanche `0x0d8db5...e18a15`; avalanche `0x2542d3...9a2521`; avalanche `0x31e9a8...d21d4e`; avalanche `0x85d148...05c927` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x143ddb...b4562c`; avalanche `0x5974d0...1be4a8` | ⚠️ Unaudited |
| Erc4626BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x10e2c2...cdb336`; ethereum `0x1469e4...512ee8`; ethereum `0x19e332...6e7906`; ethereum `0x2c10c3...c75d5e`; ethereum `0x2e3266...79e7dd`; ethereum `0x318dc5...0c2edf`; ethereum `0x32971e...ecf8e7`; ethereum `0x560c83...7772f0`; ethereum `0x5d4474...2b9a9a`; ethereum `0x806b55...23fb94`; ethereum `0x8c8f2a...ce78af`; ethereum `0x933bff...f8749b`; ethereum `0xa0777a...0e0cee`; ethereum `0xa72f83...ee92cf`; ethereum `0xcb6bb5...ba6566`; ethereum `0xe1fd88...a9a7f3`; ethereum `0xf3d20c...27bf11`; ethereum `0xf9a1f7...1308fe` | ⚠️ Unaudited |
| ERC4626PriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c3f08...922d93`; ethereum `0xdbffc3...7f89b3` | ⚠️ Unaudited |
| ERC4626PriceFeedFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe08aff...d1aa61`; ethereum `0xf58fcc...0c0fdc` | ⚠️ Unaudited |
| Erc4626SupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x01d4fa...d45cdf`; ethereum `0x06b53a...a5d3b2`; ethereum `0x12fd0e...515870`; ethereum `0x361baf...1c9434`; ethereum `0x53ecc2...c81a6b`; ethereum `0x59e58d...d38f89`; ethereum `0x5e58d1...fa6a88`; ethereum `0x62679b...2649e8`; ethereum `0x6b9489...7bfb90`; ethereum `0x83be46...e4e754`; ethereum `0x87e3b7...cd590b`; ethereum `0x95acdf...35485d`; ethereum `0x970b4f...836dfd`; ethereum `0xbd8a19...47ca9f`; ethereum `0xd6fa88...43b783`; ethereum `0xe49207...80b4ae`; ethereum `0xf16119...73d8e3`; ethereum `0xf492e2...7bf5e7` | ⚠️ Unaudited |
| ERC4626ZapIn | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9af838...76dac3` | ⚠️ Unaudited |
| ERC4626ZapInWithNativeToken | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x677251...d89c00` | ⚠️ Unaudited |
| EscrowDelegateCheckpoints | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x17a785...9d43d9`; linea `0x5310a5...541e27`; linea `0x73aebf...429bcf`; linea `0xa61538...f0c249` | ⚠️ Unaudited |
| EscrowedCollateralPerspective | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc68cb3...cd5828` | ⚠️ Unaudited |
| EscrowPerspective | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x91f046...ead0c5`; ethereum `0xf0e1db...74dded` | ⚠️ Unaudited |
| EthereumVaultConnector | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0c9a3d...9ee383` | ⚠️ Unaudited |
| EthPlusPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd529f4...580199` | ⚠️ Unaudited |
| EToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x090c75...0d56cf`; ethereum `0x1245f0...eafbdb`; ethereum `0x196fdd...d33cb8`; ethereum `0x75e82d...ddc1e0`; ethereum `0xbb0d4b...1f4c0a`; ethereum `0xee385a...33abab`; ethereum `0xf376cf...42bcfc` | ⚠️ Unaudited |
| Eul | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9fcd9...aae07b` | ⚠️ Unaudited |
| EulDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd524e2...87a7e2` | ⚠️ Unaudited |
| EulDistributorOwner | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e3204...c05b5d` | ⚠️ Unaudited |
| EulerBasePerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4df63d...318c39` | ⚠️ Unaudited |
| EulerClaims | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4ddce4...865f84`; ethereum `0xb4efe9...fe865f`; ethereum `0xbc8021...4cf026` | ⚠️ Unaudited |
| EulerEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x253453...a4daab`; ethereum `0xba4214...043da9` | ⚠️ Unaudited |
| EulerEarnFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9a20d3...1e3427`; ethereum `0xa36d0b...07ff2d` | ⚠️ Unaudited |
| EulerEarnFactoryPerspective | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc09be1...098b52` | ⚠️ Unaudited |
| EulerEarnVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x02122a...2dbd05`; ethereum `0x264bad...44e27c`; ethereum `0xfd78c8...56cded` | ⚠️ Unaudited |
| EulerEarnVaultLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd180...502fdd` | ⚠️ Unaudited |
| EulerFactoryPerspective | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x866708...d4a74f`; ethereum `0xe6beaa...e17f54` | ⚠️ Unaudited |
| EulerGeneralView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacc25c...e68e42` | ⚠️ Unaudited |
| EulerKinkIRMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa065ca...a6f5fd`; ethereum `0xcae0a3...34c9f9` | ⚠️ Unaudited |
| EulerRouterFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70b3f6...72326a` | ⚠️ Unaudited |
| EulerSimpleLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d41d...20b38e` | ⚠️ Unaudited |
| EulerSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x05d6c4...ea92ee`; ethereum `0xc35a0f...d6b117`; ethereum `0xf5d355...ce33d1` | ⚠️ Unaudited |
| EulerSwapFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x806af3...4b1211`; ethereum `0xb013be...2cf228`; ethereum `0xfb9fe6...10cad4` | ⚠️ Unaudited |
| EulerSwapPeriphery | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x208ff5...d16b06`; ethereum `0x52b26d...c5ed74`; ethereum `0xbaa3ac...c89e3a` | ⚠️ Unaudited |
| EulerUngovernedPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x000d8a...b05875`; ethereum `0x2206c3...f0710b`; ethereum `0x534556...cd60bd`; ethereum `0x60fcc0...7955ee`; ethereum `0x7695a3...17351c`; ethereum `0xd9dec3...f52646` | ⚠️ Unaudited |
| EulerV2BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa60785...eeacdc`; ethereum `0xae9a37...7baabd` | ⚠️ Unaudited |
| EulerV2BatchFuse | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f3bf...7dda6f` | ⚠️ Unaudited |
| EulerV2BorrowFuse | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x20c782...9e32c2`; ethereum `0x6b339a...f7f2f6` | ⚠️ Unaudited |
| EulerV2CollateralFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x07d809...e36514`; ethereum `0xf58d96...672618` | ⚠️ Unaudited |
| EulerV2ControllerFuse | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4bfea0...ca9b55`; ethereum `0x4dca6f...ec6c25` | ⚠️ Unaudited |
| EulerV2SupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x225d3e...7e7bf0`; ethereum `0x9425cc...57f217`; ethereum `0xdd33b4...6fd5b5` | ⚠️ Unaudited |
| EulStakes | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc697bb...716cd3` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x29a56a...45cc8e` | ⚠️ Unaudited |
| EVKFactoryPerspective | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb30f23...82e182` | ⚠️ Unaudited |
| ExchangeRateValidatorPreHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef23ea...706199` | ⚠️ Unaudited |
| Exec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0bf049...3bb44d`; ethereum `0x14cbac...8436d2`; ethereum `0x155020...cac8c1` | ⚠️ Unaudited |
| Extractor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x05df5b...973377`; ethereum `0x156242...e462b9`; ethereum `0x70a2dc...ca5df0`; ethereum `0xcc560e...ff6a8c` | ⚠️ Unaudited |
| EzRVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x77b118...368f60` | ⚠️ Unaudited |
| FactoryGovernor | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2f1325...dc1f3d`; ethereum `0x799e9b...42a224` | ⚠️ Unaudited |
| Fee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0009a4...46a0c9`; ethereum `0x42aeb7...ffbe13` | ⚠️ Unaudited |
| FeeFlowController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcd3db...0d1e32` | ⚠️ Unaudited |
| FeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2bb5ca...3a4391`; ethereum `0x6951d7...1baa20`; ethereum `0xbde68f...4e2255` | ⚠️ Unaudited |
| FeeManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x061d41...c88985`; ethereum `0x587a7a...b76aef`; ethereum `0xe8c0f9...3c1bc7` | ⚠️ Unaudited |
| FixedAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a94e4...7c4539` | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x14c855...759a05`; ethereum `0x16a18a...1fa5d4`; ethereum `0x16a876...ade027`; ethereum `0x242ed4...a0f9b0`; ethereum `0x256f8f...e20ac6`; ethereum `0x2be3c0...e1414a`; ethereum `0x3ba9dc...07114d`; ethereum `0x4c631c...bb4b17`; ethereum `0x4fd36c...84f893`; ethereum `0x56f31b...3f9cbc`; ethereum `0x5c7943...622881`; ethereum `0x62357f...d2aa6e`; ethereum `0x6a8e56...d0cd77`; ethereum `0x6c34c9...bb591d`; ethereum `0x6fac9c...bab5be`; ethereum `0x7e6d49...d6a1fc`; ethereum `0x80876b...c580dd`; ethereum `0x810e3c...747a90`; ethereum `0x83e069...4f7a61`; ethereum `0xc49988...64d637`; ethereum `0xceaef9...c77e3a`; ethereum `0xcf4124...378631`; ethereum `0xe46bfb...947d21` | ⚠️ Unaudited |
| FlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07df2a...8259b3` | ⚠️ Unaudited |
| FlexStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf151b8...e29153` | ⚠️ Unaudited |
| FlexStrategyDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f275b...d36938` | ⚠️ Unaudited |
| FlowsService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3486d...e665ac` | ⚠️ Unaudited |
| FluidInstadappClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59da0c...788c25` | ⚠️ Unaudited |
| FluidInstadappStakingBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9d0e2...a16aba` | ⚠️ Unaudited |
| FluidInstadappStakingSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa61324...1d590f` | ⚠️ Unaudited |
| FluidProofClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ade0...558fe0` | ⚠️ Unaudited |
| FusionFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x034947...cf88a8`; ethereum `0x08732e...21d497`; ethereum `0x930434...d41367`; ethereum `0xba84b0...aabe08`; ethereum `0xd48d95...5d5e0d` | ⚠️ Unaudited |
| FusionFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcd0590...d9b852` | ⚠️ Unaudited |
| GaugeFactoryV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x8418f2...1454b6`; linea `0xb94404...41948e` | ⚠️ Unaudited |
| GaugeFactoryV2_CL | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x7b555a...ee1f2e`; linea `0xc04d35...2783ee` | ⚠️ Unaudited |
| GaugeV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7a34d6...5d49de` | ⚠️ Unaudited |
| GaugeV2_CL | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x88f8b3...37daf9` | ⚠️ Unaudited |
| GearboxV3FarmBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe88982...0b45f2` | ⚠️ Unaudited |
| GearboxV3FarmDTokenClaimFuse | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf710b1...e67072` | ⚠️ Unaudited |
| GearboxV3FarmSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6016a...61c34e` | ⚠️ Unaudited |
| GEGGSINCUBATOR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa2cee...6b1c4f` | ⚠️ Unaudited |
| GGAVAXPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x358283...af8020` | ⚠️ Unaudited |
| GGAVAXRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1bb74e...9a0a7f` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x1fee19...368216` | ⚠️ Unaudited |
| GoGoGasStation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x27ce13...f62b7e`; avalanche `0x52950f...8f7bd2` | ⚠️ Unaudited |
| GovernableWhitelistPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x232f49...eb9399`; ethereum `0x3f323e...77f418` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x04cb46...5adfde`; ethereum `0x554ee3...812f73`; ethereum `0xe83b69...91a1cf` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8ff1c8...29dd7d`; ethereum `0xa61f50...5f0b67` | ⚠️ Unaudited |
| GovernedPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x747a72...05165e`; ethereum `0xc01218...6e6eb2`; ethereum `0xd39452...29ce96` | ⚠️ Unaudited |
| GovernorAccessControlEmergency | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088756...a63153` | ⚠️ Unaudited |
| GuessGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58d7d6...27a67c` | ⚠️ Unaudited |
| HarvestDoHardWorkFuse | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda45fe...b43e50` | ⚠️ Unaudited |
| Harvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ff11...21a538` | ⚠️ Unaudited |
| Hooks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x32737a...978ba3`; ethereum `0xd62665...571d82` | ⚠️ Unaudited |
| IdleTranchesOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc15ec...427c62` | ⚠️ Unaudited |
| Initialize | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dd834...e84f3c` | ⚠️ Unaudited |
| Installer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec29b4...7edab5` | ⚠️ Unaudited |
| InterestRateDataResolver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x69a753...708909`; ethereum `0xa8d5df...982cc6` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e9e7e...a5fd44` | ⚠️ Unaudited |
| IporFusionAccessManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 30 deployments: ethereum `0x1dc356...79ae8a`; ethereum `0x3df9d7...9eabae`; ethereum `0x428691...c6d585`; ethereum `0x49cced...527c06`; ethereum `0x4f9a58...2e256e`; ethereum `0x56e767...b4af56`; ethereum `0x57d771...ba6508`; ethereum `0x6857b2...66e0c7`; ethereum `0x69c121...1d5532`; ethereum `0x7c20c9...28cc6c`; ethereum `0x818912...7df7aa`; ethereum `0x82d3d0...52196c`; ethereum `0x85fd76...72325e`; ethereum `0x8bff06...1c654d`; ethereum `0x922350...eb1d42`; ethereum `0x956d09...ba8f4b`; ethereum `0x962661...20256d`; ethereum `0xae92a0...2ac544`; ethereum `0xb2d9f7...df8a05`; ethereum `0xb46dca...c1f434`; ethereum `0xb7394c...75be04`; ethereum `0xc025ec...d545df`; ethereum `0xcee55b...207a97`; ethereum `0xd1813b...2033a6`; ethereum `0xd887ea...eac106`; ethereum `0xdcf1ec...dd2e46`; ethereum `0xdd15eb...d192a9`; ethereum `0xe593cf...0050ba`; ethereum `0xfb1506...ccce9a`; ethereum `0xfe2242...ea07b5` | ⚠️ Unaudited |
| IporOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x20a5d2...b2cdd7`; ethereum `0x7ff633...b1091c`; ethereum `0x9c2a4e...51d64c`; ethereum `0xbed8a5...6d8562`; ethereum `0xcea315...c58f54`; ethereum `0xe76a43...069906` | ⚠️ Unaudited |
| IporOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x421c69...8a6876`; ethereum `0xcf7124...d71221` | ⚠️ Unaudited |
| IporOracleFacadeDataProvider | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x161c5f...c11df0`; ethereum `0x7ebc09...f1b1b6` | ⚠️ Unaudited |
| IporProtocolRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x114f33...130132`; ethereum `0x1c26ab...37a28d`; ethereum `0x38a409...daaee2`; ethereum `0x47f13d...4635d9`; ethereum `0x695264...7d214c`; ethereum `0xc17548...82b838`; ethereum `0xf4d002...1cffbd`; ethereum `0xf9f580...eec3de` | ⚠️ Unaudited |
| IporProtocolRouterEthereum | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x16d104...3c26fd`; ethereum `0xcc735c...9461d6` | ⚠️ Unaudited |
| IporRiskManagementOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa5f814...736af7`; ethereum `0xfb22c1...1d11b8` | ⚠️ Unaudited |
| IporToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e4746...289090` | ⚠️ Unaudited |
| IporWeighted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x229253...518fbc`; ethereum `0x32d8d5...65ff49`; ethereum `0x53b4c5...b288d9`; ethereum `0xb00c99...9efe34`; ethereum `0xba610f...edcc7a`; ethereum `0xed21f0...44a81d` | ⚠️ Unaudited |
| IporWeighted | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8712a2...5669bb`; ethereum `0x9d4bd8...e85140` | ⚠️ Unaudited |
| IpToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9ac509...fda4cb`; ethereum `0xac5b04...166125`; ethereum `0xc40431...0c1f0c` | ⚠️ Unaudited |
| IpTokenDai | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8537b1...dadaf8` | ⚠️ Unaudited |
| IpTokenUsdt | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7c0e72...621a88`; ethereum `0x9bd217...e1edc6` | ⚠️ Unaudited |
| IRMClassMajor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd75870...38572b` | ⚠️ Unaudited |
| IRMClassMega | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x894c74...08de2d` | ⚠️ Unaudited |
| IRMClassMidCap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf058fe...107318` | ⚠️ Unaudited |
| IRMClassOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e8f6...959bef` | ⚠️ Unaudited |
| IRMClassStable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42ec0e...e9ee89` | ⚠️ Unaudited |
| IRMClassUSDT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd310b...0cf8ea` | ⚠️ Unaudited |
| IRMDefault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680049...dd38f7` | ⚠️ Unaudited |
| IRMLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0a6bf6...8e7743`; ethereum `0x97fcaa...c3f4c8` | ⚠️ Unaudited |
| IvTokenDai | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf93e0e...009b26` | ⚠️ Unaudited |
| IvTokenUsdt | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe176f8...52a95c`; ethereum `0xe966d1...e19048` | ⚠️ Unaudited |
| JosephDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x086d4d...b65045`; ethereum `0x7cd10f...be5d04` | ⚠️ Unaudited |
| JosephDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6f18b9...00787d`; ethereum `0x9cb5e8...d3cfd8` | ⚠️ Unaudited |
| JosephUsdt | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x33c5a4...4324ac`; ethereum `0x8ae47c...1c319b` | ⚠️ Unaudited |
| JosephUsdt | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x470c3a...baa37f`; ethereum `0xc52569...133277` | ⚠️ Unaudited |
| JosephUsdt | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd29f9b...9fc1b0` | ⚠️ Unaudited |
| KimboCollege | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e6b2a...f4590c` | ⚠️ Unaudited |
| KimboTrainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaeb261...a06e22` | ⚠️ Unaudited |
| L1Contracts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x51e22a...9b8003`; ethereum `0xeb233e...732dff` | ⚠️ Unaudited |
| LevvaAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3f64a...27697e` | ⚠️ Unaudited |
| LevvaAirdropV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x44eb44...818f73`; ethereum `0x6329d4...62cbe7`; ethereum `0xadb221...f6b2d4` | ⚠️ Unaudited |
| LevvaPoolAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x02b50e...e6e66b`; ethereum `0x0721fa...0de54d`; ethereum `0x0d66f2...87b0ff`; ethereum `0x10cc5e...144696`; ethereum `0x1b5b05...2b9cb5`; ethereum `0x75eb30...6db7f3`; ethereum `0x7cd87c...7f8c1b`; ethereum `0xa02f9a...ad7559`; ethereum `0xef55d7...ffb655`; ethereum `0xf9e6ba...21baea` | ⚠️ Unaudited |
| LevvaToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x624355...abfc76`; ethereum `0xac3a8f...2653b6` | ⚠️ Unaudited |
| LevvaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9b36e0...3e55e2`; ethereum `0xbc0c3d...a1dfc5`; ethereum `0xf0f560...68f182` | ⚠️ Unaudited |
| LevvaVaultAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86baa9...b1b16d` | ⚠️ Unaudited |
| LevvaVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x10f9cf...78c180`; ethereum `0xb97b62...b610f4` | ⚠️ Unaudited |
| LevvaVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3e104b...f99559`; ethereum `0x7feb51...207de0` | ⚠️ Unaudited |
| LevvaVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb540e3...619b00`; ethereum `0xe73b54...d38fd0` | ⚠️ Unaudited |
| Liquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x16fa62...2ad23c`; ethereum `0x9ea85b...9f156c`; ethereum `0xaed37a...19493e`; ethereum `0xd737ee...45ed98` | ⚠️ Unaudited |
| LiquidationHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58f6a7...1ca85d` | ⚠️ Unaudited |
| LiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x22363b...b9466d`; ethereum `0x32ab94...abeae3`; ethereum `0x758e7d...621a7e`; ethereum `0xac0dcb...ab644e`; ethereum `0xe00834...0efc02`; ethereum `0xfa556d...f51b1c` | ⚠️ Unaudited |
| LiquidityMiningEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a06ec...c45edc`; ethereum `0xcc3fc4...0ff366` | ⚠️ Unaudited |
| LiquidityMiningEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0984f...5ff846` | ⚠️ Unaudited |
| LiquidityMiningLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x769d54...b39e98` | ⚠️ Unaudited |
| LiquityBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71339...9daa97` | ⚠️ Unaudited |
| LSDRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x31500e...38f767`; ethereum `0xc5ba40...e2d214` | ⚠️ Unaudited |
| LSDRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x345f73...9f5b18`; ethereum `0x3e30b4...4ea070` | ⚠️ Unaudited |
| LSDRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xaedc83...5bba01`; ethereum `0xb658cf...9f20d9` | ⚠️ Unaudited |
| LSDWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7c31a9...89074d`; ethereum `0x99db76...1d6992` | ⚠️ Unaudited |
| LynexKeys | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x86751c...d3d7ed` | ⚠️ Unaudited |
| MainnetActors | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x447aad...d669c5`; ethereum `0x51ad86...401bc3`; ethereum `0x71635d...80393c`; ethereum `0xba4cc4...eb64fb`; ethereum `0xd9e79b...0adfa2`; ethereum `0xdd6f2c...7a9d0d` | ⚠️ Unaudited |
| MarginlyAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3431bf...29ef3c` | ⚠️ Unaudited |
| Markets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x12401f...b41477`; ethereum `0x1e21ca...7f7fce`; ethereum `0xe5d0a7...ba2cd1` | ⚠️ Unaudited |
| MaxVaultViewer | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0f2b81...bea74e`; ethereum `0xeed274...9e5c81` | ⚠️ Unaudited |
| MeanFinanceDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23e4a1...8eec59` | ⚠️ Unaudited |
| MerklClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47aca4...b4bbcc` | ⚠️ Unaudited |
| MerkleTreeKey | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa1ea0e...71a3bc` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0bb275...f5046a`; ethereum `0x1e2aaa...9f5741`; ethereum `0xb5e457...4ef9e0` | ⚠️ Unaudited |
| MidasBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1bfb9e...22e050`; ethereum `0x8193ca...c96eb2` | ⚠️ Unaudited |
| MidasRequestSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1b66a7...209a3c`; ethereum `0x45209c...bdcab8` | ⚠️ Unaudited |
| MidasSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x99bc01...bec386`; ethereum `0x9aa21e...ba6db1` | ⚠️ Unaudited |
| Migrations | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x85b23b...2cbe74`; ethereum `0xb56e99...253c2c` | ⚠️ Unaudited |
| MiltonDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x16d236...4dd42e`; ethereum `0x1fbd08...0ff864`; ethereum `0x22d87b...e9a4d6`; ethereum `0x7a9990...00073a`; ethereum `0x9def0a...1143c7`; ethereum `0xb1cee7...8fea67`; ethereum `0xb6a547...ac11f2`; ethereum `0xbf71dd...ce79d5`; ethereum `0xcd7e5e...bc03be`; ethereum `0xf5f62c...03b5ce` | ⚠️ Unaudited |
| MiltonFacadeDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7520c9...25015b`; ethereum `0xd5ef0d...5b236c` | ⚠️ Unaudited |
| MiltonSpreadModelDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9cf78e...68c5d9`; ethereum `0xfb2ee9...e95318` | ⚠️ Unaudited |
| MiltonSpreadModelUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a8998...5600ac`; ethereum `0x6bcb29...245467` | ⚠️ Unaudited |
| MiltonSpreadModelUsdt | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3eea8a...5eca9e`; ethereum `0x49f282...a3a8b0`; ethereum `0xd49b20...4efdc8`; ethereum `0xedaaf1...beac3d` | ⚠️ Unaudited |
| MiltonStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5f4829...94c1d2`; ethereum `0x644149...831069` | ⚠️ Unaudited |
| MiltonUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x371f6e...159d29`; ethereum `0x6a259c...e7eb48`; ethereum `0xdb75be...974579` | ⚠️ Unaudited |
| MiltonUsdt | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0d5522...dc59b2`; ethereum `0x473285...a197b0`; ethereum `0x72f856...906283`; ethereum `0x80def4...4fa53e`; ethereum `0x8fcd17...ba8fcb`; ethereum `0xb92635...328b21`; ethereum `0xccadc4...a905e3`; ethereum `0xd15b8f...c53165`; ethereum `0xe37cfe...ef922b`; ethereum `0xe3c67a...099195`; ethereum `0xf739f3...f2c4db` | ⚠️ Unaudited |
| MiningCalculationAccountPowerUp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9a293a...a28458`; ethereum `0xe8e51e...7ea585` | ⚠️ Unaudited |
| MinipoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x9e6579...b280e9`; avalanche `0xb84fa0...d1ed08`; avalanche `0xc300bc...268ee7`; avalanche `0xc8de41...da7037`; avalanche `0xe51262...208dea` | ⚠️ Unaudited |
| MinipoolStreamliner | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x0a75a4...efa430`; avalanche `0x8c05d7...96115c`; avalanche `0xb5f2ed...90e560` | ⚠️ Unaudited |
| MinipoolStreamliner | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x746f2c...c1ecd8`; avalanche `0x752ab1...163ae1` | ⚠️ Unaudited |
| MinipoolStreamlinerV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae1e7b...3ce4b1` | ⚠️ Unaudited |
| MinterUpgradeableV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x9030ae...eb19d4`; linea `0xa996de...903826` | ⚠️ Unaudited |
| MorphoSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08cb6...e6c8df` | ⚠️ Unaudited |
| MultisigManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fff41...1b6a3b` | ⚠️ Unaudited |
| N2MERC721NS | token | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x398f0a...af4749` | ⚠️ Unaudited |
| NFTDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x009c9f...629655` | ⚠️ Unaudited |
| NodeAsAService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3ccef5...7e805a`; avalanche `0xb306c9...b20b04` | ⚠️ Unaudited |
| NodeOperatorRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x46ddc3...1a1a1d`; ethereum `0xea6c9a...e0e68a` | ⚠️ Unaudited |
| NodeOperatorRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x728d1d...5d6977`; ethereum `0x97d8dd...b5beaf`; ethereum `0xf807bc...64e5a8` | ⚠️ Unaudited |
| NodeOperatorRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xaae0b3...a1c524` | ⚠️ Unaudited |
| NOODS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x206336...a869e1`; avalanche `0xffdb03...22da98` | ⚠️ Unaudited |
| NttManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x810055...37f0df`; ethereum `0x9502ad...e7b925` | ⚠️ Unaudited |
| Ocyticus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x9189d1...ea210b`; avalanche `0xffdc3b...ad5542` | ⚠️ Unaudited |
| OdosSwapperFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc13f3f...1cb691` | ⚠️ Unaudited |
| OFTAdapterUpgradeable | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3bf1bd...0fc5b5`; ethereum `0x4d7e09...75a531` | ⚠️ Unaudited |
| OneValuePriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7aa52...0e61cf` | ⚠️ Unaudited |
| OonodzHardwareProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe6ca6...e8fe3e` | ⚠️ Unaudited |
| OptionFeeDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x9190f0...d475e4`; linea `0x9cf90f...828b38` | ⚠️ Unaudited |
| OptionTokenV3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x63349b...400b60` | ⚠️ Unaudited |
| Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30fb91...a16db7` | ⚠️ Unaudited |
| OracleLens | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x0f8560...47bd4f`; ethereum `0x1c4224...fe518e`; ethereum `0x26b1e2...26a867`; ethereum `0x400043...f9dbc4`; ethereum `0x500e76...923d38`; ethereum `0x76e96f...59a766`; ethereum `0x79211f...08fab6`; ethereum `0xc2ca69...7c5703`; ethereum `0xddd1ea...eb0334` | ⚠️ Unaudited |
| OraclePublisher | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x254a66...b505ff`; ethereum `0xa735b8...7dd508` | ⚠️ Unaudited |
| OriginETHAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9b6f39...3acfac`; ethereum `0xc7f296...f8aee6` | ⚠️ Unaudited |
| OriginWithdrawalLib | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x24c870...d48061`; ethereum `0xa68479...4783a4` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x6c8432...7c3665`; linea `0xef599b...16f2cc` | ⚠️ Unaudited |
| PauseFunctionPreHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7846be...984d59` | ⚠️ Unaudited |
| PendleSwapPTFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeea381...d49f95` | ⚠️ Unaudited |
| PermissionsRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc68a70...c45cb8` | ⚠️ Unaudited |
| PitBonus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6666f...5926c9` | ⚠️ Unaudited |
| PlasmaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0552e2...bb6ca8`; ethereum `0x1fdf5d...4d1bad`; ethereum `0x20e934...b9ac44`; ethereum `0x3a58d6...8ef697`; ethereum `0x5904da...032eb2`; ethereum `0x5ddd76...787d88`; ethereum `0x707d81...cb7a80`; ethereum `0x78cc13...7a64fe`; ethereum `0x981a6c...4db5bc`; ethereum `0xae4362...9a573c`; ethereum `0xc1926c...e63b5d`; ethereum `0xfb696d...307541`; ethereum `0xffb090...6b0472` | ⚠️ Unaudited |
| PlasmaVaultBase | core_logic | non_address_book | non_address_book_inventory (excluded) | 10 | ethereum | n/a | 11 deployments: ethereum `0x08dd57...e48ee8`; ethereum `0x29d322...8fafbb`; ethereum `0x3151ce...809d90`; ethereum `0x43a32d...4a1e68`; ethereum `0x64d47d...3a464f`; ethereum `0x6f66b8...6a8c40`; ethereum `0x978141...c7b37b`; ethereum `0x9824dc...878607`; ethereum `0x9dc281...8126d9`; ethereum `0xb4790c...d447ae`; ethereum `0xb530a1...37a3ed` | ⚠️ Unaudited |
| PlasmaVaultBase | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2de732...0171ab`; ethereum `0x394356...49df44` | ⚠️ Unaudited |
| PlasmaVaultBase | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x43ee02...9c7ca2`; ethereum `0x7ef926...6964d2`; ethereum `0xabab98...c18e3e` | ⚠️ Unaudited |
| PlasmaVaultBase | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x842494...7d5062`; ethereum `0xe9385e...b4fb5f` | ⚠️ Unaudited |
| PlasmaVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3bbe70...0da9a8`; ethereum `0x7c9119...3007e2`; ethereum `0xcdc799...edc09c`; ethereum `0xee47a6...7eb9a5` | ⚠️ Unaudited |
| PlasmaVaultRedeemFromRequestFuse | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906af6...53af0d` | ⚠️ Unaudited |
| PlasmaVaultRequestSharesFuse | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x713038...e09542` | ⚠️ Unaudited |
| PowerToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x586ac8...6d49eb`; ethereum `0xf4725f...7f3ab1` | ⚠️ Unaudited |
| PowerToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x78dbf1...84a0f7`; ethereum `0xd72915...95409f` | ⚠️ Unaudited |
| PowerTokenLens | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a4fc8...d21ec3` | ⚠️ Unaudited |
| PRBMathCommon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dea8b...2bdc1b` | ⚠️ Unaudited |
| PRBMathSD59x18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ad0c...ea91f2` | ⚠️ Unaudited |
| PreHooksInfoReader | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ecd96...e19821` | ⚠️ Unaudited |
| PriceManagerFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0fc2d5...b07609`; ethereum `0x6558eb...0ab162`; ethereum `0x7d49c6...e3fe82` | ⚠️ Unaudited |
| PriceOracleMiddleware | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x09321c...024da2`; ethereum `0xb7018c...66f2f7` | ⚠️ Unaudited |
| PriceOracleMiddleware | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf0ff...0385c9` | ⚠️ Unaudited |
| PriceOracleMiddlewareManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x07fc09...062930`; ethereum `0x18fda4...187d5e`; ethereum `0x213bb7...75dc4d`; ethereum `0x3ac655...189b5a`; ethereum `0x45d0e1...74c115`; ethereum `0x4e3c90...83575b`; ethereum `0x654ff3...d776b1`; ethereum `0x6d16b7...4abc02`; ethereum `0x7c6f94...8ec03e`; ethereum `0x80c086...b8c1aa`; ethereum `0x8b1ebe...8029e8`; ethereum `0x962131...90ee87`; ethereum `0x9f6993...dc8548`; ethereum `0xc3eb0c...8d5787`; ethereum `0xcb5ef9...179362` | ⚠️ Unaudited |
| PriceOracleMiddlewareWithRoles | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc9f32d...d664c6`; ethereum `0xeba87a...f9317c` | ⚠️ Unaudited |
| PriceProvidersRepository | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c2ca9...05029f` | ⚠️ Unaudited |
| ProtocolConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cd6bf...13351b` | ⚠️ Unaudited |
| ProtocolDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x41a763...195d0b`; avalanche `0x70fd1a...fd1b65`; avalanche `0xa008cc...8ef546`; avalanche `0xfc3ea3...d8051a` | ⚠️ Unaudited |
| Provider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x5a081b...38d7ff`; ethereum `0x671698...a142b1`; ethereum `0x977ff7...e562d7`; ethereum `0xd5bf05...f3b01d`; ethereum `0xe141be...382d5a`; ethereum `0xeb4dbb...dac508` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x25eaf5...5b8846`; ethereum `0xd750b8...9bfd14`; avalanche `0x5313c3...b247cf`; avalanche `0x6e8fd3...aed940`; avalanche `0x89cf78...b9b64d`; avalanche `0x9484d5...416c71`; avalanche `0xbc5627...e9e190`; avalanche `0xc7fef2...d7a6c6`; avalanche `0xf4c562...1620a9`; linea `0xb15242...407889` | ⚠️ Unaudited |
| ProxyUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x08d8bc...23db89`; ethereum `0x39300e...3bf326`; ethereum `0x7b3922...a95ab9`; ethereum `0xc32ff5...217a63`; ethereum `0xe96221...504903` | ⚠️ Unaudited |
| PtPriceFeedFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1cb493...26007c`; ethereum `0xe2a264...52db9b` | ⚠️ Unaudited |
| PythOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 82 deployments: ethereum `0x0081d8...873193`; ethereum `0x1343a8...60f435`; ethereum `0x162306...9cd1a5`; ethereum `0x1800b0...3c6378`; ethereum `0x1f929d...df86cd`; ethereum `0x218f2c...d3ada1`; ethereum `0x26283c...2bea8c`; ethereum `0x2b4aeb...8089be`; ethereum `0x33243b...599956`; ethereum `0x33aaab...517785`; ethereum `0x350db1...fa8ce6`; ethereum `0x362320...f71286`; ethereum `0x36e2fa...b77aa9`; ethereum `0x37d7c0...2668ad`; ethereum `0x398d64...f20d5e`; ethereum `0x3a7671...4caf7d`; ethereum `0x478ed3...668197`; ethereum `0x499316...fb8f2d`; ethereum `0x4b6547...fbdd52`; ethereum `0x4e33d9...5bf676`; ethereum `0x51130a...af4118`; ethereum `0x5cc2e6...f06a94`; ethereum `0x5e40d3...db785c`; ethereum `0x5e9381...97bd34`; ethereum `0x630fab...675b90`; ethereum `0x658ba5...71d45a`; ethereum `0x65d798...e930a7`; ethereum `0x6647fb...88e17b`; ethereum `0x680922...3adf8a`; ethereum `0x6badd9...0c24bf`; ethereum `0x6d6a3c...6dde0e`; ethereum `0x6eedef...863ec5`; ethereum `0x6f79c2...61ee9d`; ethereum `0x705729...d96806`; ethereum `0x76cdd6...149731`; ethereum `0x76f623...286eec`; ethereum `0x7739a9...8c2c52`; ethereum `0x7ae18f...d41d31`; ethereum `0x7c89d0...2b3d4a`; ethereum `0x7fc56b...52325b`; ethereum `0x83c8e3...86f54b`; ethereum `0x873efb...7cb47a`; ethereum `0x8918d4...72cadb`; ethereum `0x8b55cd...3c3550`; ethereum `0x922d0c...228fe6`; ethereum `0x92b172...bc775e`; ethereum `0x990ec3...7132ef`; ethereum `0x999364...69f345`; ethereum `0xa03a5a...a91455`; ethereum `0xa11bcc...a14628`; ethereum `0xa1e0c3...950b25`; ethereum `0xa2869a...e61dde`; ethereum `0xab81e5...ce2c3f`; ethereum `0xb18f83...e34996`; ethereum `0xb74d67...f7226f`; ethereum `0xbf442e...b7434b`; ethereum `0xc03922...9a190b`; ethereum `0xc05055...b0d4e1`; ethereum `0xc642c4...debb74`; ethereum `0xc93382...badd1c`; ethereum `0xcb89a6...2e7cf9`; ethereum `0xce1b8f...9ee0dc`; ethereum `0xd1f0af...b5b92a`; ethereum `0xd27cac...a90506`; ethereum `0xd327b5...836d3f`; ethereum `0xd648bd...774a88`; ethereum `0xdb69d6...d7ff32`; ethereum `0xdcb7cf...0829e7`; ethereum `0xdcda67...dec3db`; ethereum `0xdf4513...28f680`; ethereum `0xe16e7d...0e3df7`; ethereum `0xe46a0c...5f4471`; ethereum `0xe6bbd4...5bb99a`; ethereum `0xe80918...4e4c08`; ethereum `0xea79ca...5e973f`; ethereum `0xeb059b...e91b88`; ethereum `0xf15936...6e7493`; ethereum `0xf21842...a4e93c`; ethereum `0xf6d8cc...65c987`; ethereum `0xfa6a85...17e2b4`; ethereum `0xfa908c...71873e`; ethereum `0xfd2e26...980a47` | ⚠️ Unaudited |
| RateProviderOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 19 deployments: ethereum `0x013f30...5451b5`; ethereum `0x196446...085c12`; ethereum `0x1bdddb...7eb695`; ethereum `0x286b8d...ce80e7`; ethereum `0x28b991...150a75`; ethereum `0x2e5c0b...734d6d`; ethereum `0x2fe6b2...fadfbc`; ethereum `0x517cb6...55a6c6`; ethereum `0x804c4f...48d875`; ethereum `0x80f9b6...dd8940`; ethereum `0x932fdc...bbf266`; ethereum `0x95545a...2f2045`; ethereum `0x99826e...16341e`; ethereum `0xab21f4...093029`; ethereum `0xba8e4e...8324e2`; ethereum `0xc09b45...8986b9`; ethereum `0xe6b889...881fd3`; ethereum `0xef1c2f...7e02d2`; ethereum `0xf3dff7...1e2629` | ⚠️ Unaudited |
| RedemptionAssetsVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3f0b27...2515b8`; ethereum `0x493dd4...4840b1`; ethereum `0xc38946...500f39` | ⚠️ Unaudited |
| RedemptionAssetsVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x73bc33...88d55e`; ethereum `0x9892a4...a6f14a` | ⚠️ Unaudited |
| RedstoneCoreOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 127 deployments: ethereum `0x03ed90...472dac`; ethereum `0x0831c0...24f546`; ethereum `0x0c8541...669974`; ethereum `0x0d99c6...ac4e4f`; ethereum `0x105c94...9b0127`; ethereum `0x11d5e4...397910`; ethereum `0x133605...14cb31`; ethereum `0x13e66c...2b7442`; ethereum `0x143063...56efb6`; ethereum `0x157e7e...36f496`; ethereum `0x16805c...454e82`; ethereum `0x19bfe3...199eed`; ethereum `0x1ced44...e26453`; ethereum `0x1e10d2...ffcfe5`; ethereum `0x222fc2...01931d`; ethereum `0x259bce...429085`; ethereum `0x25a766...1950e6`; ethereum `0x281b24...5f3466`; ethereum `0x2a95e7...ad64e5`; ethereum `0x2aa25a...98826e`; ethereum `0x2fa575...8a6cf5`; ethereum `0x31b9f8...f44533`; ethereum `0x31bd69...e43fac`; ethereum `0x32ffe7...38e86a`; ethereum `0x339cd0...ff6b21`; ethereum `0x371f23...5d7aa7`; ethereum `0x37f803...f0271a`; ethereum `0x393244...3bbbfe`; ethereum `0x3c2923...c77e1a`; ethereum `0x3ced8b...1bec1c`; ethereum `0x3d289e...350a80`; ethereum `0x3e520c...723540`; ethereum `0x3f3ba9...5728e8`; ethereum `0x42331b...41cff6`; ethereum `0x425fb2...46748c`; ethereum `0x45be10...41c054`; ethereum `0x4caa7f...812c8d`; ethereum `0x4d75af...81a49c`; ethereum `0x4fdd5f...ceec9d`; ethereum `0x54c679...81e035`; ethereum `0x59727d...b70623`; ethereum `0x5afea5...75bbc5`; ethereum `0x5b2075...d67cc6`; ethereum `0x5b447b...2dc090`; ethereum `0x62fdeb...b11f68`; ethereum `0x63e3cc...b2e0de`; ethereum `0x640434...99d277`; ethereum `0x664add...4e1f80`; ethereum `0x675f80...5bf539`; ethereum `0x691db6...dd8dfc`; ethereum `0x6c58af...da6aa8`; ethereum `0x6d4029...e56fac`; ethereum `0x6e2344...c65aec`; ethereum `0x741bec...3f3217`; ethereum `0x75c142...10af73`; ethereum `0x76f224...68ce8d`; ethereum `0x794395...391d1c`; ethereum `0x7a665a...281dd3`; ethereum `0x7b717b...df8d26`; ethereum `0x7d3eda...8fc88f`; ethereum `0x809e49...c2fa4f`; ethereum `0x80fc12...626d5e`; ethereum `0x81dc4e...61ece3`; ethereum `0x869ff5...d454ee`; ethereum `0x87a058...b54910`; ethereum `0x88143d...ec4fd3`; ethereum `0x8881d3...d00f57`; ethereum `0x8a5a1e...da567b`; ethereum `0x94f418...4cb4ff`; ethereum `0x94f68a...0a8498`; ethereum `0x96a678...24a653`; ethereum `0x9cc836...c2b53d`; ethereum `0x9f169a...f6dfac`; ethereum `0xa17130...e37e96`; ethereum `0xa19050...1a8b90`; ethereum `0xa22392...43158d`; ethereum `0xa5190b...dd2634`; ethereum `0xa60fac...9233d9`; ethereum `0xa664ed...3b1f20`; ethereum `0xa81ce0...715a72`; ethereum `0xabcc3f...2afcba`; ethereum `0xaef108...ff9ab5`; ethereum `0xb2ea64...bc5e76`; ethereum `0xb77d06...50b445`; ethereum `0xb82003...026a97`; ethereum `0xb8673a...ab69b4`; ethereum `0xbc2794...92a0cf`; ethereum `0xc01865...76afe8`; ethereum `0xc44f2f...1229c1`; ethereum `0xc65a85...05a38c`; ethereum `0xc87d51...e9e28e`; ethereum `0xc8b362...fbd7d9`; ethereum `0xc99d3a...f0e452`; ethereum `0xc9dc6c...0ab80f`; ethereum `0xcc6a08...33af67`; ethereum `0xcdf5e4...c7489e`; ethereum `0xce97f1...7b283b`; ethereum `0xcf1a68...7d6a86`; ethereum `0xcff632...248459`; ethereum `0xd06ac2...84d3d3`; ethereum `0xd1d7f9...08715b`; ethereum `0xd39450...63ce4a`; ethereum `0xd405dc...ea1054`; ethereum `0xd4090c...54cd32`; ethereum `0xd5950b...1919b8`; ethereum `0xd7f9c3...8c682f`; ethereum `0xd83b40...f5c462`; ethereum `0xdd14f5...4eb2e1`; ethereum `0xdfe70c...affcbf`; ethereum `0xe00cc9...817d6f`; ethereum `0xe3000f...692459`; ethereum `0xe5cbdd...e2ee2f`; ethereum `0xe60393...b36428`; ethereum `0xe81b50...e98e18`; ethereum `0xe87bab...be85fd`; ethereum `0xeb9ad7...6f9ccd`; ethereum `0xee3662...0d4e52`; ethereum `0xef1a15...ac538b`; ethereum `0xefb8f3...cf6765`; ethereum `0xf344cf...16a5d9`; ethereum `0xf3c1e4...6ef018`; ethereum `0xf4f395...3a1d87`; ethereum `0xf55a1b...54bbc6`; ethereum `0xf86a6f...797e04`; ethereum `0xf86e1e...9d10f1`; ethereum `0xfb9fd4...88826d`; ethereum `0xfde060...d20568` | ⚠️ Unaudited |
| ReferralDepositAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x41e60c...21c3d7`; ethereum `0xd6bba2...68b4a1` | ⚠️ Unaudited |
| ReferralDepositAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x86149f...232e00`; ethereum `0xe8edf9...bd8a37` | ⚠️ Unaudited |
| ReferralPlasmaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x399502...063585` | ⚠️ Unaudited |
| Renzo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b5080...3fa6f9` | ⚠️ Unaudited |
| RepricingOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x289d60...2d2d71`; ethereum `0x3334c0...5a25f7` | ⚠️ Unaudited |
| RepricingOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x351622...11a7f4`; ethereum `0x85befd...25d47a`; ethereum `0xe91302...f5f97e`; ethereum `0xf00e70...c28977` | ⚠️ Unaudited |
| RepricingOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd5a73c...d2e959` | ⚠️ Unaudited |
| ResolvAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812e32...bbc3bb` | ⚠️ Unaudited |
| Reverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0a71c1...76a9e0`; ethereum `0x13d739...7175f0`; ethereum `0x38c061...a2aa38`; ethereum `0x829414...c40b74`; ethereum `0x8de06b...812a3d`; ethereum `0x9102f2...e2dd1f`; ethereum `0xe3033e...f00450`; ethereum `0xf39d8b...028f1a` | ⚠️ Unaudited |
| RewardAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x6dc1df...4f8b41`; linea `0xcd9df6...f6408d` | ⚠️ Unaudited |
| RewardEulerTokenClaimFuse | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa2442...d0866a` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0ee5c5...e2fcec`; ethereum `0xfde7a2...cb265b` | ⚠️ Unaudited |
| RewardsClaimManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 25 deployments: ethereum `0x11cbc3...10367f`; ethereum `0x1f8397...02ded0`; ethereum `0x23c8dc...21cdec`; ethereum `0x2d1a21...af2792`; ethereum `0x3b1dac...b967b1`; ethereum `0x3e9dba...b9c67c`; ethereum `0x4d99e7...3bddb3`; ethereum `0x4de58c...7d3e23`; ethereum `0x536783...7a91a9`; ethereum `0x5a5f43...18aa01`; ethereum `0x5cb733...208a71`; ethereum `0x7a79b5...749aea`; ethereum `0x84c87f...375cb1`; ethereum `0x9beff3...e42051`; ethereum `0xb20e1d...0cd802`; ethereum `0xb401b9...fdc3e2`; ethereum `0xb58423...79a4c8`; ethereum `0xcb1bbc...34f224`; ethereum `0xcd397f...ed6889`; ethereum `0xcdb0a6...8b5821`; ethereum `0xd0e170...937901`; ethereum `0xd6dc84...9a2946`; ethereum `0xda376f...214721`; ethereum `0xf4c6fe...93cdc8`; ethereum `0xf5db3e...d0be61` | ⚠️ Unaudited |
| RewardsDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9839d...610c43` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x306ebe...eb5f72`; ethereum `0x40d5ff...652351` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x77b26a...9d6f99`; ethereum `0xa469cd...74f2ec` | ⚠️ Unaudited |
| RewardsDistributorV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2222c5...910ee4` | ⚠️ Unaudited |
| RewardsManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x274567...c54028`; ethereum `0x5d9f02...c3c71a`; ethereum `0xb03a4f...d6752e` | ⚠️ Unaudited |
| RewardsPool | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa8fd0...7c1b1d` | ⚠️ Unaudited |
| RewardsReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1d6b2a...95c12b`; ethereum `0x863ba8...ff159b` | ⚠️ Unaudited |
| RewardsReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4975e6...7b7dc7`; ethereum `0x5de8c7...29762c` | ⚠️ Unaudited |
| RewardsReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa98e86...b91582`; ethereum `0xe439fe...26536e` | ⚠️ Unaudited |
| RewardsReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd3e7e4...01de56`; ethereum `0xd47b9c...0b17bf` | ⚠️ Unaudited |
| RewardsSweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb94b57...5fbde5` | ⚠️ Unaudited |
| RewardToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5241e3...4464a7`; ethereum `0xf3e621...b4e696` | ⚠️ Unaudited |
| RiskManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x00d54f...0ca69d`; ethereum `0x3297c8...8931a6`; ethereum `0x402c85...2ca376`; ethereum `0x98d7a0...b92ce6`; ethereum `0xad8a5c...2dd652`; ethereum `0xb4d68b...afe2ad` | ⚠️ Unaudited |
| RswETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4796d9...4e2362`; ethereum `0xfae103...afa6c0` | ⚠️ Unaudited |
| RswETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd284a...38785c` | ⚠️ Unaudited |
| RswEXIT | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x58749c...56f064`; ethereum `0xbd6a5e...e06479` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259846 | `0x2e0355...7f25b2` | ⚠️ Unaudited |
| SafeL2 | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x58a916...78e811` | ⚠️ Unaudited |
| SafeL2 | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x58a916...78e811` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb63019...1d3a25` | ⚠️ Unaudited |
| SDaiPriceFeedEthereum | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x974672...70805d` | ⚠️ Unaudited |
| SequenceRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaddd2...106b54` | ⚠️ Unaudited |
| SiloFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d919c...737589` | ⚠️ Unaudited |
| SiloGovernanceToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f8031...8ab1f8` | ⚠️ Unaudited |
| SiloGovernanceTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0c899...fc3248` | ⚠️ Unaudited |
| SiloGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa89163...eeaf61` | ⚠️ Unaudited |
| SiloLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf12c37...8d92ea` | ⚠️ Unaudited |
| SiloLiquidationLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06bed4...2680a4` | ⚠️ Unaudited |
| SiloModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb98bc3...37f1af` | ⚠️ Unaudited |
| SiloRepository | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd998c3...cf309d` | ⚠️ Unaudited |
| SiloRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2374f...322a0c` | ⚠️ Unaudited |
| SiloSnapshotWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce3d2e...b168a4` | ⚠️ Unaudited |
| SiloToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0b2dd...486bb0` | ⚠️ Unaudited |
| SiloV2BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x086aca...17998f` | ⚠️ Unaudited |
| SiloV2BorrowFuse | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d24b8...13005b` | ⚠️ Unaudited |
| SiloV2SupplyBorrowableCollateralFuse | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d5c1...038fb5` | ⚠️ Unaudited |
| SiloV2SupplyNonBorrowableCollateralFuse | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x897d96...defa56` | ⚠️ Unaudited |
| SimpleStakingERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d43a...31d774` | ⚠️ Unaudited |
| SnapshotRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x40fc79...71445f`; ethereum `0x46157b...e61433`; ethereum `0x4a337c...a325dc`; ethereum `0x4e72f8...cfac97`; ethereum `0x546b74...47987c`; ethereum `0x7fa4d5...4521df`; ethereum `0xa084a7...7c5fe6`; ethereum `0xb3b30f...c219ac`; ethereum `0xb8b734...39c94a` | ⚠️ Unaudited |
| SoapIndicatorRebalanceLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x213534...4d7100`; ethereum `0x4c9a6f...64a2b0`; ethereum `0x9cae0d...c2ce95`; ethereum `0xb70a2e...8d99e6`; ethereum `0xb933b5...0cc060`; ethereum `0xea87d3...64e0a1` | ⚠️ Unaudited |
| Spread28Days | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8d531...e8dad5` | ⚠️ Unaudited |
| Spread60Days | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36618c...9a81ab` | ⚠️ Unaudited |
| Spread90Days | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22c1cf...7795d5` | ⚠️ Unaudited |
| SpreadBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x768762...a358fb` | ⚠️ Unaudited |
| SpreadCloseSwapService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x948548...5dcacd` | ⚠️ Unaudited |
| SpreadRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x11cc7a...81ede2`; ethereum `0xac1c86...2338ed` | ⚠️ Unaudited |
| SpreadRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa14eb...0c90a8` | ⚠️ Unaudited |
| SpreadStorageLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb50c61...6c12c6` | ⚠️ Unaudited |
| SpreadStorageService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45336f...f1493e` | ⚠️ Unaudited |
| SQRCATMiner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c3694...e9d1a9` | ⚠️ Unaudited |
| StableswapOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x385287...531b76`; ethereum `0x6d6685...ae6d64`; ethereum `0x825176...1ad869`; ethereum `0x9dcbdd...7f16af` | ⚠️ Unaudited |
| Stake | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259845 | 2 deployments: ethereum `0x194e34...9826c8`; ethereum `0x7c329f...d48825` | ⚠️ Unaudited |
| StakeDaoV2BalanceFuse | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c59d9...1c3816` | ⚠️ Unaudited |
| StakeDaoV2ClaimFuse | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec22c...77defc` | ⚠️ Unaudited |
| StakeDaoV2SupplyFuse | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be6e7...ce3c1e` | ⚠️ Unaudited |
| StakerProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68b12...df17a0` | ⚠️ Unaudited |
| StakerProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe19466...06e8ae` | ⚠️ Unaudited |
| StakeService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x379038...36f6c7`; ethereum `0xf83027...deafea` | ⚠️ Unaudited |
| StakeToken | token | project_anchor | own_supporting | 1 | ethereum | unit-259849 | 2 deployments: ethereum `0x233cbc...73e7fc`; ethereum `0xe2a8cd...375ec5` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x062ab4...9e2e7b`; ethereum `0x24bab6...55f0a6`; ethereum `0x4f8d96...f28f71`; ethereum `0x52055c...8262b0`; ethereum `0x6d1fba...9e230e`; ethereum `0xb08b28...89adb4`; ethereum `0xd348fb...77d975`; ethereum `0xd56320...d1aa3b`; avalanche `0x439776...374a5f`; avalanche `0x9946e6...531d00`; avalanche `0xb6ddbf...26aecb` | ⚠️ Unaudited |
| StakingNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x1a024a...d7f77b`; ethereum `0x1bbcf4...a06402`; ethereum `0x3ee37b...0fbe2b`; ethereum `0x6a28af...fe5942`; ethereum `0x6a786b...6a26e1`; ethereum `0x98fc02...f4ace0`; ethereum `0xa8bd8f...fe929d`; ethereum `0xf8a37f...1d237b` | ⚠️ Unaudited |
| StakingNodesManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x21e86b...0ea06d`; ethereum `0x540af4...43d5c8` | ⚠️ Unaudited |
| StakingNodesManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x33ffb7...100626`; ethereum `0x4b3fb7...40cdb7`; ethereum `0x6de59b...ea224b`; ethereum `0x7e020a...65b4cd`; ethereum `0x956b96...6967e5`; ethereum `0x98d664...a400d5`; ethereum `0xabd3a7...4cc811`; ethereum `0xdbf332...225040` | ⚠️ Unaudited |
| StakingNodesManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8c33a1...59cd7d` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x229443...5bde9e`; ethereum `0x7882f9...90f860`; ethereum `0xe5afe8...74d570` | ⚠️ Unaudited |
| StanleyDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8f0279...13a817`; ethereum `0xadeb2f...3c1872` | ⚠️ Unaudited |
| StanleyDsrDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe945ef...a339e4` | ⚠️ Unaudited |
| StanleyUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb512e3...14114b` | ⚠️ Unaudited |
| StanleyUsdt | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6923e...5903d6` | ⚠️ Unaudited |
| StAvaxWavaxOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x7759c6...cb618d`; avalanche `0xa582a3...bc3a4b` | ⚠️ Unaudited |
| StEthWrapperFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x176f64...e69584`; ethereum `0xab97e4...ea1bad` | ⚠️ Unaudited |
| Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4fe5a6...6e6be8`; ethereum `0xbd29b6...4e2fa3` | ⚠️ Unaudited |
| StrategyAave | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x526d00...f1f62f`; ethereum `0xfa0186...999f8c` | ⚠️ Unaudited |
| StrategyAave | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x58703d...c5127d` | ⚠️ Unaudited |
| StrategyAave | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x77fcae...ba028f` | ⚠️ Unaudited |
| StrategyAave | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc84317...a574c9` | ⚠️ Unaudited |
| StrategyCompound | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x87cef1...9fc774`; ethereum `0xcf7be4...bc7de0` | ⚠️ Unaudited |
| StrategyCompound | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbb8383...a2a5da`; ethereum `0xe4cd9a...9ab5b1` | ⚠️ Unaudited |
| StrategyCompound | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc301ec...83d7df`; ethereum `0xe5257c...82f526` | ⚠️ Unaudited |
| StrategyCompound | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf84450...03d751` | ⚠️ Unaudited |
| StrategyDsrDai | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc26be5...97239c`; ethereum `0xd45763...44d6db` | ⚠️ Unaudited |
| StrategyDsrDai | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceceb6...60ec2d` | ⚠️ Unaudited |
| Stream | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0xcd3f84...650ae6`; bsc `0x54beea...eb54d0`; avalanche `0x67e718...9ba3f0`; linea `0x558996...f01a4c` | ⚠️ Unaudited |
| StreamFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2a3b30...358920`; ethereum `0xf44399...4a6cae` | ⚠️ Unaudited |
| StreamFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc651ce...b68e6b` | ⚠️ Unaudited |
| StreamFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x455960...04335a`; avalanche `0x66fd8d...0d3afd` | ⚠️ Unaudited |
| StreamFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x24452a...99dfbe`; linea `0x63fbed...25fb99` | ⚠️ Unaudited |
| StreamFactoryProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x298d29...b3c120` | ⚠️ Unaudited |
| SubnetHardwareRentalMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x8b85ca...f33d0b`; avalanche `0xf04aa1...f8a9ed` | ⚠️ Unaudited |
| SubnetStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x697d7c...ba2c68`; avalanche `0x9bfade...590819` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x4440a1...1f37af`; ethereum `0xa9b11f...a84c8e`; ethereum `0xe20582...c398f8`; ethereum `0xe96c97...1945dc`; ethereum `0xf40e83...00d8ca` | ⚠️ Unaudited |
| SwapExecutorEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e3654...1bd1c4` | ⚠️ Unaudited |
| SwapExecutorRestricted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a7034...5205e9`; ethereum `0xe092b9...5f1b09` | ⚠️ Unaudited |
| SwapHandler1Inch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32673d...343065` | ⚠️ Unaudited |
| SwapHandlerUniAutoRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd16790...f9d04e` | ⚠️ Unaudited |
| SwapHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc57d9e...b478c8` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2bba09...b728bf`; ethereum `0x7813d9...515c9e`; ethereum `0x9b2583...df276c`; ethereum `0xbf893f...1d5204` | ⚠️ Unaudited |
| SwapperEngine | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf65b0c...6e57d3` | ⚠️ Unaudited |
| SwapVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x84918b...5cbe15`; ethereum `0xae2648...0737c7` | ⚠️ Unaudited |
| swETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2d3b4b...0211a7`; ethereum `0xdda46b...81a72f` | ⚠️ Unaudited |
| swETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xce95ba...affbfc`; ethereum `0xf951e3...7ded78` | ⚠️ Unaudited |
| SwETHProxyOFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c6392...ed7b05` | ⚠️ Unaudited |
| SwETHSY | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa68ca...1875e8` | ⚠️ Unaudited |
| swEXIT | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x02454d...6c8f78`; ethereum `0x48c11b...251663` | ⚠️ Unaudited |
| SWNFTv3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9f6d9...9caf9b` | ⚠️ Unaudited |
| SyrupClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1a6b...41f537` | ⚠️ Unaudited |
| TermsOfUseSigner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ba11a...aadcba` | ⚠️ Unaudited |
| ThePit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x96b905...19d672`; avalanche `0xc9871b...6fa33b` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xba8290...c3073b`; ethereum `0xca2df2...deeed4`; avalanche `0xcd385f...14af41` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x097162...5158f1`; ethereum `0x24590b...65af94`; ethereum `0x3e469b...2edafe`; ethereum `0x4e1ba8...81a8a4`; ethereum `0x5671ae...b772c3`; ethereum `0x617ecc...4b2f70`; ethereum `0x67f1fc...5fcb9d`; ethereum `0x8735dd...96566b`; ethereum `0x8b25ae...deee73`; ethereum `0xbb73f8...1d017a`; ethereum `0xc6ca36...42d46b`; ethereum `0xe1f03b...aa7d22`; ethereum `0xfb034c...07a968`; ethereum `0xfec7e2...62c2bf` | ⚠️ Unaudited |
| TimelockControllerEnumerable | governance | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x7d496d...cc3229`; linea `0xeb1215...5ec953` | ⚠️ Unaudited |
| TimelockControllerUpgradeable | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x24452a...99dfbe`; ethereum `0x63fbed...25fb99` | ⚠️ Unaudited |
| TimelockControllerUpgradeable | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9b496a...6091b4`; ethereum `0xe9a64f...d612b2` | ⚠️ Unaudited |
| TimelockWhitelist | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf515e...bf982c` | ⚠️ Unaudited |
| TokemakAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x446b6d...300af4`; ethereum `0xc59e64...757b56` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a58ae...94973c` | ⚠️ Unaudited |
| TokenBatchTransfer | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cb40...2bb7f1` | ⚠️ Unaudited |
| TokenggAVAX | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x576d98...ca7323`; avalanche `0x84e71c...ceb922`; avalanche `0xd960ce...16e584`; avalanche `0xf80eb4...57843e` | ⚠️ Unaudited |
| TokenggAVAX | token | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xa25eaf...b703e3`; avalanche `0xfad33e...163752` | ⚠️ Unaudited |
| TokenGGP | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69260b...2cd11d` | ⚠️ Unaudited |
| TokenMinter | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0313d8...cf8fa4`; ethereum `0x254163...d82eb2` | ⚠️ Unaudited |
| TokenpstAVAX | token | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6b3775...e5aaf8`; avalanche `0x82e153...79b241` | ⚠️ Unaudited |
| TokensFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e37df...6ad622` | ⚠️ Unaudited |
| TokenStakingNode | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x57e1d0...e236fa`; ethereum `0x7573ee...e16f5c`; ethereum `0xc60268...26f801`; ethereum `0xc82bfd...8d9748` | ⚠️ Unaudited |
| TokenStakingNodesManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x17e77f...8206da`; ethereum `0x81f34d...801b1f` | ⚠️ Unaudited |
| TokenStakingNodesManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x22417e...006310`; ethereum `0x592d1e...4ec647` | ⚠️ Unaudited |
| TokenStakingNodesManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x40edd9...46def4`; ethereum `0xb03146...88243f` | ⚠️ Unaudited |
| TokenStakingNodesManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6b566c...30a0c3` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x49424f...1d5586`; avalanche `0x5d7dcc...a666fd` | ⚠️ Unaudited |
| TrackingRewardStreams | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d52d0...d7f8a3` | ⚠️ Unaudited |
| TradeHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0c0bfb...ed1095` | ⚠️ Unaudited |
| TradingCompetitionRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0aa4a0...05f824`; ethereum `0x3d1438...5623e6` | ⚠️ Unaudited |
| TransceiverStructs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c43ee...5d5676` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 7 deployments: ethereum `0x237bc9...9a1119`; ethereum `0x686620...405dc2`; ethereum `0x8059c1...4d726e`; ethereum `0x97790d...98d0be`; ethereum `0xe7c675...9691b7`; ethereum `0xe7d43a...78a6fa`; ethereum `0xeafbb3...2ddf02` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x514d0a...52f365`; ethereum `0xcb45da...93cfce` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9633ff...15ee84`; ethereum `0xd56c14...56a4dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0146b8...9937af`; avalanche `0x22bafb...a1d073` | ⚠️ Unaudited |
| TreasuryVester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 32 deployments: ethereum `0x01d360...ed8508`; ethereum `0x08605e...72ab53`; ethereum `0x09c897...c92110`; ethereum `0x0bc03a...d9372b`; ethereum `0x174ce3...687639`; ethereum `0x239f61...128bdb`; ethereum `0x25d3a8...28a10c`; ethereum `0x3a6df8...26e8e1`; ethereum `0x44f76e...644b7a`; ethereum `0x48a6e2...0c4cc5`; ethereum `0x4ec034...48a455`; ethereum `0x6e5c82...d07831`; ethereum `0x81b8ae...103dcc`; ethereum `0x83053a...aadcd7`; ethereum `0x85578f...d2813a`; ethereum `0x86c9ec...d56a49`; ethereum `0x895bb5...f17002`; ethereum `0x9bae78...4929bb`; ethereum `0xa1c7dc...42f4da`; ethereum `0xa53890...7abc18`; ethereum `0xa9f316...1b92cc`; ethereum `0xac2c2f...95dcc6`; ethereum `0xb0ba55...4cf0b9`; ethereum `0xbd5fb1...0c1a2b`; ethereum `0xc43de3...dbf79e`; ethereum `0xcfeedb...f87823`; ethereum `0xd6b294...4bc22e`; ethereum `0xe3006d...59cf23`; ethereum `0xe519f3...519c13`; ethereum `0xf2b438...81f276`; ethereum `0xf60c1e...c321e1`; ethereum `0xfcc848...558fec` | ⚠️ Unaudited |
| Turtle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259848 | 2 deployments: ethereum `0x66fd8d...0d3afd`; ethereum `0x67e718...9ba3f0` | ⚠️ Unaudited |
| Turtle | unknown | project_anchor | own_supporting | 1 | bsc | unit-259850 | 2 deployments: bsc `0x66fd8d...0d3afd`; bsc `0x67e718...9ba3f0` | ⚠️ Unaudited |
| Turtle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x455960...04335a`; linea `0x9b496a...6091b4` | ⚠️ Unaudited |
| Turtle | unknown | project_anchor | own_supporting | 1 | linea | unit-259851 | 2 deployments: linea `0x56aa6d...bae8ef`; linea `0x7ab965...a52551` | ⚠️ Unaudited |
| TurtleGovernor | governance | project_anchor | own_supporting | 1 | ethereum | unit-259847 | 2 deployments: ethereum `0x27cbb9...4ffece`; ethereum `0x665160...5a97e3` | ⚠️ Unaudited |
| TurtleGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa11885...2cd3f4`; ethereum `0xddcda4...fcdf21` | ⚠️ Unaudited |
| TurtleStakingVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d3621...d01858`; ethereum `0x961ee1...982394` | ⚠️ Unaudited |
| TwapGGP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3155a8...d56cfe` | ⚠️ Unaudited |
| UniversalTokenSwapperEthFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa07780...1fdbe5`; ethereum `0xd932d4...f2dbf0`; ethereum `0xee9a18...218768` | ⚠️ Unaudited |
| UniversalTokenSwapperFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x54c860...df5d50`; ethereum `0x641b81...9675b3`; ethereum `0xa301d6...1f1584` | ⚠️ Unaudited |
| UniversalTokenSwapperWithVerificationFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e0b22...da53e0` | ⚠️ Unaudited |
| UpdateBalancesIgnoreDustPreHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf053...fc1a5c` | ⚠️ Unaudited |
| UpdateWithdrawManagerMaintenanceFuse | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74ca34...0bb0d0` | ⚠️ Unaudited |
| Usd0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xae12f6...fc821e`; ethereum `0xff0cb8...153cf6` | ⚠️ Unaudited |
| Usd0PP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7859a...dc96a8` | ⚠️ Unaudited |
| USDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x375ea8...6e62bf`; ethereum `0x98f2ab...7ac2fc` | ⚠️ Unaudited |
| Usual | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b65f9...6a9c2f`; ethereum `0xc4441c...0de38e` | ⚠️ Unaudited |
| UsualS | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x094b36...677b89`; ethereum `0x57e353...a21b63` | ⚠️ Unaudited |
| UsualSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24a246...272f65` | ⚠️ Unaudited |
| UsualSP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa55af3...757d37` | ⚠️ Unaudited |
| UsualX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x06b964...4d4b8e` | ⚠️ Unaudited |
| UsualX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x56b8dd...ee0713`; ethereum `0xb8819c...b7b37d` | ⚠️ Unaudited |
| UtilsLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x009bd9...16a0d8`; ethereum `0x39cea1...3fe2f4`; ethereum `0xc56752...24a753`; ethereum `0xdf7ec7...e1938d`; ethereum `0xef3f5d...bbd3d1`; ethereum `0xf364ce...6118ea` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x01ba69...4c15d8` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 10 | ethereum | n/a | 11 deployments: ethereum `0x2e8949...e1e1b0`; ethereum `0x53281e...63111b`; ethereum `0x60837b...b0aa2e`; ethereum `0x649fca...e84e5d`; ethereum `0x78f7c7...df3bdf`; ethereum `0x7b8ef4...be0b3f`; ethereum `0x89e0e6...34fe95`; ethereum `0xd8f7bd...4bdaea`; ethereum `0xdf9800...ae4e80`; ethereum `0xe1942d...b43a0e`; ethereum `0xe8632c...d0d469` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x423b46...19bc52`; ethereum `0xbca723...fd555c`; ethereum `0xd56031...7b26ce`; ethereum `0xe0dfbe...bf9621` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0xb4ad4d...7f0188`; ethereum `0xc1c5b1...bc62c8`; ethereum `0xd91fe1...4e0402`; avalanche `0xd45cb6...41e6ba` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | avalanche | n/a | 3 deployments: avalanche `0x304892...db54af`; avalanche `0x662e5e...78bd08`; avalanche `0xb893c8...0d25e3` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | linea | n/a | 2 deployments: linea `0x1b316f...2f0f71`; linea `0x7df7e4...1a07f7` | ⚠️ Unaudited |
| VaultAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d8cc0...e8f872` | ⚠️ Unaudited |
| VaultLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x0dd643...734fd8`; ethereum `0x352e64...3f2c3b`; ethereum `0x57904b...035c90`; ethereum `0x66529d...d98498`; ethereum `0x6f544e...77ae55`; ethereum `0x75aaf5...90a29a`; ethereum `0x8489e3...c77f71`; ethereum `0x91f5a0...6209e8`; ethereum `0xcd28b1...1174a2`; ethereum `0xe4044d...9ed29e` | ⚠️ Unaudited |
| VaultLib | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x1894d6...ea9e11`; ethereum `0x24024c...5b70f9`; ethereum `0x64096a...82c58b`; ethereum `0xb59f18...25c300`; ethereum `0xc6d480...0098d6`; ethereum `0xc89de4...35d8c6`; ethereum `0xe46adc...26a6b6` | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0xaf1b70...1324ee`; linea `0xb224f3...f37c1d` | ⚠️ Unaudited |
| VeloraSwapperFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8771e2...15d48b` | ⚠️ Unaudited |
| veNFTAPIV2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x8297f1...796672`; linea `0x8a63c3...fb582c` | ⚠️ Unaudited |
| Verified | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x08a403...8ce873`; ethereum `0x5b8a3e...2d1021`; ethereum `0x967c8f...2cbffc` | ⚠️ Unaudited |
| VestingAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87858b...3e20e0` | ⚠️ Unaudited |
| VestingWalletFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da941...a67f2c` | ⚠️ Unaudited |
| VoterV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x0b2c83...3b63c5` | ⚠️ Unaudited |
| VoterV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2a9142...2a2ff1` | ⚠️ Unaudited |
| VoterV5_GaugeLogic | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf09634...7d7893` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaaea1...b9ce6f` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0xaaaea1...b9ce6f` | ⚠️ Unaudited |
| VotingEscrowV2Upgradeable | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x2df7fb...35d1bd`; linea `0x77dfab...d6e1fc`; linea `0xd658aa...a1ed3c`; linea `0xfcc338...973a3b` | ⚠️ Unaudited |
| VotingEscrowV2Upgradeable | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x8d95f5...9b4c0c` | ⚠️ Unaudited |
| WBTCOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc87bfc...3e134e` | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x30378c...125151`; ethereum `0xfa5f2e...a7d8db` | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabd643...b4374d` | ⚠️ Unaudited |
| WithdrawalQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x8542f0...6e3177`; ethereum `0xb886d4...45464b`; ethereum `0xcb3b03...976168`; ethereum `0xee1186...fdd66e`; ethereum `0xff7a0b...f6be57` | ⚠️ Unaudited |
| WithdrawalQueueManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0bc9bc...0aa67b`; ethereum `0x6ac38a...2185cd` | ⚠️ Unaudited |
| WithdrawalQueueManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x42d3ee...9360a1`; ethereum `0x60d812...d9dcf3` | ⚠️ Unaudited |
| WithdrawalQueueManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8face3...4d60b4`; ethereum `0xaac93a...0a5d64` | ⚠️ Unaudited |
| WithdrawalsProcessor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x131d4f...426643`; ethereum `0x503895...e5b340` | ⚠️ Unaudited |
| WithdrawalsProcessor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x337f51...02ed4e`; ethereum `0x7c0a93...835d00`; ethereum `0x97e619...3bf3b2`; ethereum `0xc5d569...668a24`; ethereum `0xc954d6...24c47f`; ethereum `0xd048f3...35c5df`; ethereum `0xd2c22d...b57f7e`; ethereum `0xf4abf2...2de758` | ⚠️ Unaudited |
| WithdrawalsProcessor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6d052c...6c5fba` | ⚠️ Unaudited |
| Withdrawer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1da2a0...b7e92b`; ethereum `0xea03aa...1e04fc` | ⚠️ Unaudited |
| Withdrawer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad086...268fed` | ⚠️ Unaudited |
| Withdrawer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x352766...8e88d5`; ethereum `0xe4d258...209cd7` | ⚠️ Unaudited |
| Withdrawer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3fc377...873b4a`; ethereum `0xa55dc4...9b44f7` | ⚠️ Unaudited |
| Withdrawer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb64524...3deb54`; ethereum `0xe83289...75d6c7` | ⚠️ Unaudited |
| WithdrawerConfigurator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xf2c5c0...3d427a`; ethereum `0xf8dad4...35d9d1` | ⚠️ Unaudited |
| WithdrawerConfigurer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a4a9c...68cf89` | ⚠️ Unaudited |
| WithdrawManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 26 deployments: ethereum `0x0a78c1...336d2d`; ethereum `0x19e5ac...02737c`; ethereum `0x22524f...2bd0a1`; ethereum `0x468de9...6d7b76`; ethereum `0x4ba0f2...25e6fd`; ethereum `0x5903e1...77b2dd`; ethereum `0x5b7aec...7b5c81`; ethereum `0x75742c...db6a86`; ethereum `0x784008...842c1b`; ethereum `0x79f140...79bbdb`; ethereum `0x7f4474...722349`; ethereum `0x8138fd...4584e1`; ethereum `0x83bc53...df28b7`; ethereum `0xa76aa0...11448c`; ethereum `0xa90196...44b77d`; ethereum `0xac8479...c69c2b`; ethereum `0xbacf97...80ad28`; ethereum `0xcb1cea...80b111`; ethereum `0xcb5d69...9f2bb1`; ethereum `0xd685ce...ff44d3`; ethereum `0xd9d6ac...a401f3`; ethereum `0xdaf066...bc2b3c`; ethereum `0xdbe385...7fb444`; ethereum `0xefde29...9fae28`; ethereum `0xf08cb4...ad1386`; ethereum `0xf215cf...fbd101` | ⚠️ Unaudited |
| WithdrawManagerFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x00b0c4...6fe521`; ethereum `0x86ea41...b488ae`; ethereum `0xe37b58...33e587` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x3dc349...5d08e2`; avalanche `0x4043da...b45e6e`; avalanche `0x472e82...f56238`; avalanche `0x55eadf...bd8a16`; avalanche `0x87c1b4...b48a64` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x61f908...5849a3`; avalanche `0xf25dc8...c10afd` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x73cb24...0c00cd` | ⚠️ Unaudited |
| WrappedPlasmaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x74714b...8b2c12`; ethereum `0x757e1b...fb7058` | ⚠️ Unaudited |
| WrappedPlasmaVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3f68a6...3311f5`; ethereum `0xb17a9d...f353c8` | ⚠️ Unaudited |
| WrappedToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3f574f...c31e58`; ethereum `0xda7d20...28e574` | ⚠️ Unaudited |
| WrappedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6582f...f6822f` | ⚠️ Unaudited |
| WSTETHOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4a9208...eebf5f`; ethereum `0x6061b6...54523e` | ⚠️ Unaudited |
| WstETHPriceFeedEthereum | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4329e2...c5d8b0` | ⚠️ Unaudited |
| Xai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7c9f0...c3beac` | ⚠️ Unaudited |
| xBIFKN314 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa43f06...86374f` | ⚠️ Unaudited |
| XReferralAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x80ff99...cb234b`; ethereum `0xdb7aa0...8e3fc0` | ⚠️ Unaudited |
| YieldNestOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa96a27...2f1038`; ethereum `0xf592cd...d4a59b` | ⚠️ Unaudited |
| YieldNestOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0cff2...cc5187` | ⚠️ Unaudited |
| ynEigen | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x35ec69...42630c` | ⚠️ Unaudited |
| ynEigen | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5cc73a...05d222` | ⚠️ Unaudited |
| ynEigen | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb06084...57d189` | ⚠️ Unaudited |
| ynEigenDepositAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0027da...20f827` | ⚠️ Unaudited |
| ynEigenDepositAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6254fa...6e30bd` | ⚠️ Unaudited |
| ynEigenDepositAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9e7215...6753c0` | ⚠️ Unaudited |
| ynEigenViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9b933d...bef28f` | ⚠️ Unaudited |
| ynEigenViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc16fef...2e64da` | ⚠️ Unaudited |
| ynEigenViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc7cccf...a0ad29` | ⚠️ Unaudited |
| ynETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x05c516...50127a`; ethereum `0x14dc3d...8a1346`; ethereum `0x434ab6...116663`; ethereum `0xa42493...35b970` | ⚠️ Unaudited |
| ynETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x09db87...373a48`; ethereum `0x87e2a5...43710a` | ⚠️ Unaudited |
| ynETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0f503d...8bf0b3`; ethereum `0xcebdee...fff482` | ⚠️ Unaudited |
| ynETHRedemptionAssetsVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x151d63...27a936`; ethereum `0xd64b76...390451` | ⚠️ Unaudited |
| ynETHRedemptionAssetsVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5d6e53...9c5caf`; ethereum `0xe1a2a7...b0fed5` | ⚠️ Unaudited |
| YnETHx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc46c1f...69299a` | ⚠️ Unaudited |
| YnETHxConfigurer | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3794d5...4ffb7b` | ⚠️ Unaudited |
| ynLSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39f3a3...553263` | ⚠️ Unaudited |
| ynLSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7fd558...e43790`; ethereum `0xe42de0...d9cf03` | ⚠️ Unaudited |
| ynViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0365a6...10899e` | ⚠️ Unaudited |
| ynViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2cfab6...9ca36e`; ethereum `0x7ae221...3ed9f0` | ⚠️ Unaudited |
| ynViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa40565...d982f0`; ethereum `0xc70c9b...6952e0` | ⚠️ Unaudited |
| ynViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf0207f...c93ecf` | ⚠️ Unaudited |
| YUSDWithdrawalAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf26ffa...09bdca` | ⚠️ Unaudited |
| Zap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd9fc4...2ade0d` | ⚠️ Unaudited |
| ZeroBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3aae99...94ee51`; ethereum `0x48bd85...b1d1e6`; ethereum `0x759ddf...048e6e`; ethereum `0xb5c14b...0be9c9`; ethereum `0xbc2907...474efb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (103)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00cecc...179b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x012d96...142923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03fcd0...acf88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d321...525332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ed10...989c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d9f3e...9061aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f11c5...2cb341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x102aad...e08401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14522e...2e5d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16230f...ee588c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19ad40...1ee0c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23731d...45d7c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240a30...79d319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d2f24...3de6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e2e7c...87946a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fc9c3...4366f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x335f9b...d13272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x372256...3af073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bca0e...f1aa77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7d70...69f980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de571...2f2c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f03a2...fc48e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47733f...61035d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a460...37ea04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50ea68...7b6034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54fd21...7a62ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x554cb7...0c31a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e1854...4bd422` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x601cef...ae54c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6021cc...ac48ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60ee80...394769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6487c4...eb5063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x692d20...bb7d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x704906...394c94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x731a78...a75b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78622f...21b16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e75c0...c03d7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e9a00...747f7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8205ef...e76137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e3953...84e495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92dbc2...a33f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x951fa1...a40949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9546d8...3c9065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x978fb4...657c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c8aea...72f677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc4d6...f63243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d2b30...720ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f9925...c6397b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0f0e6...bcec58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa35f12...240a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa40f6c...113857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa70422...17ec6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa86cb9...e00265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa98837...c76103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb11bf3...cee4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4876b...1441fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb51889...8fe512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb67e33...52c23f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7dc4e...221e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7dd60...325912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf0459...4fb66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc31432...25992f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc572f9...a13e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd04c0...20aeb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcee58d...7db09c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf36f2...4f27a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2886c...0b864f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd94a56...c02ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcb76f...141ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe082f0...96c3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6c81b...a6b16c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7c7b2...97db7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9f1a7...3dd0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaa59b...671d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed065d...b8377a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed0f68...942e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed66eb...aaca51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2581c...fdd241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc314c...d3570e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00f9e4...07e51a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x019258...623001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x043026...3b4416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x091e3e...9dce7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x096459...49cef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x096c04...7560b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c1992...e01244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ea552...cede12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ff749...4926fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12005b...896754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15dbf0...68ce47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x171c78...1972e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17395a...222199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18e360...c18973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19da5d...d439f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26760c...11c9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5906ca...ed62bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5bfdea...467ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fb5d0...ee2666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cdf0d...fffb98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc1e38f...4df212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc6d086...1468dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9fbf1...ce4e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6e22a6...fce86e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Streams Contract Audit (Cantina)](https://drive.google.com/file/d/17-KHHhgcOTUVI6JcwTLvhoWp7lrNTyJP/view?usp=sharing) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29896] Streams Contract Audit (Cantina) — no match: Scope section explicitly lists three files: Stream.sol, StreamFactory.sol, StreamFactoryProxy.sol. Audit date from cover page: January 30, 2026.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Streams Contract Audit (Cantina) | Stream | unmatched — not counted | — | listed in scope | no |
| Streams Contract Audit (Cantina) | StreamFactory | unmatched — not counted | — | listed in scope | no |
| Streams Contract Audit (Cantina) | StreamFactoryProxy | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xd3bd7d...2f8bbb` | BurnMintTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x455960...04335a` | BurnMintTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x7263bc...c0c647` | BurnMintTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x56aa6d...bae8ef` | Drip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x194e34...9826c8` | Stake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x233cbc...73e7fc` | StakeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66fd8d...0d3afd` | Turtle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x66fd8d...0d3afd` | Turtle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x56aa6d...bae8ef` | Turtle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x27cbb9...4ffece` | TurtleGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 629 |
| upstream | 20 |
| standard_library | 9 |
| needs_review | 107 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [29896] Streams Contract Audit (Cantina)

Fork inheritance lineage and inherited audits are included when available.
