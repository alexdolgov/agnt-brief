# Agentic Audit Brief: Threshold Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 16 (3 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Threshold Network (`threshold-network`)
- Website: [https://threshold.network/](https://threshold.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 238 unique implementations (238 raw deployments)
- Coverage basis: 2/19 confirmed own live verified implementations (10.5%); conservative 10.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $298,413,904.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Threshold Network. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across arbitrum, base, ethereum, optimism, polygon. Structural roles: 12 infra, 9 core, 1 supporting. 14 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: infra (12), core (9), supporting (1)
- Contract kinds: contract (22)
- Detected standards: erc1967proxy (12), ownable (5), erc20 (2), erc20permit (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (22), openzeppelin-upgradeable (7)
- Upgradeable-pattern rows: 14

## Fork Analysis

1 of 33 contracts are derived from known codebases. 32 contracts have no detected origin.

### Forked Contracts

**RandomBeacon** (`0x5499f54b4a1cb4816eefcf78962040461be3d80b`, chain 1)
Origin: keep-network (`0x5499f54b4a1cb4816eefcf78962040461be3d80b`)
Containment: 100.0% - 51 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2111a49ebb717959059693a3698872a0ae9866b9`, chain 1)
- UnnamedContract (`0x46d52e41c2f300bc82217ce22b920c34995204eb`, chain 1)
- UnnamedContract (`0x5d4d83aab53b7e7ca915aeb2d4d3f4e03823dbde`, chain 1)
- UnnamedContract (`0x5e4861a80b55f035d899f66772117f00fa0e8e7b`, chain 1)
- UnnamedContract (`0x80226fc0ee2b096224eeac085bb9a8cba1146f7d`, chain 1)
- UnnamedContract (`0x92f2d8b72a7f6a551be60b9aa4194248e9b4913d`, chain 1)
- UnnamedContract (`0x9c070027cdc9dc8f82416b2e5314e11dfb4fe3cd`, chain 1)
- UnnamedContract (`0xb810abd43d8fcfd812d6feb14fefc236e92a341a`, chain 1)
- UnnamedContract (`0x1293a54e160d1cd7075487898d65266081a15458`, chain 10)
- UnnamedContract (`0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40`, chain 10)
- UnnamedContract (`0x236aa50979d5f3de3bd1eeb40e81137f22ab794b`, chain 8453)
- UnnamedContract (`0xa2a81d9445b4f898b028c96d164bcd6c8c8c512e`, chain 8453)
- UnnamedContract (`0xe931f1ac6b00400e1dad153e184afee164d2d88b`, chain 8453)
- UnnamedContract (`0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40`, chain 42161)
- CoveragePool (`0x7d7b622c07f216d99efc3efb9cf71872f46d811a`, chain 1)
- T (`0xcdf7028ceab81fa0c6971208e83fa7872994bee5`, chain 1)
- TBTC (`0x18084fba666a33d37592fa2633fd49a74dd93a88`, chain 1)
- TimelockController (`0x87f005317692d05baa4193ab0c961c69e175f45f`, chain 1)
- TransparentUpgradeableProxy (`0x0184739c32edc3471d3e4860c8e39a5f3ff85a45`, chain 1)
- TransparentUpgradeableProxy (`0x03e342731c08fddc34cfb43e91cb3a7e424ee0f6`, chain 1)
- TransparentUpgradeableProxy (`0x186d048097c7406c64efb0537886e3cae100a1fe`, chain 1)
- TransparentUpgradeableProxy (`0x75a6e4a7c8faa162192fad6c1f7a6d48992c619a`, chain 1)
- TransparentUpgradeableProxy (`0xb8df0a949ac45ff8f401553a1dcb742feb38e6d3`, chain 1)
- TransparentUpgradeableProxy (`0xc9031f76006da0bd4bfa9e02adf0d448db3bc155`, chain 1)
- TransparentUpgradeableProxy (`0x09959798b95d00a3183d20fac298e4594e599eab`, chain 137)
- TransparentUpgradeableProxy (`0x236aa50979d5f3de3bd1eeb40e81137f22ab794b`, chain 137)
- TransparentUpgradeableProxy (`0x09959798b95d00a3183d20fac298e4594e599eab`, chain 8453)
- TransparentUpgradeableProxy (`0x1293a54e160d1cd7075487898d65266081a15458`, chain 42161)
- TransparentUpgradeableProxy (`0x1c8d7b744b474c080faadd5bf9ad965be4258f9e`, chain 42161)
- TransparentUpgradeableProxy (`0xd7cd996a47b3293d4fec2dbcf49692370334d9b7`, chain 42161)
- VendingMachineV3 (`0x7570a2350183b4bdf7ca74fad3fc19048e6437e6`, chain 1)
- WalletProposalValidator (`0x30019d85a86abd3cda1167f4c052690c32fbdec2`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 22; live-surface rows included: 22 (19 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 33/48 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/19 (10.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 33 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 200 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 10 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Confirmed-live implementations: 33 of 238 unique; 205 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/222
- Verified + Unaudited implementations: 220
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 238
- Raw deployments: 238
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 6 fresh, 1 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 5.3% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 0.5% | 2021-11 |
| ChainSecurity | Tier 1 | 1 | 0.5% | 2021-11 |
| Least Authority | Tier 2 | 1 | 0.5% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| T | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258757 | `0xcdf7028ceab81fa0c6971208e83fa7872994bee5` | ✅ Audited |
| TBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258734 | `0x18084fba666a33d37592fa2633fd49a74dd93a88` | ✅ Audited |

### ⚠️ Verified + Unaudited (220)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcreMultiAssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d` | ⚠️ Unaudited |
| ActivePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbcb0cff525b91e8b9d18b224c1b45fef008549` | ⚠️ Unaudited |
| Allowlist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f7191df5430c2b43f0cfaf9b444deb57c74591b` | ⚠️ Unaudited |
| AllVerifiers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x533a7f4be5453513049eb94a2b115f2cce161dce` | ⚠️ Unaudited |
| ARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b63b3de93431c0f756a493644d128134291fa1b` | ⚠️ Unaudited |
| ARMProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x411de17f12d1a34ecc7f45f49844626267c75e81` | ⚠️ Unaudited |
| AssetPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21b86fdc93f23fd52022a283828df8e808d28d5d` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe0080ea5f7a58b90398b1c87093cc225e33fe1` | ⚠️ Unaudited |
| AuctionBidder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x773a4cacbca8e3704f8f7842531eab83e437b3c4` | ⚠️ Unaudited |
| BAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f490764473eb1013461d6079f827db95d8b4dc5` | ⚠️ Unaudited |
| Bank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6` | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca` | ⚠️ Unaudited |
| BatchWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x613d088f2e5a2ed91635016483dafa3cd47a8964` | ⚠️ Unaudited |
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
| BLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65222d72f13860913fef03f088c385cbfc11a50c` | ⚠️ Unaudited |
| BlockPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596e3f6241cf1435f91363cb023def2329363410` | ⚠️ Unaudited |
| BLS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd` | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9e838fcb9295fa44d89d06ed59811ae1a22c105` | ⚠️ Unaudited |
| BondedECDSAKeepFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7` | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c46f496c410465975a427e34a976fc15a2ede4f` | ⚠️ Unaudited |
| BorrowerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x874a8ee5b4cc0b9973c7c002fa891fc28666caa9` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13de6b121ade8e3c0dc016d63cbd5e2ab22402cc` | ⚠️ Unaudited |
| BridgeGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94dd662e2a247493facceab9f2459aaf90778ee` | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4b16b81a28d785feeb7b1d56a9b97d450d3443` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057152db365b47851b0a0bd431644b8ee21fe1b4` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08b4058f16d243c977ea1fe91b20af31057b5abb` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45a103142585bdfc49cdb137f2a45d1ae7f84b6b` | ⚠️ Unaudited |
| BurnWithFromMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x476eefef46e0d65e1e371fe093696259b1240b93` | ⚠️ Unaudited |
| CairoBootloaderProgram | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x192292817680196a0215a50b07d1c5e7ab8a8636` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3597c5cbcbcb30079a0bd2a68cde5f98272f9feb` | ⚠️ Unaudited |
| ChangeVerifiersExternalInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e429b3a3281e689d5468be2dbca3905b4d5627` | ⚠️ Unaudited |
| CollSurplusPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bec529c86317c64305dc161998fb7f40078f200` | ⚠️ Unaudited |
| CommitStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01346721418045a6c07b71052e452ef8615e9084` | ⚠️ Unaudited |
| Committee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23cab3cf1aa7b929df5e9f3712aca3a6fb9494e4` | ⚠️ Unaudited |
| CoveragePool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258748 | `0x7d7b622c07f216d99efc3efb9cf71872f46d811a` | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b` | ⚠️ Unaudited |
| CpuConstraintPoly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04be0e2d5eccc744be21bfb28d91d4a3cbefa8eb` | ⚠️ Unaudited |
| CpuFrilessVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x015381651f240ed6c44122dcba6cf807c9442cd6` | ⚠️ Unaudited |
| CpuOods | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0acc3292202b05175f86c7bf4bd6011eb79ec5cb` | ⚠️ Unaudited |
| DefaultPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8bdab0f0d3f5cd04d29df5f4ba6b43d7cdb7ba9` | ⚠️ Unaudited |
| DelayedExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff50d164e42da7bb558c1e88afe0bd66e8c2cc70` | ⚠️ Unaudited |
| DelegatedWithBalanceWeight | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ecfb5cd55dfd68a54f58f77b729b8a1c933f08a` | ⚠️ Unaudited |
| Deposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac1841a47054e070236f1664991e52c30c04dc5` | ⚠️ Unaudited |
| DepositFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87effef56c7ff13e2463b5d4dce81be2340faf8b` | ⚠️ Unaudited |
| DepositFunding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d1286683507939c065c12f2d1e80cca8ccd125` | ⚠️ Unaudited |
| DepositLiquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca5060bf142c58168aedb974aabb020bc081a56` | ⚠️ Unaudited |
| DepositRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817c0f6332392ad65d7688ed22f59b227e372323` | ⚠️ Unaudited |
| DepositStates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8695ff199a1216fc7e2bf97303bf662babae1c80` | ⚠️ Unaudited |
| DepositSweep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392635646bc22fc13c86859d1f02b27974ac9b95` | ⚠️ Unaudited |
| DepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad83decf0555945094e5d25129c1f324f212517` | ⚠️ Unaudited |
| DonationVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa544b70dc6af906862f68eb8e68c27bb7150e672` | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ca1abe343515312eb6d13178c5a2dce3c036fa` | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ab5f02993bf312d9aca03157f26febebc76108` | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0125c8977a02b2fa3970b1ed9af02f5bedd4ef27` | ⚠️ Unaudited |
| EcdsaInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8263efcb8f28246697585c89fed0501cd946f764` | ⚠️ Unaudited |
| EcdsaPointsXColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01228f83c6664a14fc3bb4ea28b7d1a2fc283bf1` | ⚠️ Unaudited |
| EcdsaPointsYColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x498b5546f1ee017227eb1db438d25ad1205fe9f3` | ⚠️ Unaudited |
| ECDSARewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ac5a8892230e0a3e1c473881a2de7353ffca88` | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b9e48f8818962699fe38f5989b130cee691bbb3` | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77ec9c89a0c889bcb05d15df42d49b706952042` | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x147379a0174780570d07d70a14fb244ee5f2d786` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab48c500abd8392620c3c4e4fdd5d7063c44554` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03cb4c67d01a78f44289541281e57c33e6b834d9` | ⚠️ Unaudited |
| FeeRebateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789` | ⚠️ Unaudited |
| FinalizableCommittee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2deea207069fc760703a4abc233b503585387150` | ⚠️ Unaudited |
| FinalizableGpsFactAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b484ca53424f1e09fa124687fc63e4cc14c4c2` | ⚠️ Unaudited |
| ForcedActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x613ee54c54d5548627064b4d648942bf3648f376` | ⚠️ Unaudited |
| Fraud | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51bbef1c7cc3a1d3bc5e64ce6c3ba6e66fba3559` | ⚠️ Unaudited |
| FriStatementContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30efaaa99f8efe310d9fdc83072e2a04c093d400` | ⚠️ Unaudited |
| FundingScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c70c36b519e03705ddc26982d438f71993d063` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34fbfd06cb537abd1a75e91a9cf7f5b61b47eca6` | ⚠️ Unaudited |
| GasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c0a348500638aace229d6868c26b4e64fe46ab3` | ⚠️ Unaudited |
| GpsFactRegistryAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a8376aea89d8255e2ad8b0f00362672bcc5581a` | ⚠️ Unaudited |
| GpsStatementVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13e120f6c8e747983f7aaf0f7731796bfcb0d934` | ⚠️ Unaudited |
| GrantStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02612d20cc087670a959bb12ca3c5fd56c8a3db3` | ⚠️ Unaudited |
| HintHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2249e86a4b99eccc081600c11b2b30ff64202f55` | ⚠️ Unaudited |
| KeepBonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27321f84704a599ab740281e285cc4463d89a3d5` | ⚠️ Unaudited |
| KeepFactorySelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29fa8f46cbb9562b87773c8f50a7f9f27178261c` | ⚠️ Unaudited |
| KeepRandomBeaconOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf708431162ba247ddae362d2c919e0fbafcf9de` | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3975ce253ff9d586cf08c3898f95064b7a5718e7` | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258732 | `0x09959798b95d00a3183d20fac298e4594e599eab` | ⚠️ Unaudited |
| KeepStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10de37cf84202a20cae61069c617b3aa874af8b4` | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d` | ⚠️ Unaudited |
| KeepVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87` | ⚠️ Unaudited |
| L1BitcoinDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe7385497a45191c5321fdd903d880491e47dd7` | ⚠️ Unaudited |
| LightRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x836cdfe63fe2d63f8bdb69b96f6097f36635896e` | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8` | ⚠️ Unaudited |
| LockedTokenCommon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373eb6a735cc9bc12baa88a9b438759e750868e6` | ⚠️ Unaudited |
| LockedTokenGrant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0746e3c84bdfe4bc2504b4c84f93f5baa38fafee` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0238d2c272f17cf11aedb08cde515d56ed25e2e4` | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d736853812a12f085de867adf4ea4aba9521fc0` | ⚠️ Unaudited |
| Locks | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258746 | `0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40` | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44` | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78aa83bd6c9de5de0a2231366900ab060a482edd` | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d` | ⚠️ Unaudited |
| MaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x535e01f948458e0b64f9db2a01da6f32e240140f` | ⚠️ Unaudited |
| MemoryPageBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0f50deff3aba037dd182eb594bdb637a130eab3` | ⚠️ Unaudited |
| MemoryPageFactRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a074b965f506a8adf6e28c9b29a5e0de74be52` | ⚠️ Unaudited |
| MerkleStatementContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x097c4ff19cc326d0430151bdc3fd597e8290700e` | ⚠️ Unaudited |
| MezoAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df` | ⚠️ Unaudited |
| MezoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af817c36708fd0d057c87a51c92fbb0e527d1f5` | ⚠️ Unaudited |
| MintManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4d28d9fff539d6e1972ce3cf9c4577856ed7f20` | ⚠️ Unaudited |
| MovingFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3106675ede4a64d70131247466fd8704a3d42123` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8836b66727bbde25974110442bb46b7a4805b36c` | ⚠️ Unaudited |
| NativeBTCDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x254e2f7bcb4c5892d67d3c51b2c5b50d93c94b0d` | ⚠️ Unaudited |
| NoOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0972e6062eac0fe8686d82ea010504066dadb887` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075108f275ed81c9cfc01065e6e50ceea81d6363` | ⚠️ Unaudited |
| OnchainVaults | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcee62af74a63906c8adb9b3364ca290d47d99d5` | ⚠️ Unaudited |
| OnDemandSPV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1531b6e3d51bf80f634957df81a990b92da4b154` | ⚠️ Unaudited |
| OrderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec34376205e99f5314cd71436afda100f3a4bb6` | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed` | ⚠️ Unaudited |
| PCV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x097f1ee62e63acfc3bf64c1a61d96b3771dd06cb` | ⚠️ Unaudited |
| PedersenHashPointsXColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047dd4275bbdc1ee6b8bf026239e203c617e86d1` | ⚠️ Unaudited |
| PedersenHashPointsYColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a6f3bd4e4b80f85a0b1974b73d981f3295899ed` | ⚠️ Unaudited |
| PerpetualEscapeVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaadfdb9cac145c65f2284fbe24600d07fb37f7bd` | ⚠️ Unaudited |
| PerpetualForcedActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x229bbdf97ebc4993efe1433c0ae4a0be79a4fe21` | ⚠️ Unaudited |
| PerpetualState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45de249eea8f9cdb70943b17ccedeb42f5ba0175` | ⚠️ Unaudited |
| PerpetualTokensAndRamping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bc9c618b7fa6b5efaad31dc801eb55c608b9310` | ⚠️ Unaudited |
| PhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964d45256c73df0239a26216cec155d7e12ec157` | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0` | ⚠️ Unaudited |
| PolygonRoot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51825d6e893c51836dc9c0edf3867c57cd0cacb3` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b459cae3f5f91469b910a8811723606b2ddeafd` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey0Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21578b24f86adf6f59c406f641f693745c31ea8f` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey1Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e8e41141347e01f33d84718b7f4cefb433d5a94` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey2Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b159027d7f0e23d5c15b0517e33dda838c46045` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey0Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1db84e79e8daec762d6adaa5bf358a4ba001e975` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey1Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032e5cdb729ce94638aca9e82a22688109b43046` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x684645ccab4d55863a149c52ec3176051cdb732d` | ⚠️ Unaudited |
| PriceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020082a7a9c2510e1921116001152dee4da81985` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ff801483577388160779881a95d023b3dc3ce9d` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1268cc171c54f2000402dff20e93e60df4c96812` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1ce5d7f52a8abd23551e91248151ca5a13353c65` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x02612d20cc087670a959bb12ca3c5fd56c8a3db3` | ⚠️ Unaudited |
| ProxyUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46fa005e07e51732778a3745145b0d29ad5d7167` | ⚠️ Unaudited |
| ProxyV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00b0466f8dc04b0782dbf1a1dfdce333f0dd082b` | ⚠️ Unaudited |
| ProxyV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03896849091ad2905eb46971117fd89beab0ae78` | ⚠️ Unaudited |
| RandomBeacon | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258743 | `0x5499f54b4a1cb4816eefcf78962040461be3d80b` | ⚠️ Unaudited |
| RandomBeaconChaosnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23fc18ece6afe7fb57ba59979e8600bb4b0294a` | ⚠️ Unaudited |
| RandomBeaconGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0534bc3f43b11ebde71f0fc68cf61df4d7e29d` | ⚠️ Unaudited |
| RedemptionScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0972e6062eac0fe8686d82ea010504066dadb887` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13022e3e6c77524308bd56aed716e88311b2e533` | ⚠️ Unaudited |
| ReimbursementPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369fce62b33512b2a883cf217635ee28dd17f9cc` | ⚠️ Unaudited |
| RiskManagerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2355d701d8d85ed161ab66a0a7e759c463f62b30` | ⚠️ Unaudited |
| RMN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1c028aa39db7324a2d11333315efbea84948f3` | ⚠️ Unaudited |
| RolesExternalInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eb8220714e9f08073177dcb3a4a57d2f91becce` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fb5895cbcb3264dc7984e8f61037f5d37fde90b` | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f` | ⚠️ Unaudited |
| SortedTroves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5626cba9a4448019e73ce59784bd22736986711` | ⚠️ Unaudited |
| SortitionPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6` | ⚠️ Unaudited |
| StabilityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa18ab4fa9a44a72c58e64bfb33d425ec48475a9f` | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb59f486135145ad247b82f9cdf52be4a58a0b81` | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x118b7642b91bcf02c565a3c417534e29e4069bd8` | ⚠️ Unaudited |
| StakingPortBacker | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258737 | `0x236aa50979d5f3de3bd1eeb40e81137f22ab794b` | ⚠️ Unaudited |
| StarkExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29db022dbc824b78a0da699a77e3d177f08a1191` | ⚠️ Unaudited |
| StarkExState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28f2349b28c1bc30a2ab52fc1e04027f7d42e91f` | ⚠️ Unaudited |
| StarkgateManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9558ce70daa574c715616d68978808504d9359` | ⚠️ Unaudited |
| Starknet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16938e4b59297060484fa56a12594d8d6f4177e8` | ⚠️ Unaudited |
| StarknetERC20Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x179fa59e4d19ac7c7b4e3daa0cd6557a553656a0` | ⚠️ Unaudited |
| StarknetEthBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x455603ad9ae671f6c1f0f746f24d7904ca603581` | ⚠️ Unaudited |
| TBTCConstants | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d` | ⚠️ Unaudited |
| TBTCDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0` | ⚠️ Unaudited |
| TBTCSystem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a` | ⚠️ Unaudited |
| TBTCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52818e501612d3c5b37b5f9b83b024342c277fd4` | ⚠️ Unaudited |
| TellorCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0278ac7067f66a66a91466cd420f6f8efae15c32` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0ecbe2174ef46af58906afb217af0767468746` | ⚠️ Unaudited |
| THUSDOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x033951c469e54ef19be43b19c70a4dd273026468` | ⚠️ Unaudited |
| THUSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfc5bd99915aaa815401c5a41a927ab7a38d29cf` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82f08041f1bc1aa399320743f33f75cca482b25a` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258751 | `0x87f005317692d05baa4193ab0c961c69e175f45f` | ⚠️ Unaudited |
| TokenAdminRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb22764f98dd05c789929716d677382df22c05cb6` | ⚠️ Unaudited |
| TokenholderGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd101f2b25bcbf992bdf55db67c104fe7646f5447` | ⚠️ Unaudited |
| TokensAndRamping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5524cb52490e01cba4eb64f230cc661780cb6298` | ⚠️ Unaudited |
| TokenStakingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda534b567099ca481384133bc121d5843f681365` | ⚠️ Unaudited |
| TopUps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a` | ⚠️ Unaudited |
| TransientProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03bd5915b56015773210ab8c8c101849daeb4409` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-258768 | `0x0184739c32edc3471d3e4860c8e39a5f3ff85a45` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x01b67b1194c75264d06f808a921228a95c765dd7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-258770 | `0x03e342731c08fddc34cfb43e91cb3a7e424ee0f6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0e628a1c34c92f0aa85af998814ce4f03caa5913` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-258769 | `0x186d048097c7406c64efb0537886e3cae100a1fe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x277d82b35fc8cec3bffcad6791a95cd3ca3d8b4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x347cc7ede7e5517bd47d20620b2cf1b406edcf07` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x35d6701640fca561bacfe4151063c8e55af66db7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5aab7eabd63b2222b07442f04ca874366193b3f8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-258771 | `0x75a6e4a7c8faa162192fad6c1f7a6d48992c619a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-258772 | `0xb8df0a949ac45ff8f401553a1dcb742feb38e6d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-258773 | `0xc9031f76006da0bd4bfa9e02adf0d448db3bc155` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xdf217efd8f3ecb5e837aedf203c28c1f06854017` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-258774 | `0x09959798b95d00a3183d20fac298e4594e599eab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-258775 | `0x236aa50979d5f3de3bd1eeb40e81137f22ab794b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-258779 | `0x09959798b95d00a3183d20fac298e4594e599eab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-258777 | `0x1293a54e160d1cd7075487898d65266081a15458` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-258778 | `0x1c8d7b744b474c080faadd5bf9ad965be4258f9e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-258776 | `0xd7cd996a47b3293d4fec2dbcf49692370334d9b7` | ⚠️ Unaudited |
| TroveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27d7d02aed6c4f95ada2faf02dccb9666d3abb8c` | ⚠️ Unaudited |
| UnderwriterToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007854fdcc9c6f748b435e63745599fb1a0df843` | ⚠️ Unaudited |
| UpdatePerpetualConfigExternalInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39bff2c9f7e377d8466d3180be7dd0ae7d408b8e` | ⚠️ Unaudited |
| USDCTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a580c62889ddcd6c2213582270e03ca130df59d` | ⚠️ Unaudited |
| V3toV45ChangesExternalInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1753593fb64c7338e945e3dac16df92ab1f92ed8` | ⚠️ Unaudited |
| VendingMachine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cca7e410ee41739792ea0a24e00349dd247680e` | ⚠️ Unaudited |
| VendingMachineV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b` | ⚠️ Unaudited |
| VendingMachineV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258747 | `0x7570a2350183b4bdf7ca74fad3fc19048e6437e6` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3264834ada73a8b0b132ee52fd5a367cf60e86c6` | ⚠️ Unaudited |
| WalletCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5` | ⚠️ Unaudited |
| WalletProposalValidator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258738 | `0x30019d85a86abd3cda1167f4c052690c32fbdec2` | ⚠️ Unaudited |
| WalletRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d7e8ce124921caafd7670502379ced0065c832` | ⚠️ Unaudited |
| WalletRegistryGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aed6cc30d1b2770771052555d257da86ed47fe8` | ⚠️ Unaudited |
| Wallets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67913137429985416dbce28d9fa9ec960ba47bf` | ⚠️ Unaudited |
| WithBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf17a2fa46f86b6dfc41cbbbd1a51379d98926268` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258733 | `0x1293a54e160d1cd7075487898d65266081a15458` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258736 | `0x2111a49ebb717959059693a3698872a0ae9866b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258742 | `0x46d52e41c2f300bc82217ce22b920c34995204eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258744 | `0x5d4d83aab53b7e7ca915aeb2d4d3f4e03823dbde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258745 | `0x5e4861a80b55f035d899f66772117f00fa0e8e7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258749 | `0x80226fc0ee2b096224eeac085bb9a8cba1146f7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258752 | `0x92f2d8b72a7f6a551be60b9aa4194248e9b4913d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258753 | `0x9c070027cdc9dc8f82416b2e5314e11dfb4fe3cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258755 | `0xb810abd43d8fcfd812d6feb14fefc236e92a341a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-258760 | `0x1293a54e160d1cd7075487898d65266081a15458` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-258761 | `0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258765 | `0x236aa50979d5f3de3bd1eeb40e81137f22ab794b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258766 | `0xa2a81d9445b4f898b028c96d164bcd6c8c8c512e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258767 | `0xe931f1ac6b00400e1dad153e184afee164d2d88b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258762 | `0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-258763 | `0x75a6e4a7c8faa162192fad6c1f7a6d48992c619a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://www.threshold.network/vision) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [View Audit 1 PDF](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) | Defense by Thesis | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [View Audit 2 PDF](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing) | Defense by Thesis | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [View PDF](https://drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view?usp=sharing) | Defense by Thesis | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [View PDF](https://drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view?usp=sharing) | Defense by Thesis | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [View PDF](https://drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view?usp=sharing) | Certora | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [View PDF](https://drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view?usp=sharing) | MixBytes | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [View PDF](https://app.notion.com/p/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760?source=copy_link&__dm_a=1) | Code4rena | Contest | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [View PDF](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Link to Least Authority](https://leastauthority.com/blog/audit-of-keep-network-solana-smart-contracts) | Least Authority | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [* **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/)](https://github.com/threshold-network/security-audits/blob/main/29-Sep-2022-LeastAuthority.pdf) | Least Authority | Audit | 2022-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 20 | high |
| [* **Report:** [View Audit PDF]() - [Link to CertiK](https://www.certik.com/projects/threshold-network)](https://github.com/threshold-network/security-audits/blob/main/19-Nov-2021-CertiK.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [* **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network)](https://github.com/threshold-network/security-audits/blob/main/09-Nov-2021-ChainSecurity.pdf) | ChainSecurity | Audit | 2021-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Link to Least Authority](https://leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2) | Least Authority | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Link to CertiK](https://skynet.certik.com/projects/threshold-network) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | medium |
| [Link to ChainSecurity](https://www.chainsecurity.com/security-audit/threshold-network) | ChainSecurity | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18384] DL audit link — no match: The provided text is a marketing page for Threshold Network, not an audit report. No contracts, scope sections, or audit dates are present.
- [18385] View Audit 1 PDF — no match: Two contracts in scope: Allowlist and RebateStaking. Audit final report date is September 25, 2025.
- [18386] View Audit 2 PDF — no match: Scope lists three bridge files; RebateStaking is mentioned as the new contract being integrated.
- [18387] View PDF — no match: Scope section lists WalletRegistry.sol and EcdsaDkg.sol as files in scope. Audit final report date is November 5, 2025.
- [18388] View PDF — no match: Only one contract in scope: NativeBTCDepositor. Audit final report date is October 31, 2025.
- [18389] View PDF — no match: All contracts listed in scope section. Audit date from work period end date.
- [18390] View PDF — no match: Scope table lists 4 contracts. Audit date from project overview timeline end date (05.09.2025).
- [18391] View PDF — no match: The document is a list of audit reports with dates and scope descriptions, but no specific contract names are provided in the scope descriptions. The scopes mention 'smart contracts for T staking rebates', 'WalletRegistry and EcdsaDkg smart contracts', 'NativeBTCDepositor contract', 'Threshold CCIP Update', 'Cross-chain bridge transfers', 'tBTC integration with Sui/StarkNet/Base/Solana', 'core tBTC Bridge contracts', 'Vending machine', and 'Staking contracts, T token logic, and vending machine mechanisms'. These are too generic to extract specific contract names.
- [18392] View PDF — no match: Scope defined by repository path solidity/contracts/l2. Two contracts identified: L1BitcoinDepositor and L2BitcoinDepositor. Audit date is the final report date (April 11, 2024).
- [18393] Link to Least Authority — no match: The provided text is a blog post announcing the audit, not the full report. No contract names or scope details are included.
- [18394] * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) — matched: Extracted contract names from scope description, file paths, and findings. The audit report covers multiple repositories: sortition-pools, keep-core (random-beacon, ecdsa), tbtc-v2 (solidity), and bitcoin-spv. Specific contracts mentioned include Bridge, MaintainerProxy, Bank, DonationVault, TBTCVault, EcdsaDkgValidator, WalletRegistryGovernance, WalletRegistry, Rewards, Deposit, Fraud, MovingFunds, Redemption, Wallets, EcdsaAuthorization, BeaconAuthorization, TBTC, and libraries BTCUtils, Bytes, ValidateSPV, CheckBitcoinSigs.
- [18395] * **Report:** [View Audit PDF]() - [Link to CertiK](https://www.certik.com/projects/threshold-network) — no match: Only VendingMachine.sol is in scope; T.sol is a third-party dependency mentioned but not in scope.
- [18396] * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) — matched: Scope section explicitly lists 8 files under contracts folder. Audit date from cover page: November 09, 2021.
- [18397] Link to Least Authority — no match: The report text is a blog post summary, not the full report. No specific contract names or file paths are provided. Only the system name 'tBTC Bridge v2' is mentioned.
- [18398] Link to CertiK — matched: Extracted from CertiK Skynet page for Threshold Network. Audited files listed as T.sol and VendingMachine.sol. Audit date from 'Last Audit was delivered on 12/16/2021'.
- [18399] Link to ChainSecurity — no match: The provided text is a summary/overview of an audit report, not the full report with a scope section. No specific contract names, file paths, or audit date are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| View Audit 1 PDF | Allowlist | unmatched — not counted | — | listed in scope and findings | no |
| View Audit 1 PDF | RebateStaking | unmatched — not counted | — | listed in scope and findings | no |
| View Audit 2 PDF | Bridge | unmatched — not counted | — | listed in scope | no |
| View Audit 2 PDF | BridgeGovernance | unmatched — not counted | — | listed in scope | no |
| View Audit 2 PDF | BridgeState | unmatched — not counted | — | listed in scope | no |
| View Audit 2 PDF | RebateStaking | unmatched — not counted | — | mentioned as new contract being wired into Bridge | no |
| View PDF | WalletRegistry | unmatched — not counted | — | listed in scope section as file in scope | no |
| View PDF | EcdsaDkg | unmatched — not counted | — | listed in scope section as file in scope | no |
| View PDF | NativeBTCDepositor | unmatched — not counted | — | listed in scope as the only file in scope | no |
| View PDF | BurnFromMintTokenPoolUpgradeable | unmatched — not counted | — | listed in scope | no |
| View PDF | LockReleaseTokenPoolUpgradeable | unmatched — not counted | — | listed in scope | no |
| View PDF | TokenPoolUpgradeable | unmatched — not counted | — | listed in scope | no |
| View PDF | Pool | unmatched — not counted | — | listed in scope | no |
| View PDF | RateLimiter | unmatched — not counted | — | listed in scope | no |
| View PDF | AbstractBTCRedeemer | unmatched — not counted | — | listed in scope table | no |
| View PDF | L2WormholeGateway | unmatched — not counted | — | listed in scope table | no |
| View PDF | L2BTCRedeemerWormhole | unmatched — not counted | — | listed in scope table | no |
| View PDF | L1BTCRedeemerWormhole | unmatched — not counted | — | listed in scope table | no |
| View PDF | L1BitcoinDepositor | unmatched — not counted | — | Listed in scope repository path and mentioned in findings. | no |
| View PDF | L2BitcoinDepositor | unmatched — not counted | — | Listed in scope repository path and mentioned in findings. | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Bridge | unmatched — not counted | — | The Bridge smart contract is the core component of the tBTC Bridge v2 | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | MaintainerProxy | unmatched — not counted | — | The MaintainerProxy smart contract defines functions that off-chain clients call | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Bank | unmatched — not counted | — | The Bank component is responsible for tracking Bitcoin balances | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | DonationVault | unmatched — not counted | — | The Vault is an interface fulfilled by the DonationVault and the TBTCVault smart contracts | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | TBTCVault | unmatched — not counted | — | The Vault is an interface fulfilled by the DonationVault and the TBTCVault smart contracts | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | EcdsaDkgValidator | unmatched — not counted | — | Suggestion 1 location contracts/EcdsaDkgValidator.sol#L67 | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | WalletRegistryGovernance | unmatched — not counted | — | Suggestion 1 location contracts/WalletRegistryGovernance.sol#L86 | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | WalletRegistry | unmatched — not counted | — | Suggestion 2 location ecdsa/contracts/WalletRegistry.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Rewards | unmatched — not counted | — | Suggestion 5 location contracts/Rewards.sol#L43 | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Deposit | unmatched — not counted | — | Suggestion 5 location contracts/bridge/Deposit.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Fraud | unmatched — not counted | — | Suggestion 5 location contracts/bridge/Fraud.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | MovingFunds | unmatched — not counted | — | Suggestion 5 location contracts/bridge/MovingFunds.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Redemption | unmatched — not counted | — | Suggestion 5 location contracts/bridge/Redemption.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Wallets | unmatched — not counted | — | Suggestion 5 location contracts/bridge/Wallets.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | EcdsaAuthorization | unmatched — not counted | — | Suggestion 4 location contracts/libraries/EcdsaAuthorization.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | BeaconAuthorization | unmatched — not counted | — | Suggestion 4 location contracts/libraries/BeaconAuthorization.sol | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | TBTC | own contract | TBTC (selected) `0x18084fba666a33d37592fa2633fd49a74dd93a88` — deployed 2021-08-17 14:12:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | BTCUtils | unmatched — not counted | — | Our team looked specifically at functions from the BTCUtils, Bytes, ValidateSPV and CheckBitcoinSigs libraries | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | Bytes | unmatched — not counted | — | Our team looked specifically at functions from the BTCUtils, Bytes, ValidateSPV and CheckBitcoinSigs libraries | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | ValidateSPV | unmatched — not counted | — | Our team looked specifically at functions from the BTCUtils, Bytes, ValidateSPV and CheckBitcoinSigs libraries | no |
| * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/) | CheckBitcoinSigs | unmatched — not counted | — | Our team looked specifically at functions from the BTCUtils, Bytes, ValidateSPV and CheckBitcoinSigs libraries | no |
| * **Report:** [View Audit PDF]() - [Link to CertiK](https://www.certik.com/projects/threshold-network) | VendingMachine | unmatched — not counted | — | listed in Audit Scope table | no |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | Checkpoints | unmatched — not counted | — | listed in scope table | no |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | T | own contract | T (selected) `0xcdf7028ceab81fa0c6971208e83fa7872994bee5` — deployed 2021-12-31 12:49:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | VendingMachine | unmatched — not counted | — | listed in scope table | no |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | IApplication | unmatched — not counted | — | listed in scope table | no |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | IStaking | unmatched — not counted | — | listed in scope table | no |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | StakingProviders | unmatched — not counted | — | listed in scope table | no |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | TokenStaking | unmatched — not counted | — | listed in scope table | no |
| * **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network) | PercentUtils | unmatched — not counted | — | listed in scope table | no |
| Link to Least Authority | tBTC Bridge v2 | unmatched — not counted | — | mentioned in title and description as the audited system | no |
| Link to CertiK | T | own contract | T (selected) `0xcdf7028ceab81fa0c6971208e83fa7872994bee5` — deployed 2021-12-31 12:49:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link to CertiK | VendingMachine | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7d7b622c07f216d99efc3efb9cf71872f46d811a` | CoveragePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5499f54b4a1cb4816eefcf78962040461be3d80b` | RandomBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7570a2350183b4bdf7ca74fad3fc19048e6437e6` | VendingMachineV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x30019d85a86abd3cda1167f4c052690c32fbdec2` | WalletProposalValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 197 |
| upstream | 0 |
| standard_library | 25 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 50 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=5, medium=1
- Match method counts: unique_name=3

Zero-match audit list:

- [18384] DL audit link
- [18385] View Audit 1 PDF
- [18386] View Audit 2 PDF
- [18387] View PDF
- [18388] View PDF
- [18389] View PDF
- [18390] View PDF
- [18391] View PDF
- [18392] View PDF
- [18393] Link to Least Authority
- [18395] * **Report:** [View Audit PDF]() - [Link to CertiK](https://www.certik.com/projects/threshold-network)
- [18397] Link to Least Authority
- [18399] Link to ChainSecurity

Fork inheritance lineage and inherited audits are included when available.
