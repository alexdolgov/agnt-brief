# Agentic Audit Brief: Yield Basis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 18 across 9 audit(s)
- Eligible audit results: 11 (9 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Yield Basis (`yield-basis`)
- Website: [https://yieldbasis.com/](https://yieldbasis.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 231 unique implementations (231 raw deployments)
- Coverage basis: 4/12 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $107,692,583.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Yield Basis. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across ethereum. Structural roles: 8 unclassified, 4 core, 1 infra, 1 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: unclassified (8), core (4), infra (1), supporting (1)
- Contract kinds: unclassified (8), contract (6)
- Detected standards: erc1967proxy (3), erc20 (2), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 45 contracts are derived from known codebases. 45 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0e357af536592f275c6aa07b8ac2ca6eb3d0cf5a`, chain 1)
- UnnamedContract (`0x11988547b064cabf65c431c14ef1b7435084602e`, chain 1)
- UnnamedContract (`0x1b9518f6b179552c6a903f213d4ea5503ab7f96e`, chain 1)
- UnnamedContract (`0x1be14811a3a06f6af4fa64310a636e1df04c1c21`, chain 1)
- UnnamedContract (`0x1cb8f667de695f3d126534d9808567f299b90a86`, chain 1)
- UnnamedContract (`0x2b9c9f3bdceb5d8e36a4704f08a78fca53343cea`, chain 1)
- UnnamedContract (`0x36e36d5d588d480a15a40c7668be52d36eb206a8`, chain 1)
- UnnamedContract (`0x370a449febb9411c95bf897021377fe0b7d100c0`, chain 1)
- UnnamedContract (`0x49f51d7e279252f3c9a09678fdc65b4dbd5cb196`, chain 1)
- UnnamedContract (`0x4f52c3a81e33521e5a9a47fd9d3be475d2279c2e`, chain 1)
- UnnamedContract (`0x525443603d6d0955142fac8820b64ae701f40065`, chain 1)
- UnnamedContract (`0x5f8d24f33cc5a1d5d1bf012261e6a2214c92233c`, chain 1)
- UnnamedContract (`0x60043a545e22424e73a2debb98f8cd4361fe3da0`, chain 1)
- UnnamedContract (`0x651d4b8168488fa163d85304662e8278d4c55baa`, chain 1)
- UnnamedContract (`0x656341ef90b622c6634e0573772ffb7f3669b9f3`, chain 1)
- UnnamedContract (`0x722fc3640ba007c3e9867ccdb0dca59f2e2f29f9`, chain 1)
- UnnamedContract (`0x771f7290428d830ecd41e980745c327e507823ec`, chain 1)
- UnnamedContract (`0x772cff0be38a6ed31aeae479cbcb26d54b8404cf`, chain 1)
- UnnamedContract (`0x7b5c75512c1b3749eb0ffe583c1349d02803cb13`, chain 1)
- UnnamedContract (`0x7b9817eb5c49a99875138a5d52bf64a8b2cffffe`, chain 1)
- UnnamedContract (`0x8235c179e9e84688fbd8b12295efc26834dac211`, chain 1)
- UnnamedContract (`0x85ae9ccf1c862979e2d9b9f1ab819c212365fd92`, chain 1)
- UnnamedContract (`0x862cb4e988fb66e72f128d1183829f8c05b6c6a0`, chain 1)
- UnnamedContract (`0x93eb25e380229bfed6ab4bf843e5f670c12785e3`, chain 1)
- UnnamedContract (`0xaa0b1d265f23972eafb7d088e963bd31403a58f5`, chain 1)
- UnnamedContract (`0xc8aa884f54ea5eaef5ef4086607c00580a103928`, chain 1)
- UnnamedContract (`0xd11b416573ebc59b6b2387da0d2c0d1b3b1f7a90`, chain 1)
- UnnamedContract (`0xd829456fd63ada7de0657714a3a7a26de403e3d8`, chain 1)
- UnnamedContract (`0xe707c7a9dd58fb7eea17acff875cef8d10ed1a9f`, chain 1)
- UnnamedContract (`0xe83d888fe3213dd3471de0bc1957e0f94f038483`, chain 1)
- UnnamedContract (`0xe862bc39b8d5f12d8c4117d3e2d493dc20051ec6`, chain 1)
- UnnamedContract (`0xf8764cbcdb15a9e4c7ca1b0b8a578d9ebeec1b6f`, chain 1)
- UnnamedContract (`0xf96ff1189f1c2977b37e5df01962e1895bcc3d6a`, chain 1)
- ERC1967Proxy (`0x2be6670de1ccec715bdbba2e3a6c1a05e496ec78`, chain 1)
- ERC1967Proxy (`0x42f2a41a0d0e65a440813190880c8a65124895fa`, chain 1)
- FiatTokenV2_1 (`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`, chain 1)
- HybridFactoryOwner (`0x0f4e1a1bcde549653e9302ba1caab403373f1048`, chain 1)
- HybridVault (`0xd772edf092f155f3e81e2b261d96bcfae4fdc3ac`, chain 1)
- HybridVaultFactory (`0xbdc32268851c324c6185809271dfe6d8dab8dc5b`, chain 1)
- TBTC (`0x18084fba666a33d37592fa2633fd49a74dd93a88`, chain 1)
- Twocrypto (`0x313698667d7fdd6789a9bc70821309ff891e729a`, chain 1)
- VirtualPool (`0x04ca7a7e602335a261b63128e89d43b6fe1e2c87`, chain 1)
- WBTC (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- WETH9 (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- YBToken (`0x01791f726b4103694969820be083196cc7c045ff`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (12 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 45/92 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/12 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 45 own, 47 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 139 discovered implementations shown in the inventory but excluded from coverage (12 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 45 of 231 unique; 186 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/153
- Verified + Unaudited implementations: 149
- Verified by bytecode match: 0
- Unverified implementations: 78
- Unique implementations: 231
- Raw deployments: 231
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 5 fresh, 5 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 33.3% (ChainSecurity, MixBytes)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| MixBytes | Tier 1 | 4 | 2.6% | 2026-03 |
| ChainSecurity | Tier 1 | 3 | 2.0% | 2026-06 |
| Electisec | Tier 2 | 1 | 0.7% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| HybridFactoryOwner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397474 | `0x0f4e1a1bcde549653e9302ba1caab403373f1048` | ✅ Audited |
| HybridVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397543 | `0xd772edf092f155f3e81e2b261d96bcfae4fdc3ac` | ✅ Audited |
| HybridVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397537 | `0xbdc32268851c324c6185809271dfe6d8dab8dc5b` | ✅ Audited |
| YBToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397471 | `0x01791f726b4103694969820be083196cc7c045ff` | ✅ Audited |

### ⚠️ Verified + Unaudited (149)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcreMultiAssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d` | ⚠️ Unaudited |
| AssetPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21b86fdc93f23fd52022a283828df8e808d28d5d` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe0080ea5f7a58b90398b1c87093cc225e33fe1` | ⚠️ Unaudited |
| AuctionBidder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x773a4cacbca8e3704f8f7842531eab83e437b3c4` | ⚠️ Unaudited |
| Bank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6` | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca` | ⚠️ Unaudited |
| BeaconAuthorization | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x632c2d58ad870fbd4569da0a4e82ddf4b56e83e8` | ⚠️ Unaudited |
| BeaconBackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fec9cf78087064f1f32269f68f94ae343ffbfff` | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c0fbd3ff8e742080c60881f8527ca3baf07647` | ⚠️ Unaudited |
| BeaconDkg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x024a697788918007592572f7cd020df2bc2abd84` | ⚠️ Unaudited |
| BeaconDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4edc83c5c5b0c41a594371485554b95280653f94` | ⚠️ Unaudited |
| BeaconInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a26f2ebdb2448605936fe9a5f496cda7941ec0` | ⚠️ Unaudited |
| BeaconRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf51807acb3394b8550f0554fb9098856ef5f491` | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0` | ⚠️ Unaudited |
| BitcoinDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b94f55780682478c8d8329368aaafd320f4d32` | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2766373e74f268d5dbde32a395eb1c924839a5` | ⚠️ Unaudited |
| BLS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd` | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9e838fcb9295fa44d89d06ed59811ae1a22c105` | ⚠️ Unaudited |
| BondedECDSAKeepFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7` | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c46f496c410465975a427e34a976fc15a2ede4f` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265054f72bad343fdee3e018269cbb899e2e2ec5` | ⚠️ Unaudited |
| BridgeGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94dd662e2a247493facceab9f2459aaf90778ee` | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4b16b81a28d785feeb7b1d56a9b97d450d3443` | ⚠️ Unaudited |
| CallComparator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3bfa85dc668aab38121be12d69dd180301dec25` | ⚠️ Unaudited |
| Cliff Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ba8df4bfd13e3e15da3406e4fab312a8257e220` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ⚠️ Unaudited |
| CoveragePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d7b622c07f216d99efc3efb9cf71872f46d811a` | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b` | ⚠️ Unaudited |
| CryptopoolLPOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397482 | `0x231c37b8e9d2076d673c5e24ecfcc2a82652e054` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c1103d765f62a0d909499d7b615c382cdb072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb` | ⚠️ Unaudited |
| Deposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac1841a47054e070236f1664991e52c30c04dc5` | ⚠️ Unaudited |
| DepositFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87effef56c7ff13e2463b5d4dce81be2340faf8b` | ⚠️ Unaudited |
| DepositFunding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d1286683507939c065c12f2d1e80cca8ccd125` | ⚠️ Unaudited |
| DepositLiquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca5060bf142c58168aedb974aabb020bc081a56` | ⚠️ Unaudited |
| DepositRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817c0f6332392ad65d7688ed22f59b227e372323` | ⚠️ Unaudited |
| DepositStates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8695ff199a1216fc7e2bf97303bf662babae1c80` | ⚠️ Unaudited |
| DepositSweep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392635646bc22fc13c86859d1f02b27974ac9b95` | ⚠️ Unaudited |
| DepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad83decf0555945094e5d25129c1f324f212517` | ⚠️ Unaudited |
| DonationVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa544b70dc6af906862f68eb8e68c27bb7150e672` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84d6ade1e7fffee039a35ef5f19f13057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca05e174a523709e556080e227f734a8f1483` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083069ed92da4c5291dba52d8912abfcc5523` | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ca1abe343515312eb6d13178c5a2dce3c036fa` | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ab5f02993bf312d9aca03157f26febebc76108` | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0125c8977a02b2fa3970b1ed9af02f5bedd4ef27` | ⚠️ Unaudited |
| EcdsaInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8263efcb8f28246697585c89fed0501cd946f764` | ⚠️ Unaudited |
| ECDSARewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ac5a8892230e0a3e1c473881a2de7353ffca88` | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b9e48f8818962699fe38f5989b130cee691bbb3` | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77ec9c89a0c889bcb05d15df42d49b706952042` | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x147379a0174780570d07d70a14fb244ee5f2d786` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397562 | `0x2be6670de1ccec715bdbba2e3a6c1a05e496ec78` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397560 | `0x42f2a41a0d0e65a440813190880c8a65124895fa` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1043eb60cef1f44654598338b1eb305cf54c421d` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x286af1b3d36fbba523b18ac4658722090a39ecc0` | ⚠️ Unaudited |
| FeeRebateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397561 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ⚠️ Unaudited |
| Fraud | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51bbef1c7cc3a1d3bc5e64ce6c3ba6e66fba3559` | ⚠️ Unaudited |
| FundingScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c70c36b519e03705ddc26982d438f71993d063` | ⚠️ Unaudited |
| GasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c0a348500638aace229d6868c26b4e64fe46ab3` | ⚠️ Unaudited |
| Gauge Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037ee0c66d0ddba4319ab9d1a70a66ac800e5af9` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e935209d79706b5866eb42137a3491d845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e44a9c70a67d5b79d95795aba299083c275` | ⚠️ Unaudited |
| GrantStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02612d20cc087670a959bb12ca3c5fd56c8a3db3` | ⚠️ Unaudited |
| InflationaryVest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f5789030ff8aed85c20baf614368c605b31b112` | ⚠️ Unaudited |
| KeepBonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27321f84704a599ab740281e285cc4463d89a3d5` | ⚠️ Unaudited |
| KeepFactorySelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29fa8f46cbb9562b87773c8f50a7f9f27178261c` | ⚠️ Unaudited |
| KeepRandomBeaconOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf708431162ba247ddae362d2c919e0fbafcf9de` | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3975ce253ff9d586cf08c3898f95064b7a5718e7` | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09959798b95d00a3183d20fac298e4594e599eab` | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d` | ⚠️ Unaudited |
| KeepVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87` | ⚠️ Unaudited |
| LEVAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07cedaadf49552cbdbf684824323e631ceba305e` | ⚠️ Unaudited |
| LightRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x836cdfe63fe2d63f8bdb69b96f6097f36635896e` | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8` | ⚠️ Unaudited |
| Liquidity Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x008c2d6e93cc7eb61b6bea1e012214b851d781f7` | ⚠️ Unaudited |
| Locks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40` | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44` | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78aa83bd6c9de5de0a2231366900ab060a482edd` | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d` | ⚠️ Unaudited |
| LT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b0d8bccf062555ec18d5e4d8fe895e64e3f1eb4` | ⚠️ Unaudited |
| LTMigrator | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397486 | `0x2cdb9f485e718f551cfeea6c33cb7062ed37066c` | ⚠️ Unaudited |
| MaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x535e01f948458e0b64f9db2a01da6f32e240140f` | ⚠️ Unaudited |
| Members | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ⚠️ Unaudited |
| MezoAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df` | ⚠️ Unaudited |
| MezoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af817c36708fd0d057c87a51c92fbb0e527d1f5` | ⚠️ Unaudited |
| MigrationFactoryOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa68343ed4d517a277cfa1f2fc2b51f7a6794b6ad` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a206ece672e3198086c5d21f7858ad03669ea` | ⚠️ Unaudited |
| MovingFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3106675ede4a64d70131247466fd8704a3d42123` | ⚠️ Unaudited |
| Multisend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08ba954cee0f79fb733365833e1bb5665cbbe914` | ⚠️ Unaudited |
| NoOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5b85d4099958de09fee8bc252a546b42590daf` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075108f275ed81c9cfc01065e6e50ceea81d6363` | ⚠️ Unaudited |
| OnDemandSPV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1531b6e3d51bf80f634957df81a990b92da4b154` | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed` | ⚠️ Unaudited |
| PhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964d45256c73df0239a26216cec155d7e12ec157` | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b459cae3f5f91469b910a8811723606b2ddeafd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16a76d3cd3c1e3ce843c6680d6b37e9116b5c706` | ⚠️ Unaudited |
| RandomBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5499f54b4a1cb4816eefcf78962040461be3d80b` | ⚠️ Unaudited |
| RandomBeaconChaosnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23fc18ece6afe7fb57ba59979e8600bb4b0294a` | ⚠️ Unaudited |
| RandomBeaconGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d807e9ce1ef73048fee9a4214e75e894ea25914` | ⚠️ Unaudited |
| RedemptionScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0972e6062eac0fe8686d82ea010504066dadb887` | ⚠️ Unaudited |
| ReimbursementPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369fce62b33512b2a883cf217635ee28dd17f9cc` | ⚠️ Unaudited |
| RiskManagerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2355d701d8d85ed161ab66a0a7e759c463f62b30` | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f` | ⚠️ Unaudited |
| Snapshot Splitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168b92fc04eb8815a517b3f12341166bc5ada222` | ⚠️ Unaudited |
| SortitionPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6` | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb59f486135145ad247b82f9cdf52be4a58a0b81` | ⚠️ Unaudited |
| StakeZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f76333e716788b0786b405fa8ea8928928e2dfd` | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x118b7642b91bcf02c565a3c417534e29e4069bd8` | ⚠️ Unaudited |
| StakingPortBacker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x236aa50979d5f3de3bd1eeb40e81137f22ab794b` | ⚠️ Unaudited |
| T | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdf7028ceab81fa0c6971208e83fa7872994bee5` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c420c2a2b461034becbb41d4888b68951f14f` | ⚠️ Unaudited |
| TBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397477 | `0x18084fba666a33d37592fa2633fd49a74dd93a88` | ⚠️ Unaudited |
| TBTCConstants | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d` | ⚠️ Unaudited |
| TBTCDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0` | ⚠️ Unaudited |
| TBTCSystem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a` | ⚠️ Unaudited |
| TBTCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52818e501612d3c5b37b5f9b83b024342c277fd4` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82f08041f1bc1aa399320743f33f75cca482b25a` | ⚠️ Unaudited |
| TokenSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x223bb2252c2b1855c337b2a0d6d066c76d2a5d0b` | ⚠️ Unaudited |
| TokenStakingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda534b567099ca481384133bc121d5843f681365` | ⚠️ Unaudited |
| TokenVotingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076e298405b75a02c222d3860d703e4c92fb9e20` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20f7499aae7bdadc4e52fd72e49663733ed4` | ⚠️ Unaudited |
| TopUps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0e628a1c34c92f0aa85af998814ce4f03caa5913` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb8df0a949ac45ff8f401553a1dcb742feb38e6d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xdf217efd8f3ecb5e837aedf203c28c1f06854017` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b67099121e1fbde6276b2802048d1a7dd1b987` | ⚠️ Unaudited |
| Twocrypto | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397489 | `0x313698667d7fdd6789a9bc70821309ff891e729a` | ⚠️ Unaudited |
| UnderwriterToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007854fdcc9c6f748b435e63745599fb1a0df843` | ⚠️ Unaudited |
| VendingMachine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cca7e410ee41739792ea0a24e00349dd247680e` | ⚠️ Unaudited |
| VendingMachineV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b` | ⚠️ Unaudited |
| VendingMachineV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7570a2350183b4bdf7ca74fad3fc19048e6437e6` | ⚠️ Unaudited |
| Vesting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf5bf5e7ba48796d6ec641a75f55bd1d6db23ef` | ⚠️ Unaudited |
| VirtualPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397472 | `0x04ca7a7e602335a261b63128e89d43b6fe1e2c87` | ⚠️ Unaudited |
| Voting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13daffdf8863c47290363b0109b681e3f37470a0` | ⚠️ Unaudited |
| VotingPowerCondition | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2321a7facf817cfea12cd444d6d3cfa7ba0591b7` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1da0bb6e948dc0559d14ebde9fa9572499bf` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3264834ada73a8b0b132ee52fd5a367cf60e86c6` | ⚠️ Unaudited |
| WalletCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5` | ⚠️ Unaudited |
| WalletProposalValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30019d85a86abd3cda1167f4c052690c32fbdec2` | ⚠️ Unaudited |
| WalletRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d7e8ce124921caafd7670502379ced0065c832` | ⚠️ Unaudited |
| WalletRegistryGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aed6cc30d1b2770771052555d257da86ed47fe8` | ⚠️ Unaudited |
| Wallets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67913137429985416dbce28d9fa9ec960ba47bf` | ⚠️ Unaudited |
| WBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397481 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f8931ce1c52f643121be129985aab09c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397538 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (78)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397473 | `0x0e357af536592f275c6aa07b8ac2ca6eb3d0cf5a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397475 | `0x10b663da78055bda0c7c26712ce1a0613af0ae66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397476 | `0x11988547b064cabf65c431c14ef1b7435084602e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397478 | `0x1b9518f6b179552c6a903f213d4ea5503ab7f96e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397479 | `0x1be14811a3a06f6af4fa64310a636e1df04c1c21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397480 | `0x1cb8f667de695f3d126534d9808567f299b90a86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397483 | `0x2a4671fd269df5b3da03103c74063da10d03e23c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397484 | `0x2b513ebe7070cff91cf699a0bfe5075020c732ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397485 | `0x2b9c9f3bdceb5d8e36a4704f08a78fca53343cea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397487 | `0x2da2aada1445a5101d648f3c8711b070799bbc91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397488 | `0x30ba8b27f2128c770b90c965ff671e08b9310d21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397490 | `0x35095d94e0f1f4a78386b7eb74bb64768a2341e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397491 | `0x36e36d5d588d480a15a40c7668be52d36eb206a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397492 | `0x370a449febb9411c95bf897021377fe0b7d100c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397493 | `0x37f45e64935e7b8383d2f034048b32770b04e8bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397494 | `0x3dae83d236b4ec301a8d0553f8c13cb9b7925b6a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397495 | `0x3e5a6c61488de85383fb0efd8c152d3e10c6bfe6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397496 | `0x3f3f0512d148d691d294de306b306c4e740b70bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397497 | `0x49f51d7e279252f3c9a09678fdc65b4dbd5cb196` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397498 | `0x4f52c3a81e33521e5a9a47fd9d3be475d2279c2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397499 | `0x525443603d6d0955142fac8820b64ae701f40065` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397500 | `0x57977de27e8cebaae7d4f1c1c5e00a47177eae0e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397501 | `0x58321ba91c7d4bdbcbc2142256b2c42d9ecfc573` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397502 | `0x586855729584a2f2eb8d9ce93ec5eb678c124995` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397503 | `0x5f8d24f33cc5a1d5d1bf012261e6a2214c92233c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397504 | `0x60043a545e22424e73a2debb98f8cd4361fe3da0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397505 | `0x6095a220c5567360d459462a25b1ad5aead45204` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397506 | `0x61d2558faa6b81814deeadb0d390612be291b827` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397507 | `0x61ed017468c8a3be3bac972b54fdae6eafcbcd79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397508 | `0x651d4b8168488fa163d85304662e8278d4c55baa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397509 | `0x656341ef90b622c6634e0573772ffb7f3669b9f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397510 | `0x6e5492f8ea2370844ee098a56dd88e1717e4a9c2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397511 | `0x7110640e30b08f5ae10e8ead5d99e8bbb29c783a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397512 | `0x722fc3640ba007c3e9867ccdb0dca59f2e2f29f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397513 | `0x771f7290428d830ecd41e980745c327e507823ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397514 | `0x772cff0be38a6ed31aeae479cbcb26d54b8404cf` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397515 | `0x7ac5922776034132d9ff5c7889d612d98e052cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397516 | `0x7b5c75512c1b3749eb0ffe583c1349d02803cb13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397517 | `0x7b9817eb5c49a99875138a5d52bf64a8b2cffffe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397518 | `0x7cad378df4a9a830505c18d3a83cac5d8c9a55fd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397519 | `0x7ec34e12a770dfca068ff287be9f2799ee70de24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397520 | `0x8235c179e9e84688fbd8b12295efc26834dac211` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397521 | `0x83f24023d15d835a213df24fd309c47dab5beb32` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397522 | `0x84e7f75ff75a0935847d72e1f76ceb392174ee17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397523 | `0x85ae9ccf1c862979e2d9b9f1ab819c212365fd92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397524 | `0x862cb4e988fb66e72f128d1183829f8c05b6c6a0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397525 | `0x908640fb4cafd33389375f9b94e52f3f444771e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397526 | `0x931d40dd07b25b91932b481b63631ea86d236e09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397527 | `0x93eb25e380229bfed6ab4bf843e5f670c12785e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397528 | `0xa25306937dba98378c32f167588f5dc17a95c94b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397529 | `0xaa0b1d265f23972eafb7d088e963bd31403a58f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397530 | `0xabf17d1def75da1b41b6df5f0b4aece602b4e045` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397531 | `0xac0a340c1644321d0bbc6404946d828c1ebfac92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397532 | `0xac0cfa7742069a8af0c63e14ffd0fe6b3e1bf8d2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397533 | `0xad78a4e35166f9942fb2916fdcfc1888b4718036` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397534 | `0xb0faabe84076c6330a9642a6400e87ce4caec9d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397535 | `0xb42e34bf1f8627189e099abdb069b9d73b521e4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397536 | `0xbc56e3edb67b56d598ace07668b138815f45d7aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397539 | `0xc51c8e4cfb7fb969dae4b10052a1bb6d15fcd96b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397540 | `0xc8aa884f54ea5eaef5ef4086607c00580a103928` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397541 | `0xd11b416573ebc59b6b2387da0d2c0d1b3b1f7a90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397542 | `0xd6a1147666f6e4d7161caf436d9923d44d901112` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397544 | `0xd829456fd63ada7de0657714a3a7a26de403e3d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397545 | `0xd9ff8396554a0d18b2cfbec53e1979b7ecce8373` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397546 | `0xdc90f6b111df0c26e349d3cc8d3c357b191e109a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397547 | `0xdfd6fe3a540f68601002e889e33117a7e8a0669d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397548 | `0xe3ebc767f98a39dcfaa3272805c51cab7633ebed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397549 | `0xe4e656b5215a82009969219b1babb7c0757a3315` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397550 | `0xe707c7a9dd58fb7eea17acff875cef8d10ed1a9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397551 | `0xe83d888fe3213dd3471de0bc1957e0f94f038483` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397552 | `0xe862bc39b8d5f12d8c4117d3e2d493dc20051ec6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397553 | `0xf07c96d040a2d8455aee8b0862ddfbee479b1b72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397554 | `0xf1f435b05d255a5dbde37333c0f61da6f69c6127` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397555 | `0xf3081a2eb8927c0462864ec3fdbe927c842a0893` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397556 | `0xf8764cbcdb15a9e4c7ca1b0b8a578d9ebeec1b6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397557 | `0xf96ff1189f1c2977b37e5df01962e1895bcc3d6a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397558 | `0xfbf3c16676055776ab9b286492d8f13e30e2e763` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397559 | `0xfd1db6f59fd1fbe0635f3df11c127b3ddc744092` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Chainsecurity_LP_Oracle.md](https://github.com/yield-basis/yb-core/blob/master/audits/Chainsecurity_LP_Oracle.md) | ChainSecurity | Audit | 2026-06 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [statemind.pdf](https://docs.yieldbasis.com/pdf/audit/statemind.pdf) | Statemind | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [chainsecurity.pdf](https://docs.yieldbasis.com/pdf/audit/chainsecurity.pdf) | ChainSecurity | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [quantstamp.pdf](https://docs.yieldbasis.com/pdf/audit/quantstamp.pdf) | Quantstamp | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [mixbytes.pdf](https://docs.yieldbasis.com/pdf/audit/mixbytes.pdf) | MixBytes | Audit | 2025-08 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 4 | high |
| [electisec.pdf](https://docs.yieldbasis.com/pdf/audit/electisec.pdf) | Electisec | Audit | 2025-08 | fresh | Direct | contract_name | matched | 3 | 0 | 0 | 3 | high |
| [pashov.pdf](https://docs.yieldbasis.com/pdf/audit/pashov.pdf) | Pashov Audit Group | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [leveraged-liquidity-paper.pdf](https://raw.githubusercontent.com/yield-basis/yb-paper/69253975369a75a0b30f38bf5d498272566918d6/leveraged-liquidity-paper.pdf) | Sherlock | Contest | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [mixbytes-hybrid-vault.pdf](https://docs.yieldbasis.com/pdf/audit/mixbytes-hybrid-vault.pdf) | MixBytes | Audit | 2026-03 | fresh | Direct | contract_name | matched | 3 | 0 | 0 | 0 | high |
| [chainsecurity-hybrid-vault.pdf](https://docs.yieldbasis.com/pdf/audit/chainsecurity-hybrid-vault.pdf) | ChainSecurity | Audit | 2026-03 | fresh | Direct | contract_name | matched | 3 | 0 | 0 | 0 | high |
| [firepan.com/reports/yieldbasis-feedistributor](https://firepan.com/reports/yieldbasis-feedistributor) | Firepan | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 0 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21087] Chainsecurity_LP_Oracle.md — matched: Scope explicitly lists contracts/LT.vy, contracts/AMM.vy, contracts/utils/YBLendingOracle.vy. YBLendingOracleLL.vy is a variant treated identically. Factory.vy is referenced in findings but not in scope; included as it is part of the system. Audit response date is 2026-06-14.
- [21088] statemind.pdf — no match: Scope section explicitly lists three files: LT.vy, AMM.vy, CryptopoolLPOracle.vy. Audit date is the final reaudit commit date (22-05-2025) from the timeline.
- [21089] chainsecurity.pdf — matched: Scope section explicitly lists 5 contracts in scope. Audit date found in header: July 7th, 2025.
- [21090] quantstamp.pdf — matched: Scope explicitly lists AMM, CryptopoolLPOracle, Factory, LT, and VirtualPool contracts. LiquidityGauge is out of scope. Audit date is the final report date (2025-04-25).
- [21091] mixbytes.pdf — matched: Scope table on page 3 lists 8 contracts with file paths. Audit date is August 11, 2025 from the cover page.
- [21092] electisec.pdf — matched: Audit covers six smart contracts: VotingEscrow, LiquidityGauge, GaugeController, VestingEscrow, CliffEscrow, and YB. Date found on cover page.
- [21093] pashov.pdf — matched: Scope section lists 'LT', 'AMM', 'Factory' as smart contracts in scope. Audit date is the end date of the engagement period.
- [21094] leveraged-liquidity-paper.pdf — no match: The document is a research paper, not an audit report. No contracts in scope are listed.
- [21095] mixbytes-hybrid-vault.pdf — matched: Scope table explicitly lists three contracts: HybridVault.vy, HybridVaultFactory.vy, HybridFactoryOwner.vy. Audit date derived from timeline end date 25.03.2026.
- [21096] chainsecurity-hybrid-vault.pdf — matched: Three contracts in scope: HybridVault, HybridVaultFactory, HybridFactoryOwner. Audit date from cover page.
- [21097] firepan.com/reports/yieldbasis-feedistributor — matched: Only one contract (FeeDistributor) is explicitly mentioned as the audit target. No scope table or file paths provided. Audit date not found in the text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Chainsecurity_LP_Oracle.md | LT | unmatched — not counted | — | listed in scope | no |
| Chainsecurity_LP_Oracle.md | AMM | unmatched — not counted | — | listed in scope | no |
| Chainsecurity_LP_Oracle.md | YBLendingOracle | unmatched — not counted | — | listed in scope | no |
| Chainsecurity_LP_Oracle.md | YBLendingOracleLL | unmatched — not counted | — | mentioned as variant sharing code paths | no |
| Chainsecurity_LP_Oracle.md | Factory | own contract | 0x370a44… (selected) `0x370a449febb9411c95bf897021377fe0b7d100c0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| statemind.pdf | LT | unmatched — not counted | — | listed in scope | no |
| statemind.pdf | AMM | unmatched — not counted | — | listed in scope | no |
| statemind.pdf | CryptopoolLPOracle | unmatched — not counted | — | listed in scope | no |
| chainsecurity.pdf | AMM | unmatched — not counted | — | listed in scope | no |
| chainsecurity.pdf | CryptopoolLPOracle | unmatched — not counted | — | listed in scope | no |
| chainsecurity.pdf | Factory | own contract | 0x370a44… (selected) `0x370a449febb9411c95bf897021377fe0b7d100c0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity.pdf | LT | unmatched — not counted | — | listed in scope | no |
| chainsecurity.pdf | VirtualPool | ambiguous — not counted | VirtualPool (alternative) `0x04ca7a7e602335a261b63128e89d43b6fe1e2c87` — deployed 2026-05-25 10:23:47+03 — liveness: live (current_address_book_code)<br>0xf96ff1… (alternative) `0xf96ff1189f1c2977b37e5df01962e1895bcc3d6a` — liveness: live (current_address_book_code)<br>0x772cff… (alternative) `0x772cff0be38a6ed31aeae479cbcb26d54b8404cf` — liveness: live (current_address_book_code)<br>0x1b9518… (alternative) `0x1b9518f6b179552c6a903f213d4ea5503ab7f96e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| quantstamp.pdf | AMM | unmatched — not counted | — | listed in scope | no |
| quantstamp.pdf | CryptopoolLPOracle | unmatched — not counted | — | listed in scope | no |
| quantstamp.pdf | Factory | own contract | 0x370a44… (selected) `0x370a449febb9411c95bf897021377fe0b7d100c0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quantstamp.pdf | LT | unmatched — not counted | — | listed in scope | no |
| quantstamp.pdf | VirtualPool | ambiguous — not counted | VirtualPool (alternative) `0x04ca7a7e602335a261b63128e89d43b6fe1e2c87` — deployed 2026-05-25 10:23:47+03 — liveness: live (current_address_book_code)<br>0xf96ff1… (alternative) `0xf96ff1189f1c2977b37e5df01962e1895bcc3d6a` — liveness: live (current_address_book_code)<br>0x772cff… (alternative) `0x772cff0be38a6ed31aeae479cbcb26d54b8404cf` — liveness: live (current_address_book_code)<br>0x1b9518… (alternative) `0x1b9518f6b179552c6a903f213d4ea5503ab7f96e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| mixbytes.pdf | GaugeController | own contract | 0x1be148… (selected) `0x1be14811a3a06f6af4fa64310a636e1df04c1c21` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes.pdf | LiquidityGauge | unmatched — not counted | — | listed in scope table | no |
| mixbytes.pdf | YB | own contract | YBToken (selected) `0x01791f726b4103694969820be083196cc7c045ff` — deployed 2025-09-15 23:40:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes.pdf | VotingEscrow | unmatched — not counted | — | listed in scope table | no |
| mixbytes.pdf | CliffEscrow | own contract | 0x60043a… (selected) `0x60043a545e22424e73a2debb98f8cd4361fe3da0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes.pdf | VestingEscrow | unmatched — not counted | — | listed in scope table | no |
| mixbytes.pdf | Factory | own contract | 0x370a44… (selected) `0x370a449febb9411c95bf897021377fe0b7d100c0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes.pdf | erc4626 | unmatched — not counted | — | listed in scope table | no |
| electisec.pdf | VotingEscrow | unmatched — not counted | — | mentioned in scope and findings | no |
| electisec.pdf | LiquidityGauge | unmatched — not counted | — | mentioned in scope and findings | no |
| electisec.pdf | GaugeController | own contract | 0x1be148… (selected) `0x1be14811a3a06f6af4fa64310a636e1df04c1c21` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec.pdf | VestingEscrow | unmatched — not counted | — | mentioned in scope and findings | no |
| electisec.pdf | CliffEscrow | own contract | 0x60043a… (selected) `0x60043a545e22424e73a2debb98f8cd4361fe3da0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec.pdf | YB | own contract | YBToken (selected) `0x01791f726b4103694969820be083196cc7c045ff` — deployed 2025-09-15 23:40:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| pashov.pdf | LT | unmatched — not counted | — | mentioned in scope as 'LT' and in findings | no |
| pashov.pdf | AMM | unmatched — not counted | — | mentioned in scope as 'AMM' and in findings | no |
| pashov.pdf | Factory | own contract | 0x370a44… (selected) `0x370a449febb9411c95bf897021377fe0b7d100c0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes-hybrid-vault.pdf | HybridVault | own contract | HybridVault (selected) `0xd772edf092f155f3e81e2b261d96bcfae4fdc3ac` — deployed 2026-04-06 19:26:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes-hybrid-vault.pdf | HybridVaultFactory | own contract | HybridVaultFactory (selected) `0xbdc32268851c324c6185809271dfe6d8dab8dc5b` — deployed 2026-04-06 19:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes-hybrid-vault.pdf | HybridFactoryOwner | own contract | HybridFactoryOwner (selected) `0x0f4e1a1bcde549653e9302ba1caab403373f1048` — deployed 2026-04-06 19:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity-hybrid-vault.pdf | HybridVault | own contract | HybridVault (selected) `0xd772edf092f155f3e81e2b261d96bcfae4fdc3ac` — deployed 2026-04-06 19:26:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity-hybrid-vault.pdf | HybridVaultFactory | own contract | HybridVaultFactory (selected) `0xbdc32268851c324c6185809271dfe6d8dab8dc5b` — deployed 2026-04-06 19:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity-hybrid-vault.pdf | HybridFactoryOwner | own contract | HybridFactoryOwner (selected) `0x0f4e1a1bcde549653e9302ba1caab403373f1048` — deployed 2026-04-06 19:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firepan.com/reports/yieldbasis-feedistributor | FeeDistributor | own contract | 0xd11b41… (selected) `0xd11b416573ebc59b6b2387da0d2c0d1b3b1f7a90` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18084fba666a33d37592fa2633fd49a74dd93a88` | TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x313698667d7fdd6789a9bc70821309ff891e729a` | Twocrypto | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x04ca7a7e602335a261b63128e89d43b6fe1e2c87` | VirtualPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | WBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 144 |
| upstream | 1 |
| standard_library | 8 |
| needs_review | 78 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 18 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 22 unmatched
- Matched-own operational status: 18 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=1, medium=1
- Match method counts: unique_name=18

Zero-match audit list:

- [21088] statemind.pdf
- [21094] leveraged-liquidity-paper.pdf

Fork inheritance lineage and inherited audits are included when available.
