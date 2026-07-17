# Agentic Audit Brief: Trevee Earn

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Trevee Earn (`trevee-earn`)
- Website: [https://rings.money/](https://rings.money/)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, optimism, plasma, polygon, sonic
- Contract surface: 120 unique implementations (193 raw deployments)
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

**LayerZeroTeller** (`0x31a5a9f60dc3d62fa5168352caf0ee05aa18f5b8`, chain 1)
Origin: veda (`0x31a5a9...18f5b8`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TellerWithMultiAssetSupport** (`0x49acebf8f0f79e1ecb0fd47d684dadec81cc6562`, chain 146)
Origin: trevee-earn (`0x5e3902...60dae0`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TellerWithMultiAssetSupport** (`0x5e39021ae7d3f6267dc7995bb5dd15669060dae0`, chain 146)
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

**TellerWithMultiAssetSupport** (`0x825254012306bb410b550631895fe58ddce1f4a9`, chain 146)
Origin: trevee-earn (`0x5e3902...60dae0`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VotingEscrow** (`0x0966cae7338518961c2d35493d3eb481a75bb86b`, chain 146)
Origin: stable-jack (`0x1ec2b9...e3a578`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VotingEscrow** (`0x1ec2b9a77a7226acd457954820197f89b3e3a578`, chain 146)
Origin: stable-jack (`0x1ec2b9...e3a578`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VotingEscrow** (`0x7585d9c32db1528ceae4770fd1d01b888f5afa9e`, chain 146)
Origin: stable-jack (`0x1ec2b9...e3a578`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1327c85ce6f3c83fabc4f5c294f57ac05bcb51eb`, chain 1)
- UnnamedContract (`0x1f7b4bf0cd21c1fbc4f1d995ba0608fdfc992af4`, chain 1)
- UnnamedContract (`0x2dd0496690e7fbb7ca1e590986d5b9d2e58069bf`, chain 1)
- UnnamedContract (`0x59abf8642f4c7d8d3c5633edcbbf6b12234ff02d`, chain 1)
- UnnamedContract (`0x76a3eb63a20d656bcd1ce03e740d3d4691d29078`, chain 1)
- UnnamedContract (`0x8964c76b6f0253a77129d58cba5d184d414d7c9a`, chain 1)
- UnnamedContract (`0xaa1698f0a51e6d00f5533cc3e5d36010ee4558c6`, chain 1)
- UnnamedContract (`0xaeb7993a35e297e42990c62d4e27470b201e8674`, chain 1)
- UnnamedContract (`0xdd3cbe4e0f10910eb435ea6dbe97469abc3d7e9c`, chain 1)
- UnnamedContract (`0xfd9f19a9b91becae3c8dabc36cdd1ea86fc1a222`, chain 1)
- UnnamedContract (`0xfeb352930ca196a80b708cdd5dcb4eca94805dab`, chain 1)
- UnnamedContract (`0x2e2f6aece0b7caa7d3bfdfb2728f50b4e211f1eb`, chain 10)
- UnnamedContract (`0x0482a2d6e2f895125b7237de70c675cd55fe17ca`, chain 137)
- UnnamedContract (`0x3682518b529e4404fb05250f9ad590c3218e5f9f`, chain 137)
- UnnamedContract (`0xa6ed52eb3e39891ce5029817cdb5eac97a2834b3`, chain 137)
- UnnamedContract (`0xe0be968a0d6bba03720dfdb2f3d4b3ed0083b4c7`, chain 137)
- UnnamedContract (`0x488000e6a0cfc32dcb3f37115e759af50f55b48b`, chain 146)
- UnnamedContract (`0xace7defe3b94554f0704d8d00f69f273a0cff079`, chain 146)
- UnnamedContract (`0x04c70abaa9d3eb14f090094edc72d5581dc65a22`, chain 42161)
- UnnamedContract (`0x089154a7e4c562d5998ab3d7ca57b504a8912482`, chain 42161)
- UnnamedContract (`0x12da7e0c469ceec4efada2f5e8caedcd3f3e6748`, chain 42161)
- UnnamedContract (`0x1afa840938cb67cdd1f1d748bdac5fc68e82d9b1`, chain 42161)
- UnnamedContract (`0x2aa638596429e4734d872fec6e7a42e3f3d9fbf8`, chain 42161)
- UnnamedContract (`0x4772ca88a5bfa9d196472b208566fee948d272b3`, chain 42161)
- UnnamedContract (`0x997523ef97e0b0a5625ed2c197e61250acf4e5f1`, chain 42161)
- UnnamedContract (`0xa04a36614e4c1eb8cc0137d6d34eaac963167828`, chain 42161)
- BoringOnChainQueue (`0x3754480db8b3e607fbe125697eb496a44a1be720`, chain 1)
- BoringOnChainQueue (`0x555f4df2180df6257860f23b29d653c1aafb7957`, chain 1)
- BoringOnChainQueue (`0x3754480db8b3e607fbe125697eb496a44a1be720`, chain 146)
- BoringOnChainQueue (`0x5448a65ddb14e6f273cd0ed6598805105a39d8cc`, chain 146)
- BoringOnChainQueue (`0x555f4df2180df6257860f23b29d653c1aafb7957`, chain 146)
- BoringOnChainQueue (`0x65b6afb8c1521b48488df04224dc019ea390e133`, chain 146)
- BoringOnChainQueue (`0x6df97ed8b28d9528cd34335c0a151f10e48b6ef3`, chain 146)
- BoringVault (`0x3bce5cb273f0f148010bbea2470e7b5df84c7812`, chain 1)
- BoringVault (`0xd3dce716f3ef535c5ff8d041c1a41c3bd89b97ae`, chain 1)
- BoringVault (`0x3bce5cb273f0f148010bbea2470e7b5df84c7812`, chain 146)
- BoringVault (`0x455d5f11fea33a8fa9d3e285930b478b6bf85265`, chain 146)
- BoringVault (`0x4d85ba8c3918359c78ed09581e5bc7578ba932ba`, chain 146)
- BoringVault (`0xbb30e76d9bb2cc9631f7fc5eb8e87b5aff32bfbd`, chain 146)
- BoringVault (`0xd0851030c94433c261b405fecbf1dec5e15948d0`, chain 146)
- BoringVault (`0xd3dce716f3ef535c5ff8d041c1a41c3bd89b97ae`, chain 146)
- LayerZeroTeller (`0x358cfacf00d0b4634849821bb3d1965b472c776a`, chain 1)
- LayerZeroTeller (`0x31a5a9f60dc3d62fa5168352caf0ee05aa18f5b8`, chain 146)
- LayerZeroTeller (`0x358cfacf00d0b4634849821bb3d1965b472c776a`, chain 146)
- plUSD (`0x14723d7e7072b65c7d0cdff71a4fbbc5c4dc7431`, chain 9745)
- PlUsdCustomAggregatorFeed (`0x11428a874c29367527362b9b8d60c5e4fea6c772`, chain 9745)
- PlUsdDataFeed (`0x574f3132a7fc596f61cfff711770e1e7d9fa35a4`, chain 9745)
- PlUsdDepositVault (`0xc50c3d19f668b8fc355d7e21e3f9e16b2982b77d`, chain 9745)
- PlUsdRedemptionVaultWithSwapper (`0x850ec16c59e527e262d5a1331e9ad965997bc0fc`, chain 9745)
- splUSD (`0xf1e3c154dcb0c3b9e66a9b7191007d12efaa9053`, chain 9745)
- SplUsdCustomAggregatorFeed (`0xae7d92bedcf6aa692e46d731a6df5ec53f8652b0`, chain 9745)
- SplUsdRedemptionVaultWithSwapper (`0x3404676e77abca60ffb1c00a8e09da21832796ce`, chain 9745)
- TransparentUpgradeableProxy (`0x24e49d2ad8f0bcd0cf7f2a5ab560ca4319f6bd75`, chain 9745)
- TransparentUpgradeableProxy (`0x2b3f3514867cbccfadc80121297bb8088c683432`, chain 9745)
- TransparentUpgradeableProxy (`0x2b690cab819a815732544aeb422474efdc1b0615`, chain 9745)
- TransparentUpgradeableProxy (`0x4718e64c12cae76552696934f0b346cfc1e9a7d3`, chain 9745)
- TransparentUpgradeableProxy (`0x69ecab6aa7bdfddd99def0891c0317076430ae50`, chain 9745)
- TransparentUpgradeableProxy (`0xaa24baba4da60b2aeaf80b1db07b0a4a7fd84455`, chain 9745)
- TransparentUpgradeableProxy (`0xfe5ae64f5ba6a45b9267a5ba274620539fa59566`, chain 9745)
- Voter (`0x43739b96b19ae7c2e0d80be7832325846f55fa05`, chain 146)
- Voter (`0xb84194e28f624bbba3c9181f3a1120ee76469337`, chain 146)
- Voter (`0xc31c4bc46bcd55e7483f2aaf194f7cf7641ee7c3`, chain 146)
- Wrapper (`0x9fb76f7ce5fceaa2c42887ff441d46095e494206`, chain 146)
- Wrapper (`0xdb58c4db1a0f45dda3d2f8e44c3300bb6510c866`, chain 146)
- Wrapper (`0xe8a41c62bb4d5863c6eadc96792cfe90a1f37c47`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 49; live-surface rows included: 49 (49 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 66/77 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/40 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 66 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 47
- Confirmed-live implementations: 66 of 120 unique; 54 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/81
- Verified + Unaudited implementations: 81
- Verified by bytecode match: 0
- Unverified implementations: 39
- Unique implementations: 120
- Raw deployments: 193
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
| AirdropDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x244c88a7f5e11b092acd29f0033972d05e05a831`; sonic `0xc49182b3f3ad6a2e1bfdf4b6342d17c93f9c124c` | ⚠️ Unaudited |
| AirdropReclaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5db8d98ed02a3b8c2781ab0b80f00cd2b75d261a` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x23878914efe38d27c4d67ab83ed1b93a74d4086a`; ethereum `0x32a6268f9ba3642dda7892add74f1d34469a4259`; ethereum `0x4d5f47fa6a74757f35c14fd3a6ef8e3c9bc514e8`; ethereum `0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 2 deployments: sonic `0x578ee1ca3a8e1b54554da1bf7c583506c4cd11c6`; sonic `0xe18ab82c81e7eecff32b8a82b1b7d2d23f1ece96` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259403 | `0x3754480db8b3e607fbe125697eb496a44a1be720` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259405 | `0x555f4df2180df6257860f23b29d653c1aafb7957` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | sonic | unit-259427 | `0x3754480db8b3e607fbe125697eb496a44a1be720` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | sonic | unit-259434 | `0x5448a65ddb14e6f273cd0ed6598805105a39d8cc` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | sonic | unit-259435 | `0x555f4df2180df6257860f23b29d653c1aafb7957` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | sonic | unit-259437 | `0x65b6afb8c1521b48488df04224dc019ea390e133` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | sonic | unit-259438 | `0x6df97ed8b28d9528cd34335c0a151f10e48b6ef3` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-259404 | `0x3bce5cb273f0f148010bbea2470e7b5df84c7812` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb30e76d9bb2cc9631f7fc5eb8e87b5aff32bfbd` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-259411 | `0xd3dce716f3ef535c5ff8d041c1a41c3bd89b97ae` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259428 | `0x3bce5cb273f0f148010bbea2470e7b5df84c7812` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259430 | `0x455d5f11fea33a8fa9d3e285930b478b6bf85265` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259433 | `0x4d85ba8c3918359c78ed09581e5bc7578ba932ba` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259444 | `0xbb30e76d9bb2cc9631f7fc5eb8e87b5aff32bfbd` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259446 | `0xd0851030c94433c261b405fecbf1dec5e15948d0` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259447 | `0xd3dce716f3ef535c5ff8d041c1a41c3bd89b97ae` | ⚠️ Unaudited |
| DistributionSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 18 deployments: sonic `0x05d61aca7111e177ca0a03e7145f342494bfee01`; sonic `0x14cedd0b2ed13a4a094791b1f525693ff5227230`; sonic `0x1bc06ea7f677bcf507f2f2afb8d0aace1fd86e52`; sonic `0x324a043306f374edcc26c95fe8a934c40a64527c`; sonic `0x3692b155520d54a5a0a0fe77aa6e5982de28d3a6`; sonic `0x3a15cc7a83f19112de572666560cdb54bc4b53eb`; sonic `0x4cba4a275bd4d9f53b94b6073542eb1c09c338fd`; sonic `0x4ce11a58d9eeadbb0a73abd3fd3c6e9245e7fb29`; sonic `0x58d02d3449f018c8a007e8a55df94008e2df52b2`; sonic `0x61b9bff50f18a827d5d7d1d1d73c8aa4b354dd5b`; sonic `0x633ff249cc99d1db57cc566268e453ab157b3b83`; sonic `0x67e1996b2d280400c4314a96c41aab927c24875d`; sonic `0x7f8a673d4d4825555557b39724bfa79e90da3743`; sonic `0x9a7d086bec5ad471e4af4409939c023a2419cf7b`; sonic `0xa55d937e750b03d25214d7c8046c6eb292891248`; sonic `0xa9d889d86fc36db9a44855984e12cba1edb67eb3`; sonic `0xb8c5b4c988205e1c9e1b0a8185627517646b8b5d`; sonic `0xed801d01d12e572809bd4b328ae6ba9a038678c5` | ⚠️ Unaudited |
| FraxOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | sonic | n/a | 3 deployments: sonic `0x3ec3849c33291a9ef4c5db86de593eb4a37fde45`; sonic `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050`; sonic `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ⚠️ Unaudited |
| FraxOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | ⚠️ Unaudited |
| FrxUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcacd6fd266af91b8aed52accc382b4e165586e29` | ⚠️ Unaudited |
| FrxUSDOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x80eede496655fb9047dd39d9f418d5483ed600df` | ⚠️ Unaudited |
| fToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 4 deployments: ethereum `0x5c20b550819128074fd538edf79791733ccedd18`; ethereum `0x6a29a46e21c730dca1d8b23d637c101cec605c5b`; ethereum `0x9fb7b4477576fe5b32be4c1843afb1e55f251b33`; plasma `0x1dd4b13fcae900c60a350589be8052959d2ed27b` | ⚠️ Unaudited |
| GhoToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f` | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-259401 | `0x31a5a9f60dc3d62fa5168352caf0ee05aa18f5b8` | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-259402 | `0x358cfacf00d0b4634849821bb3d1965b472c776a` | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259425 | `0x31a5a9f60dc3d62fa5168352caf0ee05aa18f5b8` | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259426 | `0x358cfacf00d0b4634849821bb3d1965b472c776a` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2371e134e3455e0593363cbf89d3b6cf53740618`; ethereum `0xbeef01735c132ada46aa9aa4c54623caa92a64cb`; ethereum `0xd63070114470f685b75b74d60eec7c1113d33a3d` | ⚠️ Unaudited |
| mHYPER | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0xb31bea5c2a43f942a3800558b1aa25978da75f8a`; plasma `0xd3239a355d47269e77cd028f2e965ef9fd893eb0` | ⚠️ Unaudited |
| MHyperCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0xaa016343d80a05e96ca4287607bfe1550568899a`; plasma `0xfc3e47c4da8f3a01ac76c3c5ecfbfc302e1a08f0` | ⚠️ Unaudited |
| MHyperDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x2eb410e4cb94e2e9e3cde3f7b405be4fcc076bc9`; plasma `0x73b3724c97931b4e31b6b944230d365dffe15c0b` | ⚠️ Unaudited |
| MHyperDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x062ea1beaf82e09b44e30bc9e926af7599a603e4`; plasma `0xa603cf264adeb8e7f0f063c116929adac2d4286e` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x429409624853649a0dc08693249155813db98681`; plasma `0x880661f9b412065d616890ca458dccd0146cb77c` | ⚠️ Unaudited |
| MidasAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | plasma | n/a | 4 deployments: plasma `0x0ee21b6c1f6aed64ce3c67767168ea62f3d8974b`; plasma `0x3ea351249daa640f4ababc06b3118f35324fab72`; plasma `0x4e7caa4d3192e91c4fdb123fc927efa559cd0f39`; plasma `0x88b70f4f0a0344c305a29ce082a167c7436890fa` | ⚠️ Unaudited |
| MidasTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe4ccb596112d35c9862d58a113342d122cfd3c2e` | ⚠️ Unaudited |
| MintedERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x50c42deacd8fc9773493ed674b675be577f2634b` | ⚠️ Unaudited |
| plUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x09ef712e8bf561fa6bb0e17db1fa0523c0965f5a` | ⚠️ Unaudited |
| plUSD | unknown | project_anchor | own_supporting | 1 | plasma | unit-259467 | 2 deployments: plasma `0x14723d7e7072b65c7d0cdff71a4fbbc5c4dc7431`; plasma `0xf91c31299e998c5127bc5f11e4a657fc0cf358cd` | ⚠️ Unaudited |
| PlUsdCustomAggregatorFeed | unknown | project_anchor | own_supporting | 1 | plasma | unit-259466 | 2 deployments: plasma `0x11428a874c29367527362b9b8d60c5e4fea6c772`; plasma `0x4718e64c12cae76552696934f0b346cfc1e9a7d3` | ⚠️ Unaudited |
| PlUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x428d0191cb350ec2c34f7d332e25be7bb8a01829` | ⚠️ Unaudited |
| PlUsdDataFeed | unknown | project_anchor | own_supporting | 1 | plasma | unit-259469 | 2 deployments: plasma `0x2b3f3514867cbccfadc80121297bb8088c683432`; plasma `0x574f3132a7fc596f61cfff711770e1e7d9fa35a4` | ⚠️ Unaudited |
| PlUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x8a7bd8886f784d0019b3285a41ea4dbdff47f96f` | ⚠️ Unaudited |
| PlUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x0a0817be02f0ab5370a9ec36cf399d1ead3588a8` | ⚠️ Unaudited |
| PlUsdDepositVault | core_logic | project_anchor | own_supporting | 1 | plasma | unit-259473 | 2 deployments: plasma `0x2b690cab819a815732544aeb422474efdc1b0615`; plasma `0xc50c3d19f668b8fc355d7e21e3f9e16b2982b77d` | ⚠️ Unaudited |
| PlUsdRedemptionVaultWithSwapper | adapter | project_anchor | own_supporting | 1 | plasma | unit-259470 | 2 deployments: plasma `0x24e49d2ad8f0bcd0cf7f2a5ab560ca4319f6bd75`; plasma `0x850ec16c59e527e262d5a1331e9ad965997bc0fc` | ⚠️ Unaudited |
| PlUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0xf7648811133635db67091a35a5abef18f3b43cc9` | ⚠️ Unaudited |
| PoolV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff94993fa7ea27efc943645f95adb36c1b81244b` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 15 deployments: sonic `0x0ab6d071af5b692c88baddd1f6e4f3ad5c1de1d3`; sonic `0x266c10c92d2ad634bf90d2029488de333d6e80b6`; sonic `0x29dafa6123ecc659a2d42ca1245f85cc13c8057f`; sonic `0x485eabed09819428e7ac87139102cd9d83a784bd`; sonic `0x66df6a4b9a31d1a1d5b57e79cfde40dac327d7ed`; sonic `0x7545ddceef18c435887f9da46e230e27728fb931`; sonic `0x7b949a68c57d47ec878bbc2a30c9ef54b41c33b5`; sonic `0x8329d28efc863a952fc5c639917948fd6e8f85e9`; sonic `0x87c165985f852647a044dc5935bbcf1328cfde21`; sonic `0x9981a5fb7253d5ade220e1a44b8f6a0dce8333f5`; sonic `0x9987a6be057d06c1f2b58506118280ce6b6638af`; sonic `0xa1046681a0d71cfe97e05a0fb1540294963b11d7`; sonic `0xadeeb03a2eb221dedb42a868adbca5cc1a9f3ec0`; sonic `0xee1e11a8c9d6f69e40401050d4ba96ec5b145177`; sonic `0xfc7d3ea7078279ef668f1eba658036f72de4094a` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x10c490921916e6d2d38535e63080d54e7e30a829`; sonic `0x4d622335c6bba5721090a81b8518c863fc8dc9e0` | ⚠️ Unaudited |
| SfrxUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcf62f905562626cfcdd2261162a51fd02fc9c5b6` | ⚠️ Unaudited |
| SFrxUSDOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x5bff88ca1442c2496f7e475e9e7786383bc070c0` | ⚠️ Unaudited |
| splUSD | unknown | project_anchor | own_supporting | 1 | plasma | unit-259474 | 2 deployments: plasma `0x616185600989bf8339b58ac9e539d49536598343`; plasma `0xf1e3c154dcb0c3b9e66a9b7191007d12efaa9053` | ⚠️ Unaudited |
| SplUsdCustomAggregatorFeed | unknown | project_anchor | own_supporting | 1 | plasma | unit-259472 | 2 deployments: plasma `0xae7d92bedcf6aa692e46d731a6df5ec53f8652b0`; plasma `0xfe5ae64f5ba6a45b9267a5ba274620539fa59566` | ⚠️ Unaudited |
| SplUsdDataFeed | unknown | project_anchor | own_supporting | 1 | plasma | unit-259471 | 2 deployments: plasma `0x853d1871e37ec7bc4ef1088b88db237e62737d57`; plasma `0xaa24baba4da60b2aeaf80b1db07b0a4a7fd84455` | ⚠️ Unaudited |
| SplUsdDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x4ef9ff56162bd3cb5073fb20dbd355c59084093f`; plasma `0xd9334689f66af838a65c93e7c16f6d1da63be283` | ⚠️ Unaudited |
| SplUsdRedemptionVaultWithSwapper | unknown | project_anchor | own_supporting | 1 | plasma | unit-259468 | 2 deployments: plasma `0x3404676e77abca60ffb1c00a8e09da21832796ce`; plasma `0x69ecab6aa7bdfddd99def0891c0317076430ae50` | ⚠️ Unaudited |
| StakeToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259432 | `0x49acebf8f0f79e1ecb0fd47d684dadec81cc6562` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259436 | `0x5e39021ae7d3f6267dc7995bb5dd15669060dae0` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | project_anchor | own_supporting | 0 | sonic | unit-259440 | `0x825254012306bb410b550631895fe58ddce1f4a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | plasma | n/a | 3 deployments: plasma `0xa4812ee64059657ca9af278eeb64ad912a6e828b`; plasma `0xda56c2dafaf034b7bb490fab19162e2dd2e62404`; plasma `0xedb38732f51787a312268f19fe0a18d90075d78a` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x14f6fbd0195db6baf933bc49e5dd6b805c5f0e1a`; sonic `0xeae33e053eaf1bcc8d33ab9bde53e5bd699ed7b2` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x2fc1e74bc8a6d15fe768c10c2ede7d6d95ec27e9`; sonic `0xf2b3038c8bb9c4b225841496cf1d4ca47b4c90d6` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x47bf4c2f17c547a3d9052258b91919d09b15d234`; sonic `0xf00941fd53d1292d093ee0411520a2a545470689` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x72474981c4932021ec628ca7596b47bbb247a245`; sonic `0xa0943aa332b58f0ffdd48b44a3212e9bf9d601cd` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x18708a93ad916fcafa4ba365cdc723fcd3d8c65c`; sonic `0x9842be0f52569155fa58fff36e772bc79d92706e`; sonic `0xeada1c167d50aa0b884d5993e57c99c3d9bbff2f`; sonic `0xedb1d05cda292c56168c4d48fdf5717ba2875292`; sonic `0xf365c45b6913be7ab74c970d9227b9d0dff44afb`; sonic `0xfed36f73dd0c103828179c13a345151bce650c34` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 0 | sonic | unit-259429 | `0x43739b96b19ae7c2e0d80be7832325846f55fa05` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 0 | sonic | unit-259443 | `0xb84194e28f624bbba3c9181f3a1120ee76469337` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 0 | sonic | unit-259445 | `0xc31c4bc46bcd55e7483f2aaf194f7cf7641ee7c3` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-259423 | `0x0966cae7338518961c2d35493d3eb481a75bb86b` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-259424 | `0x1ec2b9a77a7226acd457954820197f89b3e3a578` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-259439 | `0x7585d9c32db1528ceae4770fd1d01b888f5afa9e` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7e330b99458339a5c5236e9030ae707e9c18c1f1` | ⚠️ Unaudited |
| WFRAXTokenOFTUpgradeable | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x64445f0aecc51e94ad52d8ac56b7190e764e561a` | ⚠️ Unaudited |
| Wrapper | unknown | project_anchor | own_supporting | 0 | sonic | unit-259441 | `0x9fb76f7ce5fceaa2c42887ff441d46095e494206` | ⚠️ Unaudited |
| Wrapper | unknown | project_anchor | own_supporting | 0 | sonic | unit-259448 | `0xdb58c4db1a0f45dda3d2f8e44c3300bb6510c866` | ⚠️ Unaudited |
| Wrapper | unknown | project_anchor | own_supporting | 0 | sonic | unit-259449 | `0xe8a41c62bb4d5863c6eadc96792cfe90a1f37c47` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (39)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x78bb1cccfd0fb5e9d46ba4e0e566a54df65d90be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259398 | `0x1327c85ce6f3c83fabc4f5c294f57ac05bcb51eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259399 | `0x1f7b4bf0cd21c1fbc4f1d995ba0608fdfc992af4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259400 | `0x2dd0496690e7fbb7ca1e590986d5b9d2e58069bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259406 | `0x59abf8642f4c7d8d3c5633edcbbf6b12234ff02d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259407 | `0x76a3eb63a20d656bcd1ce03e740d3d4691d29078` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259408 | `0x8964c76b6f0253a77129d58cba5d184d414d7c9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259409 | `0xaa1698f0a51e6d00f5533cc3e5d36010ee4558c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259410 | `0xaeb7993a35e297e42990c62d4e27470b201e8674` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259412 | `0xdd3cbe4e0f10910eb435ea6dbe97469abc3d7e9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259413 | `0xfd9f19a9b91becae3c8dabc36cdd1ea86fc1a222` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259414 | `0xfeb352930ca196a80b708cdd5dcb4eca94805dab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-259415 | `0x2e2f6aece0b7caa7d3bfdfb2728f50b4e211f1eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259417 | `0x0482a2d6e2f895125b7237de70c675cd55fe17ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259418 | `0x3682518b529e4404fb05250f9ad590c3218e5f9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259421 | `0xa6ed52eb3e39891ce5029817cdb5eac97a2834b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259422 | `0xe0be968a0d6bba03720dfdb2f3d4b3ed0083b4c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x0337ca0a9e62560f1c3934a885b42c5b3a8ed680` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x4772ca88a5bfa9d196472b208566fee948d272b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-259431 | `0x488000e6a0cfc32dcb3f37115e759af50f55b48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xa04a36614e4c1eb8cc0137d6d34eaac963167828` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-259442 | `0xace7defe3b94554f0704d8d00f69f273a0cff079` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xb031dedb0689059855f45b479bd29c0f964ec97b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xc20824bed473525ba640f6c2ae5d89469636ddcb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xd672bce6332e42b9185a83a7818f231e0444917d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc199215cd8704738e4ece4c04821546c8f95fb16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259450 | `0x04c70abaa9d3eb14f090094edc72d5581dc65a22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259451 | `0x089154a7e4c562d5998ab3d7ca57b504a8912482` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-259452 | `0x0da8d50945c97309cc4e35f4fc593257fed4391e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259453 | `0x12da7e0c469ceec4efada2f5e8caedcd3f3e6748` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259454 | `0x1afa840938cb67cdd1f1d748bdac5fc68e82d9b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259455 | `0x2aa638596429e4734d872fec6e7a42e3f3d9fbf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259457 | `0x4772ca88a5bfa9d196472b208566fee948d272b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-259459 | `0x5e90fb83bc3b733d028454f7372a80b2977d7e6a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-259460 | `0x8edcfe9bc7d2a735117b94c16456d8303777abbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259462 | `0x997523ef97e0b0a5625ed2c197e61250acf4e5f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259463 | `0xa04a36614e4c1eb8cc0137d6d34eaac963167828` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-259464 | `0xb5757d5d93a26eaa3bc6b0b25cb2364be8d5b90e` | ❓ Unverified |

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
| ethereum | `0x3754480db8b3e607fbe125697eb496a44a1be720` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x555f4df2180df6257860f23b29d653c1aafb7957` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3754480db8b3e607fbe125697eb496a44a1be720` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5448a65ddb14e6f273cd0ed6598805105a39d8cc` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x555f4df2180df6257860f23b29d653c1aafb7957` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x65b6afb8c1521b48488df04224dc019ea390e133` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x6df97ed8b28d9528cd34335c0a151f10e48b6ef3` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3bce5cb273f0f148010bbea2470e7b5df84c7812` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd3dce716f3ef535c5ff8d041c1a41c3bd89b97ae` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3bce5cb273f0f148010bbea2470e7b5df84c7812` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x455d5f11fea33a8fa9d3e285930b478b6bf85265` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x4d85ba8c3918359c78ed09581e5bc7578ba932ba` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xbb30e76d9bb2cc9631f7fc5eb8e87b5aff32bfbd` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xd0851030c94433c261b405fecbf1dec5e15948d0` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xd3dce716f3ef535c5ff8d041c1a41c3bd89b97ae` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x14723d7e7072b65c7d0cdff71a4fbbc5c4dc7431` | plUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x11428a874c29367527362b9b8d60c5e4fea6c772` | PlUsdCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x2b3f3514867cbccfadc80121297bb8088c683432` | PlUsdDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x2b690cab819a815732544aeb422474efdc1b0615` | PlUsdDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x24e49d2ad8f0bcd0cf7f2a5ab560ca4319f6bd75` | PlUsdRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x616185600989bf8339b58ac9e539d49536598343` | splUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xae7d92bedcf6aa692e46d731a6df5ec53f8652b0` | SplUsdCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x853d1871e37ec7bc4ef1088b88db237e62737d57` | SplUsdDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x3404676e77abca60ffb1c00a8e09da21832796ce` | SplUsdRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x49acebf8f0f79e1ecb0fd47d684dadec81cc6562` | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5e39021ae7d3f6267dc7995bb5dd15669060dae0` | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x825254012306bb410b550631895fe58ddce1f4a9` | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x43739b96b19ae7c2e0d80be7832325846f55fa05` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb84194e28f624bbba3c9181f3a1120ee76469337` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xc31c4bc46bcd55e7483f2aaf194f7cf7641ee7c3` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0966cae7338518961c2d35493d3eb481a75bb86b` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x1ec2b9a77a7226acd457954820197f89b3e3a578` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x7585d9c32db1528ceae4770fd1d01b888f5afa9e` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x9fb76f7ce5fceaa2c42887ff441d46095e494206` | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xdb58c4db1a0f45dda3d2f8e44c3300bb6510c866` | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe8a41c62bb4d5863c6eadc96792cfe90a1f37c47` | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 7 |
| standard_library | 1 |
| needs_review | 39 |

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
