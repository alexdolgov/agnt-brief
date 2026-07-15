# Agentic Audit Brief: Rezerve

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Rezerve (`rezerve`)
- Website: [https://rezerve.money](https://rezerve.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, hyperliquid, sonic
- Contract surface: 183 unique implementations (542 raw deployments)
- Coverage basis: 1/27 confirmed own live verified implementations (3.7%); conservative 3.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,425,835.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Rezerve. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 38 contract row(s) across arbitrum, base, bsc, ethereum, hyperliquid, sonic. Structural roles: 22 unclassified, 11 supporting, 5 core. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 38
- Structural roles: unclassified (22), supporting (11), core (5)
- Contract kinds: contract (36), unclassified (2)
- Detected standards: ownable (8), pausable (4), erc20 (3), erc20permit (3), accesscontrol (2), erc165 (2)
- Frameworks: openzeppelin (14), openzeppelin-upgradeable (11), layerzero (7)
- Upgradeable-pattern rows: 12

## Fork Analysis

0 of 41 contracts are derived from known codebases. 41 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000003...ac1ba6`, chain 1)
- UnnamedContract (`0x6969c3...6265b1`, chain 1)
- UnnamedContract (`0xb33f4b...0d52cb`, chain 1)
- UnnamedContract (`0xb44444...cbd1f5`, chain 999)
- UnnamedContract (`0xb33f4b...0d52cb`, chain 8453)
- UnnamedContract (`0xb44444...cbd1f5`, chain 8453)
- UnnamedContract (`0xb33f4b...0d52cb`, chain 42161)
- UnnamedContract (`0xb44444...cbd1f5`, chain 42161)
- AppAuthority (`0x43a38a...45417d`, chain 1)
- AppAuthority (`0xf06b93...5ef309`, chain 146)
- AppBurner (`0x641cac...e287cc`, chain 1)
- AppConvertibles (`0xabb6bd...ef8195`, chain 1)
- AppProxy (`0x86143b...a5e1e9`, chain 1)
- AppProxy (`0xb1fd2d...88a2f8`, chain 1)
- AppProxy (`0xc09eff...096ee7`, chain 1)
- AppProxy (`0xcd43c9...e46399`, chain 1)
- AppProxy (`0xd80bca...dd3622`, chain 1)
- AppProxy (`0xe148d8...a55f81`, chain 1)
- AppProxy (`0xfad35a...10263c`, chain 1)
- AppProxy (`0x67a298...5f53cb`, chain 146)
- AppProxy (`0xa25f6b...2e83fa`, chain 146)
- AppProxy (`0xa5d26e...e37da0`, chain 146)
- AppProxy (`0xe22e10...0efc85`, chain 146)
- AppReferrals (`0xdc6455...664a8b`, chain 146)
- AppStaking (`0xf5df43...8a920a`, chain 1)
- AppStakingMigrator (`0xe7a577...fab1aa`, chain 1)
- AppTreasury (`0xc913dc...bc49ed`, chain 146)
- BridgeL1 (`0x507427...bf99df`, chain 1)
- BridgeL2 (`0xa48b92...a2a036`, chain 146)
- LoyaltyList (`0x9ec2dd...7dcd2e`, chain 1)
- lstRZROFTAdapter (`0xd3e536...d74652`, chain 1)
- ProxyAdmin (`0x33812b...e08982`, chain 1)
- RZR (`0xb44444...cbd1f5`, chain 1)
- RZR (`0xb44444...cbd1f5`, chain 146)
- RZROFTAdapter (`0xe97493...f0b53c`, chain 1)
- RZROFTAdapter (`0x6419f0...bb2f3a`, chain 146)
- sRZR (`0x5de77c...f70aaf`, chain 1)
- Staking4626L2 (`0x8b5ecb...51dab9`, chain 146)
- StakingDistributionLogic (`0x3e4df7...b6e802`, chain 1)
- TotalReservesOracle (`0x90a2ca...8a9ea7`, chain 1)
- YieldLogic (`0x739f49...dc1b2c`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 38; live-surface rows included: 38 (38 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/27 (3.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 35 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 148 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 66
- Confirmed-live implementations: 35 of 183 unique; 148 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/147
- Verified + Unaudited implementations: 146
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 183
- Raw deployments: 542
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 0.7% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AppTreasury | unknown | project_anchor | own_supporting | 1 | sonic | unit-391746 | 2 deployments: sonic `0xc913dc...bc49ed`; sonic `0xe22e10...0efc85` | ✅ Audited |

### ⚠️ Verified + Unaudited (146)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Adapter4626Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0xb34d5f...8a871b`; sonic `0x20bee5...8ed4c2`; sonic `0x7d2804...a6337f`; sonic `0xe8ee6a...0c07d7`; sonic `0xe90a0e...22537a`; sonic `0xf576c9...2d1ebc` | ⚠️ Unaudited |
| Adapter4626OracleModified | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x4dbaf5...3ea4ec`; sonic `0xae494c...6a73a8`; sonic `0xbab9e6...8e6be8` | ⚠️ Unaudited |
| AggWithStalenessOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x19e771...0827d3`; sonic `0x96f302...efbe62`; sonic `0xd19fe4...eef229` | ⚠️ Unaudited |
| AppAuthority | governance | project_anchor | own_supporting | 0 | ethereum | unit-391716 | `0x43a38a...45417d` | ⚠️ Unaudited |
| AppAuthority | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0xd4f70c...03d8c0`; ethereum `0xd9af86...bed0a2`; bsc `0x24a3e1...e0dd36`; sonic `0x07249b...e28af2`; base `0xbaef85...47a97d`; base `0xec7eb5...b13457` | ⚠️ Unaudited |
| AppAuthority | governance | project_anchor | own_supporting | 0 | sonic | unit-391731 | `0xf06b93...5ef309` | ⚠️ Unaudited |
| AppBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0194a4...80c12c`; ethereum `0x6a7f26...de4bff` | ⚠️ Unaudited |
| AppBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x1d1861...5ab516`; sonic `0x44b497...19bd75` | ⚠️ Unaudited |
| AppBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3a6ab9...b9a176`; sonic `0x7ad11d...d713a0` | ⚠️ Unaudited |
| AppBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x401d83...43bde8`; sonic `0x7fc2a1...605974`; sonic `0x978c79...be7afe`; sonic `0xabb677...239ec5`; sonic `0xca3661...f2d993`; sonic `0xfa4d29...3fb902` | ⚠️ Unaudited |
| AppBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x851c4d...c5a2da`; sonic `0xecb3ee...950b9c` | ⚠️ Unaudited |
| AppBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x192dd7...9520aa`; ethereum `0xaf721a...044afc` | ⚠️ Unaudited |
| AppBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x4b03e5...e0c91b`; ethereum `0x864f47...ea2e1a`; ethereum `0x9e84ac...eb68a8`; sonic `0x635ad3...d87270`; sonic `0xb379b4...d2a9d4` | ⚠️ Unaudited |
| AppBurner | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391740 | 2 deployments: ethereum `0x641cac...e287cc`; ethereum `0xc09eff...096ee7` | ⚠️ Unaudited |
| AppConvertibles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4b18d2...52f7d3`; ethereum `0xc8e4e9...2c24f1` | ⚠️ Unaudited |
| AppConvertibles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x51b1cb...a9284b`; ethereum `0xc3dfb1...738e6f` | ⚠️ Unaudited |
| AppConvertibles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5682e7...5abe53`; ethereum `0x65e9b4...3007c1` | ⚠️ Unaudited |
| AppConvertibles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x614699...9993be`; ethereum `0x980940...defdf0` | ⚠️ Unaudited |
| AppConvertibles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7094f2...f351a3` | ⚠️ Unaudited |
| AppConvertibles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x718278...ecb632`; ethereum `0x951de0...b1fbee` | ⚠️ Unaudited |
| AppConvertibles | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x7a054c...fd5e07`; ethereum `0xebb64c...029d65` | ⚠️ Unaudited |
| AppConvertibles | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391742 | 2 deployments: ethereum `0x86143b...a5e1e9`; ethereum `0xabb6bd...ef8195` | ⚠️ Unaudited |
| AppOptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x13eea2...9bb056`; ethereum `0xf3590d...90090a` | ⚠️ Unaudited |
| AppOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391739 | 2 deployments: ethereum `0x220774...54f1fc`; ethereum `0xd80bca...dd3622` | ⚠️ Unaudited |
| AppOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x438f98...f69b66`; bsc `0x953e6b...cfaa34`; sonic `0x828848...74b5cc` | ⚠️ Unaudited |
| AppOracle | unknown | project_anchor | own_supporting | 1 | sonic | unit-391744 | 2 deployments: sonic `0x2da785...9973ea`; sonic `0xa5d26e...e37da0` | ⚠️ Unaudited |
| AppProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7f91bc...c12090`; ethereum `0xa37518...9f7d7a` | ⚠️ Unaudited |
| AppProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8977f1...bee05d`; ethereum `0xcad2d4...26ee13` | ⚠️ Unaudited |
| AppProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xda2056...6fa9d6`; ethereum `0xf0d3e8...c3116f` | ⚠️ Unaudited |
| AppProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 10 deployments: bsc `0x68bd2e...c8de7b`; bsc `0xbb90dd...9d8cb7`; bsc `0xcb4272...c8daae`; sonic `0x191fe4...c215bb`; sonic `0x2d7075...f1194e`; sonic `0x37dcfa...9e4c13`; sonic `0x56ee21...bc779a`; sonic `0x5ec084...5426c4`; sonic `0xa0934a...3ca0a0`; sonic `0xf9fade...c0ae3e` | ⚠️ Unaudited |
| AppReferrals | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391737 | 2 deployments: ethereum `0x008311...ef9c63`; ethereum `0xb1fd2d...88a2f8` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6e984d...9e8720`; ethereum `0xcc4df4...188ae4` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x970df8...3e5dd3`; ethereum `0xdc6455...664a8b` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x076d21...8ef95b`; sonic `0x428686...d243fb`; sonic `0x53476a...8d7616`; sonic `0x62ed74...ba1802`; sonic `0xbaef85...47a97d` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3f30de...c3ad1c`; sonic `0x4eec6d...4574b2` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x41f4af...f0aa95`; sonic `0x6fe169...1b7872` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x533363...3286f5`; sonic `0xfad35a...10263c` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x85ea81...6540ed`; sonic `0xa4e05a...5f2127` | ⚠️ Unaudited |
| AppReferrals | unknown | project_anchor | own_supporting | 1 | sonic | unit-391747 | 2 deployments: sonic `0xa25f6b...2e83fa`; sonic `0xdc6455...664a8b` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xa366fc...9294db`; sonic `0xd3e536...d74652` | ⚠️ Unaudited |
| AppStaking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391743 | 2 deployments: ethereum `0xcd43c9...e46399`; ethereum `0xf5df43...8a920a` | ⚠️ Unaudited |
| AppStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 13 deployments: ethereum `0x21dd4a...dae56c`; ethereum `0x47c9f3...373f1d`; ethereum `0x57d105...f97867`; sonic `0x0088f5...bdec8a`; sonic `0x0d0210...afe5e3`; sonic `0x2927f0...1b78bf`; sonic `0x5813a0...59b1df`; sonic `0x5da462...0a7443`; sonic `0xa2233a...10aa4a`; sonic `0xb003a6...7e60f0`; sonic `0xb39938...f4f92e`; sonic `0xca0786...ab93e8`; sonic `0xccb2e9...4a19b7` | ⚠️ Unaudited |
| AppStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x7b2947...40d064`; sonic `0xd06049...a2c650` | ⚠️ Unaudited |
| AppStakingMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x926680...59606a` | ⚠️ Unaudited |
| AppStakingMigrator | periphery | project_anchor | own_supporting | 0 | ethereum | unit-391725 | `0xe7a577...fab1aa` | ⚠️ Unaudited |
| AppTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x616634...ff0fc7` | ⚠️ Unaudited |
| AppTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x00ff05...70db99`; ethereum `0x41d1ce...c85585`; ethereum `0x57626a...75cc4c`; sonic `0x374fc8...ac1f0e`; sonic `0x5728b5...b2936d`; sonic `0x953142...23fa9a`; sonic `0x9ccab5...42e43f`; sonic `0xaa1887...ffd49d`; sonic `0xdbaffa...c1af58`; sonic `0xfb1143...d58a6d` | ⚠️ Unaudited |
| AppTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xb916d9...74ee11`; sonic `0xe1d0f1...e25351` | ⚠️ Unaudited |
| AppUIHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x0194a4...80c12c`; sonic `0x235911...19753a`; sonic `0x331119...07813f`; sonic `0x582cef...5e3fbe`; sonic `0x8cf32e...f8fce2`; sonic `0xac98fb...d67a75`; sonic `0xb6c913...1e850d` | ⚠️ Unaudited |
| AppUIHelperRead | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 41 deployments: ethereum `0x13173e...debaf3`; ethereum `0x1bb0c2...385298`; ethereum `0x1d5c9b...08aabd`; ethereum `0x2d7075...f1194e`; ethereum `0x2eafbc...35ebc2`; ethereum `0x344f23...f14379`; ethereum `0x45bc62...46d1e0`; ethereum `0x49a7ed...c4d34c`; ethereum `0x5b9223...4dd0eb`; ethereum `0x71f5df...c946a8`; ethereum `0x88cc35...338c68`; ethereum `0xab6a74...fc107c`; ethereum `0xaf6053...91aae2`; ethereum `0xb64c1a...b17f4a`; ethereum `0xc47d50...da2b4b`; sonic `0x03658c...150ebf`; sonic `0x157b01...9ebd99`; sonic `0x36e1ad...87296f`; sonic `0x372e22...ea7722`; sonic `0x3df951...50195d`; sonic `0x4853cd...337e40`; sonic `0x4d5af9...c9aa5e`; sonic `0x5e6750...c70526`; sonic `0x6e984d...9e8720`; sonic `0x6f94b2...a061bb`; sonic `0x739119...384e3b`; sonic `0x77b220...97fdfd`; sonic `0x80ea1f...efe434`; sonic `0x831c2a...203899`; sonic `0x8763b7...38ae71`; sonic `0x9181a1...5ae96a`; sonic `0x9426ca...721003`; sonic `0x9fb8fb...29e52b`; sonic `0xa28066...860f44`; sonic `0xb377d3...b4eba9`; sonic `0xb3d84a...a9807d`; sonic `0xda2056...6fa9d6`; sonic `0xdaa857...72aa1b`; sonic `0xe1bcd3...039a0a`; sonic `0xe70de1...d9b376`; sonic `0xfef330...117788` | ⚠️ Unaudited |
| AppUIHelperWrite | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 38 deployments: ethereum `0x057dd3...1d2df3`; ethereum `0x1ebcc9...92d849`; ethereum `0x34b05b...b493bc`; ethereum `0x4e3e26...fe19bf`; ethereum `0x634f07...4ac479`; ethereum `0x66d7ce...1bab03`; ethereum `0x798c50...c297e1`; ethereum `0x82c874...2a9ef8`; ethereum `0x833bce...81e827`; ethereum `0x87fe4f...e34184`; ethereum `0x99a619...c3b42b`; ethereum `0xabb677...239ec5`; ethereum `0xcad00c...101849`; ethereum `0xce73b5...b94e69`; ethereum `0xe4c8c2...2d11d9`; ethereum `0xeaf227...698557`; sonic `0x03a883...22e2e1`; sonic `0x18162c...b49078`; sonic `0x26fb3f...d8fc1c`; sonic `0x3b9663...622f4a`; sonic `0x4eec8b...6e8da5`; sonic `0x5023a2...e7464f`; sonic `0x56e50c...157c18`; sonic `0x5ad701...e3f7e3`; sonic `0x66eea7...c0ba5d`; sonic `0x7f65db...d7799a`; sonic `0x84a0b5...7d6c5d`; sonic `0x9638ee...9d89be`; sonic `0x970df8...3e5dd3`; sonic `0x99a619...c3b42b`; sonic `0x99e50a...7925db`; sonic `0xa7dbf3...25ef27`; sonic `0xc5fcd9...d4e21c`; sonic `0xe236f3...5680ce`; sonic `0xeb6cde...808e25`; sonic `0xebb64c...029d65`; sonic `0xed8ab5...fadc39`; sonic `0xfd4ad1...e2412a` | ⚠️ Unaudited |
| AppVeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2e917f...c46eb4`; ethereum `0xe26ca4...657bcb` | ⚠️ Unaudited |
| BalancerBorrowAndAdd | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x03a33d...ed5cdc` | ⚠️ Unaudited |
| BeaconOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3df300...f2fdcb`; ethereum `0xaa131b...9169e4`; ethereum `0xb6cb30...d0cb2d`; ethereum `0xc06091...5ee6f5`; sonic `0x953e6b...cfaa34`; sonic `0x9e7a07...10772b` | ⚠️ Unaudited |
| BeaconOracleV2CL | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc46e15...acaf10` | ⚠️ Unaudited |
| BlackholeLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x536913...d4839c`; sonic `0xa063f9...760878`; sonic `0xe79451...87e65f` | ⚠️ Unaudited |
| BlankProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa597e7...0b803c`; sonic `0xc80e1e...78f9fc` | ⚠️ Unaudited |
| BlankTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b0cc...41a80d` | ⚠️ Unaudited |
| BoostedBalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3a41ec...76b14a`; ethereum `0x744123...0d0e7c` | ⚠️ Unaudited |
| BootstrapLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x397c75...7d0b0d` | ⚠️ Unaudited |
| BridgeL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x023f20...d47689`; ethereum `0xa0934a...3ca0a0` | ⚠️ Unaudited |
| BridgeL1 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-391717 | `0x507427...bf99df` | ⚠️ Unaudited |
| BridgeL1Reader | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x53f996...2fa879`; ethereum `0x5aa0bd...be3a38`; ethereum `0x73fe95...82c1c1`; ethereum `0x9096e1...862f32`; ethereum `0xaae0f7...aac097`; ethereum `0xb0c897...79b51b`; ethereum `0xc38115...f92f56`; ethereum `0xf818d6...90be5b` | ⚠️ Unaudited |
| BridgeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3eda1d...82db86`; sonic `0xa202db...0edb4f` | ⚠️ Unaudited |
| BridgeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x494f9a...395a96`; sonic `0xdb6da6...cf8b48` | ⚠️ Unaudited |
| BridgeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x87d2c8...688082`; sonic `0xc569a3...c41105` | ⚠️ Unaudited |
| BridgeL2 | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-391728 | `0xa48b92...a2a036` | ⚠️ Unaudited |
| BridgeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: sonic `0x56f24c...c73ff7`; sonic `0x978dd6...36f105`; base `0x21d784...531f0c`; base `0xb6b8fc...9b7a5a`; base `0xb6c913...1e850d`; base `0xbbdab8...b6a14f`; base `0xdc8fb9...215943` | ⚠️ Unaudited |
| BridgeL2Reader | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x008219...67af7a`; sonic `0x325301...e5c421`; sonic `0x4d1745...65975c`; sonic `0xb2bbdb...ecae6a`; sonic `0xb49dd7...c04328`; sonic `0xdcd067...a20506`; base `0x166172...4e329e`; base `0x52422b...dc7d55`; base `0xe86878...c6617b` | ⚠️ Unaudited |
| BridgeUpdateExecutor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2f0a48...790b2b`; ethereum `0x406cd1...f12057`; ethereum `0xdb8668...3a9418` | ⚠️ Unaudited |
| CappedOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 13 deployments: sonic `0x25052e...c28c6b`; sonic `0x2c23ec...78be5d`; sonic `0x6cfbed...0fcbd2`; sonic `0x7c5245...2e872b`; sonic `0x88da96...b8e887`; sonic `0x894d52...723a73`; sonic `0x906a4e...a65897`; sonic `0x98f1af...bce929`; sonic `0x9e65fd...38296a`; sonic `0xa13584...274fd6`; sonic `0xbaeb58...c31fe4`; sonic `0xc5050f...4bcc4a`; sonic `0xe0c7ee...bc2423` | ⚠️ Unaudited |
| CrossAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0x55b3e0...d74328`; ethereum `0x8d5c27...6c78cd`; sonic `0x3fa46d...072dc4`; sonic `0xdbe800...465a48`; sonic `0xf83b91...395a21` | ⚠️ Unaudited |
| DiaAdapterOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6bdd86...a84db9`; sonic `0xd38199...f066a1` | ⚠️ Unaudited |
| DiaAdapterOracleCapped | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x114fd4...cc77ee`; ethereum `0xce849e...f7d373` | ⚠️ Unaudited |
| ERC4626RateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xc5ea4b...1c2cc9`; ethereum `0xe1fd04...fb6a51`; ethereum `0xfb1800...83702a` | ⚠️ Unaudited |
| Euler4626Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x57e677...906524`; ethereum `0x72545e...1a84f4` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x303615...d2f3ad`; ethereum `0xbafc1a...547724`; ethereum `0xc42d33...b57e8a` | ⚠️ Unaudited |
| FixedOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x05710c...1b24ff`; ethereum `0x25d77a...e451a8`; ethereum `0x56fe1d...36a1d7`; sonic `0xa26e1e...7578ca` | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2cd4bd...ec5e37`; ethereum `0x7cefd6...3a83b5`; sonic `0x6811c1...9e1749`; sonic `0xc3ff08...8af153`; sonic `0xdb7cb0...03367b` | ⚠️ Unaudited |
| HoldersAnalysis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x62006c...b65345`; ethereum `0x8d0e27...49dc01`; ethereum `0xa43f77...193f22`; sonic `0xc24c31...8a2a58` | ⚠️ Unaudited |
| LoyaltyList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391721 | `0x9ec2dd...7dcd2e` | ⚠️ Unaudited |
| LoyaltyList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf4254e...443318` | ⚠️ Unaudited |
| lstRZROFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-391724 | `0xd3e536...d74652` | ⚠️ Unaudited |
| lstRZRSpotAggregator | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x424229...3f12c0` | ⚠️ Unaudited |
| ManualOracle4626E18 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x149f01...375200`; ethereum `0xa34d67...cb606c` | ⚠️ Unaudited |
| ManualOracleE18 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 17 deployments: ethereum `0x61e3af...3748ca`; ethereum `0x7ca024...588357`; ethereum `0xa54088...00c6f5`; ethereum `0xfedfea...17418b`; sonic `0x13253a...375bc6`; sonic `0x24a3e1...e0dd36`; sonic `0x501e10...7fe84e`; sonic `0x55c06b...d65cbf`; sonic `0x5c2c88...97923f`; sonic `0x6fbd09...de00c6`; sonic `0x77b98a...f698ba`; sonic `0x7bb3e8...975f89`; sonic `0x818d2d...122020`; sonic `0x8a6493...ed0ac7`; sonic `0xa08c57...438724`; sonic `0xb15a7e...4fb46c`; sonic `0xd693dc...bee79e` | ⚠️ Unaudited |
| MoveTreasuryPosition | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3568b8...77937e` | ⚠️ Unaudited |
| OracleV2CL | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30c07f...265f75` | ⚠️ Unaudited |
| PermissionedERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x00eec2...3dea69`; ethereum `0x34abce...3c7314`; ethereum `0x3ab51e...6686ce`; ethereum `0x45e5f6...26fb20`; ethereum `0x63e52e...337d10`; ethereum `0x70c52a...67ea14`; ethereum `0x9a7ba7...b2998c`; ethereum `0xa599be...649f16`; ethereum `0xc3a45e...45e1c6`; ethereum `0xda51cc...3df0d0` | ⚠️ Unaudited |
| PermissionedERC20Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0df76f...74494f`; ethereum `0x26d6ed...f0f3c3` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-391714 | `0x33812b...e08982` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | sonic | unit-391730 | `0xd9af86...bed0a2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: bsc `0x9e7a07...10772b`; base `0x07249b...e28af2` | ⚠️ Unaudited |
| RateProviderOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0x3a6ab9...b9a176`; ethereum `0x51e1e5...42504b`; ethereum `0x7d2ed2...20fef4`; ethereum `0xe2fbda...bf33d0`; sonic `0x379b70...e30805`; sonic `0x5547ed...44caab` | ⚠️ Unaudited |
| RebaseController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x01c8af...948095`; ethereum `0x18162c...b49078`; ethereum `0x2aee5c...db66e6`; ethereum `0x92a65e...78b563`; sonic `0x1be068...147440`; sonic `0x2f567c...a9ac54`; sonic `0xcad00c...101849` | ⚠️ Unaudited |
| RebaseController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391738 | 2 deployments: ethereum `0x096bb2...b53276`; ethereum `0xfad35a...10263c` | ⚠️ Unaudited |
| RebaseController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1bb2ba...475031`; ethereum `0x4c7e55...00eb13` | ⚠️ Unaudited |
| RebaseController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x1ebcc9...92d849`; sonic `0x344f23...f14379` | ⚠️ Unaudited |
| RZR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391723 | `0xb44444...cbd1f5` | ⚠️ Unaudited |
| RZR | unknown | project_anchor | own_supporting | 0 | sonic | unit-391729 | `0xb44444...cbd1f5` | ⚠️ Unaudited |
| RZROFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-391726 | `0xe97493...f0b53c` | ⚠️ Unaudited |
| RZROFTAdapter | adapter | project_anchor | own_supporting | 0 | sonic | unit-391727 | `0x6419f0...bb2f3a` | ⚠️ Unaudited |
| RZRSpotAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x617201...0847bb` | ⚠️ Unaudited |
| RZRTWAPOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x81707a...800609`; sonic `0xb8cdaf...c75c99` | ⚠️ Unaudited |
| ShadowAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x13173e...debaf3`; sonic `0x641cac...e287cc` | ⚠️ Unaudited |
| ShadowLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b1fc5...47ea21` | ⚠️ Unaudited |
| ShadowLPOracleSecondary | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x41f145...cc8284`; sonic `0xa1ef32...bf908d` | ⚠️ Unaudited |
| ShadowSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0e47ad...16e90e` | ⚠️ Unaudited |
| SpectraLPOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: ethereum `0x8a3f01...0f9333`; sonic `0x4825c5...3ebcaf`; sonic `0x69357b...8ffb37` | ⚠️ Unaudited |
| sRZR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391718 | `0x5de77c...f70aaf` | ⚠️ Unaudited |
| sRZR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x33812b...e08982`; sonic `0x470ce7...f96710` | ⚠️ Unaudited |
| Staking4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x219ac4...dbe5cc`; ethereum `0x411434...01af8c`; ethereum `0xa57756...95d45e` | ⚠️ Unaudited |
| Staking4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 12 deployments: ethereum `0x3f76c1...6eb7bc`; ethereum `0x5aac50...dfe3cc`; ethereum `0x6521fa...029f05`; ethereum `0xd6940e...1cfaf5`; sonic `0x008311...ef9c63`; sonic `0x5a9d59...2e1359`; sonic `0x73bc78...7cf0e6`; sonic `0xc38115...f92f56`; sonic `0xc8889c...f982e2`; sonic `0xe9cfb9...0e0bf1`; sonic `0xed129a...7ef9ec`; sonic `0xee386d...bee2f0` | ⚠️ Unaudited |
| Staking4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x06f961...dc03ae`; sonic `0x7d94f3...4508d2` | ⚠️ Unaudited |
| Staking4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x429280...36f18f`; sonic `0x9b4199...e3b678` | ⚠️ Unaudited |
| Staking4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xb1fd2d...88a2f8`; sonic `0xb64c1a...b17f4a` | ⚠️ Unaudited |
| Staking4626L2 | unknown | project_anchor | own_supporting | 1 | sonic | unit-391745 | 2 deployments: sonic `0x67a298...5f53cb`; sonic `0x8b5ecb...51dab9` | ⚠️ Unaudited |
| Staking4626L2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x286891...cfa214`; base `0x8cf32e...f8fce2` | ⚠️ Unaudited |
| Staking4626L2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: bsc `0x96f302...efbe62`; sonic `0x5ed69d...92f7ba`; sonic `0xa8a293...0defda`; base `0x5744d6...2c197b` | ⚠️ Unaudited |
| Staking4626L2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x582cef...5e3fbe`; base `0xdc5147...ecf22d` | ⚠️ Unaudited |
| Staking4626L2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6a72c8...d8977b`; base `0xa42400...aab3c6` | ⚠️ Unaudited |
| StakingDistributionLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391715 | `0x3e4df7...b6e802` | ⚠️ Unaudited |
| StakingDistributionLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x7c8b59...944552`; sonic `0x8ae837...8d2cb5` | ⚠️ Unaudited |
| TokenList | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0xb68b2b...f67b5c`; bsc `0x3b3c53...1126e0`; sonic `0x09639d...2fe363`; sonic `0x1e3e7b...5ed9c7`; sonic `0xe8cb54...fd9917`; base `0x06f961...dc03ae` | ⚠️ Unaudited |
| TotalReservesOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x331119...07813f`; ethereum `0x3c6e86...117b74` | ⚠️ Unaudited |
| TotalReservesOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7f65db...d7799a`; ethereum `0xfeab18...9f9159` | ⚠️ Unaudited |
| TotalReservesOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391741 | 2 deployments: ethereum `0x90a2ca...8a9ea7`; ethereum `0xe148d8...a55f81` | ⚠️ Unaudited |
| TotalSupplyOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0000e2...d3ece1`; ethereum `0x5deb69...ec79c0` | ⚠️ Unaudited |
| TotalSupplyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x13da25...b88de9`; ethereum `0xff6e1d...c19951` | ⚠️ Unaudited |
| TotalSupplyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x39f7b7...011f72`; ethereum `0xa36dc6...5a8748` | ⚠️ Unaudited |
| TotalSupplyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x87a037...09757f`; ethereum `0xeb6cde...808e25` | ⚠️ Unaudited |
| TwapOracleV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbaeb58...c31fe4`; ethereum `0xe90a0e...22537a` | ⚠️ Unaudited |
| UnbackedAccounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x44421a...98f423` | ⚠️ Unaudited |
| UniV2LPOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 13 deployments: ethereum `0x5d4dca...8f5137`; sonic `0x1ec695...a84951`; sonic `0x1fc91c...fea5bc`; sonic `0x273ac3...c8f4e0`; sonic `0x4cbe17...fb499e`; sonic `0x5e7c3e...e9ecd9`; sonic `0x8478a8...4ebf6f`; sonic `0x91cac1...73b8ce`; sonic `0xb05993...3953b0`; sonic `0xb0b59b...e37f00`; sonic `0xb17878...18e03d`; sonic `0xcb4272...c8daae`; sonic `0xef6eb7...4d85aa` | ⚠️ Unaudited |
| UniV4LPOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x097a20...246c59`; ethereum `0x1e884f...021571`; ethereum `0xb0c7b4...0314d9` | ⚠️ Unaudited |
| UniV4LPPosOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b9f57...dea03f` | ⚠️ Unaudited |
| UniV4LPSpotOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e91f8...b289d6`; ethereum `0x980288...d287bf` | ⚠️ Unaudited |
| USD69Bond | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x0b0268...930bb5`; ethereum `0x393cf5...18ff29`; ethereum `0x896f0d...25a224`; ethereum `0xfde214...955a56` | ⚠️ Unaudited |
| USD69Bond | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x1a29d2...851828`; ethereum `0x7922ee...c7766d`; ethereum `0xec9d65...3c30a5`; ethereum `0xfdc099...679c38` | ⚠️ Unaudited |
| USD69Treasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0fd35f...3c7fe8`; ethereum `0xf83b91...395a21` | ⚠️ Unaudited |
| USD69Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x136727...759ef5`; ethereum `0x88d596...a84fea` | ⚠️ Unaudited |
| USDBond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3839a0...4145ec`; ethereum `0x448d17...555fe5` | ⚠️ Unaudited |
| USDTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa70850...e85530` | ⚠️ Unaudited |
| UserRoleChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0x1ae9d2...226bd4`; ethereum `0x1b5b67...e87af8`; ethereum `0xa4ca16...be2d77`; ethereum `0xdb4727...0372e3`; ethereum `0xfe64ec...233d92`; sonic `0x11d3ad...de3b21` | ⚠️ Unaudited |
| YieldLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391720 | `0x739f49...dc1b2c` | ⚠️ Unaudited |
| YieldLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x53bdc5...2662cd`; sonic `0xc47d50...da2b4b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391713 | `0x000003...ac1ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x249219...6ac924` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391719 | `0x6969c3...6265b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa13584...274fd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391722 | `0xb33f4b...0d52cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf96a8...d5aea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfe946...be1f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb8922...2bb874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x397c75...7d0b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b1fc5...47ea21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95186f...2f8383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd05589...3f5513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe10abd...fe885a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd3faa...37b404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x00cf23...156a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1426ad...898db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x14df43...9f94cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x17b58a...1b5392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2ae19f...29ad3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x34648a...c733ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x575406...5f52a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x60b4e2...79916b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x67a2b9...8c96fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7198f2...a81426` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8c7f6b...fa6b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb0946a...9d5a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb3e634...361c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xce78ca...e57412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd57e1c...8462f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf6a15f...283229` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391736 | `0xb44444...cbd1f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391734 | `0xb33f4b...0d52cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391735 | `0xb44444...cbd1f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe377bf...bb23c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391732 | `0xb33f4b...0d52cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391733 | `0xb44444...cbd1f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-06-21-halborn.pdf](https://github.com/rezervemoney/code/blob/main/audits/2025-06-21-halborn.pdf) | Halborn | Audit | 2025-06 | aging | Direct | n/a | matched | 1 | 1 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2808] 2025-06-21-halborn.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-06-21-halborn.pdf | AppTreasury | own proxy deployment | AppProxy (proxy) (selected) `0xe22e10...0efc85` — deployed 2025-06-12 13:40:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x43a38a...45417d` | AppAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xf06b93...5ef309` | AppAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x641cac...e287cc` | AppBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x86143b...a5e1e9` | AppConvertibles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x220774...54f1fc` | AppOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x2da785...9973ea` | AppOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x008311...ef9c63` | AppReferrals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa25f6b...2e83fa` | AppReferrals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd43c9...e46399` | AppStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe7a577...fab1aa` | AppStakingMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x507427...bf99df` | BridgeL1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa48b92...a2a036` | BridgeL2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9ec2dd...7dcd2e` | LoyaltyList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd3e536...d74652` | lstRZROFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x096bb2...b53276` | RebaseController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb44444...cbd1f5` | RZR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb44444...cbd1f5` | RZR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe97493...f0b53c` | RZROFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x6419f0...bb2f3a` | RZROFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5de77c...f70aaf` | sRZR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x67a298...5f53cb` | Staking4626L2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e4df7...b6e802` | StakingDistributionLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x90a2ca...8a9ea7` | TotalReservesOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x739f49...dc1b2c` | YieldLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 142 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 37 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
