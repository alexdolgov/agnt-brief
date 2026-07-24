# Agentic Audit Brief: Yield Basis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 18 across 9 audit(s)
- Eligible audit results: 11 (9 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Yield Basis (`yield-basis`)
- Website: [https://yieldbasis.com/](https://yieldbasis.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 426 unique implementations (426 raw deployments)
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
- Outside the address book: 334 discovered implementations shown in the inventory but excluded from coverage (12 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 45 of 426 unique; 381 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/153
- Verified + Unaudited implementations: 149
- Verified by bytecode match: 0
- Unverified implementations: 273
- Unique implementations: 426
- Raw deployments: 426
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

### ❓ Unverified (273)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0509fb20a90d5e3434912311a6f77b81b06457ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0926a73bb2d169a86c2da9c7e03ac63a5cf42883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ac624dc84c8a0ad8494c2311c4f05aaddf3854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09fa1021d05a89466f7c8808e282bd09cf4487bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397473 | `0x0e357af536592f275c6aa07b8ac2ca6eb3d0cf5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f6b01fb67058e48315d5f75ca1035f99d56245d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397475 | `0x10b663da78055bda0c7c26712ce1a0613af0ae66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397476 | `0x11988547b064cabf65c431c14ef1b7435084602e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x125ca420ea1556a65bb926fa7bd5d72fc22af268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1482d78dbb1be13ffb22329f59211f85b1f07bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b0619e608c829c4cdd3b2122d1c9e5a4455376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x154856e18316ac0db1ce6993c0a8249245bafcfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1739c0cc875e41ad5c8dd5dbf9c092c7b7d04986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1898b1e4fa7195cf0f9b1e127a4aa839ff4dd3c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a0e851f5333081d6f1207a9113981a512f84d71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397478 | `0x1b9518f6b179552c6a903f213d4ea5503ab7f96e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397479 | `0x1be14811a3a06f6af4fa64310a636e1df04c1c21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c6a8a26625119f98af50555ccd60f266de7eebb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397480 | `0x1cb8f667de695f3d126534d9808567f299b90a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d305101261391627631cff9314fbb74cd8f4fb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x248f2ee9fb715f9eec4c16be5c98ec8ce1c815fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x249ef6db69df8fc3d72e428c2d16d7a37badb609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x258f7e1ee13ee4d3a62d79db715fa95c4620d9c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x272d6faa43d10e8cab9270a7430546c6bf5bbdda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27550b42f8b122ad28c3f19d41f830eb36b65662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27845fbb7ba58b152681558e44c4ed4c64e37016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28ce92490515c70943eddc6cc59e601749b0ab7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a18609eecaa500abf633387fb8e44deb7ab7400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a385d5c87719efa017a9c8078091365a090dc30` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397483 | `0x2a4671fd269df5b3da03103c74063da10d03e23c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a9faaad93bd1f95dfa7b469ad7d4cd8c387fb93` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397484 | `0x2b513ebe7070cff91cf699a0bfe5075020c732ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b6873c0da28b9e2c721a510d4ff5dc6a21d1b2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397485 | `0x2b9c9f3bdceb5d8e36a4704f08a78fca53343cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c08b940eb59bc675dba87ea35e4fcd8a92ad4c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ce947908c1055f175f1efced6612bd47184a8f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397487 | `0x2da2aada1445a5101d648f3c8711b070799bbc91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f142fb2c86ca305de0944a914ff52890853b998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fb936d7430fbeaee0e932d29ebdf90997ac9c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ff065e8b3920fe1c8dc1312aff424d7e9d16b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3030277569a3537c50bb0cac87a00be98c4ed978` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397488 | `0x30ba8b27f2128c770b90c965ff671e08b9310d21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x348082aa6ee298158a3e54b99a77dd8f0b884b94` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397490 | `0x35095d94e0f1f4a78386b7eb74bb64768a2341e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3541d2d1e098bba7b61e61fdc9aee15d4a6fbd51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397491 | `0x36e36d5d588d480a15a40c7668be52d36eb206a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397492 | `0x370a449febb9411c95bf897021377fe0b7d100c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x371cfae6dcd88a8934f1add1219bff485568b9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37ed18f70426738af9db8338c7935093cfe781cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397493 | `0x37f45e64935e7b8383d2f034048b32770b04e8bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x380cd5b8a8d4e3e0aa655aa4bd1e991a6a8b22a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x391ed19b2b9870cc66e52c02f8c1e0fa1aa0921f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392fe2b2dc983c9855fd7575508caad8cb3d7256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a6f2c35c631cc5639247aa28946833e5a96490b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cbda6b3e0d673f37a08385e0ae8082de1acd716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cfff17e0840f6abdf78c5afdb277113e07a1544` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397494 | `0x3dae83d236b4ec301a8d0553f8c13cb9b7925b6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de7b5bbdabb47e662aa8cc72002948d1e63ef10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dfaf575c08533baf0d32a0e50d565c11a1fbfc7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397495 | `0x3e5a6c61488de85383fb0efd8c152d3e10c6bfe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e6b4795bd173dd5c700ca8cfd3f247bfcdc9d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e6db519752d4d1eeed0539a5f7bcf3aa4089b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e70b2a6a13e9822c21eecb357d3bbc663e4f066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2d3e8aa723e7169574837dfa5d658850b02ac4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397496 | `0x3f3f0512d148d691d294de306b306c4e740b70bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4161fe299a38a788077606f335605e1b920037a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41f5a7009e6c406be3ade0552a2804926d975705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42c9bb28e8f6540c7a2b30196f35047428eb5dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4328f034716977cc700dca74a1c101f634de050a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442e36e12b9d657f587e8ab91656258352883e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449b0686a1fc95d6b7ae373aa94ec4b0bd820c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ee8baeccadd975b3346c551351fa2853829d45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4712d2cb599ffb0efb1cdc4d386e60a59e3840f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397497 | `0x49f51d7e279252f3c9a09678fdc65b4dbd5cb196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b7782fd52143058e4495686edf8917021d1c346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bcd180516dfb6d554e63bb601a7594e96e9be87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d151d9d9dcee0756aa2f151617401b35db854cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397498 | `0x4f52c3a81e33521e5a9a47fd9d3be475d2279c2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397499 | `0x525443603d6d0955142fac8820b64ae701f40065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x541ff6590f7f94587d4480a94acd96b39b3f412b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54cf08e9e2d17e7684f82f9383f16032a4d8ce27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x554e4454bc262faf05e77a02cd11ad04b15c12c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5756a766ba347d055190d3f71b46cf1b4d3ba368` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397500 | `0x57977de27e8cebaae7d4f1c1c5e00a47177eae0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58241c11abd0bdb1448ef9f38f8aa7fda21a3a44` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397501 | `0x58321ba91c7d4bdbcbc2142256b2c42d9ecfc573` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397502 | `0x586855729584a2f2eb8d9ce93ec5eb678c124995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae8b1f85b184fe0f8afef7d07e71190adb3a63f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b13273f3b584fe6864a2fde89e8f90b7e790d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d29949f8e64fa2f9cb2b1fa190244b9413bc3ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ea84fa3a8122d074910acf0c47bfe5acf2ddf10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397503 | `0x5f8d24f33cc5a1d5d1bf012261e6a2214c92233c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397504 | `0x60043a545e22424e73a2debb98f8cd4361fe3da0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6031ef0a2d380423932e043d8187b52e3f82c84e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x605e1a35d6c5532479d2be0eb8be6fda1f2652da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397505 | `0x6095a220c5567360d459462a25b1ad5aead45204` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397506 | `0x61d2558faa6b81814deeadb0d390612be291b827` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397507 | `0x61ed017468c8a3be3bac972b54fdae6eafcbcd79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62b792654eafffbbc483d69fa05f8ca4d0914af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6411b601764db2e6305db84461d880618c480e9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397508 | `0x651d4b8168488fa163d85304662e8278d4c55baa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397509 | `0x656341ef90b622c6634e0573772ffb7f3669b9f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x669965a15e5d97690529ff20944a4eaf092fc2e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67af89fd1a20302798f07eca2c5a58fc17d155b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e46918dc347e20cf180747996258be00dc461b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a316368eb092c856ca368983488061caabe6e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b3aa4bc25e28301c5c050959cdc5294d353c561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cd8cecbc26f30b26557b08a4565c7a208a83f3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397510 | `0x6e5492f8ea2370844ee098a56dd88e1717e4a9c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f7ce3697276f0066dde4010b3fcdd2d65d27475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70693acb9befea3ad557633d4ce235148ef4529b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397511 | `0x7110640e30b08f5ae10e8ead5d99e8bbb29c783a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fac447506a1fa1fec948b33a87812c7973a761` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397512 | `0x722fc3640ba007c3e9867ccdb0dca59f2e2f29f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72447fc8211bb77a22c2924f15f676ddb9d5df6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75c9dc99d05c36c1ab19a9c4e58e0e97c76431ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x766b660f3f3d5f97831fdf2f873235bbe100cb30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x771ba228bac1e97bd888e4ab15eec61a7e510fe0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397513 | `0x771f7290428d830ecd41e980745c327e507823ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397514 | `0x772cff0be38a6ed31aeae479cbcb26d54b8404cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7808819d10b5def13a3e88811be3ada861445778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79694f02117ce4bd8073c5c2b05470b34f042b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3612b398b0ea02df65976b003f839ce2f8ceed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a79420b2b7ea9ddc9a8e3ca80a980ed3d42acf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aaa82343434f31de5cf0314c22bfa0084ce7f76` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397515 | `0x7ac5922776034132d9ff5c7889d612d98e052cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397516 | `0x7b5c75512c1b3749eb0ffe583c1349d02803cb13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b66d1d70645d22a015a12438d42b2aefc255d28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397517 | `0x7b9817eb5c49a99875138a5d52bf64a8b2cffffe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397518 | `0x7cad378df4a9a830505c18d3a83cac5d8c9a55fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7df4ed9ba985231806caabb353c0e7797b62f602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e4383bd9d1920a10e9060b13ee70a18c5cb6659` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397519 | `0x7ec34e12a770dfca068ff287be9f2799ee70de24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f5c5ce55d990d8ead1857fee90419cd6141b247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fba07c40ad1985f023e144e5732784ad6051591` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80808dd123a1fd581c0e0f759a3ef870ae2a412f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81874e067b5b2d7e5c33d92c258c334371b4978b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397520 | `0x8235c179e9e84688fbd8b12295efc26834dac211` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397521 | `0x83f24023d15d835a213df24fd309c47dab5beb32` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397522 | `0x84e7f75ff75a0935847d72e1f76ceb392174ee17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397523 | `0x85ae9ccf1c862979e2d9b9f1ab819c212365fd92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86209b56baa17b7a950d71eb0d8f3b1d7ee5d21a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397524 | `0x862cb4e988fb66e72f128d1183829f8c05b6c6a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x871a0643e96e5014c4a5d84bab09a101bd702aac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87b117d94aeb8d18948b9b670327f0adb4921024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87f689e6e5d2414eb95f2d4db16c24d763c41ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8879dc9ef3e2376032f4b596fdb64617d0876f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89693f44dd69286e66f8f39987ef25e2a76c6d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8999f57d3bd0c1524800a9ffd4a097e7ba760faf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a8d05c8e098b56053c2fc3c8a10fc13225183e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cdb92e5a75afeb35bb33261125571500af121c0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397525 | `0x908640fb4cafd33389375f9b94e52f3f444771e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e6f03e7f64dcba91a649c3aa170517d9efca46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92927653d301eea4cf4b79e997d5914a347cb580` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397526 | `0x931d40dd07b25b91932b481b63631ea86d236e09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397527 | `0x93eb25e380229bfed6ab4bf843e5f670c12785e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x945731e43c341cf67a14edc14aafe9342cfafdc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x960c5674eb0cc91d70a79628370f33b8db3c593c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x970385bb761126dc7783facf9a6cf39afd9c6144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa5f4416be7a2c21c4bf10a6d5dee6a484b4e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fc47920dc749dd95297ec7fe85dc1563d98f0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa080292c7e8c458e186f9266312d035e5e985617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa12d5e346db847e84a9546d47f1aef155db2cc68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa13463c30d9edada5bb3e893e9f025bf9deec549` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397528 | `0xa25306937dba98378c32f167588f5dc17a95c94b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa30b61b5f1ee1c53d5999500e19c8104185943a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa51753ac0c77b4d20b876d4baef4ea65f260421f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5ceab8d012b7563b466252972610c620d3c909c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397529 | `0xaa0b1d265f23972eafb7d088e963bd31403a58f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa3a3de957df88c6fdfaa6868342586c35d55e9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397530 | `0xabf17d1def75da1b41b6df5f0b4aece602b4e045` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397531 | `0xac0a340c1644321d0bbc6404946d828c1ebfac92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397532 | `0xac0cfa7742069a8af0c63e14ffd0fe6b3e1bf8d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacf8bea12aed0c2097948b65d422574ae90f3a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad31f31f6dbc05dc2fc9eaadb153d0589b9812a6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-397533 | `0xad78a4e35166f9942fb2916fdcfc1888b4718036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xade7cb5e2c2389b86f4781490c1c03f51500d4cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf5150fa7f0fa867ef4e0d551c66eb21830cd6dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397534 | `0xb0faabe84076c6330a9642a6400e87ce4caec9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1b76ea10cf099bd82d5a93b4a94ca4571ab785d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1fbf44944a938a53504d26317e631332e2f0ff0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397535 | `0xb42e34bf1f8627189e099abdb069b9d73b521e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4875f7726d32c5c381f5dd13a7acf8e0bc049c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb58648f21b7e78b38d02d8f677dc7aee3c7dfa72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6595ac67e659d07b638197be2da85caca3dce20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8ba33cd1ccb091a8468572950bd3669723fa5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb91788b8ddc877ed649c0d7e523d32b267491ec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb91d819943e1c00301caa0fba3f471bc9d912d7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb95b5c99c2f1b898f0018b948d0333d3851af0f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9756d050b3d31cc4d9be7323dc8c10a80d88040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc53671fdf11eb5ec4e313706fa57f9a0b38ee87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397536 | `0xbc56e3edb67b56d598ace07668b138815f45d7aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd04c291ed65c8cf7395c7b34b4f4169598e199c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd5aa1db9804b26ccf2a3f9b3f994db2c9e6938d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd67e4dda2cbe88b36b7bebc41cf43ebbdb87a7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1ed41660a93a9072123f133a9277d28c0bb44b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397539 | `0xc51c8e4cfb7fb969dae4b10052a1bb6d15fcd96b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5498c1afc75ffaa2a6f14be0f0f41fedb683b58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5c1d408e3e2f466ff960fbf7c77ee52dfc7ba14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5dc3c126f02eb22eccc92d040f6b764d6300edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6fc9513f9215d4e8a84d11a60e040e02fa1ae65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc768a7ce85c896ac7d84e8f41090728ab03a5af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79be1bd43ed5943d85cd9c33cd3a8c0f63cf003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7fb9f34d67df279b539b224882cff37ae6bbed4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397540 | `0xc8aa884f54ea5eaef5ef4086607c00580a103928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8aaacc8c6ab8b61c1f681d1414c4863c8b6340e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e8246db2d72387cf708feedb2c06b41c9d6709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca8d1980e79d220d108cebbff456dc516d5da5df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb81c2783bc72f841ece6d89fdf3db8e6b26cd50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbc5bd49002ddec2928dd4b3f461d5099ae099ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbd1dfaa9eee616245209349c745a6cc9f3553d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0074f0ec6319b288b76103d2ba89768a4476fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce7ff5e32bb411f97b1b66713ec2e90bdd425f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1af2ceb3e0ba659e3a51a4ced9a9d28bdd9887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf20319b55046d4f199df32ba0a622406b5c03d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf9e17f064da072b05a13aac15a2fe88a244213a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397541 | `0xd11b416573ebc59b6b2387da0d2c0d1b3b1f7a90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd30f78febbd7d463ccbc6039be8b85831c405ad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3aeaaf39e38442a12ffe5fb4e969bff156531fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd58207a67d1b35edf33b6ade1125b29dc1964cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd64c2c1bb25ccf188910de87249838bb01019cb9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397542 | `0xd6a1147666f6e4d7161caf436d9923d44d901112` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397544 | `0xd829456fd63ada7de0657714a3a7a26de403e3d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd865d00e19ee6fd2106f9b0c402d6268bbadd45f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8ae47ddaeb4567371b344cc748f39e27255f9db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397545 | `0xd9ff8396554a0d18b2cfbec53e1979b7ecce8373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda67786a87bed11081c1d85b26fe75a33e1c2710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda994d97314721a436ce2f8caa19af7889848015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9ea73ce6e2022bff12df6765cdf6d2721ef0df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397546 | `0xdc90f6b111df0c26e349d3cc8d3c357b191e109a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce91e3254a5bb2f1fb099d730a968d9af1cbb62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd424974227db8ebd9467a68a4815418d7678f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde61d94f71a44cb28ce94a34b1b560fc55128c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeb033832bbd3ece762d43338573d6ac3e85c338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7ef2f2726078050a72fcf2b320f82152ce03ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397547 | `0xdfd6fe3a540f68601002e889e33117a7e8a0669d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1c32cac6270a13491a981829ec4f9e99b3f2ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1eb1197aff0fcb1620dd41c766904f6f43dc7cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397548 | `0xe3ebc767f98a39dcfaa3272805c51cab7633ebed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397549 | `0xe4e656b5215a82009969219b1babb7c0757a3315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe64d35a44edbf9c8458f3bdf23d0370e9db5e02d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe687b7c0b096ef956d353ca36352aab4b8adae34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6a6a9dbb82b3eaca8f8be4a346a563b683b0906` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397550 | `0xe707c7a9dd58fb7eea17acff875cef8d10ed1a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe729e4c84222077888d425b516b79316d4370760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe80f4c14fee591ec0943de291d0fe51813ffc5bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397551 | `0xe83d888fe3213dd3471de0bc1957e0f94f038483` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397552 | `0xe862bc39b8d5f12d8c4117d3e2d493dc20051ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeba14366b059182cc883a4d73385004ec102ce41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec767751a26b6f4b4de32d2992c502e97b87bc14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecc7b8c48cf61682e42a08f47b5ebabeea9d6e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef8096f0ce9eb465f0239b05b11f7abe18b09a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf01401a1f674f242d088a0b46cdc7f5945148647` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397553 | `0xf07c96d040a2d8455aee8b0862ddfbee479b1b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0aaba135955576ffdc7f19a246e89c88b86bb45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf12766500188da25c2f1840b05e187f9116a360e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397554 | `0xf1f435b05d255a5dbde37333c0f61da6f69c6127` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397555 | `0xf3081a2eb8927c0462864ec3fdbe927c842a0893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3500cceb90ac32e91f79438260ee5ce11384770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf503314b403910c8a991b424b665372243c2df04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf560af74e265173318f01bd974e5d8eae6b5b70c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5ab0cad932f2aa2b67fdc675dab48a8dfe02fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6bd678103554eb62ccddd26171fbfddf145d4bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7f70223f580b649b375b3a30784eca74b9f83dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397556 | `0xf8764cbcdb15a9e4c7ca1b0b8a578d9ebeec1b6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397557 | `0xf96ff1189f1c2977b37e5df01962e1895bcc3d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa4bf9f0500710a17324c7584d0fbc9272c3530b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397558 | `0xfbf3c16676055776ab9b286492d8f13e30e2e763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc04d5958050b8355ad6e8ddbb6099409c44c21a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfca6410e66330c9ffe6031217c314ae46ff89833` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-397559 | `0xfd1db6f59fd1fbe0635f3df11c127b3ddc744092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff2ef57f498947446aa734a9a6ccf673ba548fcd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 195
- Live contracts: 0
- Unknown liveness contracts: 195
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=195

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0509fb20a90d5e3434912311a6f77b81b06457ce` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09ac624dc84c8a0ad8494c2311c4f05aaddf3854` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09fa1021d05a89466f7c8808e282bd09cf4487bf` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0f6b01fb67058e48315d5f75ca1035f99d56245d` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x125ca420ea1556a65bb926fa7bd5d72fc22af268` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1482d78dbb1be13ffb22329f59211f85b1f07bdb` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x14b0619e608c829c4cdd3b2122d1c9e5a4455376` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x154856e18316ac0db1ce6993c0a8249245bafcfc` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1739c0cc875e41ad5c8dd5dbf9c092c7b7d04986` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1898b1e4fa7195cf0f9b1e127a4aa839ff4dd3c3` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a0e851f5333081d6f1207a9113981a512f84d71` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c6a8a26625119f98af50555ccd60f266de7eebb` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d305101261391627631cff9314fbb74cd8f4fb1` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x248f2ee9fb715f9eec4c16be5c98ec8ce1c815fc` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x249ef6db69df8fc3d72e428c2d16d7a37badb609` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x258f7e1ee13ee4d3a62d79db715fa95c4620d9c3` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x272d6faa43d10e8cab9270a7430546c6bf5bbdda` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x27550b42f8b122ad28c3f19d41f830eb36b65662` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x27845fbb7ba58b152681558e44c4ed4c64e37016` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28ce92490515c70943eddc6cc59e601749b0ab7b` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a18609eecaa500abf633387fb8e44deb7ab7400` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a385d5c87719efa017a9c8078091365a090dc30` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a9faaad93bd1f95dfa7b469ad7d4cd8c387fb93` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b6873c0da28b9e2c721a510d4ff5dc6a21d1b2f` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c08b940eb59bc675dba87ea35e4fcd8a92ad4c7` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ce947908c1055f175f1efced6612bd47184a8f0` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f142fb2c86ca305de0944a914ff52890853b998` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2fb936d7430fbeaee0e932d29ebdf90997ac9c56` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ff065e8b3920fe1c8dc1312aff424d7e9d16b14` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3030277569a3537c50bb0cac87a00be98c4ed978` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x348082aa6ee298158a3e54b99a77dd8f0b884b94` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3541d2d1e098bba7b61e61fdc9aee15d4a6fbd51` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x371cfae6dcd88a8934f1add1219bff485568b9a8` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37ed18f70426738af9db8338c7935093cfe781cb` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x380cd5b8a8d4e3e0aa655aa4bd1e991a6a8b22a0` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x391ed19b2b9870cc66e52c02f8c1e0fa1aa0921f` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a6f2c35c631cc5639247aa28946833e5a96490b` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3cbda6b3e0d673f37a08385e0ae8082de1acd716` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3cfff17e0840f6abdf78c5afdb277113e07a1544` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3de7b5bbdabb47e662aa8cc72002948d1e63ef10` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3dfaf575c08533baf0d32a0e50d565c11a1fbfc7` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e6b4795bd173dd5c700ca8cfd3f247bfcdc9d43` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e70b2a6a13e9822c21eecb357d3bbc663e4f066` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f2d3e8aa723e7169574837dfa5d658850b02ac4` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4161fe299a38a788077606f335605e1b920037a1` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41f5a7009e6c406be3ade0552a2804926d975705` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42c9bb28e8f6540c7a2b30196f35047428eb5dcd` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4328f034716977cc700dca74a1c101f634de050a` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x442e36e12b9d657f587e8ab91656258352883e85` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x449b0686a1fc95d6b7ae373aa94ec4b0bd820c71` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x44ee8baeccadd975b3346c551351fa2853829d45` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4712d2cb599ffb0efb1cdc4d386e60a59e3840f1` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b7782fd52143058e4495686edf8917021d1c346` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4bcd180516dfb6d554e63bb601a7594e96e9be87` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d151d9d9dcee0756aa2f151617401b35db854cd` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x541ff6590f7f94587d4480a94acd96b39b3f412b` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54cf08e9e2d17e7684f82f9383f16032a4d8ce27` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x554e4454bc262faf05e77a02cd11ad04b15c12c5` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5756a766ba347d055190d3f71b46cf1b4d3ba368` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58241c11abd0bdb1448ef9f38f8aa7fda21a3a44` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ae8b1f85b184fe0f8afef7d07e71190adb3a63f` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b13273f3b584fe6864a2fde89e8f90b7e790d1c` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d29949f8e64fa2f9cb2b1fa190244b9413bc3ea` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ea84fa3a8122d074910acf0c47bfe5acf2ddf10` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6031ef0a2d380423932e043d8187b52e3f82c84e` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x605e1a35d6c5532479d2be0eb8be6fda1f2652da` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62b792654eafffbbc483d69fa05f8ca4d0914af2` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6411b601764db2e6305db84461d880618c480e9f` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x669965a15e5d97690529ff20944a4eaf092fc2e9` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67af89fd1a20302798f07eca2c5a58fc17d155b5` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68e46918dc347e20cf180747996258be00dc461b` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a316368eb092c856ca368983488061caabe6e0d` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b3aa4bc25e28301c5c050959cdc5294d353c561` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6cd8cecbc26f30b26557b08a4565c7a208a83f3d` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f7ce3697276f0066dde4010b3fcdd2d65d27475` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70693acb9befea3ad557633d4ce235148ef4529b` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71fac447506a1fa1fec948b33a87812c7973a761` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72447fc8211bb77a22c2924f15f676ddb9d5df6e` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75c9dc99d05c36c1ab19a9c4e58e0e97c76431ce` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x766b660f3f3d5f97831fdf2f873235bbe100cb30` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x771ba228bac1e97bd888e4ab15eec61a7e510fe0` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7808819d10b5def13a3e88811be3ada861445778` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79694f02117ce4bd8073c5c2b05470b34f042b78` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a3612b398b0ea02df65976b003f839ce2f8ceed` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a79420b2b7ea9ddc9a8e3ca80a980ed3d42acf1` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7aaa82343434f31de5cf0314c22bfa0084ce7f76` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b66d1d70645d22a015a12438d42b2aefc255d28` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7df4ed9ba985231806caabb353c0e7797b62f602` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e4383bd9d1920a10e9060b13ee70a18c5cb6659` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f5c5ce55d990d8ead1857fee90419cd6141b247` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7fba07c40ad1985f023e144e5732784ad6051591` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80808dd123a1fd581c0e0f759a3ef870ae2a412f` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81874e067b5b2d7e5c33d92c258c334371b4978b` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86209b56baa17b7a950d71eb0d8f3b1d7ee5d21a` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x871a0643e96e5014c4a5d84bab09a101bd702aac` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87b117d94aeb8d18948b9b670327f0adb4921024` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87f689e6e5d2414eb95f2d4db16c24d763c41ab6` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8879dc9ef3e2376032f4b596fdb64617d0876f23` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89693f44dd69286e66f8f39987ef25e2a76c6d8f` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8999f57d3bd0c1524800a9ffd4a097e7ba760faf` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a8d05c8e098b56053c2fc3c8a10fc13225183e2` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8cdb92e5a75afeb35bb33261125571500af121c0` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90e6f03e7f64dcba91a649c3aa170517d9efca46` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x92927653d301eea4cf4b79e997d5914a347cb580` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x945731e43c341cf67a14edc14aafe9342cfafdc9` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x960c5674eb0cc91d70a79628370f33b8db3c593c` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x970385bb761126dc7783facf9a6cf39afd9c6144` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9aa5f4416be7a2c21c4bf10a6d5dee6a484b4e7b` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9fc47920dc749dd95297ec7fe85dc1563d98f0a9` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa080292c7e8c458e186f9266312d035e5e985617` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa12d5e346db847e84a9546d47f1aef155db2cc68` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa13463c30d9edada5bb3e893e9f025bf9deec549` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa30b61b5f1ee1c53d5999500e19c8104185943a1` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa51753ac0c77b4d20b876d4baef4ea65f260421f` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5ceab8d012b7563b466252972610c620d3c909c` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa3a3de957df88c6fdfaa6868342586c35d55e9f` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xacf8bea12aed0c2097948b65d422574ae90f3a29` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xad31f31f6dbc05dc2fc9eaadb153d0589b9812a6` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xade7cb5e2c2389b86f4781490c1c03f51500d4cd` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf5150fa7f0fa867ef4e0d551c66eb21830cd6dc` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1b76ea10cf099bd82d5a93b4a94ca4571ab785d` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1fbf44944a938a53504d26317e631332e2f0ff0` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4875f7726d32c5c381f5dd13a7acf8e0bc049c6` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb58648f21b7e78b38d02d8f677dc7aee3c7dfa72` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb6595ac67e659d07b638197be2da85caca3dce20` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8ba33cd1ccb091a8468572950bd3669723fa5c6` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb91788b8ddc877ed649c0d7e523d32b267491ec3` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb91d819943e1c00301caa0fba3f471bc9d912d7f` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb95b5c99c2f1b898f0018b948d0333d3851af0f3` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9756d050b3d31cc4d9be7323dc8c10a80d88040` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc53671fdf11eb5ec4e313706fa57f9a0b38ee87` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd04c291ed65c8cf7395c7b34b4f4169598e199c` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd5aa1db9804b26ccf2a3f9b3f994db2c9e6938d` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd67e4dda2cbe88b36b7bebc41cf43ebbdb87a7a` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbf1ed41660a93a9072123f133a9277d28c0bb44b` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc5498c1afc75ffaa2a6f14be0f0f41fedb683b58` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc5c1d408e3e2f466ff960fbf7c77ee52dfc7ba14` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc5dc3c126f02eb22eccc92d040f6b764d6300edf` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6fc9513f9215d4e8a84d11a60e040e02fa1ae65` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc768a7ce85c896ac7d84e8f41090728ab03a5af2` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc79be1bd43ed5943d85cd9c33cd3a8c0f63cf003` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc7fb9f34d67df279b539b224882cff37ae6bbed4` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8aaacc8c6ab8b61c1f681d1414c4863c8b6340e` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9e8246db2d72387cf708feedb2c06b41c9d6709` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca8d1980e79d220d108cebbff456dc516d5da5df` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb81c2783bc72f841ece6d89fdf3db8e6b26cd50` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcbc5bd49002ddec2928dd4b3f461d5099ae099ea` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcbd1dfaa9eee616245209349c745a6cc9f3553d1` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd0074f0ec6319b288b76103d2ba89768a4476fe` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce7ff5e32bb411f97b1b66713ec2e90bdd425f7c` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf1af2ceb3e0ba659e3a51a4ced9a9d28bdd9887` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf20319b55046d4f199df32ba0a622406b5c03d5` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf9e17f064da072b05a13aac15a2fe88a244213a` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd30f78febbd7d463ccbc6039be8b85831c405ad1` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3aeaaf39e38442a12ffe5fb4e969bff156531fd` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd58207a67d1b35edf33b6ade1125b29dc1964cd0` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd64c2c1bb25ccf188910de87249838bb01019cb9` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd865d00e19ee6fd2106f9b0c402d6268bbadd45f` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8ae47ddaeb4567371b344cc748f39e27255f9db` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda67786a87bed11081c1d85b26fe75a33e1c2710` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda994d97314721a436ce2f8caa19af7889848015` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda9ea73ce6e2022bff12df6765cdf6d2721ef0df` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdce91e3254a5bb2f1fb099d730a968d9af1cbb62` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdd424974227db8ebd9467a68a4815418d7678f9f` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde61d94f71a44cb28ce94a34b1b560fc55128c80` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdeb033832bbd3ece762d43338573d6ac3e85c338` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf7ef2f2726078050a72fcf2b320f82152ce03ad` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe1c32cac6270a13491a981829ec4f9e99b3f2ffa` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe1eb1197aff0fcb1620dd41c766904f6f43dc7cc` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe64d35a44edbf9c8458f3bdf23d0370e9db5e02d` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe687b7c0b096ef956d353ca36352aab4b8adae34` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe6a6a9dbb82b3eaca8f8be4a346a563b683b0906` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe729e4c84222077888d425b516b79316d4370760` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe80f4c14fee591ec0943de291d0fe51813ffc5bb` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeba14366b059182cc883a4d73385004ec102ce41` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec767751a26b6f4b4de32d2992c502e97b87bc14` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xecc7b8c48cf61682e42a08f47b5ebabeea9d6e42` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef8096f0ce9eb465f0239b05b11f7abe18b09a29` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf01401a1f674f242d088a0b46cdc7f5945148647` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0aaba135955576ffdc7f19a246e89c88b86bb45` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf3500cceb90ac32e91f79438260ee5ce11384770` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf503314b403910c8a991b424b665372243c2df04` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf560af74e265173318f01bd974e5d8eae6b5b70c` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf5ab0cad932f2aa2b67fdc675dab48a8dfe02fd7` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6bd678103554eb62ccddd26171fbfddf145d4bb` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7f70223f580b649b375b3a30784eca74b9f83dc` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfa4bf9f0500710a17324c7584d0fbc9272c3530b` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc04d5958050b8355ad6e8ddbb6099409c44c21a` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfca6410e66330c9ffe6031217c314ae46ff89833` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff2ef57f498947446aa734a9a6ccf673ba548fcd` | non_address_book | unknown | unknown | unverified | n/a | `0xa39e4d6bb25a8e55552d6d9ab1f5f8889dddc80d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0926a73bb2d169a86c2da9c7e03ac63a5cf42883` | non_address_book | unknown | unknown | unverified | n/a | `0xa41074e0472e4e014c655dd143e9f5b87784a9df` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x392fe2b2dc983c9855fd7575508caad8cb3d7256` | non_address_book | unknown | unknown | unverified | n/a | `0xa41074e0472e4e014c655dd143e9f5b87784a9df` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf12766500188da25c2f1840b05e187f9116a360e` | non_address_book | unknown | unknown | unverified | n/a | `0xa41074e0472e4e014c655dd143e9f5b87784a9df` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e6db519752d4d1eeed0539a5f7bcf3aa4089b62` | non_address_book | unknown | unknown | unverified | n/a | `0xeafd26ffa47a9e387fb7409a456c4f7c4ef31ad8` |

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
| Chainsecurity_LP_Oracle.md | Factory | own contract | 0x370a44… (selected) `0x370a449febb9411c95bf897021377fe0b7d100c0` — deployed 2025-09-16 00:10:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| statemind.pdf | LT | unmatched — not counted | — | listed in scope | no |
| statemind.pdf | AMM | unmatched — not counted | — | listed in scope | no |
| statemind.pdf | CryptopoolLPOracle | unmatched — not counted | — | listed in scope | no |
| chainsecurity.pdf | AMM | unmatched — not counted | — | listed in scope | no |
| chainsecurity.pdf | CryptopoolLPOracle | unmatched — not counted | — | listed in scope | no |
| chainsecurity.pdf | Factory | own contract | 0x370a44… (selected) `0x370a449febb9411c95bf897021377fe0b7d100c0` — deployed 2025-09-16 00:10:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity.pdf | LT | unmatched — not counted | — | listed in scope | no |
| chainsecurity.pdf | VirtualPool | ambiguous — not counted | VirtualPool (alternative) `0x04ca7a7e602335a261b63128e89d43b6fe1e2c87` — deployed 2026-05-25 10:23:47+03 — liveness: live (current_address_book_code)<br>0xf96ff1… (alternative) `0xf96ff1189f1c2977b37e5df01962e1895bcc3d6a` — deployed 2026-05-25 10:23:23+03 — liveness: live (current_address_book_code)<br>0x772cff… (alternative) `0x772cff0be38a6ed31aeae479cbcb26d54b8404cf` — deployed 2026-05-25 10:24:23+03 — liveness: live (current_address_book_code)<br>0x1b9518… (alternative) `0x1b9518f6b179552c6a903f213d4ea5503ab7f96e` — deployed 2026-05-25 10:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| quantstamp.pdf | AMM | unmatched — not counted | — | listed in scope | no |
| quantstamp.pdf | CryptopoolLPOracle | unmatched — not counted | — | listed in scope | no |
| quantstamp.pdf | Factory | own contract | 0x370a44… (selected) `0x370a449febb9411c95bf897021377fe0b7d100c0` — deployed 2025-09-16 00:10:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quantstamp.pdf | LT | unmatched — not counted | — | listed in scope | no |
| quantstamp.pdf | VirtualPool | ambiguous — not counted | VirtualPool (alternative) `0x04ca7a7e602335a261b63128e89d43b6fe1e2c87` — deployed 2026-05-25 10:23:47+03 — liveness: live (current_address_book_code)<br>0xf96ff1… (alternative) `0xf96ff1189f1c2977b37e5df01962e1895bcc3d6a` — deployed 2026-05-25 10:23:23+03 — liveness: live (current_address_book_code)<br>0x772cff… (alternative) `0x772cff0be38a6ed31aeae479cbcb26d54b8404cf` — deployed 2026-05-25 10:24:23+03 — liveness: live (current_address_book_code)<br>0x1b9518… (alternative) `0x1b9518f6b179552c6a903f213d4ea5503ab7f96e` — deployed 2026-05-25 10:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| mixbytes.pdf | GaugeController | own contract | 0x1be148… (selected) `0x1be14811a3a06f6af4fa64310a636e1df04c1c21` — deployed 2025-09-15 23:42:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes.pdf | LiquidityGauge | unmatched — not counted | — | listed in scope table | no |
| mixbytes.pdf | YB | own contract | YBToken (selected) `0x01791f726b4103694969820be083196cc7c045ff` — deployed 2025-09-15 23:40:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes.pdf | VotingEscrow | unmatched — not counted | — | listed in scope table | no |
| mixbytes.pdf | CliffEscrow | own contract | 0x60043a… (selected) `0x60043a545e22424e73a2debb98f8cd4361fe3da0` — deployed 2025-09-15 23:43:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes.pdf | VestingEscrow | unmatched — not counted | — | listed in scope table | no |
| mixbytes.pdf | Factory | own contract | 0x370a44… (selected) `0x370a449febb9411c95bf897021377fe0b7d100c0` — deployed 2025-09-16 00:10:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes.pdf | erc4626 | unmatched — not counted | — | listed in scope table | no |
| electisec.pdf | VotingEscrow | unmatched — not counted | — | mentioned in scope and findings | no |
| electisec.pdf | LiquidityGauge | unmatched — not counted | — | mentioned in scope and findings | no |
| electisec.pdf | GaugeController | own contract | 0x1be148… (selected) `0x1be14811a3a06f6af4fa64310a636e1df04c1c21` — deployed 2025-09-15 23:42:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec.pdf | VestingEscrow | unmatched — not counted | — | mentioned in scope and findings | no |
| electisec.pdf | CliffEscrow | own contract | 0x60043a… (selected) `0x60043a545e22424e73a2debb98f8cd4361fe3da0` — deployed 2025-09-15 23:43:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec.pdf | YB | own contract | YBToken (selected) `0x01791f726b4103694969820be083196cc7c045ff` — deployed 2025-09-15 23:40:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| pashov.pdf | LT | unmatched — not counted | — | mentioned in scope as 'LT' and in findings | no |
| pashov.pdf | AMM | unmatched — not counted | — | mentioned in scope as 'AMM' and in findings | no |
| pashov.pdf | Factory | own contract | 0x370a44… (selected) `0x370a449febb9411c95bf897021377fe0b7d100c0` — deployed 2025-09-16 00:10:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes-hybrid-vault.pdf | HybridVault | own contract | HybridVault (selected) `0xd772edf092f155f3e81e2b261d96bcfae4fdc3ac` — deployed 2026-04-06 19:26:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes-hybrid-vault.pdf | HybridVaultFactory | own contract | HybridVaultFactory (selected) `0xbdc32268851c324c6185809271dfe6d8dab8dc5b` — deployed 2026-04-06 19:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| mixbytes-hybrid-vault.pdf | HybridFactoryOwner | own contract | HybridFactoryOwner (selected) `0x0f4e1a1bcde549653e9302ba1caab403373f1048` — deployed 2026-04-06 19:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity-hybrid-vault.pdf | HybridVault | own contract | HybridVault (selected) `0xd772edf092f155f3e81e2b261d96bcfae4fdc3ac` — deployed 2026-04-06 19:26:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity-hybrid-vault.pdf | HybridVaultFactory | own contract | HybridVaultFactory (selected) `0xbdc32268851c324c6185809271dfe6d8dab8dc5b` — deployed 2026-04-06 19:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity-hybrid-vault.pdf | HybridFactoryOwner | own contract | HybridFactoryOwner (selected) `0x0f4e1a1bcde549653e9302ba1caab403373f1048` — deployed 2026-04-06 19:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firepan.com/reports/yieldbasis-feedistributor | FeeDistributor | own contract | 0xd11b41… (selected) `0xd11b416573ebc59b6b2387da0d2c0d1b3b1f7a90` — deployed 2025-12-02 14:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

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
| needs_review | 273 |

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
