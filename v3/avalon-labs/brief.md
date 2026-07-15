# Agentic Audit Brief: Avalon Labs

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 23 (0 matched; 23 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 38.3% over 90 days

## Project Overview

- Project: Avalon Labs (`avalon-labs`)
- Website: [https://www.avalonfinance.xyz](https://www.avalonfinance.xyz)
- Lifecycle: unknown (Tier 0, 85.1% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, kaia, mantle, merlin, mode, scroll, sei, sonic
- Contract surface: 582 unique implementations (1578 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $398,187,502.00
- On-chain TVL (included contracts): $1,990,093.28
- TVL by chain: Bsc $1,990,093.28 | Ethereum $0.00

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Avalon Labs in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 582 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 35
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/64
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 12
- Unverified implementations: 518
- Unique implementations: 582
- Raw deployments: 1578
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 9 aging, 3 stale, 11 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StakedUSDX | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7788a3...d87d92` | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x549806...8f61b6` | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x6100bd...7bf2ae` | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xf09ab9...2477d7` | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x61361e...edf712` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 25 deployments: ethereum `0x2ee043...d1c2ef`; ethereum `0x87ed94...acab67`; ethereum `0xfabb0f...ead7e2`; bsc `0x2c4aeb...bd1966`; bsc `0x5157f6...96a09e`; bsc `0x56f817...84b351`; bsc `0x58c937...fff03c`; bsc `0x5b9b3c...a587dc`; bsc `0x672b19...ed8c39`; bsc `0x9515dc...b7f9d8`; bsc `0xa34f1a...1fa20f`; bsc `0xc5b05b...79b6c9`; bsc `0xf828a7...54fe5c`; sonic `0x1c6e95...b0481f`; sonic `0x23f02c...f59a02`; sonic `0x28350e...eb4700`; sei `0x16b9b8...d45121`; sei `0x5ecdc2...c40ec0`; base `0xa9d15c...8f7d50`; mode `0x8f016f...e2de74`; mode `0xc5b05b...79b6c9`; arbitrum `0x2c4aeb...bd1966`; arbitrum `0xec579d...086a6f`; arbitrum `0xfabb0f...ead7e2`; scroll `0x18cbe7...da53f2` | ⚠️ Unaudited |
| ACLManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 41 deployments: ethereum `0x7b3e55...5b7dc4`; ethereum `0x96026a...d2a2d3`; ethereum `0xa59a40...47bfd9`; ethereum `0xa61984...ff0c4b`; ethereum `0xe8ac17...758a75`; bsc `0x3185b4...3954af`; bsc `0x35b7b2...500673`; bsc `0x391589...f398b1`; bsc `0x6c47c0...9d83c1`; bsc `0x7b0d1b...9bb253`; bsc `0x8e2fe9...71dedd`; bsc `0xa09c62...d2584a`; bsc `0xa0f525...6b93b8`; bsc `0xa4e56c...b4f0a6`; bsc `0xa59a40...47bfd9`; bsc `0xae5d15...c88537`; bsc `0xd792ef...7a38ac`; bsc `0xdc041a...b5049e`; bsc `0xefdf8c...1df32d`; sonic `0x27e9ef...1d40fe`; sonic `0x2ff778...7f0f8c`; sonic `0x4077bd...14e2ae`; sonic `0x543e07...979001`; sonic `0x5a140f...4926ff`; sonic `0x773e23...fdaf29`; sonic `0x877fe0...59b7d6`; sonic `0x979063...54e92b`; sonic `0xa4a24a...3bdd3f`; sonic `0xa6f5e8...808eca`; sonic `0xaef434...11e538`; sonic `0xaf9335...3ae50d`; sonic `0xcc1dc3...40f1e4`; sei `0x123984...bad727`; sei `0x93638a...412b20`; base `0x9c51f3...f22e7b`; base `0xb96166...21d928`; mode `0x8692d9...e62cd2`; mode `0xc6a936...8f74bb`; arbitrum `0x2ee043...d1c2ef`; arbitrum `0x5beb78...5f7d82`; arbitrum `0xa09c62...d2584a` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 40 deployments: ethereum `0x0b7ca1...dd19c1`; ethereum `0x0c7f3d...821240`; ethereum `0x1db6c5...cdb03e`; ethereum `0xa40eee...502a14`; ethereum `0xa68c3a...fb2249`; bsc `0x03daec...e98cbc`; bsc `0x071386...331a9f`; bsc `0x2ec8cb...ad6800`; bsc `0x2f03d3...369d64`; bsc `0x490db6...18d4fa`; bsc `0x4ea458...742363`; bsc `0x66e558...46fffa`; bsc `0x6e1403...d76b87`; bsc `0x6f4279...6234e9`; bsc `0x8b3e95...8d0b75`; bsc `0x9d321e...526a64`; bsc `0xa8cec5...5c4053`; bsc `0xecf17b...0cdefb`; sonic `0x079177...2ae37b`; sonic `0x1ab0ca...c8c8ba`; sonic `0x43f466...682a5b`; sonic `0x5ca2fa...cd0c8d`; sonic `0x68f7cb...ef34ab`; sonic `0x6ba717...a1b279`; sonic `0x8856a6...8df7ab`; sonic `0x8b1eef...b1b16e`; sonic `0x8f1c08...92a62e`; sonic `0xcf4c40...0b7554`; sonic `0xe01fd6...9bca14`; sonic `0xe850f4...6e53b7`; sonic `0xfbcf61...51bf0c`; sei `0x3a6d7e...772ba3`; sei `0x91e3b4...89a757`; base `0x9d90f8...a3a4e1`; base `0xf7617c...20b5e8`; mode `0x5336eb...122a9a`; mode `0x89d885...b4bbd8`; arbitrum `0x2ec8cb...ad6800`; arbitrum `0x90ea8c...bc929d`; arbitrum `0xa8cec5...5c4053` | ⚠️ Unaudited |
| Avalon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9124b9...400330`; bsc `0x9beee8...fdc202` | ⚠️ Unaudited |
| AvalonTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e93f3...2b603f` | ⚠️ Unaudited |
| AVLStaking | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0x2c9b3d...7a1680`; ethereum `0x833e15...f5048d`; bsc `0x1c961a...69ec3b` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 186 deployments: ethereum `0x01f4b5...f53ebf`; ethereum `0x075df6...06e326`; ethereum `0x108587...8b81ca`; ethereum `0x1bf297...eddedb`; ethereum `0x1c81ea...7e4857`; ethereum `0x1cc929...28238a`; ethereum `0x30aa4c...53d5e7`; ethereum `0x331c8b...77c8f4`; ethereum `0x351aa4...7e5ba1`; ethereum `0x4892aa...d021d1`; ethereum `0x4c25c2...51bce4`; ethereum `0x526580...9230e6`; ethereum `0x558bea...0a651c`; ethereum `0x5a61b1...66bc6e`; ethereum `0x5f7ceb...98c358`; ethereum `0x7148ad...bd7bd5`; ethereum `0x787e38...ccbbea`; ethereum `0x7c1f51...ea1643`; ethereum `0x7d51cb...cfe73c`; ethereum `0x80b5be...5e1993`; ethereum `0x8c1582...b9a467`; ethereum `0x9783be...bb7de6`; ethereum `0x9a1815...70d0ce`; ethereum `0x9d321e...526a64`; ethereum `0xa0d400...4ea6b9`; ethereum `0xa23e2b...aa7295`; ethereum `0xa8944a...fc72e6`; ethereum `0xb2a64a...dd4928`; ethereum `0xb6661f...e51a8e`; ethereum `0xca2da6...e582c0`; ethereum `0xd63332...15af88`; ethereum `0xd96da8...0ab5f6`; ethereum `0xea714f...1d6fee`; ethereum `0xf043f5...3e3e89`; ethereum `0xfd88b2...ae6bcf`; bsc `0x002481...df0a5e`; bsc `0x016f4d...00205d`; bsc `0x0230c0...0c6375`; bsc `0x03372f...a9deec`; bsc `0x075df6...06e326`; bsc `0x07e1ae...bc5d9f`; bsc `0x0a444c...92dc09`; bsc `0x0b5965...f91add`; bsc `0x1076a0...6e57c0`; bsc `0x154273...528ffa`; bsc `0x191280...31f9b2`; bsc `0x1c81ea...7e4857`; bsc `0x26fd39...de4b54`; bsc `0x297201...e21ea8`; bsc `0x2e6b79...dff496`; bsc `0x2e7b1d...dfcd85`; bsc `0x2f88c4...60cfcc`; bsc `0x332a0b...c8d776`; bsc `0x3456f1...380bb3`; bsc `0x38647f...cd5858`; bsc `0x3c4537...526351`; bsc `0x42d147...245776`; bsc `0x49c13d...59d7de`; bsc `0x4bb77e...4c3b8e`; bsc `0x4ea93e...58fcee`; bsc `0x4faece...7b79a1`; bsc `0x517744...6874e8`; bsc `0x53b35d...d93a44`; bsc `0x5a61b1...66bc6e`; bsc `0x60e3ef...2c95e8`; bsc `0x648cb2...95ec95`; bsc `0x66432c...827570`; bsc `0x6755fe...e3491f`; bsc `0x774636...16b3e6`; bsc `0x78fa4e...e2f10b`; bsc `0x7dbe4a...666a92`; bsc `0x7f013b...731633`; bsc `0x821d2e...1baaa2`; bsc `0x84071c...52e80f`; bsc `0x8424e2...76eb91`; bsc `0x85491e...d8f937`; bsc `0x87656c...71dd22`; bsc `0x897bf2...9e1441`; bsc `0x9a1815...70d0ce`; bsc `0x9b4149...560139`; bsc `0xa1a764...8ced42`; bsc `0xab8371...e8af0e`; bsc `0xad833e...781087`; bsc `0xb2c6f2...1f2c25`; bsc `0xb2df8c...9b7b80`; bsc `0xb60a7e...7fc584`; bsc `0xb801dc...d994ea`; bsc `0xbd0147...278709`; bsc `0xc01173...e46c25`; bsc `0xc0aafe...15237e`; bsc `0xc18e92...feaca6`; bsc `0xc8b602...f9dded`; bsc `0xcb3bfa...1e7efc`; bsc `0xccc613...c2feda`; bsc `0xd5d37f...e02f2b`; bsc `0xddd646...87d683`; bsc `0xde33ce...be0212`; bsc `0xea8e3d...6d8896`; bsc `0xecf226...c4e40f`; bsc `0xf0d077...1e57ea`; bsc `0xf37c6c...7503ef`; bsc `0xf9511b...774134`; bsc `0xfb2e7f...9185be`; bsc `0xfbd67f...7fb6ab`; bsc `0xfe48b5...d7b631`; bsc `0xfe59ca...91c41e`; sonic `0x0ccb6f...f985da`; sonic `0x143fda...588b98`; sonic `0x17aa0e...e0c1b7`; sonic `0x1c2031...b63bc1`; sonic `0x2329bf...e562ac`; sonic `0x276f2e...85d851`; sonic `0x3c3271...9b9a29`; sonic `0x3d678b...bf4d2f`; sonic `0x4384ca...6bcb0a`; sonic `0x5126ad...45b389`; sonic `0x577c75...68088b`; sonic `0x5e2ab9...ca8385`; sonic `0x641c0b...704b9e`; sonic `0x6aea35...4468a9`; sonic `0x6ddcc9...e0765d`; sonic `0x7dbe4a...666a92`; sonic `0x8b83a1...3ef134`; sonic `0x947a17...ec2b13`; sonic `0xa7da5a...885ba6`; sonic `0xad0e48...e1ed94`; sonic `0xbb1035...a701f6`; sonic `0xbd68cc...17fbf8`; sonic `0xc3f180...5b5b9f`; sonic `0xcb3bfa...1e7efc`; sonic `0xd18f63...008b84`; sonic `0xd30cb9...3ab6fa`; sonic `0xd7b09e...cfb95c`; sonic `0xde3cc2...996bc4`; sonic `0xdf4bcc...6cab53`; sonic `0xe2f68b...10b92e`; sonic `0xe32dd6...818c3b`; sonic `0xe4bfdf...28bc9d`; sonic `0xf690b3...cc6b3f`; sonic `0xf9d3b2...1c6af0`; sei `0x4faece...7b79a1`; sei `0xed2cb8...1f4102`; base `0x07e1ae...bc5d9f`; base `0x19e685...d53e05`; base `0x1d6d16...6f4786`; base `0x2c84d2...36ac66`; base `0x332a0b...c8d776`; base `0x407759...719f1a`; base `0x4ea93e...58fcee`; base `0x67fd19...eca203`; base `0x732712...f5dcbf`; base `0x774636...16b3e6`; base `0x84071c...52e80f`; base `0x85491e...d8f937`; base `0xb2763a...a6f03d`; base `0xc76aab...ea746b`; base `0xd43ab3...b07dd3`; base `0xe329c3...d94082`; mode `0x07e1ae...bc5d9f`; mode `0x1d6d16...6f4786`; mode `0x2c84d2...36ac66`; mode `0x332a0b...c8d776`; mode `0x3456f1...380bb3`; mode `0x407759...719f1a`; mode `0x4ea93e...58fcee`; mode `0x67fd19...eca203`; mode `0x732712...f5dcbf`; mode `0x774636...16b3e6`; mode `0x84071c...52e80f`; mode `0x85491e...d8f937`; mode `0xc0aafe...15237e`; mode `0xc76aab...ea746b`; mode `0xd43ab3...b07dd3`; mode `0xe329c3...d94082`; arbitrum `0x075df6...06e326`; arbitrum `0x1c81ea...7e4857`; arbitrum `0x410d2d...d38bd0`; arbitrum `0x5a61b1...66bc6e`; arbitrum `0x7148ad...bd7bd5`; arbitrum `0x821d2e...1baaa2`; arbitrum `0x9a1815...70d0ce`; arbitrum `0xa28b10...4e1dcf`; arbitrum `0xa46f33...77f0fe`; arbitrum `0xa68c3a...fb2249`; arbitrum `0xf96160...cf9371`; scroll `0x4ea93e...58fcee` | ⚠️ Unaudited |
| DelegationAwareAToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 41 deployments: ethereum `0x2ec8cb...ad6800`; ethereum `0x5ae7ee...506fca`; ethereum `0xd06900...c24212`; ethereum `0xf165d1...df7560`; ethereum `0xf96160...cf9371`; ethereum `0xff12c4...c9ad1f`; bsc `0x0be33c...2dddb0`; bsc `0x0fb0ac...f4f848`; bsc `0x3c5e34...0d24b8`; bsc `0x45dc26...6cdd05`; bsc `0x47de2f...454e69`; bsc `0x5336eb...122a9a`; bsc `0x6b529a...738abe`; bsc `0x7c1f51...ea1643`; bsc `0x89d885...b4bbd8`; bsc `0xb33a59...f74fac`; bsc `0xc89c55...e344be`; bsc `0xe4a5a2...d23d9c`; bsc `0xe6ccc9...bd54b3`; sonic `0x176442...2a960e`; sonic `0x1c95ca...3819bd`; sonic `0x5278cd...4939b4`; sonic `0x53ad20...8389df`; sonic `0x7fadb6...3c1454`; sonic `0xa72bbc...a8b7aa`; sonic `0xaf3d60...790bff`; sonic `0xbe675d...52c1f8`; sonic `0xbfe57a...c46f16`; sonic `0xdb0e54...16df3e`; sonic `0xe082ae...1bf8ea`; sonic `0xec14fa...7083b4`; sonic `0xec4e51...a131d7`; sei `0x68f7cb...ef34ab`; sei `0xee4cfd...284a17`; base `0x00c461...ccf3ea`; base `0xe35e20...e80605`; mode `0x00c461...ccf3ea`; mode `0xfc8f7a...c9e877`; arbitrum `0x47de2f...454e69`; arbitrum `0xb33a59...f74fac`; arbitrum `0xf6ae90...d3261f` | ⚠️ Unaudited |
| DisableStableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 2 deployments: sei `0x7abad5...c69517`; sei `0x7fadb6...3c1454` | ⚠️ Unaudited |
| EmissionManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 41 deployments: ethereum `0x62b1d1...4b348b`; ethereum `0x6a6352...092380`; ethereum `0xaaf640...0b533b`; ethereum `0xd58c01...66c77b`; ethereum `0xf6ae90...d3261f`; bsc `0x0ba21b...578dcf`; bsc `0x10003a...7c26e5`; bsc `0x13d8ae...784e46`; bsc `0x1525c9...23d157`; bsc `0x1f6db1...f1a6f4`; bsc `0x2336f8...1cc024`; bsc `0x787e38...ccbbea`; bsc `0xa0324f...067002`; bsc `0xb683af...9c600d`; bsc `0xbdd272...0c6d0f`; bsc `0xc324a5...4bdb66`; bsc `0xccb223...86c11a`; bsc `0xea1487...9d2a4a`; bsc `0xf6ae90...d3261f`; sonic `0x02b1ae...88b643`; sonic `0x0615f3...522228`; sonic `0x3d3cc6...a54c37`; sonic `0x4092d4...a035fb`; sonic `0x441e6d...37e8e5`; sonic `0x66127c...1cac71`; sonic `0x73e278...79f139`; sonic `0x74fa27...028130`; sonic `0x80f1bc...5f6159`; sonic `0x930dc5...5129df`; sonic `0xdc6b05...0d0ad9`; sonic `0xe0c776...f9051f`; sonic `0xffc008...2fbb8a`; sei `0x3b3f1c...6d7919`; sei `0x4085d6...aeea9e`; base `0x95feaa...eb0dc4`; base `0xdb72b9...b49327`; mode `0xa22de2...1890ab`; mode `0xb5250a...fbb57d`; arbitrum `0x13d8ae...784e46`; arbitrum `0x2336f8...1cc024`; arbitrum `0xbf174f...4b67ae` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x266f93...116cc3`; bsc `0x266f93...116cc3`; mantle `0x266f93...116cc3` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2aa51a...9a8247` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0c3616...8ceba5` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 37 deployments: ethereum `0x5223fd...2021e0`; ethereum `0xb1c93b...0c0cc0`; ethereum `0xe9a816...092559`; ethereum `0xec579d...086a6f`; bsc `0x1219f7...78ea84`; bsc `0x130efb...9cf1ef`; bsc `0x1ddc55...e54ba8`; bsc `0x3a7975...eab9aa`; bsc `0x43248d...2d81ec`; bsc `0x44d377...7dcb37`; bsc `0xb5ec04...293526`; bsc `0xce9bbb...e7c1d1`; bsc `0xced7b2...3e15b1`; bsc `0xe9a816...092559`; bsc `0xebefa4...bd92c9`; bsc `0xec579d...086a6f`; bsc `0xf5f4ce...86a757`; sonic `0x0ed855...cc7993`; sonic `0x1d20d3...f80aad`; sonic `0x31025a...ae85b7`; sonic `0x385c88...c4153f`; sonic `0x55e225...4f9fc1`; sonic `0x661549...ce744a`; sonic `0xacc2a4...7abd80`; sonic `0xadb293...3e0e00`; sonic `0xae6653...5e9a67`; sonic `0xbf4b52...fe39f6`; sonic `0xe133e5...2ff3e8`; sonic `0xe621fa...cae1db`; sei `0x3939c9...1e3d12`; sei `0xd8c543...d93a1f`; base `0x4e2fcc...2f465b`; base `0xa7f475...288643`; mode `0x707b8c...2a6991`; mode `0xb5ec04...293526`; arbitrum `0xe9a816...092559`; arbitrum `0xf5f4ce...86a757` | ⚠️ Unaudited |
| L2Encoder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5de10a...0ab32b` | ⚠️ Unaudited |
| LockedFBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 6 deployments: ethereum `0x3119a1...7b93b9`; ethereum `0x8dc0d5...89f39c`; bsc `0x3119a1...7b93b9`; bsc `0x8dc0d5...89f39c`; mantle `0x3119a1...7b93b9`; mantle `0x8dc0d5...89f39c` | ⚠️ Unaudited |
| ParaSwapLiquiditySwapAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1a4148...f6066b`; arbitrum `0x4892aa...d021d1` | ⚠️ Unaudited |
| ParaSwapRepayAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x20e252...62e260`; arbitrum `0xa23e2b...aa7295` | ⚠️ Unaudited |
| ParaSwapWithdrawSwapAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x672b19...ed8c39`; arbitrum `0xd62d41...9e9aac` | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 41 deployments: ethereum `0x0fb570...084ded`; ethereum `0x3e2b69...94e8ba`; ethereum `0x42d147...245776`; ethereum `0xd76fdb...188311`; ethereum `0xfb5ee3...46087a`; bsc `0x27e9ef...1d40fe`; bsc `0x552260...a65b6c`; bsc `0x55b90d...48836f`; bsc `0x7d51cb...cfe73c`; bsc `0x8ca0fe...de1784`; bsc `0xa7f475...288643`; bsc `0xb1976f...7dbb74`; bsc `0xca9de7...fa2f1b`; bsc `0xd74954...2e8cbf`; bsc `0xd76fdb...188311`; bsc `0xdddff8...682345`; bsc `0xdf19e2...5d1db3`; bsc `0xe776a6...f13a1d`; bsc `0xfb5ee3...46087a`; sonic `0x08500a...97b064`; sonic `0x0e2c09...8c314e`; sonic `0x1190bd...e09d08`; sonic `0x267587...4e8984`; sonic `0x28292e...3cb8cb`; sonic `0x2c4aeb...bd1966`; sonic `0x3a94bc...b03906`; sonic `0x45bfbb...8559c2`; sonic `0x51faed...5d1c8b`; sonic `0x88f3f2...d67d18`; sonic `0xbff2ea...4b614f`; sonic `0xd575c5...2ccb94`; sonic `0xfc86bc...23e458`; sei `0x4a4cea...6f4794`; sei `0xc8ef1f...b5a1e8`; base `0x3c3f70...877634`; base `0x952356...ba3dff`; mode `0x8ca0fe...de1784`; mode `0xef83dd...e49af1`; arbitrum `0xc48790...dba4b4`; arbitrum `0xca9de7...fa2f1b`; arbitrum `0xfb5ee3...46087a` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 44 deployments: ethereum `0x3975be...4f5273`; ethereum `0x53b8c6...3bb0de`; ethereum `0x699bf9...580066`; ethereum `0x91bd7f...f55db1`; ethereum `0xe00a3f...0facc0`; ethereum `0xff1247...fe9acc`; bsc `0x0ed855...cc7993`; bsc `0x490f8f...75ca93`; bsc `0x539520...8416c1`; bsc `0x655b6f...bfd5a0`; bsc `0x8264e8...8c8e77`; bsc `0x9af028...85d647`; bsc `0xa26db1...d8aa5d`; bsc `0xa57089...81573b`; bsc `0xb1c93b...0c0cc0`; bsc `0xbf62c0...261dcf`; bsc `0xc37441...c836a8`; bsc `0xdb8cab...d1ca6e`; bsc `0xe00a3f...0facc0`; bsc `0xff1247...fe9acc`; sonic `0x1a269d...ab1ebe`; sonic `0x1b50da...ebaee9`; sonic `0x2155f9...d55c2e`; sonic `0x2884f5...4cc273`; sonic `0x322899...4027f1`; sonic `0x472971...bdf68f`; sonic `0x707a69...478f02`; sonic `0x7be444...5ea40c`; sonic `0x85f033...c608a3`; sonic `0x99e5f2...ea6a89`; sonic `0xcaaeac...8f8015`; sonic `0xdb2d5a...7631d3`; sonic `0xdef76e...e71e47`; sonic `0xf9b488...3bfe9a`; sei `0x01efe2...017de2`; sei `0x4b9d58...7231d0`; base `0x0fa655...1e56da`; base `0xc65170...cc74f2`; mode `0x490f8f...75ca93`; mode `0xe3b01b...ef5dcc`; arbitrum `0xa2ddc0...34ee1a`; arbitrum `0xdb8cab...d1ca6e`; arbitrum `0xff1247...fe9acc`; scroll `0xfbb77a...e90c70` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x28350e...eb4700`; bsc `0x373ab8...7a50f9`; sei `0x5c7163...6082a4`; sei `0xcde33b...218ebd` | ⚠️ Unaudited |
| ReservesSetupHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 41 deployments: ethereum `0x0128a4...1073c5`; ethereum `0x03ac80...f5dd8f`; ethereum `0x12f855...3a2bcb`; ethereum `0x2d5c79...8485c9`; ethereum `0x5d5d38...09559c`; bsc `0x28997c...792ab0`; bsc `0x2d5c79...8485c9`; bsc `0x310d06...fea699`; bsc `0x33677b...490a1b`; bsc `0x36b952...7baa4b`; bsc `0x5a7b15...9b275a`; bsc `0x76bf4f...d9f060`; bsc `0x8cef3c...681a07`; bsc `0x94dd21...45b40d`; bsc `0x9dc49f...2101c2`; bsc `0xa9d15c...8f7d50`; bsc `0xaee883...f75b1d`; bsc `0xe8ac17...758a75`; bsc `0xfe0c81...88fb77`; sonic `0x0b112e...0b320b`; sonic `0x2f44fe...187266`; sonic `0x4df59a...1c3e86`; sonic `0x663abf...d8d85d`; sonic `0x7cc279...84a568`; sonic `0x867885...1d76a2`; sonic `0x93638a...412b20`; sonic `0xa25bc4...19dab1`; sonic `0xa32658...a9eaee`; sonic `0xa3268b...b095a7`; sonic `0xa5255c...5bdbf1`; sonic `0xe46986...30502b`; sonic `0xf1e07b...c7d265`; sei `0x01030d...3f6f97`; sei `0xe776a6...f13a1d`; base `0x391589...f398b1`; base `0x4ab385...f76535`; mode `0x279600...6f2962`; mode `0xdc041a...b5049e`; arbitrum `0x7acc51...d6c67f`; arbitrum `0x85173f...2b0b06`; arbitrum `0x9dc49f...2101c2` | ⚠️ Unaudited |
| RewardsController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 42 deployments: ethereum `0x57e586...a4f7e7`; ethereum `0x7b0d1b...9bb253`; ethereum `0x9b1c7d...e5381b`; ethereum `0xa4810c...241ef8`; ethereum `0xe6c569...2d0ee4`; bsc `0x213426...39de11`; bsc `0x276c51...c486ea`; bsc `0x2c2ebf...604546`; bsc `0x32a9cc...645481`; bsc `0x4085d6...aeea9e`; bsc `0x782a28...f3becf`; bsc `0x7abad5...c69517`; bsc `0x9783be...bb7de6`; bsc `0x9b1c7d...e5381b`; bsc `0x9da876...e5b2c3`; bsc `0xb5250a...fbb57d`; bsc `0xc0802f...c94db1`; bsc `0xc454ba...b4b85e`; bsc `0xccde20...dcda17`; bsc `0xcd95eb...4a312d`; sonic `0x0487fe...f26d70`; sonic `0x0ba9ee...a87d22`; sonic `0x2a5bfd...a01386`; sonic `0x35b7b2...500673`; sonic `0x4d1d07...2d2059`; sonic `0x4dd8b7...a808dc`; sonic `0x8e493b...73f79a`; sonic `0x9003bb...c0f3c8`; sonic `0x9beee8...fdc202`; sonic `0xbce50c...df367b`; sonic `0xc2b390...34adc3`; sonic `0xdec870...f4f021`; sonic `0xe776a6...f13a1d`; sei `0x143fda...588b98`; sei `0xddd3d4...daa076`; base `0x490db6...18d4fa`; base `0x61317a...2f141f`; mode `0x4881fd...1bac0d`; mode `0x95feaa...eb0dc4`; arbitrum `0x4085d6...aeea9e`; arbitrum `0x521078...fee99e`; arbitrum `0xc0802f...c94db1` | ⚠️ Unaudited |
| RewardsControllerV2 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 13 deployments: sonic `0x1354e3...b7e682`; sonic `0x384775...74621d`; sonic `0x59b72a...902d84`; sonic `0x64a7e6...b387e6`; sonic `0x68fc27...bf5d05`; sonic `0x84e5d1...df8814`; sonic `0x8a606f...27ce97`; sonic `0x8f75c3...aee364`; sonic `0x8ffb5e...be18b6`; sonic `0x916506...6095c7`; sonic `0xd08ede...eb9307`; sonic `0xea3c89...b5f629`; sonic `0xebd8fd...64adf8` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5a7931...c6757e` | ⚠️ Unaudited |
| SavingAccount | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01e3cc...5ddfa6` | ⚠️ Unaudited |
| sAVL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xdb8d77...b33b50`; bsc `0x5e2a06...c0d300` | ⚠️ Unaudited |
| StableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 22 deployments: ethereum `0x47de2f...454e69`; ethereum `0x81f95a...59d73b`; ethereum `0x894d3a...04c713`; ethereum `0xe41772...78652c`; ethereum `0xe68d80...6147ae`; bsc `0x00c461...ccf3ea`; bsc `0x01f4b5...f53ebf`; bsc `0x03a8fe...1546f7`; bsc `0x05d04f...4e5818`; bsc `0x4837b6...9f6e58`; bsc `0x4eca89...832527`; bsc `0x559ea0...ac3763`; bsc `0x85097d...650909`; bsc `0x90fb7a...6c0d6a`; bsc `0xe5b585...0be37a`; bsc `0xfc8f7a...c9e877`; base `0xa3ed9f...4ce4a2`; base `0xb60a7e...7fc584`; mode `0xa3ed9f...4ce4a2`; mode `0xe35e20...e80605`; arbitrum `0x05d04f...4e5818`; arbitrum `0x782a28...f3becf` | ⚠️ Unaudited |
| sUSDa | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 8 deployments: ethereum `0x2b66aa...d43bd9`; ethereum `0xf828a7...54fe5c`; bsc `0x73a325...f82b03`; bsc `0xce3cba...f24ca1`; sonic `0x2840f9...8b304f`; mantle `0x5a61b1...66bc6e`; mantle `0xc415c9...4d4848`; mantle `0xff1247...fe9acc` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2e9bdd...887a9f`; bsc `0x5846bf...7209b4` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x37c21d...feeda8`; bsc `0x37c21d...feeda8`; mantle `0x37c21d...feeda8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7840fc...f333a1`; ethereum `0x88cd59...edc497` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xf29723...20d659`; ethereum `0xf613a5...2b5a3c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x713efc...5ddafb` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 40 deployments: ethereum `0x1031a4...a85171`; ethereum `0xa8ff29...a7de92`; ethereum `0xde33ce...be0212`; ethereum `0xdee4dd...bcbb96`; ethereum `0xe351b6...b82dd4`; bsc `0x010a96...0b7d96`; bsc `0x0128a4...1073c5`; bsc `0x09cfa9...809b82`; bsc `0x1031a4...a85171`; bsc `0x19e685...d53e05`; bsc `0x229a0b...d5faf6`; bsc `0x681fe9...83c017`; bsc `0x799a72...5eaa63`; bsc `0x84ab9d...94c44f`; bsc `0x882fca...68fb7b`; bsc `0x98ddc4...c69fcb`; bsc `0xa63cb1...e8d7f9`; bsc `0xf6aa54...e5205d`; sonic `0x09ffde...18386c`; sonic `0x156f1e...a5dbe8`; sonic `0x2e3c2b...21b416`; sonic `0x457158...80283d`; sonic `0x7abad5...c69517`; sonic `0x7c489a...2b6cea`; sonic `0x80747f...e13457`; sonic `0xa22a7f...a3f1a4`; sonic `0xb0e9f4...f4cc30`; sonic `0xb494fa...a68108`; sonic `0xb7c617...d4816d`; sonic `0xb7ff1b...82dc63`; sonic `0xce722f...f4d79e`; sei `0x804ad8...c84643`; sei `0xe8b81d...abf083`; base `0x3f7281...c1c1b1`; base `0xa57089...81573b`; mode `0x3f7281...c1c1b1`; mode `0x6cab07...26029f`; arbitrum `0x26fd39...de4b54`; arbitrum `0x8c1582...b9a467`; arbitrum `0x91b212...dfc070` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 42 deployments: ethereum `0x0c57b0...91aa1f`; ethereum `0x154273...528ffa`; ethereum `0x358c2b...726336`; ethereum `0x8e2fe9...71dedd`; ethereum `0xd5d37f...e02f2b`; bsc `0x0c57b0...91aa1f`; bsc `0x12aaa8...d2bb65`; bsc `0x35b6c8...f22f8e`; bsc `0x385009...9c9c3c`; bsc `0x409392...86f28f`; bsc `0x5879b7...762ab3`; bsc `0x745956...a4052e`; bsc `0x89f047...ae98ce`; bsc `0x9bed9c...03cc37`; bsc `0x9d6341...066aa8`; bsc `0xa49824...74c636`; bsc `0xc88987...8be431`; bsc `0xea6460...44b937`; sonic `0x00ad0e...f4100f`; sonic `0x139b81...fa1684`; sonic `0x2bd254...c29242`; sonic `0x355b53...7060fa`; sonic `0x51b70b...4a81a8`; sonic `0x8812c8...ae55aa`; sonic `0x8c403d...fc3d46`; sonic `0x8e91bd...efe962`; sonic `0xaf0f03...05f72d`; sonic `0xb3aac7...6b2028`; sonic `0xb8ecf1...dfe6d3`; sonic `0xc4603b...fdb055`; sonic `0xcb0f74...5058c0`; sonic `0xf111b7...21398c`; sonic `0xf93957...68aa8b`; sei `0xe6ad9e...8010ea`; sei `0xf48582...867f8e`; base `0xd14da3...5ec61b`; base `0xe91d67...826e27`; mode `0xcf1177...7c8653`; mode `0xd14da3...5ec61b`; arbitrum `0x7d51cb...cfe73c`; arbitrum `0xe565d8...0767e1`; arbitrum `0xfe48b5...d7b631` | ⚠️ Unaudited |
| USDX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3527e...a66cef` | ⚠️ Unaudited |
| USDXRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eaf6f...d82f7b` | ⚠️ Unaudited |
| USDXSales | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x859834...e3065f`; bsc `0xb45c42...0a56d1` | ⚠️ Unaudited |
| VariableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 40 deployments: ethereum `0x05d04f...4e5818`; ethereum `0xc93266...a746a4`; ethereum `0xca5b55...a8b170`; ethereum `0xd321f2...ebf2db`; ethereum `0xd3bae1...b53271`; bsc `0x156f1e...a5dbe8`; bsc `0x411c05...d35f44`; bsc `0x526580...9230e6`; bsc `0x549806...8f61b6`; bsc `0x5b8af6...f380a2`; bsc `0x63f3f2...2d633c`; bsc `0x6c37fa...5de5cc`; bsc `0x792256...82aad9`; bsc `0xa3ed9f...4ce4a2`; bsc `0xb06b32...74efdf`; bsc `0xdd3b7c...7ca0ff`; bsc `0xe35e20...e80605`; bsc `0xe8b81d...abf083`; sonic `0x0566e2...3dbd5e`; sonic `0x05cc29...e4712e`; sonic `0x1a721c...4578cb`; sonic `0x213426...39de11`; sonic `0x3d963f...34e4c4`; sonic `0x4aa6bb...68514f`; sonic `0x4faece...7b79a1`; sonic `0x5c4ab4...e82a58`; sonic `0x614d43...48f458`; sonic `0x8e31be...9f4449`; sonic `0xa458e1...4729a7`; sonic `0xd792ef...7a38ac`; sonic `0xe8b9aa...34ac74`; sei `0x5f5130...b840af`; sei `0x9273b6...7a2e84`; base `0xc01173...e46c25`; base `0xc0aafe...15237e`; mode `0xb60a7e...7fc584`; mode `0xc01173...e46c25`; arbitrum `0x526580...9230e6`; arbitrum `0x6465f7...fda730`; arbitrum `0xb06b32...74efdf` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 40 deployments: ethereum `0x411c05...d35f44`; ethereum `0x8424e2...76eb91`; ethereum `0x94dd21...45b40d`; ethereum `0x9c9a88...ff60cc`; ethereum `0xb13f1e...a1899b`; bsc `0x08d0eb...0e5408`; bsc `0x1354e3...b7e682`; bsc `0x379a53...53a490`; bsc `0x637f20...7d583d`; bsc `0x69406a...b79e8e`; bsc `0x746226...bfadf0`; bsc `0x951e7e...fe689d`; bsc `0xb13f1e...a1899b`; bsc `0xb2763a...a6f03d`; bsc `0xccca1e...6a0035`; bsc `0xcde33b...218ebd`; bsc `0xd5fee6...324ff8`; bsc `0xf4d822...d462fb`; sonic `0x10003a...7c26e5`; sonic `0x236e63...68c400`; sonic `0x2cb88d...cf559d`; sonic `0x30976c...36b026`; sonic `0x6d22b1...1d6aeb`; sonic `0x6e868f...59d86e`; sonic `0x8410e1...e918d2`; sonic `0x84f682...131319`; sonic `0x8e0bd7...7ce57f`; sonic `0xac11f2...2fb29c`; sonic `0xae7049...b811c3`; sonic `0xf48582...867f8e`; sonic `0xfc5ce1...48f9ec`; sei `0x9d74e3...042fdf`; sei `0xfe48b5...d7b631`; base `0x9bed9c...03cc37`; base `0xcf1177...7c8653`; mode `0x9bed9c...03cc37`; mode `0xaddd62...160303`; arbitrum `0x0c57b0...91aa1f`; arbitrum `0x4c25c2...51bce4`; arbitrum `0xecf226...c4e40f` | ⚠️ Unaudited |
| WFBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8100f7...1981b4`; bsc `0xafb46b...bc7ea7` | ⚠️ Unaudited |
| WFBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x248262...179f0c`; sei `0x5fabd1...b6df56` | ⚠️ Unaudited |
| WFBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x9d6341...066aa8`; sei `0xe9ca67...877fee` | ⚠️ Unaudited |
| WFBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xa25bc4...19dab1` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 40 deployments: ethereum `0x1f2c6d...e462c6`; ethereum `0x38647f...cd5858`; ethereum `0x5a4247...ac626d`; ethereum `0x914f58...48a2f6`; ethereum `0xe7750c...c14148`; bsc `0x0a2d84...cf0dea`; bsc `0x1221e7...4f5191`; bsc `0x15f2ed...e50fea`; bsc `0x1d6d16...6f4786`; bsc `0x237c36...a0727f`; bsc `0x283054...7d60fd`; bsc `0x31025a...ae85b7`; bsc `0x440fd1...c6844a`; bsc `0x5a4247...ac626d`; bsc `0x771559...22e47f`; bsc `0x940a6d...f9d90e`; bsc `0xa5e9df...859124`; bsc `0xebfd8d...5fe687`; sonic `0x238d4d...e71f37`; sonic `0x327b32...ebb011`; sonic `0x387014...504646`; sonic `0x4140d8...d2dffa`; sonic `0x804ad8...c84643`; sonic `0x902af2...ce5ea2`; sonic `0xa0ae20...ac254d`; sonic `0xa5d2e9...0c640f`; sonic `0xcb6653...570718`; sonic `0xe272bd...c63662`; sonic `0xee4cfd...284a17`; sonic `0xf4e097...522003`; sonic `0xfa2cd6...04e20e`; sei `0x26fd39...de4b54`; sei `0x2884f5...4cc273`; base `0x6cab07...26029f`; base `0xf6aa54...e5205d`; mode `0x8ca7c6...38ffda`; mode `0xf6aa54...e5205d`; arbitrum `0x1031a4...a85171`; arbitrum `0x897bf2...9e1441`; arbitrum `0xb2a64a...dd4928` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (12)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 5 deployments: ethereum `0x02fedc...d248f0`; ethereum `0xeb13f6...d3c5ed`; bsc `0x02fedc...d248f0`; bsc `0xeb13f6...d3c5ed`; mantle `0xeb13f6...d3c5ed` | ⚠️ Unaudited (bytecode match) |
| BorrowLogic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: ethereum `0x6afc4f...fcff41`; ethereum `0xa56b5c...e0c1be`; ethereum `0xa5df79...5b5497`; bsc `0x315577...67fdd6`; bsc `0x322899...4027f1`; bsc `0x616fa4...a8bd5e`; bsc `0xa68c3a...fb2249`; sei `0x3d6c3b...07b766`; sei `0x916add...d7ab17`; mode `0xf8a956...7b8313`; mode `0xfbb77a...e90c70`; arbitrum `0x322899...4027f1`; arbitrum `0x9dda59...c170f6` | ⚠️ Unaudited (bytecode match) |
| BridgeLogic | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0be33c...2dddb0`; ethereum `0xe189ee...c3db40`; ethereum `0xe670de...9bf5ac`; bsc `0x68c5c1...ebdb87`; bsc `0xa33c22...48b1a9`; bsc `0xa46f33...77f0fe`; bsc `0xddb3d4...9403c0`; sei `0x785767...82ba0b`; sei `0x9124b9...400330`; mode `0x57bf2a...af5a71`; mode `0xb82fe9...6e08e6`; arbitrum `0x1f3e4e...2893ed`; arbitrum `0xddb3d4...9403c0` | ⚠️ Unaudited (bytecode match) |
| ConfiguratorLogic | governance | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 13 deployments: ethereum `0xc28845...c48d55`; ethereum `0xe8928b...cb9334`; ethereum `0xf07011...7dc827`; bsc `0x26a937...e68de0`; bsc `0x450d7a...eaa68c`; bsc `0x785767...82ba0b`; bsc `0x81f95a...59d73b`; sei `0x242394...0b63d7`; sei `0x713efc...5ddafb`; mode `0x13b954...e29128`; mode `0x3db4fb...e39543`; arbitrum `0x785767...82ba0b`; arbitrum `0x883cb2...405682` | ⚠️ Unaudited (bytecode match) |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x114a5b...db7569`; ethereum `0xc58108...eef7cc`; ethereum `0xeff755...1023c5`; bsc `0x2fb82b...5a740c`; bsc `0x5c8d0c...7a8fa2`; bsc `0xf96160...cf9371`; sei `0x28350e...eb4700`; sei `0xddb3d4...9403c0`; mode `0x208fd5...f4aef3`; mode `0x84930a...d5c28a`; arbitrum `0x5c8d0c...7a8fa2`; arbitrum `0x8ac8dc...f9b76c` | ⚠️ Unaudited (bytecode match) |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 11 deployments: ethereum `0x46a2b7...ec23c4`; ethereum `0x4837b6...9f6e58`; ethereum `0x6e3c74...6bc0f5`; bsc `0x2335de...3e8c0a`; bsc `0x242394...0b63d7`; bsc `0x3de962...001557`; bsc `0x9f1031...1cafbe`; sei `0x0b233a...3e523e`; sei `0x912b42...37aa6a`; arbitrum `0x242394...0b63d7`; arbitrum `0xe00a3f...0facc0` | ⚠️ Unaudited (bytecode match) |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 13 deployments: ethereum `0x182543...44680e`; ethereum `0x6546c7...14194a`; ethereum `0x6f4279...6234e9`; bsc `0x1af2ad...d5fb77`; bsc `0x916add...d7ab17`; bsc `0xa28b10...4e1dcf`; bsc `0xed6e1e...ab5cce`; sei `0x5c8d0c...7a8fa2`; sei `0xcdd4a9...b4cc33`; mode `0x0fa655...1e56da`; mode `0x78f1c2...fcd1e2`; arbitrum `0x916add...d7ab17`; arbitrum `0xcb952d...1fe0e1` | ⚠️ Unaudited (bytecode match) |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: ethereum `0x275223...f4fe3d`; ethereum `0x6ba7c6...4059c1`; ethereum `0x7d222a...c62635`; bsc `0x100ac2...debc88`; bsc `0xa1d4f6...ccf52c`; bsc `0xc73b6c...90e755`; bsc `0xdb33db...d6bad3`; sonic `0xdbd42d...f2648f`; sei `0x3383c3...6c4d87`; sei `0xac8d93...fc76c7`; arbitrum `0x100ac2...debc88`; arbitrum `0x438d55...f6cbc7` | ⚠️ Unaudited (bytecode match) |
| PoolConfigurator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: ethereum `0xa82e83...ce5061`; ethereum `0xebefa4...bd92c9`; ethereum `0xebfd8d...5fe687`; bsc `0x60b31d...232107`; bsc `0x6dace3...87fd8b`; bsc `0x99c0fb...cd2e8e`; bsc `0xba4a1d...527073`; sonic `0xf0fd93...5d6cc5`; sei `0x30ff50...6c4e9d`; sei `0x361d78...9ca0a0`; arbitrum `0x250fc5...dc778a`; arbitrum `0x99c0fb...cd2e8e` | ⚠️ Unaudited (bytecode match) |
| PoolLogic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: ethereum `0x11b63a...a2fead`; ethereum `0x469d32...b086a6`; ethereum `0xae7d34...f6f6dd`; bsc `0x0b233a...3e523e`; bsc `0x2f982e...964935`; bsc `0x67b3e6...0e3cb2`; bsc `0xd3bae1...b53271`; sei `0x8264e8...8c8e77`; sei `0xf5f4ce...86a757`; mode `0x1219f7...78ea84`; mode `0x35bcab...d0d664`; arbitrum `0x0b233a...3e523e`; arbitrum `0x7f3119...8dce20` | ⚠️ Unaudited (bytecode match) |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0344b3...f3de07`; ethereum `0x8d4252...ba1934`; ethereum `0x951c84...ddb4b3`; bsc `0x1792f7...c86009`; bsc `0x1c5a5f...306303`; bsc `0xe4d4da...0d6a1c`; bsc `0xf90aee...ff5b3a`; sei `0x28292e...3cb8cb`; sei `0x322899...4027f1`; mode `0xc65170...cc74f2`; mode `0xd33431...79d9d0`; arbitrum `0x1792f7...c86009`; arbitrum `0x769a4d...a47eda` | ⚠️ Unaudited (bytecode match) |
| USDa | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 11 deployments: ethereum `0x0b4d6d...bd6316`; ethereum `0x44850c...22e697`; ethereum `0x8a60e4...17d9c2`; bsc `0x22a215...f1ec41`; bsc `0x8a4ba6...7f0224`; bsc `0x935608...699894`; sonic `0xff1247...fe9acc`; mantle `0x075df6...06e326`; mantle `0x2bdc20...34eb2e`; mantle `0x5a4435...b89d44`; berachain `0xff1247...fe9acc` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (518)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LockedFBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x040c10...8b2ba5` | ❓ Unverified |
| Proxy (impl: 0x25db2bae7d6ced94e0cdc28a748ce7c21793eca3) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x0db262...2f8fc6`; berachain `0x25db2b...93eca3` | ❓ Unverified |
| Proxy (impl: 0x99026b750048619c7a2d54cdfc4c6524eeea0b99) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x79dac6...8427d3`; ethereum `0x99026b...ea0b99` | ❓ Unverified |
| Proxy (impl: 0xc5ebe22b413d12069a0062c3f6ed5f0fc3313497) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0c5bd0...21252e`; ethereum `0xc5ebe2...313497` | ❓ Unverified |
| Proxy (impl: 0xcd97c67b101a1d8622c9ed55d1c16b6739c54b1a) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc1a8e4...388e3a`; ethereum `0xcd97c6...c54b1a` | ❓ Unverified |
| Proxy (impl: 0xeb13f6d8cd2f9a295fdaa5f1e7638d8ce6d3c5ed) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0x02fedc...d248f0` | ❓ Unverified |
| Proxy (impl: 0xef657c3b5b5e10bc20787546b0e81e7ba2ec7234) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x02fedc...d248f0`; berachain `0xef657c...ec7234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d041...ba4eea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a6914...711104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b5965...f91add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0c0c35...4c9db2`; ethereum `0x58cc31...48cc0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dbd62...cae4ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dc0fc...9ef13f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fbb0e...17275e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x10d162...733a97`; ethereum `0x3f390d...808693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x14aaed...2483cc`; ethereum `0xfabccd...893f05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x151464...31075c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16d0d4...bbdc9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x191280...31f9b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1d6321...30456f`; ethereum `0x1e7dff...c39dfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2093f1...8c2eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x235b13...b6ba3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a85e8...51415a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bdc20...34eb2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2ead68...ae3903`; ethereum `0x6cf44d...2c2a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x361d78...9ca0a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a4ba0...1fc4d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x410d2d...d38bd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4422a7...2582b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x470f9c...25d72d`; ethereum `0xf72df7...7d373b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x522b3b...7859e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x535e53...3af910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a4435...b89d44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca296...f520f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d5c8a...5714a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f314b...9536ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5f99a1...056559`; ethereum `0xeabad1...638186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61361e...edf712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631da0...79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ab5d5...219796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d3808...02433c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fd78d...6ed413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c01e1...64543a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x802cb6...b6fe00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8abf81...604d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e435d...c5e7e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91b212...dfc070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9935e1...9c8333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c9a26...71683b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa4430...e0de89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabfa72...0b81d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf0ba8...0587b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb95120...e51497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba7752...72533f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc415c9...4d4848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc48790...dba4b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6a02e...fff0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9137f...58a042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc5f87...0fa74c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccc613...c2feda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd282d7...0a7eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd329f9...835ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf62f1...1f812d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe02825...805c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe29d69...37a14a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe565d8...0767e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5ec81...da2cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec3452...9de2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef657c...ec7234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37c6c...7503ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5cce1...834e8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03ac80...f5dd8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04d041...ba4eea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06b162...8c13f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a90d8...6d677b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fa655...1e56da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fb570...084ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10392e...1ce382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1190bd...e09d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13b954...e29128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14743b...535ae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x151464...31075c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1683f5...79b337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16b9b8...d45121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16d0d4...bbdc9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18cbe7...da53f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19b329...615520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2062bd...3466c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x208fd5...f4aef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20a2be...c1a321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23bbdd...887263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x255e48...f1f39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28292e...3cb8cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2884f5...4cc273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28cd18...e06aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a85e8...51415a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2af92d...91add6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bdc20...34eb2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ca77d...07a0fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d9526...9c6603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f1ea9...09f9aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3016f2...289c3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x327b32...ebb011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3469b1...101e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x354b8d...e31e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35bcab...d0d664` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bf334...ce0b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d6c3b...07b766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3db4fb...e39543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e24be...90a29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e2b69...94e8ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e3e76...52e073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e54bb...fa6717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f7281...c1c1b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4388d8...034916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4422a7...2582b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x480d69...0eb2c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a4cea...6f4794` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a6ea6...317968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c25c2...51bce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ffb2a...bd8ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x522b3b...7859e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x523c66...e57e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52ec2c...957bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x535e53...3af910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55bc4d...2113ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57bf2a...af5a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a4435...b89d44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ad428...5e7ab5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ca296...f520f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d5c8a...5714a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dacf1...323c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ecdc2...c40ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61361e...edf712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x628239...986cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62b1d1...4b348b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x631da0...79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x639c9c...097499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x646203...6677a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x668fc2...5059df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x672c13...ba6dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x693d86...97ddf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69bfcb...66067c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ab5d5...219796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b2381...2de05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ba7c6...4059c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ce969...3055b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cf44d...2c2a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ee42f...13debf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f8c5f...bd3713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x722175...0d24fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74e309...c7df98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76ff29...ebc6ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77c44f...51c8ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78f1c2...fcd1e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a5ff6...0b1cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ba8ee...c8a5f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ca9c3...aea50b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d222a...c62635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d558d...b11718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f7fb5...99e70c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x809138...e991ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82710d...4a2f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84930a...d5c28a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84f5e5...d01238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x867885...1d76a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a5cd8...a2c07d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8abf81...604d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ef2d7...26de9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f7788...ed543e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f8004...ed96ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90ea8c...bc929d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x912b42...37aa6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x923ae0...16bbb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x934ad5...b54cd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93cc9c...c89ed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x952356...ba3dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9543c3...4cb879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x954522...da4420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95ffbd...3e38c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9612ac...0299f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x979063...54e92b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9799fd...b265db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x986a4b...7b2039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9915aa...94ec51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9935e1...9c8333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d7772...74892c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ea449...a8bdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa50aa5...544e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa63f69...acca2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7f20c...d46b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa82e83...ce5061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa86d20...8ee1e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac8ab9...8cb8ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae7645...59c9ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb14aa6...3d276d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb82fe9...6e08e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8a84f...8a172d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8f32a...0b312a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba7752...72533f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe7174...fcb05f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfe57a...c46f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2c991...387dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc415c9...4d4848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc48790...dba4b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4b45b...43f285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5ebe2...313497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc65170...cc74f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6a02e...fff0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6b830...ab058a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc757e4...26def7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc771c8...3f2137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc61b4...14ce30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdd4a9...b4cc33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd14da3...5ec61b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd192fb...a35946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd282d7...0a7eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd329f9...835ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd33431...79d9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3e7aa...432cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd55074...0597cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd575c5...2ccb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6e336...418867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde32a5...e1927e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde3428...7269be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe01fd6...9bca14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe02825...805c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0d1d8...8fa6ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1fcdb...c9e844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3c4ad...28c8be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4921a...4d4f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6c569...2d0ee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6d86f...dd137f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8d7bd...bd5c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9dd53...755e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb2c84...9ec779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec3452...9de2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec4a65...c65b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeced50...c953dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee76f7...e1ee45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef657c...ec7234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0e056...f470b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1e0d2...39f3dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf36c62...9826c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf866d2...e5d272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a956...7b8313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb55bd...2f4986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfbb77a...e90c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd0b88...254d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdcd3a...f6f474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x006aa2...450484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x00beb1...800d54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x01030d...3f6f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x010a96...0b7d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x01ae56...189faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x01b81a...fa5adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x02fedc...d248f0`; sonic `0xbe551a...3ddb6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x034d9a...775401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0abfb7...218fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b233a...3e523e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0d7810...0b5300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x10a8c6...9b991d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x123826...89754f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1792f7...c86009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x17d9e7...b5264c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1a0291...068292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1aaf9e...20fea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1bfb6e...36d6d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1c7c64...798f3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1d8577...de646d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ddc55...e54ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e7906...f226c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x20f6db...4802f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x237c36...a0727f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x23c761...4ce0ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x242394...0b63d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x275223...f4fe3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x27fa65...760cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x27fea3...db6296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x280a51...40b5eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x286c9e...0db676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x29d849...9a0bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x29d8f5...e9ca52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x29e76c...b9cbe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2a683c...2365da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2c4e3c...edc9cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x2c60a5...75255d`; sonic `0xeb13f6...d3c5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2e23e0...ab620d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2fbffb...4fedae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x310d06...fea699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x32631e...4751cc`; sonic `0x744766...7c7418` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x32ea22...45bf00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x361d78...9ca0a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x38d2ed...b5383e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3c0ffa...72ac75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3cc19d...fe6067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x443cf3...7ed5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4497dd...88ebfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x45f842...78dbef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4a89d2...d58959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4b0a82...13a7d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4b9d58...7231d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4cca03...599f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4e4084...3b1df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5026a6...f0ed23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x50a537...7e2064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x50e834...34d96b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x51702d...f64a7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x55825c...25e28e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x55b682...074a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x55b9c6...5d862d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x55bf28...97f6cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x56552f...afc519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x572e21...c30721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x574745...270924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5c78eb...7fcf50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5c8d0c...7a8fa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5f5130...b840af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5f837c...28c52e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5f85a9...d1c2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5fea92...4a643a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x631da0...79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x656f38...4fd976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x68b040...bdd2dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x69a9ae...954d12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b4063...4cd37d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b5c3d...f82d51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6ce360...477982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6da3f0...9fcfa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6dd809...47b686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x703a12...23c7ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x70e75d...933fc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x713efc...5ddafb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x71565d...e44c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x769ab4...0f689d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x785767...82ba0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x78a317...7495d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x79cedd...b1f24f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7a2518...4b420c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7ab38f...5affca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7b6f75...9674da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7d4eb8...3d68be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7d558d...b11718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7d5f42...b5525a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7d7d3d...216089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8100f7...1981b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8264e8...8c8e77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8406ac...9801fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8463bb...2cc308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x85c315...807282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x87adea...021be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x88a1ef...a9a9e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x898f3a...13302d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8a3766...70c506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8ad33f...d2e962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8b64b0...6608da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8be943...b75d88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d116e...d66783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8f4d4f...5e3fff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x910376...4dbc73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x912b42...37aa6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9273b6...7a2e84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x93aa07...bf168e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x93d9c1...8410e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x951e7e...fe689d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x954d92...c2a2b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x959cc7...2aa84c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x99624a...072642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9a3c2c...05fa79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa0893d...1f57d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa15c0c...9a50c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa1977f...38deb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa6751b...1c67c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xacf480...c3d6f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaf2054...07255f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xafb46b...bc7ea7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb16af8...673662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb187f1...be1569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb34968...456995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb3d3ef...5fd5fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb99efb...450bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbedc0d...9260a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc0a25d...1171fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc23b16...5863be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc24bc2...373a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc2946a...d11817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc2a439...d1dd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc2b1f7...7445ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc5823a...f82609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc5bcda...7ab2e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcb404a...bfa933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xccc39a...8d9190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xce0460...4474f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcfbdd5...16126e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd1b95a...57abad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd7c5d9...2e7882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd8c543...d93a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xda21ec...30f5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdb8cab...d1ca6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdc826a...9b3f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdd9dc9...54284b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xddb3d4...9403c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdf0291...aa8e0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe0d1d8...8fa6ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe2bc6a...a24c09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe5ec81...da2cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe67a8b...331f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe6ad9e...8010ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe6ba32...3a7e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe813de...f283e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe8b81d...abf083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xea3b11...3bb0fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xea6460...44b937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xea8e3d...6d8896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeae13a...c30192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xec0f60...c3ddc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xef657c...ec7234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xef6aac...537835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf0d077...1e57ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf16bf1...d87001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf1e0d2...39f3dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf2c204...1b38cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf4517f...0b06ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf5aed8...96772e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf5f4ce...86a757` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf62240...e8f2f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf6aa54...e5205d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf9af4b...440424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfa128e...a350dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfb7b42...4cc350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfe52e2...262e56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfea5fa...ca2b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x457158...80283d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x809138...e991ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x882fca...68fb7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x93d9c1...8410e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xcb0f74...5058c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xdb8cab...d1ca6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xea8e3d...6d8896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | merlin | n/a | 19 deployments: merlin `0x002481...df0a5e`; merlin `0x5f314b...9536ca`; merlin `0x623700...c4dda6`; merlin `0x6ab5d5...219796`; merlin `0x883cb2...405682`; merlin `0x898d0e...e4b234`; merlin `0x91b212...dfc070`; kaia `0x100ac2...debc88`; kaia `0x276c51...c486ea`; kaia `0x2c4aeb...bd1966`; kaia `0x43248d...2d81ec`; kaia `0x4353b7...fe6d3b`; kaia `0x45f842...78dbef`; kaia `0x56552f...afc519`; kaia `0x585e26...fae9b2`; kaia `0xa34f1a...1fa20f`; kaia `0xba8870...9a5e4a`; kaia `0xdc3cf1...6a4ff6`; kaia `0xddd3d4...daa076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | merlin | n/a | `0x867885...1d76a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x25db2b...93eca3`; mantle `0x8f7788...ed543e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x631da0...79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa9be7e...6b6fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc757e4...26def7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd3e7aa...432cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd6183c...dd8ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd9080e...acc909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xef657c...ec7234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1219f7...78ea84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13b954...e29128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x315577...67fdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35bcab...d0d664` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3db4fb...e39543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3fadcb...c78b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x490f8f...75ca93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57bf2a...af5a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5dacf1...323c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x69b0a9...98cfdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x707b8c...2a6991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x74dfd1...0cdff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78f1c2...fcd1e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79c69f...591ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d6363...bb6a2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82710d...4a2f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x84930a...d5c28a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3c5d5...cf60c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaee883...f75b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5ec04...293526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb82fe9...6e08e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5e56b...b8a2ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc041a...b5049e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4d4da...0d6a1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf383a9...dfcb54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6d959...200e56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x100ac2...debc88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x23bbdd...887263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x28292e...3cb8cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5dacf1...323c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x74dfd1...0cdff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x82710d...4a2f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa3c5d5...cf60c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa57089...81573b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa86d20...8ee1e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa9d15c...8f7d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd5e56b...b8a2ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe91d67...826e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x275223...f4fe3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2bdc20...34eb2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3697ad...49d155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42d147...245776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4eca89...832527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x535e53...3af910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55e225...4f9fc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a4435...b89d44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d5c8a...5714a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f314b...9536ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64d4d7...1b855c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ab5d5...219796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x804ad8...c84643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x867885...1d76a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87ed94...acab67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x904ce9...691496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc415c9...4d4848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc6a02e...fff0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd329f9...835ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb52dd...07a369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0d077...1e57ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf48582...867f8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x118e76...ea8a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2840f9...8b304f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x631da0...79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x69c1b1...e8efc3`; berachain `0x88065c...5aee8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x86bdfe...c04415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9915aa...94ec51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb24112...0e23bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd3e7aa...432cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xba7752...72533f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Avalon-AVAF_audit_report_2024-06-11.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2024/Avalon-AVAF_audit_report_2024-06-11.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2024/Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Terms and Conditions - Avalon Finance.docx.pdf](https://raw.githubusercontent.com/avalonfinancexyz/website-ts/bb035cea494cc098d4a26fe267d0b2aa2702406b/Terms%20and%20Conditions%20-%20Avalon%20Finance.docx.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [spaces/lcdCcIXgWo7dKoZEUxKp/uploads/1R2vC6XKZq24RHJcoH5R/Avalon Labs MiCAR White Paper.pdf](https://729569225-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FlcdCcIXgWo7dKoZEUxKp%2Fuploads%2F1R2vC6XKZq24RHJcoH5R%2FAvalon%20Labs%20MiCAR%20White%20Paper.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [DeFi-Lending-audit-salus (GitHub directory)](https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus) | SlowMist | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Avalon-Finance_USDA_audit_report_2024-10-18.pdf](https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [AVL-audit-salus (GitHub directory)](https://github.com/avalonfinancexyz/AVL-audit-salus) | SlowMist | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [USDa-audit-slowmist (GitHub directory)](https://github.com/avalonfinancexyz/USDa-audit-slowmist) | SlowMist | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [AVL-audit-slowmist (GitHub directory)](https://github.com/avalonfinancexyz/AVL-audit-slowmist) | SlowMist | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [USDaMinter-audit-blocksec (GitHub directory)](https://github.com/avalonfinancexyz/USDaMinter-audit-blocksec) | BlockSec | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [USDaConvert-audit-slowmist (GitHub directory)](https://github.com/avalonfinancexyz/USDaConvert-audit-slowmist) | SlowMist | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [USDa-audit-blocksec (GitHub directory)](https://github.com/avalonfinancexyz/USDa-audit-blocksec) | SlowMist | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [AVL-audit-blocksec (GitHub directory)](https://github.com/avalonfinancexyz/AVL-audit-blocksec) | SlowMist | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [USDaConvert-audit-blocksec (GitHub directory)](https://github.com/avalonfinancexyz/USDaConvert-audit-blocksec) | BlockSec | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf](https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Avalon Finance - SlowMist Audit Report.pdf](https://github.com/avalonfinancexyz/USDa-audit-slowmist/blob/main/Avalon%20Finance%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [blocksec_avalon_v1.0-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.0-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [blocksec_avalon_v1.1-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.1-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [blocksec_avalon_v1.3-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.3-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Avalon_Finance_audit_report_2024-04-09.pdf](https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus/blob/main/Avalon_Finance_audit_report_2024-04-09.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Avalon_Governance-Token_audit_report_2024-12-11.pdf](https://github.com/avalonfinancexyz/AVL-audit-salus/blob/main/Avalon_Governance-Token_audit_report_2024-12-11.pdf) | Salus | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Avalon Governance Token - SlowMist Audit Report.pdf](https://github.com/avalonfinancexyz/AVL-audit-slowmist/blob/main/Avalon%20Governance%20Token%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [blocksec_avalon_govtoken_v1.0.pdf](https://github.com/avalonfinancexyz/AVL-audit-blocksec/blob/main/blocksec_avalon_govtoken_v1.0.pdf) | BlockSec | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12714] Avalon-AVAF_audit_report_2024-06-11.pdf — no match: Extracted 11 contract names from Appendix-1 Files in Scope. Audit date from 'Dates Jun112024' in ProjectDashboard.
- [12715] Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf — no match: Extracted contracts from Appendix 1 and finding targets. Date from 'Dates Apr092024' in overview.
- [12716] Terms and Conditions - Avalon Finance.docx.pdf — no match: The document is a Terms and Conditions page, not an audit report. No contracts or audit date found.
- [12717] spaces/lcdCcIXgWo7dKoZEUxKp/uploads/1R2vC6XKZq24RHJcoH5R/Avalon Labs MiCAR White Paper.pdf — no match: The document is a MiCAR white paper for the AVL token, not a smart contract audit report. No audit scope or contract names are mentioned.
- [12718] DeFi-Lending-audit-salus (GitHub directory) — no match: The provided text is a GitHub repository page with no audit report content. No contracts or dates could be extracted.
- [12719] Avalon-Finance_USDA_audit_report_2024-10-18.pdf — no match: No reason recorded
- [12720] AVL-audit-salus (GitHub directory) — no match: The provided text is a GitHub repository page with no audit report content. No contracts or dates could be extracted.
- [12721] USDa-audit-slowmist (GitHub directory) — no match: The provided text is a GitHub repository page description, not the actual audit report content. No contract names or audit date could be extracted.
- [12722] AVL-audit-slowmist (GitHub directory) — no match: The provided text is a GitHub repository page with no actual audit report content. No contract names or audit date could be extracted.
- [12723] USDaMinter-audit-blocksec (GitHub directory) — no match: The provided text is a GitHub repository page with no audit report content. It only shows repository metadata and a PDF filename, but the actual report text is not included.
- [12724] USDaConvert-audit-slowmist (GitHub directory) — no match: The provided text is a GitHub repository page listing a PDF file named 'USDa Pool - SlowMist Audit Report.pdf', but the actual report content is not included. No contract names or audit details can be extracted.
- [12725] USDa-audit-blocksec (GitHub directory) — no match: The provided text is a GitHub repository page listing PDF files, not the actual audit report content. No contract names or scope details are extractable.
- [12726] AVL-audit-blocksec (GitHub directory) — no match: The provided text is a GitHub repository page with no audit report content. No contracts or dates could be extracted.
- [12727] USDaConvert-audit-blocksec (GitHub directory) — no match: The provided text is a GitHub repository page with no audit report content. No contracts or dates could be extracted.
- [12728] Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf — no match: Extracted 5 contracts from Appendix 1 - Files in Scope. Audit date from 'Oct 17 2024' in Project Dashboard.
- [12729] Avalon Finance - SlowMist Audit Report.pdf — no match: No reason recorded
- [12730] blocksec_avalon_v1.0-signed.pdf — no match: No reason recorded
- [12731] blocksec_avalon_v1.1-signed.pdf — no match: No reason recorded
- [12732] blocksec_avalon_v1.3-signed.pdf — no match: No reason recorded
- [26334] Avalon_Finance_audit_report_2024-04-09.pdf — no match: Extracted from Appendix 1 - Files in Scope and finding targets. The audit date is from the 'Dates' field: Apr092024.
- [26335] Avalon_Governance-Token_audit_report_2024-12-11.pdf — no match: Two contracts in scope: Avalon and AvalonOFTAdapter. Audit date from 'Dates Dec 11 2024'.
- [26336] Avalon Governance Token - SlowMist Audit Report.pdf — no match: Three contracts explicitly listed in source code sections of the audit report.
- [26337] blocksec_avalon_govtoken_v1.0.pdf — no match: Only one contract name explicitly mentioned in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Avalon-AVAF_audit_report_2024-06-11.pdf | Checker | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Avalon-AVAF_audit_report_2024-06-11.pdf | GovRevenueStaking | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Avalon-AVAF_audit_report_2024-06-11.pdf | StakingRewardPool | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Avalon-AVAF_audit_report_2024-06-11.pdf | StakingRewardsManager | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Avalon-AVAF_audit_report_2024-06-11.pdf | AVAF | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Avalon-AVAF_audit_report_2024-06-11.pdf | baseToken | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Avalon-AVAF_audit_report_2024-06-11.pdf | esAVAF | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Avalon-AVAF_audit_report_2024-06-11.pdf | stAVAF | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Avalon-AVAF_audit_report_2024-06-11.pdf | LinearVester | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Avalon-AVAF_audit_report_2024-06-11.pdf | Vester | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Avalon-AVAF_audit_report_2024-06-11.pdf | VesterManager | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf | PythUpdater | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf | PythAggregatorV3 | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf | StableDebtToken-Merlin | unmatched — not counted | — | mentioned as target in finding 1 | no |
| Avalon-Finance_USDA_audit_report_2024-10-18.pdf | USDa | unmatched — not counted | — | — | no |
| Avalon-Finance_USDA_audit_report_2024-10-18.pdf | USDaOFTAdapter | unmatched — not counted | — | — | no |
| Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf | FBTCOracle | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf | PoolManager | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf | PoolManagerConfigurator | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf | PoolManagerStorage | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf | DataTypes | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Avalon Finance - SlowMist Audit Report.pdf | SavingAccount | unmatched — not counted | — | — | no |
| Avalon Finance - SlowMist Audit Report.pdf | USDa | unmatched — not counted | — | — | no |
| Avalon Finance - SlowMist Audit Report.pdf | USDaOFTAdapter | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.0-signed.pdf | LendingPool | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.0-signed.pdf | PoolManager | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.0-signed.pdf | USDA | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.1-signed.pdf | LendingPool | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.1-signed.pdf | PoolManager | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.1-signed.pdf | SavingAccount | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.1-signed.pdf | USDA | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.1-signed.pdf | USDaOFTAdapter | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.1-signed.pdf | susda | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.3-signed.pdf | LendingPool | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.3-signed.pdf | PoolManager | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.3-signed.pdf | SavingAccount | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.3-signed.pdf | USDA | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.3-signed.pdf | USDaOFTAdapter | unmatched — not counted | — | — | no |
| blocksec_avalon_v1.3-signed.pdf | sUSDa | unmatched — not counted | — | — | no |
| Avalon_Finance_audit_report_2024-04-09.pdf | PythUpdater | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Avalon_Finance_audit_report_2024-04-09.pdf | PythAggregatorV3 | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Avalon_Finance_audit_report_2024-04-09.pdf | StableDebtToken-Merlin | unmatched — not counted | — | mentioned as target in finding 1 | no |
| Avalon_Governance-Token_audit_report_2024-12-11.pdf | Avalon | unmatched — not counted | — | listed in scope | no |
| Avalon_Governance-Token_audit_report_2024-12-11.pdf | AvalonOFTAdapter | unmatched — not counted | — | listed in scope | no |
| Avalon Governance Token - SlowMist Audit Report.pdf | Avalon | unmatched — not counted | — | source code provided | no |
| Avalon Governance Token - SlowMist Audit Report.pdf | AvalonMintable | unmatched — not counted | — | source code provided | no |
| Avalon Governance Token - SlowMist Audit Report.pdf | AvalonOFTAdapter | unmatched — not counted | — | source code provided | no |
| blocksec_avalon_govtoken_v1.0.pdf | AvalonToken | unmatched — not counted | — | Section 1.1: 'The target of this audit is the code repository of AvalonToken, an OFT token implementation for Avalon.' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 124 |
| upstream | 4 |
| standard_library | 14 |
| needs_review | 440 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 23
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 48 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=11
- Match method counts: n/a

Zero-match audit list:

- [12714] Avalon-AVAF_audit_report_2024-06-11.pdf
- [12715] Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf
- [12716] Terms and Conditions - Avalon Finance.docx.pdf
- [12717] spaces/lcdCcIXgWo7dKoZEUxKp/uploads/1R2vC6XKZq24RHJcoH5R/Avalon Labs MiCAR White Paper.pdf
- [12718] DeFi-Lending-audit-salus (GitHub directory)
- [12719] Avalon-Finance_USDA_audit_report_2024-10-18.pdf
- [12720] AVL-audit-salus (GitHub directory)
- [12721] USDa-audit-slowmist (GitHub directory)
- [12722] AVL-audit-slowmist (GitHub directory)
- [12723] USDaMinter-audit-blocksec (GitHub directory)
- [12724] USDaConvert-audit-slowmist (GitHub directory)
- [12725] USDa-audit-blocksec (GitHub directory)
- [12726] AVL-audit-blocksec (GitHub directory)
- [12727] USDaConvert-audit-blocksec (GitHub directory)
- [12728] Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf
- [12729] Avalon Finance - SlowMist Audit Report.pdf
- [12730] blocksec_avalon_v1.0-signed.pdf
- [12731] blocksec_avalon_v1.1-signed.pdf
- [12732] blocksec_avalon_v1.3-signed.pdf
- [26334] Avalon_Finance_audit_report_2024-04-09.pdf
- [26335] Avalon_Governance-Token_audit_report_2024-12-11.pdf
- [26336] Avalon Governance Token - SlowMist Audit Report.pdf
- [26337] blocksec_avalon_govtoken_v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
