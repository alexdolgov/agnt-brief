# Agentic Audit Brief: BEND

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: BEND (`bend`)
- Website: [https://bend.berachain.com](https://bend.berachain.com)
- Lifecycle: active (Tier 0, 56.4% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: berachain, ethereum
- Contract surface: 121 unique implementations (132 raw deployments)
- Coverage basis: 10/39 confirmed own live verified implementations (25.6%); conservative 25.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,137,652.77
- On-chain TVL (included contracts): $9,131,114.70
- TVL by chain: Berachain $9,131,114.70

## Project Description

This brief describes the observed EVM deployment and audit surface for BEND. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across berachain, ethereum. Structural roles: 21 supporting, 15 core, 4 infra. 17 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: supporting (21), core (15), infra (4)
- Contract kinds: contract (40)
- Detected standards: erc1967proxy (16), ownable (14), erc165 (8), erc721 (7), erc20 (2), multicall (2), erc20permit (1), erc4626 (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (33), layerzero (12), openzeppelin-upgradeable (5), solmate (3), solady (2), chainlink (1), permit2 (1)
- Upgradeable-pattern rows: 17

## Fork Analysis

0 of 44 contracts are derived from known codebases. 44 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1ae7dd7ae06f6c58b4524d9c1f816094b1bccd8e`, chain 80094)
- UnnamedContract (`0x46fe2bc33b661e01a8946bbc3bf43f2b8382d802`, chain 80094)
- UnnamedContract (`0x4e59b44847b379578588920ca78fbf26c0b4956c`, chain 80094)
- UnnamedContract (`0x6969696969696969696969696969696969696969`, chain 80094)
- UnnamedContract (`0x7bb8ddac7fbe3ffc0f4b3c73c4f158b06cf82650`, chain 80094)
- AdaptiveCurveIrm (`0xcf247df3a2322dea0d408f011c194906e77a6f62`, chain 80094)
- BabyBearsONFT (`0xddeaf391c4be2d01ca52abb8c159a06820ef078c`, chain 80094)
- BabyBearsONFTAdapter (`0xc48c54e92d135b356dd0cbf50f803a8c8d38968b`, chain 1)
- BandBearsONFT (`0x7711b2eb2451259dbf211e30157ceb7cfeb79a19`, chain 80094)
- BandBearsONFTAdapter (`0x392faa1b0ef108ded69897ba5382e909c39fc09e`, chain 1)
- BeaconDeposit (`0x4242424242424242424242424242424242424242`, chain 80094)
- BGT (`0x656b95e550c07a9ffe548bd4085c72418ceb1dba`, chain 80094)
- BitBearsONFT (`0x72d876d9cdf4001b836f8e47254d0551eda2eebb`, chain 80094)
- BitBearsONFTAdapter (`0x3eb12398753eed7e8747321c37c85de30d8e2e94`, chain 1)
- BondBearsONFT (`0xa0cf472e6132f6b822a944f6f31aa7b261c7c375`, chain 80094)
- BondBearsONFTAdapter (`0x6b1c374105467d1fc1090c989bcbbcc172c8a89c`, chain 1)
- BongBearsONFT (`0x141de07e5d4c4759ec9301da106115d4841f66cd`, chain 80094)
- BongBearsONFT1155Wrapper (`0x1897c001341f81ca72154b75b882ae708e06bf48`, chain 1)
- BooBearsONFT (`0xf49ec5db255854c4a567de5ab3826c9aabafc7cf`, chain 80094)
- BooBearsONFTAdapter (`0x7591992f1a98636c6b7207f30382ca4bec83d9be`, chain 1)
- Bundler3 (`0xf920140a65d0f412f2ab3e76c4feab5eef0657ae`, chain 80094)
- ERC1967Proxy (`0x118d2ceee9785eaf70c15cd74cd84c9f8c3eec9a`, chain 80094)
- ERC1967Proxy (`0x1984baf659607cc5f206c55bb3b00eb3e180190b`, chain 80094)
- ERC1967Proxy (`0x4f4a5c2194b8e856b7a05b348f6ba3978fb6f6d5`, chain 80094)
- ERC1967Proxy (`0x80108ee81a92091db6b8b2326b1875ce9388f461`, chain 80094)
- ERC1967Proxy (`0x813dcdba9197947792985c866ce98d6739ca821a`, chain 80094)
- ERC1967Proxy (`0x94ad6ac84f6c6fba8b8ccbd71d9f4f101def52a8`, chain 80094)
- ERC1967Proxy (`0xa4afef880f5ce1f63c9fb48f661e27f8b4216401`, chain 80094)
- ERC1967Proxy (`0xad17932a5b1aaeea73d277a6ae670623f176e0d0`, chain 80094)
- ERC1967Proxy (`0xb5f2000b5744f207c931526cae2134caa8b6862a`, chain 80094)
- ERC1967Proxy (`0xb79b43dba821cb67751276ce050ff4111445fb99`, chain 80094)
- ERC1967Proxy (`0xc41bbd6695ab6bdc6d04701b15f4ce5eba2e2500`, chain 80094)
- ERC1967Proxy (`0xd2f19a79b026fb636a7c300bf5947df113940761`, chain 80094)
- ERC1967Proxy (`0xdf960e8f3f19c481dde769ededd439ea1a63426a`, chain 80094)
- ERC1967Proxy (`0xe858802ed532c6dad2d196ab5b1f2c15f9cb52b4`, chain 80094)
- ERC1967Proxy (`0xee233a69a36db7fc10e03e921d90dec52cdce6e2`, chain 80094)
- ERC1967Proxy (`0xfcbd14dc51f0a4d49d5e53c2e0950e0bc26d0dce`, chain 80094)
- GeneralAdapter1 (`0xd2b9667f5214115e27937c410caee83e3a901df7`, chain 80094)
- MetaMorphoV1_1 (`0x30bba9cd9eb8c95824aa42faa1bb397b07545bc1`, chain 80094)
- MetaMorphoV1_1Factory (`0x5edd48c6acbd565eeb31702fd9fa9cbc86fbe616`, chain 80094)
- Morpho (`0x24147243f9c08d835c218cda1e135f8dfd0517d0`, chain 80094)
- Multicall3 (`0xca11bde05977b3631167028862be2a173976ca11`, chain 80094)
- Permit2 (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 80094)
- PublicAllocator (`0xb62f34ab315eadeac698e8eaeb6fc2650951bfe7`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 40; live-surface rows included: 40 (39 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 44/56 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/39 (25.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 44 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 76 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 19
- Confirmed-live implementations: 44 of 121 unique; 77 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/72
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 49
- Unique implementations: 121
- Raw deployments: 132
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 25.6% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 10 | 13.9% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| WBERAStakerVault | core_logic | project_anchor | own_supporting | 1 | berachain | unit-229355 | `0x118d2ceee9785eaf70c15cd74cd84c9f8c3eec9a` | ✅ Audited |
| BeaconDeposit | registry | project_anchor | own_supporting | 0 | berachain | unit-229326 | `0x4242424242424242424242424242424242424242` | ✅ Audited |
| BeraChef | unknown | project_anchor | own_supporting | 1 | berachain | unit-229356 | `0xdf960e8f3f19c481dde769ededd439ea1a63426a` | ✅ Audited |
| BGT | unknown | project_anchor | own_supporting | 0 | berachain | unit-229330 | `0x656b95e550c07a9ffe548bd4085c72418ceb1dba` | ✅ Audited |
| BGTIncentiveFeeCollector | unknown | project_anchor | own_supporting | 1 | berachain | unit-229350 | `0x1984baf659607cc5f206c55bb3b00eb3e180190b` | ✅ Audited |
| DedicatedEmissionStreamManager | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-229352 | `0x813dcdba9197947792985c866ce98d6739ca821a` | ✅ Audited |
| Distributor | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-229360 | `0xd2f19a79b026fb636a7c300bf5947df113940761` | ✅ Audited |
| LSTStakerVaultFactory | registry | project_anchor | own_supporting | 1 | berachain | unit-229351 | `0xc41bbd6695ab6bdc6d04701b15f4ce5eba2e2500` | ✅ Audited |
| RewardVaultFactory | registry | project_anchor | own_supporting | 1 | berachain | unit-229365 | `0x94ad6ac84f6c6fba8b8ccbd71d9f4f101def52a8` | ✅ Audited |
| RewardVaultHelper | core_logic | project_anchor | own_supporting | 1 | berachain | unit-229358 | `0xee233a69a36db7fc10e03e921d90dec52cdce6e2` | ✅ Audited |

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4be03f781c497a489e3cb0287833452ca9b9e80b` | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | project_anchor | own_supporting | 0 | berachain | unit-229344 | `0xcf247df3a2322dea0d408f011c194906e77a6f62` | ⚠️ Unaudited |
| ApeERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xeb6671c152c88e76fdaabc804bf973e3270f4c78`; ethereum `0xfb047ff2c376e22522d2a7809ad1ed38459ad2b8` | ⚠️ Unaudited |
| ApeOFTAdapterMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2e846fd4fd8772f8d9ff8a51a456f5b3049c893f`; ethereum `0xafa45c0e9d9438f8d26d289ad7775b1b191ac9ae` | ⚠️ Unaudited |
| Authorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x71047ae39a7aa4f7d923542f459e50b974644ef2` | ⚠️ Unaudited |
| BabyBearsONFT | token | project_anchor | own_supporting | 0 | berachain | unit-229346 | `0xddeaf391c4be2d01ca52abb8c159a06820ef078c` | ⚠️ Unaudited |
| BabyBearsONFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eea9a804ec883abc9734d1f97a453502f3ab4ef` | ⚠️ Unaudited |
| BabyBearsONFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-229315 | `0xc48c54e92d135b356dd0cbf50f803a8c8d38968b` | ⚠️ Unaudited |
| BalancerRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6044f181ab5e9c05a4ed9ce295f3b178d2492ee7` | ⚠️ Unaudited |
| BandBearsONFT | token | project_anchor | own_supporting | 0 | berachain | unit-229335 | `0x7711b2eb2451259dbf211e30157ceb7cfeb79a19` | ⚠️ Unaudited |
| BandBearsONFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-229311 | `0x392faa1b0ef108ded69897ba5382e909c39fc09e` | ⚠️ Unaudited |
| BandBearsONFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47fb84a3139e380ae8c196961c04d91d850dd884` | ⚠️ Unaudited |
| BatchRelayerLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcb4ae3030ba06f7eee54a7b96afca7457f9525cf` | ⚠️ Unaudited |
| BatchRelayerQueryLibrary | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4151083172b2cefb83a33fd7fc9f6cbabb3fd08d` | ⚠️ Unaudited |
| BerachainGovernance | unknown | project_anchor | own_supporting | 1 | berachain | unit-229363 | `0x4f4a5c2194b8e856b7a05b348f6ba3978fb6f6d5` | ⚠️ Unaudited |
| BeraERC1155Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6b05ee57ca8fe583652e885380d3e979f31489` | ⚠️ Unaudited |
| BeraERC721EnumerableMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11b65587577460a7d48912b7cfe0cf2c42b9ce1d` | ⚠️ Unaudited |
| BeraONFTAdapterMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x426d114d6767a23c65a7757d623f92e9fab0f71c` | ⚠️ Unaudited |
| BitBearsONFT | token | project_anchor | own_supporting | 0 | berachain | unit-229333 | `0x72d876d9cdf4001b836f8e47254d0551eda2eebb` | ⚠️ Unaudited |
| BitBearsONFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-229312 | `0x3eb12398753eed7e8747321c37c85de30d8e2e94` | ⚠️ Unaudited |
| BitBearsONFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x884a9444b86ff565d0c1b7ab5eaa0651420efc12` | ⚠️ Unaudited |
| BondBearsONFT | token | project_anchor | own_supporting | 0 | berachain | unit-229337 | `0xa0cf472e6132f6b822a944f6f31aa7b261c7c375` | ⚠️ Unaudited |
| BondBearsONFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-229313 | `0x6b1c374105467d1fc1090c989bcbbcc172c8a89c` | ⚠️ Unaudited |
| BondBearsONFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82dcc9b6e438c30ae7be40bfb022fb02d61157fd` | ⚠️ Unaudited |
| BongBearsONFT | token | project_anchor | own_supporting | 0 | berachain | unit-229318 | `0x141de07e5d4c4759ec9301da106115d4841f66cd` | ⚠️ Unaudited |
| BongBearsONFT1155Wrapper | token | project_anchor | own_supporting | 0 | ethereum | unit-229310 | `0x1897c001341f81ca72154b75b882ae708e06bf48` | ⚠️ Unaudited |
| BongBearsONFT1155Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31119ff0d3be5f498b6028d3adef46eb7f5f964e` | ⚠️ Unaudited |
| BooBearsONFT | token | project_anchor | own_supporting | 0 | berachain | unit-229347 | `0xf49ec5db255854c4a567de5ab3826c9aabafc7cf` | ⚠️ Unaudited |
| BooBearsONFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239b3cb3c138964c8f5ab0d7a58ecb36b77eb543` | ⚠️ Unaudited |
| BooBearsONFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-229314 | `0x7591992f1a98636c6b7207f30382ca4bec83d9be` | ⚠️ Unaudited |
| Bundler3 | unknown | project_anchor | own_supporting | 0 | berachain | unit-229348 | `0xf920140a65d0f412f2ab3e76c4feab5eef0657ae` | ⚠️ Unaudited |
| ComposableStablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdfa30bda0375d4763711ab0cc8d91b20bfcc87e1` | ⚠️ Unaudited |
| DelegationHandlerFactory | registry | project_anchor | own_supporting | 1 | berachain | unit-229361 | `0xad17932a5b1aaeea73d277a6ae670623f176e0d0` | ⚠️ Unaudited |
| GeneralAdapter1 | adapter | project_anchor | own_supporting | 0 | berachain | unit-229345 | `0xd2b9667f5214115e27937c410caee83e3a901df7` | ⚠️ Unaudited |
| Honey | unknown | project_anchor | own_supporting | 1 | berachain | unit-229359 | `0xfcbd14dc51f0a4d49d5e53c2e0950e0bc26d0dce` | ⚠️ Unaudited |
| HoneyFactory | registry | project_anchor | own_supporting | 1 | berachain | unit-229354 | `0xa4afef880f5ce1f63c9fb48f661e27f8b4216401` | ⚠️ Unaudited |
| InfraredBeraAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9272676fcf908c8161043f443a3a99f3ea5db8c5` | ⚠️ Unaudited |
| InfraredVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9211aa9206dc57c3decee55539f6ca7b6845339d` | ⚠️ Unaudited |
| MetaFeePartitioner | unknown | project_anchor | own_supporting | 1 | berachain | unit-229353 | `0x80108ee81a92091db6b8b2326b1875ce9388f461` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | berachain | unit-229323 | `0x30bba9cd9eb8c95824aa42faa1bb397b07545bc1` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | registry | project_anchor | own_supporting | 0 | berachain | unit-229329 | `0x5edd48c6acbd565eeb31702fd9fa9cbc86fbe616` | ⚠️ Unaudited |
| Morpho | unknown | project_anchor | own_supporting | 0 | berachain | unit-229321 | `0x24147243f9c08d835c218cda1e135f8dfd0517d0` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | berachain | unit-229339 | `0xaf2fdc54f7bc9d6e8c2d2760e908f4e1beb04d9e` | ⚠️ Unaudited |
| Multicall3 | periphery | project_anchor | own_supporting | 0 | berachain | unit-229343 | `0xca11bde05977b3631167028862be2a173976ca11` | ⚠️ Unaudited |
| MyL1DVN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x50c9999e9ddfcbd685c908478cf7c146874cdd8d`; ethereum `0x6bfc989ecdc4989f1b9392008bc6183bd6919aa1`; ethereum `0xc553b7cdc2361bcc8df70812335fda492333b454`; ethereum `0xf5a98aeff899d45b9e1e41e75bb2fb5c025b87ea` | ⚠️ Unaudited |
| MyOApp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x60922fc5c138ada66c1c09784328d0ee6993f8fe`; ethereum `0x628655c4e9c1aba33bf330fe21aea8d0159b02f3`; ethereum `0x723471200741b32e14026934548862ef8e514c14` | ⚠️ Unaudited |
| MyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x81238bb01a5508139397a179197c803583a1c13f`; ethereum `0xf7b4358d2c6b05a1bb98c947a56df64b5d6e6754` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | berachain | unit-229316 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ⚠️ Unaudited |
| PoolCreationHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x55dcce8165c88aad4403a15a9ce3a8e244657dd2` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x33c88ffdee710ed3908c791137bd1d4421aabbbf` | ⚠️ Unaudited |
| ProtocolFeesCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb8cf46cf1b1476e707619913a70b2085d26f1707` | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1635f0e1b3e8a6713d03ae155ba79458ba3240c7` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c1bd3247a3aaac05b2b2882c95710d3b3aaa600` | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-229340 | `0xb62f34ab315eadeac698e8eaeb6fc2650951bfe7` | ⚠️ Unaudited |
| RewardVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdb6e93cd7bddc45ebc411619792fc5f977316c38` | ⚠️ Unaudited |
| SourceOApp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ae352a26958f9a0d1c516d9c4809200338d486d` | ⚠️ Unaudited |
| StakingPoolContractsFactory | registry | project_anchor | own_supporting | 1 | berachain | unit-229362 | `0xb79b43dba821cb67751276ce050ff4111445fb99` | ⚠️ Unaudited |
| SwellOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x89dc850caeee8136eb69ac589135e21dd7721458`; ethereum `0xfd5c3ef2621241285ebbc31cc61f4820dd9c1b14` | ⚠️ Unaudited |
| TimeLock | governance | project_anchor | own_supporting | 1 | berachain | unit-229364 | `0xb5f2000b5744f207c931526cae2134caa8b6862a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9e802dfddf951b701324332c688817b4bbc205d9`; ethereum `0xf72801a999a2a6ae0bd02308933804b4ff14e436` | ⚠️ Unaudited |
| WeightedPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa966fa8f2d5b087fffa499c0c1240589371af409` | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-229357 | `0xe858802ed532c6dad2d196ab5b1f2c15f9cb52b4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (49)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12bf984dad6b396f62e720bc51eab79a28d5c13f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x132c5ce35aee253690515797607d6f4f365e81c8`; ethereum `0x6c9612beb7be2c16359803898df830c8b9b5cde7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30e83a174e4bd15ea94b5404d3341d0c46a6f5c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f1048a388fe421ebb1d9195b10c6c0070584f83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50b0debd3fab14f784dedd05fe356eaad0d9c2a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66b09f3776356d9f757716152f0a197261e8f4a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8322b9f550437e5afe207ab919fb2b51784305bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b67ebb72a5591a9128ef7662521eab896aec48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc045ce33f6659edb3d67a48c5c676078b8818213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef607b002e2b17b17dbaa97b26cc21de222a05e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0ccc3edecc890fef11e873502d28f3e561e52df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x15b6b4668e12a2bcb34fb4fe7856e4f597b600ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1aa1cf7f799b091a02bfad5ee5b9c58794997792` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-229320 | `0x1ae7dd7ae06f6c58b4524d9c1f816094b1bccd8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1db6d0ca865ee11b6edbae4b4e6ca270b2bcd0f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x29e0cb5412f9153d6eb02392e3923919c5530574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2b81e73c52e9b77f84b3b3c06b451ea207304fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2e846fd4fd8772f8d9ff8a51a456f5b3049c893f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x30e83a174e4bd15ea94b5404d3341d0c46a6f5c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x41fdbc681475b85c3d9e15b10c691c61f66b510d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x44405da9f346f467a05c2313628147c9237190c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-229327 | `0x46fe2bc33b661e01a8946bbc3bf43f2b8382d802` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-229328 | `0x4e59b44847b379578588920ca78fbf26c0b4956c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5cec221de8bdbffbcee840c08b464419f670512b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6719cba120668bbcf670c4361506d0aac69e891f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-229331 | `0x6969696969696969696969696969696969696969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x69d68fecbb66b0115dd12e0f7d8071347029a029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6c9612beb7be2c16359803898df830c8b9b5cde7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6f06a1519e4814c9457db07927a523bcf33c3f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7395913f13b85398a6cedc04b1410ba56b382d5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x76cf38e1c0a586080e3bdd39e6a241174ae8db94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-229336 | `0x7bb8ddac7fbe3ffc0f4b3c73c4f158b06cf82650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8928f3cbb0a2f4d6488bce129852c801e73960cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9143fa5f592e188929b91c5e43f59adef4d8dee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x917a699a57c7ac9a8d127420c8f1f6ad3d517179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x98233212bfd9fae191a45ee6736088e37de7bffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x98977be58c484beab3c73dae985ba184fba2e5a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa5875ee6df7b6e4a98ffe4c9e5f279b3cc395ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa61187a24431f545867d58e41d9887da8edec82f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xafa45c0e9d9438f8d26d289ad7775b1b191ac9ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcbc5bb292869d7bf1bd401a27d53215279d9d20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe305dd37d84aac449c0d08c6bfde20bfff76fb2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe678a8fe16a08006bc155e7633da8f11e5a8d135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeb6671c152c88e76fdaabc804bf973e3270f4c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xedc17f5fb49f8cdca6c85d005ebf21d0d9337981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xedf65147ae4e05bed6fb4dc391e175cf5869358d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf12a8168319e4bdfe05fa6cf240d48dade43a297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf64a17519d538a8ae1765b381a70e34a8dc84678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfb047ff2c376e22522d2a7809ad1ed38459ad2b8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 58
- Live contracts: 0
- Unknown liveness contracts: 58
- Source-verified contracts: 33
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=5, source verified unclassified=28, unverified unclassified=25

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| berachain | candidate review | BatchRelayerLibrary<br>`0xcb4ae3030ba06f7eee54a7b96afca7457f9525cf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd276d30592be512a418f2448e23f9e7f372b32a2` |
| berachain | candidate review | WeightedPoolFactory<br>`0xa966fa8f2d5b087fffa499c0c1240589371af409` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd276d30592be512a418f2448e23f9e7f372b32a2` |
| berachain | source verified unclassified | Authorizer<br>`0x71047ae39a7aa4f7d923542f459e50b974644ef2` | non_address_book | unknown | unknown | verified | n/a | `0xd276d30592be512a418f2448e23f9e7f372b32a2` |
| berachain | source verified unclassified | ComposableStablePoolFactory<br>`0xdfa30bda0375d4763711ab0cc8d91b20bfcc87e1` | non_address_book | unknown | unknown | verified | n/a | `0xd276d30592be512a418f2448e23f9e7f372b32a2` |
| berachain | source verified unclassified | InfraredBeraAdapter<br>`0x9272676fcf908c8161043f443a3a99f3ea5db8c5` | non_address_book | unknown | unknown | verified | n/a | `0xd276d30592be512a418f2448e23f9e7f372b32a2` |
| berachain | source verified unclassified | ProtocolFeePercentagesProvider<br>`0x33c88ffdee710ed3908c791137bd1d4421aabbbf` | non_address_book | unknown | unknown | verified | n/a | `0xd276d30592be512a418f2448e23f9e7f372b32a2` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1db6d0ca865ee11b6edbae4b4e6ca270b2bcd0f0` | non_address_book | unknown | unknown | unverified | n/a | `0xd276d30592be512a418f2448e23f9e7f372b32a2` |
| berachain | unverified unclassified | UnnamedContract<br>`0x6f06a1519e4814c9457db07927a523bcf33c3f42` | non_address_book | unknown | unknown | unverified | n/a | `0xd276d30592be512a418f2448e23f9e7f372b32a2` |
| berachain | unverified unclassified | UnnamedContract<br>`0x7395913f13b85398a6cedc04b1410ba56b382d5a` | non_address_book | unknown | unknown | unverified | n/a | `0xd276d30592be512a418f2448e23f9e7f372b32a2` |
| berachain | unverified unclassified | UnnamedContract<br>`0x76cf38e1c0a586080e3bdd39e6a241174ae8db94` | non_address_book | unknown | unknown | unverified | n/a | `0xd276d30592be512a418f2448e23f9e7f372b32a2` |
| berachain | unverified unclassified | UnnamedContract<br>`0x8928f3cbb0a2f4d6488bce129852c801e73960cb` | non_address_book | unknown | unknown | unverified | n/a | `0xd276d30592be512a418f2448e23f9e7f372b32a2` |
| berachain | unverified unclassified | UnnamedContract<br>`0x917a699a57c7ac9a8d127420c8f1f6ad3d517179` | non_address_book | unknown | unknown | unverified | n/a | `0xd276d30592be512a418f2448e23f9e7f372b32a2` |
| berachain | unverified unclassified | UnnamedContract<br>`0xcbc5bb292869d7bf1bd401a27d53215279d9d20e` | non_address_book | unknown | unknown | unverified | n/a | `0xd276d30592be512a418f2448e23f9e7f372b32a2` |
| berachain | unverified unclassified | UnnamedContract<br>`0xe678a8fe16a08006bc155e7633da8f11e5a8d135` | non_address_book | unknown | unknown | unverified | n/a | `0xd276d30592be512a418f2448e23f9e7f372b32a2` |
| berachain | unverified unclassified | UnnamedContract<br>`0x2e846fd4fd8772f8d9ff8a51a456f5b3049c893f` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| berachain | unverified unclassified | UnnamedContract<br>`0x30e83a174e4bd15ea94b5404d3341d0c46a6f5c4` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| berachain | unverified unclassified | UnnamedContract<br>`0x6c9612beb7be2c16359803898df830c8b9b5cde7` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| berachain | unverified unclassified | UnnamedContract<br>`0xafa45c0e9d9438f8d26d289ad7775b1b191ac9ae` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| berachain | unverified unclassified | UnnamedContract<br>`0xeb6671c152c88e76fdaabc804bf973e3270f4c78` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| berachain | unverified unclassified | UnnamedContract<br>`0xf12a8168319e4bdfe05fa6cf240d48dade43a297` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| berachain | unverified unclassified | UnnamedContract<br>`0xfb047ff2c376e22522d2a7809ad1ed38459ad2b8` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | candidate review | ProxyAdmin<br>`0x9c1bd3247a3aaac05b2b2882c95710d3b3aaa600` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x9e802dfddf951b701324332c688817b4bbc205d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xfd5c3ef2621241285ebbc31cc61f4820dd9c1b14` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | ApeERC20Mock<br>`0xeb6671c152c88e76fdaabc804bf973e3270f4c78` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | ApeERC20Mock<br>`0xfb047ff2c376e22522d2a7809ad1ed38459ad2b8` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | ApeOFTAdapterMock<br>`0x2e846fd4fd8772f8d9ff8a51a456f5b3049c893f` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | ApeOFTAdapterMock<br>`0xafa45c0e9d9438f8d26d289ad7775b1b191ac9ae` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | BabyBearsONFTAdapter<br>`0x6eea9a804ec883abc9734d1f97a453502f3ab4ef` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | BandBearsONFTAdapter<br>`0x47fb84a3139e380ae8c196961c04d91d850dd884` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | BeraERC1155Mock<br>`0x7e6b05ee57ca8fe583652e885380d3e979f31489` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | BeraERC721EnumerableMock<br>`0x11b65587577460a7d48912b7cfe0cf2c42b9ce1d` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | BeraONFTAdapterMock<br>`0x426d114d6767a23c65a7757d623f92e9fab0f71c` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | BitBearsONFTAdapter<br>`0x884a9444b86ff565d0c1b7ab5eaa0651420efc12` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | BondBearsONFTAdapter<br>`0x82dcc9b6e438c30ae7be40bfb022fb02d61157fd` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | BongBearsONFT1155Wrapper<br>`0x31119ff0d3be5f498b6028d3adef46eb7f5f964e` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | BooBearsONFTAdapter<br>`0x239b3cb3c138964c8f5ab0d7a58ecb36b77eb543` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | MyL1DVN<br>`0x50c9999e9ddfcbd685c908478cf7c146874cdd8d` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | MyL1DVN<br>`0x6bfc989ecdc4989f1b9392008bc6183bd6919aa1` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | MyL1DVN<br>`0xc553b7cdc2361bcc8df70812335fda492333b454` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | MyL1DVN<br>`0xf5a98aeff899d45b9e1e41e75bb2fb5c025b87ea` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | MyOApp<br>`0x60922fc5c138ada66c1c09784328d0ee6993f8fe` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | MyOApp<br>`0x628655c4e9c1aba33bf330fe21aea8d0159b02f3` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | MyOApp<br>`0x723471200741b32e14026934548862ef8e514c14` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | MyOFT<br>`0x81238bb01a5508139397a179197c803583a1c13f` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | MyOFT<br>`0xf7b4358d2c6b05a1bb98c947a56df64b5d6e6754` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | SourceOApp<br>`0x4ae352a26958f9a0d1c516d9c4809200338d486d` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | source verified unclassified | SwellOFTAdapter<br>`0x89dc850caeee8136eb69ac589135e21dd7721458` | non_address_book | unknown | unknown | verified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | unverified unclassified | 0x132c5ce35aee253690515797607d6f4f365e81c8<br>`0x6c9612beb7be2c16359803898df830c8b9b5cde7` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x12bf984dad6b396f62e720bc51eab79a28d5c13f` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x132c5ce35aee253690515797607d6f4f365e81c8` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x30e83a174e4bd15ea94b5404d3341d0c46a6f5c4` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f1048a388fe421ebb1d9195b10c6c0070584f83` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50b0debd3fab14f784dedd05fe356eaad0d9c2a4` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66b09f3776356d9f757716152f0a197261e8f4a4` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8322b9f550437e5afe207ab919fb2b51784305bc` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc045ce33f6659edb3d67a48c5c676078b8818213` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf72801a999a2a6ae0bd02308933804b4ff14e436` | non_address_book | unknown | unknown | unverified | n/a | `0xed422098669cbb60caaf26e01485bafdbaf9ebea` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [20260508-PoLNext-Zenith.pdf](https://github.com/berachain/security-audits/blob/main/20260508-PoLNext-Zenith.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [20260425-PoLNext-Spearbit.pdf](https://github.com/berachain/security-audits/blob/main/20260425-PoLNext-Spearbit.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | n/a | matched | 10 | 8 | 0 | 30 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2031] 20260508-PoLNext-Zenith.pdf — no match: Scope section lists file patterns src/base/**/* and src/pol/**/* but no specific contract names. Only BlockRewardController.sol is explicitly referenced in findings.
- [2032] 20260425-PoLNext-Spearbit.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 20260508-PoLNext-Zenith.pdf | BlockRewardController | unmatched — not counted | — | mentioned in finding L-1 target | no |
| 20260425-PoLNext-Spearbit.pdf | BGT | own contract | BGT (selected) `0x656b95e550c07a9ffe548bd4085c72418ceb1dba` — deployed 2025-01-20 22:07:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | BGTDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | BGTFeeDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | BGTIncentiveDistributor | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | BGTIncentiveDistributorDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | BGTIncentiveFeeCollector | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1984baf659607cc5f206c55bb3b00eb3e180190b` — deployed 2025-07-21 20:10:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | BGTIncentiveFeeDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | BGTStaker | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | BeaconDeposit | own contract | BeaconDeposit (selected) `0x4242424242424242424242424242424242424242` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | BeaconRootsHelper | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | BeraChef | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xdf960e8f3f19c481dde769ededd439ea1a63426a` — deployed 2025-01-20 22:10:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | BlockRewardController | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | Create2Deployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | DedicatedEmissionStreamManager | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x813dcdba9197947792985c866ce98d6739ca821a` — deployed 2026-02-19 18:16:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | DedicatedEmissionStreamManagerDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | DeployHelper | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | Distributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd2f19a79b026fb636a7c300bf5947df113940761` — deployed 2025-01-20 22:10:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | EIP2612 | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | EIP3009 | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | FactoryOwnable | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | FeeCollector | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | IStakingRewards | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | IStakingRewardsErrors | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | InfraredBeraAdapter | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | LSTStakerVault | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | LSTStakerVaultFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xc41bbd6695ab6bdc6d04701b15f4ce5eba2e2500` — deployed 2026-01-16 15:14:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | LSTStakerVaultFactoryDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | LSTStakerVaultWithdrawalRequest | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | POLDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | RewardAllocatorFactory | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | RewardAllocatorFactoryDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | RewardVault | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | RewardVaultFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x94ad6ac84f6c6fba8b8ccbd71d9f4f101def52a8` — deployed 2025-01-20 22:10:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | RewardVaultHelper | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xee233a69a36db7fc10e03e921d90dec52cdce6e2` — deployed 2025-10-13 18:24:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | RewardVaultHelperDeployer | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | Salt | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | StakingRewards | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | WBERAStakerVault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x118d2ceee9785eaf70c15cd74cd84c9f8c3eec9a` — deployed 2025-07-21 20:10:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260425-PoLNext-Spearbit.pdf | WBERAStakerVaultWithdrawalRequest | unmatched — not counted | — | — | no |
| 20260425-PoLNext-Spearbit.pdf | WBERAStakerWithdrawReqDeployer | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0xcf247df3a2322dea0d408f011c194906e77a6f62` | AdaptiveCurveIrm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xddeaf391c4be2d01ca52abb8c159a06820ef078c` | BabyBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc48c54e92d135b356dd0cbf50f803a8c8d38968b` | BabyBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x392faa1b0ef108ded69897ba5382e909c39fc09e` | BandBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3eb12398753eed7e8747321c37c85de30d8e2e94` | BitBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b1c374105467d1fc1090c989bcbbcc172c8a89c` | BondBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x141de07e5d4c4759ec9301da106115d4841f66cd` | BongBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1897c001341f81ca72154b75b882ae708e06bf48` | BongBearsONFT1155Wrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xf49ec5db255854c4a567de5ab3826c9aabafc7cf` | BooBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7591992f1a98636c6b7207f30382ca4bec83d9be` | BooBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xf920140a65d0f412f2ab3e76c4feab5eef0657ae` | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xd2b9667f5214115e27937c410caee83e3a901df7` | GeneralAdapter1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x30bba9cd9eb8c95824aa42faa1bb397b07545bc1` | MetaMorphoV1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x5edd48c6acbd565eeb31702fd9fa9cbc86fbe616` | MetaMorphoV1_1Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xb62f34ab315eadeac698e8eaeb6fc2650951bfe7` | PublicAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 6 |
| standard_library | 20 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 31 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: unique_name=10

Zero-match audit list:

- [2031] 20260508-PoLNext-Zenith.pdf

Fork inheritance lineage and inherited audits are included when available.
