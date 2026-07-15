# Agentic Audit Brief: Singularity Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Singularity Finance (`singularity-finance`)
- Website: [https://singularityfinance.ai/](https://singularityfinance.ai/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum
- Contract surface: 199 unique implementations (537 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $4,251,071.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Singularity Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 199 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/51
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 0
- Unverified implementations: 148
- Unique implementations: 199
- Raw deployments: 537
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerodromeDynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: base `0x02c067...bae840`; base `0x0ae5d7...c38b26`; base `0x339304...8971be`; base `0x34f503...e27d8b`; base `0x586125...3aaed7`; base `0x5893c3...fb457c`; base `0x6bf610...8a3e81`; base `0x7ba35e...f71f4b`; base `0x8ca67d...0fb71d`; base `0x952cf0...482067`; base `0xb1a6de...732297`; base `0xc3a9f3...5eae64`; base `0xc448c7...d1a5da`; base `0xdf6551...79e2dd`; base `0xe0d6d1...ca6b09` | ⚠️ Unaudited |
| AerodromeV3CLDynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1cf8db...7ad44e` | ⚠️ Unaudited |
| BalanceQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8f2311...3d0a3b`; base `0x9b96cb...952c36` | ⚠️ Unaudited |
| DynaLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe134e...c8f71f` | ⚠️ Unaudited |
| DynaLiquidityFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a88b1...232ca9` | ⚠️ Unaudited |
| DynaLiquidityRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 16 deployments: base `0x0066fe...02ace6`; base `0x3de202...ca71e2`; base `0x4b0cbb...c006a6`; base `0x529275...632ffe`; base `0x531fde...467635`; base `0x6793bc...07a9ff`; base `0x732e82...63c910`; base `0x760c20...2d9224`; base `0x82f224...8d1674`; base `0x94129c...db4f4c`; base `0x989f2c...2b4d10`; base `0xa374de...ac131d`; base `0xaa89a1...f90a6d`; base `0xcf3d72...25e944`; base `0xf5ba76...2ad18a`; base `0xffeddb...5aeb0f` | ⚠️ Unaudited |
| DynaRoutePreviewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x47f906...5f4f2b`; base `0x5da52c...37a168`; base `0xc7b059...7fb77c` | ⚠️ Unaudited |
| DynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff3488...02bad5` | ⚠️ Unaudited |
| DynaRouterMeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce3a64...373962` | ⚠️ Unaudited |
| DynaRouterNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe65416...175680` | ⚠️ Unaudited |
| DynaRouterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 20 deployments: base `0x1f1f97...972931`; base `0x2686e6...db5bf2`; base `0x2d4887...6f8cef`; base `0x327b49...fa674a`; base `0x56f5a6...c3a7d4`; base `0x5cc910...50e303`; base `0x61687c...25793e`; base `0x67408f...710ebd`; base `0x7390cc...a9ae45`; base `0x73da01...2498c9`; base `0x82bccf...5d40f9`; base `0x860d8e...e8c9ce`; base `0x9b513f...b11b59`; base `0xa8f65a...6e67f0`; base `0xaa94b1...eca144`; base `0xbc3a0a...ffd4c0`; base `0xd0bc8c...c1898b`; base `0xe47610...b61d3a`; base `0xe851a9...1ec367`; base `0xfe8ccf...2e6a4d` | ⚠️ Unaudited |
| DynaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x000bd9...28a771`; base `0x620b2f...e6e660`; base `0x9a3fba...2574b7`; base `0xa37f48...d2baa2`; base `0xc0cf88...6ca30d`; base `0xc6b334...8ecf52`; base `0xd8147e...554ed0`; base `0xddfdce...afc64c` | ⚠️ Unaudited |
| DynaVaultLib | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x3b94af...51ee08`; base `0x4c3df5...1cc5a0`; base `0x6c331b...a2e7c5`; base `0x8c38cc...1d8a22`; base `0xaee26e...b74adc`; base `0xbde3a6...084399`; base `0xbec6da...366014`; base `0xfece3c...888597` | ⚠️ Unaudited |
| DynaVaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: base `0x30cb8e...c58273`; base `0x478675...2bef7f`; base `0x4c168f...b198dd`; base `0x57dcc5...85c406`; base `0x67aaf2...9ea1dc`; base `0x84f0fe...c2b843`; base `0x95cf60...36688b`; base `0xac1800...2fae77`; base `0xc3bad1...5250ac`; base `0xc9572e...0fca53`; base `0xdf34fc...dd1915`; base `0xf461d8...2da673` | ⚠️ Unaudited |
| ERC4626DynaZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: base `0x21d4af...aa12df`; base `0x34cb48...22e20e`; base `0x49a064...eeafcf`; base `0x5b9aef...0b3be7`; base `0x604786...693c1d`; base `0x687b90...679bd4`; base `0x6f836a...18429a`; base `0x8a1217...71be10`; base `0xad51bb...30c5d1`; base `0xc23c6c...9ee5fc`; base `0xc44b51...99f235`; base `0xd7bb9f...e5b32f`; base `0xe7f908...5fe275`; base `0xf907d8...2f4bb7`; base `0xf98711...abfb38` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: base `0x0cc53e...86cfbb`; base `0x4351ae...3379c6`; base `0x5d27fd...e9ed1e`; base `0x5ff09e...a98533`; base `0x627ba4...ab381c`; base `0x81e4a1...85ba5b`; base `0xbb8eea...d30ad3`; base `0xcdcf93...65894b`; base `0xdcbde8...e80012`; base `0xe6a233...a8d7a4` | ⚠️ Unaudited |
| IndirectOFTV2WithFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x17de46...f564a8`; base `0x18d79e...4f6bef`; base `0x90ed8f...f18240`; base `0x9b737c...bdf0f8` | ⚠️ Unaudited |
| LiquidityArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf1b65a...84d80e` | ⚠️ Unaudited |
| MetaDynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 18 deployments: base `0x049b7d...09bb62`; base `0x12bf55...fe97bb`; base `0x2a15d0...ba78ab`; base `0x2ffa55...4d4334`; base `0x545ac8...f43eef`; base `0x552417...943bc8`; base `0x5eb28f...5af085`; base `0x9d0cd2...2ba1cd`; base `0xa01c50...8761cd`; base `0xa12071...77d422`; base `0xa444ab...7152e0`; base `0xabf4a3...2b3491`; base `0xb33bb6...2a8367`; base `0xb6c9cb...dee677`; base `0xbcfa5b...2d460c`; base `0xbec7c9...02ca39`; base `0xd9dc9c...872850`; base `0xe9dc55...ca239e` | ⚠️ Unaudited |
| MigrateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e4cc9...f499c4` | ⚠️ Unaudited |
| NativeDynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 14 deployments: base `0x077b51...f8d11c`; base `0x145b2b...3bc60a`; base `0x1b72dc...4053ff`; base `0x528c36...a1c1aa`; base `0x77086a...935650`; base `0x9b8a90...d2c8d3`; base `0x9c3e85...8a5b25`; base `0x9cb0df...b44ee4`; base `0xa27543...14c4e5`; base `0xacf7b7...fd673b`; base `0xae2c48...9c65e7`; base `0xde667b...2b1d9e`; base `0xf3a979...a7a779`; base `0xfcd1d5...db74df` | ⚠️ Unaudited |
| OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe239db...cba1f5` | ⚠️ Unaudited |
| OracleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x561edb...0a317b` | ⚠️ Unaudited |
| PermissionedDynaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: base `0x0c8886...57270f`; base `0x1631ca...258274`; base `0x1bf978...68e2f1`; base `0x1cda1f...9e5aea`; base `0x22d298...54f3cc`; base `0x4314e0...950008`; base `0x67b93f...e14dcd`; base `0x6beb92...e1a937`; base `0x8bb92d...5d507e`; base `0xbba62a...a1b6ae`; base `0xea7975...816811` | ⚠️ Unaudited |
| ProxyOFTWithFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b410...356e53` | ⚠️ Unaudited |
| ProxyReferenceAssetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43b85d...7f9e1d` | ⚠️ Unaudited |
| QueueLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x1a3fe0...ec2188`; base `0x34e499...64a3eb`; base `0x48b119...3150f5`; base `0x57972f...984232`; base `0xe55802...d1a1d4` | ⚠️ Unaudited |
| ReferenceAssetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: base `0x10c096...1f6260`; base `0x31d333...f6808f`; base `0x3a542a...c8b715`; base `0x44cc49...25f3c1`; base `0x6ea8e2...ec5770`; base `0x8088b1...cb6e33`; base `0x96e612...bb2622`; base `0xa43ad9...dc99b7`; base `0xa92c58...e4914a`; base `0xd290a5...a0b62e`; base `0xf48065...5e403a` | ⚠️ Unaudited |
| SDAOClaimpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x731923...f77510`; base `0x859cf2...6b9dc9`; base `0xeec9f7...62a485` | ⚠️ Unaudited |
| SDAOLaunchpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x00bcdf...8778e7`; base `0x28e822...198508`; base `0x417493...22cf19` | ⚠️ Unaudited |
| SDAOLinearSimpleReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: base `0x06558d...712671`; base `0x0af7e6...14aee3`; base `0x17aa4d...ee885d`; base `0x184d92...b8911c`; base `0x1f88ed...e8574b`; base `0x459b92...4048f2`; base `0x51bc55...4ac8dc`; base `0x555859...3bb401`; base `0x6cf5d7...a1b6e7`; base `0x723ce4...3411c6`; base `0x9c2c28...5f87a2`; base `0xccf03e...9f86e1`; base `0xcddb8a...c972c6`; base `0xcff2ef...f64344`; base `0xf7e5f2...5ad8c9` | ⚠️ Unaudited |
| SDAOLockedStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x138463...8e34d1`; base `0x28998e...682924`; base `0x40f67f...d7e96b`; base `0x641adb...392bf4` | ⚠️ Unaudited |
| SDAOTokenStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8a7f47...ba976f`; base `0xfb85b9...2120d0` | ⚠️ Unaudited |
| SFILockedStakingAerodromeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x09c6a0...1956d7`; base `0x2c6188...5c4517`; base `0x576b17...147948`; base `0x61e163...4b822a`; base `0x81b3de...7fddc8`; base `0xbc7ac7...b762b5`; base `0xbe1db9...ad8dda`; base `0xfc2179...fa6e7a` | ⚠️ Unaudited |
| SFItoken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7636d8...b386bf` | ⚠️ Unaudited |
| TokenizedAerodromeCLStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 41 deployments: base `0x0148de...74024b`; base `0x0fe100...5d1b2e`; base `0x1dfd23...a6d7a3`; base `0x24fe44...bdd9bb`; base `0x2d300a...c122c0`; base `0x37f693...300507`; base `0x3b2bad...52dc58`; base `0x3b65ad...d2c158`; base `0x438d9b...7d8282`; base `0x44ed3f...86b3a9`; base `0x4a8ea7...4c6335`; base `0x4c499a...919bc0`; base `0x530dd9...4e30e3`; base `0x567629...5a17da`; base `0x56df3b...9b0ac5`; base `0x57d223...e3131e`; base `0x581f6c...a82f43`; base `0x5cc0b9...08b73d`; base `0x639cb8...16d54d`; base `0x6f2fab...31f7df`; base `0x752a8f...e38b39`; base `0x7584c8...044335`; base `0x82aaca...589944`; base `0x871eaa...71bb58`; base `0x90bbf8...ab0d93`; base `0x93a951...0f3d8c`; base `0x958e39...33ace9`; base `0x98ae70...69d5b8`; base `0x9af9a1...698c73`; base `0x9ce353...3b3845`; base `0xa15a58...53f51a`; base `0xb12175...8434dc`; base `0xb4e397...b28e75`; base `0xb5f4e1...135fa3`; base `0xc44345...e2da51`; base `0xd23c5f...5631e5`; base `0xd9ff2c...091994`; base `0xddecea...0b4887`; base `0xf3c560...2d244e`; base `0xf3f1a6...5f6eb5`; base `0xf62fe5...b4bc6f` | ⚠️ Unaudited |
| TokenizedStrategyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x32fb85...37d4ea`; base `0x509869...c32535`; base `0x59d8c6...0f0ed8` | ⚠️ Unaudited |
| TokenWhitelistRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: base `0x1c3182...0d03ef`; base `0x3d2efe...1e8a29`; base `0x693ea3...00ba33`; base `0x6c5d7f...a90bbd`; base `0x7129d7...deeddf`; base `0x87ba96...89b16c`; base `0xb73ca6...aed3e2`; base `0xb7f8c6...67bc81`; base `0xbcca74...3fdb04`; base `0xc4948e...6d6336`; base `0xc8a945...a1df53`; base `0xcfc5c9...4336e2`; base `0xd6c735...8d73b2`; base `0xd91ab7...0b97b1`; base `0xff5516...1e25b3` | ⚠️ Unaudited |
| VaultConfigLib | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x3ce426...347db5`; base `0x44cd55...c6ed6b`; base `0x587a91...d52cbb`; base `0x7b7ee3...baedd2`; base `0xb198ee...0bdd0c`; base `0xbe93d9...1fddfe` | ⚠️ Unaudited |
| VaultDynaZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: base `0x1abb0e...177552`; base `0x21527e...55d4ab`; base `0x61ca29...db7f43`; base `0x6e3b41...3be3f6`; base `0x77d137...582279`; base `0x9eb2df...bdbfd2`; base `0xa75735...27e32e`; base `0xa8d2c3...894883`; base `0xad8291...308bb2`; base `0xaddb3e...661d70`; base `0xca14c8...70f3a9`; base `0xee56b2...325b6a`; base `0xee60b5...48fde5` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: base `0x186662...0a81a5`; base `0x51de8a...aba15b`; base `0x56746c...ce8d47`; base `0x5d9729...5c8b3f`; base `0x659b20...b8b6b1`; base `0x7df0bc...80ac73`; base `0x8afdef...1973b4`; base `0x90efbd...98fb96`; base `0x943fe4...9c3ef0`; base `0x9600f2...fc8a7f`; base `0xabb1eb...98d007`; base `0xc00a56...9a9ce9`; base `0xefe719...52e04f`; base `0xfa5597...6aebc5`; base `0xfa65b5...f53add` | ⚠️ Unaudited |
| VaultFeesLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x31b57a...9817ff`; base `0x388184...02e5ae`; base `0x653516...e9150b`; base `0x9e71e4...bc1ca6`; base `0xb09b88...ec4be7`; base `0xb13037...d90db6` | ⚠️ Unaudited |
| VaultGovernanceLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x1f9e54...d3f367`; base `0x363bfd...0a2968`; base `0x4703bd...b6fc73`; base `0xb4d050...fe9d94`; base `0xbc84cb...696ee0` | ⚠️ Unaudited |
| VaultManagerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x1faece...8e53e1`; base `0x30efd6...97f4ce`; base `0x7b273c...71c184`; base `0x957fb5...30ddf3`; base `0x962631...2a0a33`; base `0xa3e5c3...f8046a`; base `0xb420bb...319524` | ⚠️ Unaudited |
| VaultManagerSimulatorLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x180fe2...8eb72a`; base `0x2989d5...851981`; base `0x620978...33fb39`; base `0x79db85...cf0b70`; base `0x86a264...4f708f`; base `0xcccc9e...1fe8e5`; base `0xd5c3a4...d04601` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 20 deployments: base `0x012cd9...954a59`; base `0x1e30d1...f841d7`; base `0x2616fb...f07ecc`; base `0x30c0ef...a3beb5`; base `0x414f0e...8e1ecb`; base `0x46f37e...0ea49f`; base `0x57de2a...4fa9ca`; base `0x58d7aa...1f12dd`; base `0x5f3490...a0f30b`; base `0x6e638c...1c8c35`; base `0x715ce7...48c5e5`; base `0x78d651...a819ad`; base `0x81f068...272f62`; base `0x82c14d...21f21f`; base `0x89fbee...cf8d80`; base `0x8d300f...f0ee9b`; base `0x95b323...a5d81f`; base `0xa49141...84175a`; base `0xb1b5d4...f59402`; base `0xe260c9...851657` | ⚠️ Unaudited |
| VaultRouterLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x01ab83...2da0f9`; base `0x7a64f6...aa7e4e`; base `0x8e6b29...ccdf7f`; base `0xabb735...0b5605`; base `0xb245ab...1557a2`; base `0xc0976f...4d59fa`; base `0xd3109f...d8d2a0` | ⚠️ Unaudited |
| VaultSimulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: base `0x2dc000...cf1cb7`; base `0xa065ae...b27be9`; base `0xa6ae67...161f09`; base `0xa700aa...64e9fb`; base `0xaaebd1...31c4a8`; base `0xb80195...62b0a3`; base `0xd6aaae...fcd8dc`; base `0xe7414c...3ffbe2`; base `0xf0d657...db0e05`; base `0xfe2a33...4d373e` | ⚠️ Unaudited |
| VaultStrategiesLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x0b43bc...d1777b`; base `0x221495...629d23`; base `0x38df9f...e73e28`; base `0xc77df5...391571`; base `0xf22bd3...663e9e` | ⚠️ Unaudited |
| VaultTokensLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x07b3dd...fe2ee2`; base `0x1b841e...145812`; base `0x2f67f8...5bb650`; base `0x4e41ae...0ee89c`; base `0x5deda0...8d0a08`; base `0x7e81c4...daf5c5`; base `0x86aab4...f0835e` | ⚠️ Unaudited |
| VaultZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x668360...adb450`; base `0xdb4691...4d7dfd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (148)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x00123a...5d9fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03a10d...1c6973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03af71...1a19d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x045f5b...b9c0e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04e8c4...c155ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x051c38...fc0849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x077e53...2be178` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x09291a...5e3257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a4f8d...81b0fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a53bd...90a9cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ad4e2...f8c01e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ae165...6f3f4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b1e6d...be5cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cecb9...9b2fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d2744...4a3739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10da11...1010b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1954d1...46b3f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1aeff1...1ee60b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1be1ad...ae5b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1bfcb4...5b338f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1fdd44...8efa6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2327c7...19ea49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x290a9a...ee6add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29c66b...96c28f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2cebb5...898e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2dac28...bd35b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x328600...0019dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x340386...bcdab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x354533...066564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x357173...45d294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35cc57...067e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x366d5c...9b7ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37c122...34ca3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d26d7...9288b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f1e13...39ed81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x400df3...d1757c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x408c0c...3cd91c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x413546...460859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x44921e...5162c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45527d...cba856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45585a...c50029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x491b36...f45d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4b368c...8ff0aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4be446...a2ea27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5062f9...256b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52796d...5fc3c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5352bf...ae4bf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x546782...e46851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56a87d...946ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58c225...dbd7f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x595027...550ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5af1d3...67bf3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5af618...8741fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b7b0e...bb5f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b8120...402faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x636a7f...8bd476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x661d1c...9f1822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6726a6...8fa386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6792a7...f72970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68ba6f...ead92e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ab825...5ffcca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70ecd2...b927bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71d588...c31b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71f4dd...7f6d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7293de...fdaef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76ce22...2faf9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78096b...d49e4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7969f0...f62661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b62a3...7f47d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7bcb31...e6ce4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7f8e35...793111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x801ebe...bb64aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x808aa8...cae78e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x809814...18b516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8298cf...84cda9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x837714...746842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x84a619...8e2562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x85941b...cff3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x872ad3...faf871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88ed2d...3ece6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b2ba9...dd0d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b7009...9e467d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x900f80...e7c487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x910543...bed2b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x927c76...21bde4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x942d21...f1e1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95b40f...e3b969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95be5c...d62ea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x967d71...b6d070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96f5c3...570424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x991366...fd3687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x992fda...3d05e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99beba...3c3d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d0df2...209ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f2c74...b34d14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f30f2...0acb8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa06c74...46d6a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2601d...9b9a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa789dd...d35464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa7e0f3...c5df3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xabd170...5010e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xacdee4...e63e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xadee3e...5ea244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafdeaa...3839b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb03503...80ce3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb40d9c...4233fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb2b20...656277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc4042...bd4490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe2ecb...449de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc09ed6...c54308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc35b01...6ed218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc52c24...3265b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc96150...abd952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcad808...991b2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcbf202...4f58e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xceeda1...0c82f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0364b...9f07fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd21fa0...e0c94f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd42b73...3dd733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7a3e4...a97150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7be5d...919722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xddbc27...c71c49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xddfbfa...2d59c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe11a23...af1a18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3e4a0...d73f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4392f...0a67a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe46434...e83011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4e1e6...46b0e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe50489...efd359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe77b9f...6def73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9bbdc...cafb55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xea6daa...9464fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec043d...ea8fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xecf984...2050e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee0586...43ba54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee1ac9...ce638b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf02261...14664f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2b4ef...da6ac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4a4e9...6f441d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5738b...930b42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6c9e5...c22195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6e0db...7d0eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf77895...ae8e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf7bda1...4364b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf97cee...ca3620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbbb3f...06aeaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfdad14...08986d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xffdc0b...21922b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/singularitydao](https://paladinsec.co/projects/singularitydao) | Paladin | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 27 | n/a |
| [hacken.io/audits/singularitydao](https://hacken.io/audits/singularitydao) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2478] paladinsec.co/projects/singularitydao — no match: No reason recorded
- [2479] hacken.io/audits/singularitydao — no match: The provided text is a marketing page for SingularityDAO audits by Hacken, not an actual audit report. No contracts in scope are listed.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/singularitydao | BalancerV2DynaZapper | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | BalancerV2WeightedPool Oracle | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | BaseDynaRouter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DependencyDynaRouterRegistry | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DependencyVaultGovernanceLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DependencyVaultStrategiesLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaLiquidity | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaLiquidityAssetManagerLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaLiquidityFactory | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaLiquidityLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaLiquidityProxyAssetManager | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaLiquidityRegistry | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaRouter-MetaDynaRouter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaVault | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaVaultLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | DynaVaultManager | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | IndirectOFTV2WithFee | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | ProxyOFTWithFee | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | TokenWhitelistRegistry | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultConfigLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultDynaZapper | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultFeesLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultGovernance | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultManagerLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultManagerSimulatorLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultSimulatorLib | unmatched — not counted | — | — | no |
| paladinsec.co/projects/singularitydao | VaultTokens | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 148 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [2478] paladinsec.co/projects/singularitydao
- [2479] hacken.io/audits/singularitydao

Fork inheritance lineage and inherited audits are included when available.
