# Agentic Audit Brief: Trevee Earn

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Trevee Earn (`trevee-earn`)
- Website: [https://rings.money/](https://rings.money/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum, optimism, plasma, polygon, sonic
- Contract surface: 228 unique implementations (301 raw deployments)
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
- Outside the address book: 152 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 47
- Confirmed-live implementations: 66 of 228 unique; 162 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/81
- Verified + Unaudited implementations: 81
- Verified by bytecode match: 0
- Unverified implementations: 147
- Unique implementations: 228
- Raw deployments: 301
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

### ❓ Unverified (147)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x78bb1cccfd0fb5e9d46ba4e0e566a54df65d90be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0482a2d6e2f895125b7237de70c675cd55fe17ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05821eb959cec55c22e28d20c359fd4f6f5a7f01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05cadb2ccc5be3f6bf8592b9be39c78ff03cc0db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b4641cd8151acc2ce4af8578a3b831007fdd30a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c0f5bdd0cfe5dc82885b89385b6708a8dc395f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0da8d50945c97309cc4e35f4fc593257fed4391e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ea62b817eb48ccecd7df44164accee114650ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10785c34c1d26508acdebd8201c9ad8d2e774a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12da7e0c469ceec4efada2f5e8caedcd3f3e6748` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259398 | `0x1327c85ce6f3c83fabc4f5c294f57ac05bcb51eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1afa840938cb67cdd1f1d748bdac5fc68e82d9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b921dbd13a280ee14ba6361c1196eb72aaa094e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cfd55b818a34ffa135f0ffc2dc6a790decd6079` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259399 | `0x1f7b4bf0cd21c1fbc4f1d995ba0608fdfc992af4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22e3097647349b91766fe1085f1e1f05288fd201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25c1e3fc20fd7298d7306e13d29e79781f87db49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28ce0289bb2f8ee7e4ad482adaf3103ce2687ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aa638596429e4734d872fec6e7a42e3f3d9fbf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259400 | `0x2dd0496690e7fbb7ca1e590986d5b9d2e58069bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e2f6aece0b7caa7d3bfdfb2728f50b4e211f1eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e8001fc293d91f30d4e440b8f56b541a747123a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x358549d4cb7f97f389812b86673a6cf8c1ff59d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3682518b529e4404fb05250f9ad590c3218e5f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39dc0513ec36f86201714e317878d68e5bdf1080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40c1c7bd620ae59215913f819c45af75f1b7afce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42227bc7d65511a357c43993883c7cef53b25de9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42de2101fa5ee922392ee5d752ed7399022e6a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ce46256a6966448fc68e4972a4aa087ed7261b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469c7ced68487102161def8e05dc071205c87699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4772ca88a5bfa9d196472b208566fee948d272b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b6809a916cab935513f08ce16ea8ffd3f71309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49fcf99c0b2b51815e0614cbc1aac269f018f901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e94667b7d78a3304c8b8445b111cd11b10598e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x506dc72d4a38b4bd81678df8949e38de6d773f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x523086d0d43000d70918e4cde1fbd28cdb4c4a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x532b795d9429b3f0c5b462567d8e0ece00374e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5553e8fae4da0df0ab6a38728bad2076e81e5361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x587545a134dbe40c323bfc4d8186cd9778c35e5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259406 | `0x59abf8642f4c7d8d3c5633edcbbf6b12234ff02d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dd8f3c50038cbaf29876eddf0897f5bd91a7b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x602e94d90f34126f31444d001732a1974378d9fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x609fb23b9ea7cb3edaf56db5daf07c8e94c155de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62653343dee0706894af784ee5f7cb83290d12d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x648176a476289f05e06b0a50c080066cfab58d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x653d8f14292a1c5239d6183b333de1f2e8669310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6717a11e6cd2947041377c8bb3a2b99e29f5dd44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6920e13dcad8f19faa6f8aebf64c30c3b4600e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dc3464f0450a1a2bb9b434ba826a6bd3035dcec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f01709cdb0b2df3795f7dd74f5f0fab9c204921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74f2e76246f256c593728c9a1b9164ee2d9745e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x768d802b2e2f69c99ace001b6cb12eb832bef108` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259407 | `0x76a3eb63a20d656bcd1ce03e740d3d4691d29078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x790f07657389f590d91330a75ccd633f4ab1b4c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ede9e1dafb3b0edc6c106106a138d8312cc1fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8070117b0c0c72904305b0bd38009409940caf0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80a94cdf148654eb60d81a993204244c1ccca4fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86d588534cd0e004c419c5909b49d99986760018` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259408 | `0x8964c76b6f0253a77129d58cba5d184d414d7c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b2ba835056965808ad88e7ad7866bd57ae75839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c08448c20267621594027f92ab6990b446bea91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c1d862c1fa91e0880deef621c7a17f9087bf50c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8edcfe9bc7d2a735117b94c16456d8303777abbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92fb36b6933756d93552623e1800d8c98f4831f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x957320badf85e3c654c2709250b9ec03a710c1ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x957bb5d10f55e6121329163ab6e65f7a3113429d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98b8d3f9c08a082c593d54de4633e503ed40c77c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99284cb5207a7f5fe43e7803315da73c55ae6cd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x997523ef97e0b0a5625ed2c197e61250acf4e5f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x999881aa210b637fff7d22c8566319444b38695b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a4bcef58eb50e9e51fa18ab79d732cc4a23748c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b47cb3d10084d6123e9f005a69d047d03c98543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa04a36614e4c1eb8cc0137d6d34eaac963167828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa241a6670231ea66ac3bfe95f29c67f2bb28113b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa538b7f3c02c3f42e37fb0d557ee420de7f9d4d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5fee017772f77f5136547252f451f0aa443669d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6ed52eb3e39891ce5029817cdb5eac97a2834b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8be7b1bf79d543b00cc5049eac709b770007b12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259409 | `0xaa1698f0a51e6d00f5533cc3e5d36010ee4558c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab68ed2a400a5bca49bf71703522c5ab766e3a44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259410 | `0xaeb7993a35e297e42990c62d4e27470b201e8674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5757d5d93a26eaa3bc6b0b25cb2364be8d5b90e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7258af45a0428753c9d32831b8da796b465e4f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8311fb394579b68f3b60b1e8c9b26d6fde69a39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc269b4e4d056821edda92d936b8ec8979b1129c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc413ab9c6d3e60e41a530b0a68817baea7babbec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4677c513aec114b65cee1c95d505c708cc77f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc698ee44836d4ab9a13ae4cf933b7a77a5d63f05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9895f3a489e7c68caebf423402354a22c74f2e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccd73d064ed07964ad2144fdfd1b99e7e6b5f626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce6dc32252d85e2e955bfd3b85660917f040a933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf377332ca848274b95bb162807851d96b51a4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ae0a55082acfcb4049ee604a4988dbb4fa2c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2007b423efee7534b4fafc3b93d808740010366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd74bb89894d0027140779b065b6b003c27ec93de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259412 | `0xdd3cbe4e0f10910eb435ea6dbe97469abc3d7e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf2ab567290d218d85d83be596ba3c78d2c96dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0be968a0d6bba03720dfdb2f3d4b3ed0083b4c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe329134c2384cf59c34c98b0abd0c70ab524e335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe38a880bf996098887f7e33c6667d6807485385a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb9c1dbd95dcf5190e6d31ba94f89593d48990be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef163c7bbdf15a19a7e703f3a6283995fa62abdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0ceabf99ddd591bbcc962596b228007ed4624ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf13e938d7a1214ae438761941bc0c651405e68a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf224390c58e1f24204578c2eb3be5a4bac183257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2cb9b9d0d069b7820139d3def0a7a8074694306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9f6f5f2250bd151797ddf2e02644123b0c4a114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfccdcd191ac681ca5cd14fffd01db88807ba10b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259413 | `0xfd9f19a9b91becae3c8dabc36cdd1ea86fc1a222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe626bf27722194dcc4e9ff9c55ca8f43c19abbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe9e632998fee5541b33070eb867245916bdded3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-259414 | `0xfeb352930ca196a80b708cdd5dcb4eca94805dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x089154a7e4c562d5998ab3d7ca57b504a8912482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x12da7e0c469ceec4efada2f5e8caedcd3f3e6748` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-259415 | `0x2e2f6aece0b7caa7d3bfdfb2728f50b4e211f1eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-259417 | `0x0482a2d6e2f895125b7237de70c675cd55fe17ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x089154a7e4c562d5998ab3d7ca57b504a8912482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2aa638596429e4734d872fec6e7a42e3f3d9fbf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2e2f6aece0b7caa7d3bfdfb2728f50b4e211f1eb` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0482a2d6e2f895125b7237de70c675cd55fe17ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259450 | `0x04c70abaa9d3eb14f090094edc72d5581dc65a22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259451 | `0x089154a7e4c562d5998ab3d7ca57b504a8912482` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-259452 | `0x0da8d50945c97309cc4e35f4fc593257fed4391e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259453 | `0x12da7e0c469ceec4efada2f5e8caedcd3f3e6748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19f916b6f3a4a8fab78fbbde36df84da7ac8d58b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259454 | `0x1afa840938cb67cdd1f1d748bdac5fc68e82d9b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259455 | `0x2aa638596429e4734d872fec6e7a42e3f3d9fbf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40c1c7bd620ae59215913f819c45af75f1b7afce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259457 | `0x4772ca88a5bfa9d196472b208566fee948d272b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-259459 | `0x5e90fb83bc3b733d028454f7372a80b2977d7e6a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-259460 | `0x8edcfe9bc7d2a735117b94c16456d8303777abbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259462 | `0x997523ef97e0b0a5625ed2c197e61250acf4e5f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-259463 | `0xa04a36614e4c1eb8cc0137d6d34eaac963167828` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-259464 | `0xb5757d5d93a26eaa3bc6b0b25cb2364be8d5b90e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 200
- Live contracts: 11
- Unknown liveness contracts: 189
- Source-verified contracts: 88
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=22, contamination review=2, source verified unclassified=64, unverified unclassified=112

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | TransparentUpgradeableProxy<br>`0x2fc1e74bc8a6d15fe768c10c2ede7d6d95ec27e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| candidate review | TransparentUpgradeableProxy<br>`0x47bf4c2f17c547a3d9052258b91919d09b15d234` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| candidate review | TransparentUpgradeableProxy<br>`0x72474981c4932021ec628ca7596b47bbb247a245` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x572e01e83d59c657cf8293a15e430fea30654ca6` |
| candidate review | TransparentUpgradeableProxy<br>`0xeae33e053eaf1bcc8d33ab9bde53e5bd699ed7b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| candidate review | TransparentUpgradeableProxy<br>`0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9c9dd956b413cdbd81690c9394a6b4d22afe6745` |
| candidate review | TransparentUpgradeableProxy<br>`0x09ef712e8bf561fa6bb0e17db1fa0523c0965f5a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0x0a0817be02f0ab5370a9ec36cf399d1ead3588a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0x2eb410e4cb94e2e9e3cde3f7b405be4fcc076bc9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0x3ea351249daa640f4ababc06b3118f35324fab72` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0x428d0191cb350ec2c34f7d332e25be7bb8a01829` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0x4e7caa4d3192e91c4fdb123fc927efa559cd0f39` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0x616185600989bf8339b58ac9e539d49536598343` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0x880661f9b412065d616890ca458dccd0146cb77c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0x88b70f4f0a0344c305a29ce082a167c7436890fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0x8a7bd8886f784d0019b3285a41ea4dbdff47f96f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0xa4812ee64059657ca9af278eeb64ad912a6e828b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0xa603cf264adeb8e7f0f063c116929adac2d4286e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0xb31bea5c2a43f942a3800558b1aa25978da75f8a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0xda56c2dafaf034b7bb490fab19162e2dd2e62404` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0xf7648811133635db67091a35a5abef18f3b43cc9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0xf91c31299e998c5127bc5f11e4a657fc0cf358cd` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| candidate review | TransparentUpgradeableProxy<br>`0xfc3e47c4da8f3a01ac76c3c5ecfbfc302e1a08f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| contamination review | VeArtProxy<br>`0x14f6fbd0195db6baf933bc49e5dd6b805c5f0e1a` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| contamination review | SplUsdDataFeed<br>`0x853d1871e37ec7bc4ef1088b88db237e62737d57` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | AirdropDistributor<br>`0x244c88a7f5e11b092acd29f0033972d05e05a831` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | AirdropDistributor<br>`0xc49182b3f3ad6a2e1bfdf4b6342d17c93f9c124c` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | AirdropReclaimer<br>`0x5db8d98ed02a3b8c2781ab0b80f00cd2b75d261a` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0x05d61aca7111e177ca0a03e7145f342494bfee01` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0x14cedd0b2ed13a4a094791b1f525693ff5227230` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0x1bc06ea7f677bcf507f2f2afb8d0aace1fd86e52` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0x324a043306f374edcc26c95fe8a934c40a64527c` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0x3692b155520d54a5a0a0fe77aa6e5982de28d3a6` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0x3a15cc7a83f19112de572666560cdb54bc4b53eb` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0x4cba4a275bd4d9f53b94b6073542eb1c09c338fd` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0x4ce11a58d9eeadbb0a73abd3fd3c6e9245e7fb29` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0x58d02d3449f018c8a007e8a55df94008e2df52b2` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0x61b9bff50f18a827d5d7d1d1d73c8aa4b354dd5b` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0x633ff249cc99d1db57cc566268e453ab157b3b83` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0x67e1996b2d280400c4314a96c41aab927c24875d` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0x7f8a673d4d4825555557b39724bfa79e90da3743` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0x9a7d086bec5ad471e4af4409939c023a2419cf7b` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0xa55d937e750b03d25214d7c8046c6eb292891248` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0xa9d889d86fc36db9a44855984e12cba1edb67eb3` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0xb8c5b4c988205e1c9e1b0a8185627517646b8b5d` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | DistributionSwapper<br>`0xed801d01d12e572809bd4b328ae6ba9a038678c5` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0x0ab6d071af5b692c88baddd1f6e4f3ad5c1de1d3` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0x266c10c92d2ad634bf90d2029488de333d6e80b6` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0x29dafa6123ecc659a2d42ca1245f85cc13c8057f` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0x485eabed09819428e7ac87139102cd9d83a784bd` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0x66df6a4b9a31d1a1d5b57e79cfde40dac327d7ed` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0x7545ddceef18c435887f9da46e230e27728fb931` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0x7b949a68c57d47ec878bbc2a30c9ef54b41c33b5` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0x8329d28efc863a952fc5c639917948fd6e8f85e9` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0x87c165985f852647a044dc5935bbcf1328cfde21` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0x9981a5fb7253d5ade220e1a44b8f6a0dce8333f5` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0x9987a6be057d06c1f2b58506118280ce6b6638af` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0xa1046681a0d71cfe97e05a0fb1540294963b11d7` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0xadeeb03a2eb221dedb42a868adbca5cc1a9f3ec0` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0xee1e11a8c9d6f69e40401050d4ba96ec5b145177` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | RewardsDistributor<br>`0xfc7d3ea7078279ef668f1eba658036f72de4094a` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | Router<br>`0x10c490921916e6d2d38535e63080d54e7e30a829` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | Router<br>`0x4d622335c6bba5721090a81b8518c863fc8dc9e0` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | VeArtProxy<br>`0xa0943aa332b58f0ffdd48b44a3212e9bf9d601cd` | non_address_book | unknown | unknown | verified | n/a | `0x572e01e83d59c657cf8293a15e430fea30654ca6` |
| source verified unclassified | VeArtProxy<br>`0xf00941fd53d1292d093ee0411520a2a545470689` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | VeArtProxy<br>`0xf2b3038c8bb9c4b225841496cf1d4ca47b4c90d6` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | Voter<br>`0x18708a93ad916fcafa4ba365cdc723fcd3d8c65c` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | Voter<br>`0x9842be0f52569155fa58fff36e772bc79d92706e` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | Voter<br>`0xeada1c167d50aa0b884d5993e57c99c3d9bbff2f` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | Voter<br>`0xedb1d05cda292c56168c4d48fdf5717ba2875292` | non_address_book | unknown | unknown | verified | n/a | `0x572e01e83d59c657cf8293a15e430fea30654ca6` |
| source verified unclassified | Voter<br>`0xf365c45b6913be7ab74c970d9227b9d0dff44afb` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | Voter<br>`0xfed36f73dd0c103828179c13a345151bce650c34` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | VotingEscrow<br>`0x7e330b99458339a5c5236e9030ae707e9c18c1f1` | non_address_book | unknown | unknown | verified | n/a | `0x10b34b53b5989aa893c18e7fad4c460f98ce3847` |
| source verified unclassified | mHYPER<br>`0xd3239a355d47269e77cd028f2e965ef9fd893eb0` | non_address_book | unknown | unknown | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | MHyperCustomAggregatorFeed<br>`0xaa016343d80a05e96ca4287607bfe1550568899a` | non_address_book | unknown | unknown | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | MHyperDataFeed<br>`0x73b3724c97931b4e31b6b944230d365dffe15c0b` | non_address_book | unknown | unknown | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | MHyperDepositVault<br>`0x062ea1beaf82e09b44e30bc9e926af7599a603e4` | non_address_book | unknown | unknown | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | MHyperRedemptionVaultWithSwapper<br>`0x429409624853649a0dc08693249155813db98681` | non_address_book | unknown | unknown | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | MidasAccessControl<br>`0x0ee21b6c1f6aed64ce3c67767168ea62f3d8974b` | non_address_book | unknown | unknown | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | MidasTimelockController<br>`0xe4ccb596112d35c9862d58a113342d122cfd3c2e` | non_address_book | unknown | unknown | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | plUSD<br>`0x14723d7e7072b65c7d0cdff71a4fbbc5c4dc7431` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | PlUsdCustomAggregatorFeed<br>`0x11428a874c29367527362b9b8d60c5e4fea6c772` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | PlUsdDataFeed<br>`0x574f3132a7fc596f61cfff711770e1e7d9fa35a4` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | PlUsdDepositVault<br>`0xc50c3d19f668b8fc355d7e21e3f9e16b2982b77d` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | PlUsdRedemptionVaultWithSwapper<br>`0x850ec16c59e527e262d5a1331e9ad965997bc0fc` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | splUSD<br>`0xf1e3c154dcb0c3b9e66a9b7191007d12efaa9053` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | SplUsdCustomAggregatorFeed<br>`0xae7d92bedcf6aa692e46d731a6df5ec53f8652b0` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | SplUsdDepositVault<br>`0xd9334689f66af838a65c93e7c16f6d1da63be283` | non_address_book | unknown | unknown | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| source verified unclassified | SplUsdRedemptionVaultWithSwapper<br>`0x3404676e77abca60ffb1c00a8e09da21832796ce` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x0482a2d6e2f895125b7237de70c675cd55fe17ca` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x05821eb959cec55c22e28d20c359fd4f6f5a7f01` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x05cadb2ccc5be3f6bf8592b9be39c78ff03cc0db` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x0b4641cd8151acc2ce4af8578a3b831007fdd30a` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x0c0f5bdd0cfe5dc82885b89385b6708a8dc395f4` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x0da8d50945c97309cc4e35f4fc593257fed4391e` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x0ea62b817eb48ccecd7df44164accee114650ed4` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x10785c34c1d26508acdebd8201c9ad8d2e774a85` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x12da7e0c469ceec4efada2f5e8caedcd3f3e6748` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x1afa840938cb67cdd1f1d748bdac5fc68e82d9b1` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x1b921dbd13a280ee14ba6361c1196eb72aaa094e` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x1cfd55b818a34ffa135f0ffc2dc6a790decd6079` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x22e3097647349b91766fe1085f1e1f05288fd201` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x25c1e3fc20fd7298d7306e13d29e79781f87db49` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x28ce0289bb2f8ee7e4ad482adaf3103ce2687ba9` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x2aa638596429e4734d872fec6e7a42e3f3d9fbf8` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x2e2f6aece0b7caa7d3bfdfb2728f50b4e211f1eb` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x2e8001fc293d91f30d4e440b8f56b541a747123a` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x358549d4cb7f97f389812b86673a6cf8c1ff59d2` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x3682518b529e4404fb05250f9ad590c3218e5f9f` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x39dc0513ec36f86201714e317878d68e5bdf1080` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x40c1c7bd620ae59215913f819c45af75f1b7afce` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x42227bc7d65511a357c43993883c7cef53b25de9` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x42de2101fa5ee922392ee5d752ed7399022e6a53` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x43ce46256a6966448fc68e4972a4aa087ed7261b` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x469c7ced68487102161def8e05dc071205c87699` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x4772ca88a5bfa9d196472b208566fee948d272b3` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x49b6809a916cab935513f08ce16ea8ffd3f71309` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x49fcf99c0b2b51815e0614cbc1aac269f018f901` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x4e94667b7d78a3304c8b8445b111cd11b10598e3` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x506dc72d4a38b4bd81678df8949e38de6d773f0c` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x523086d0d43000d70918e4cde1fbd28cdb4c4a88` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x532b795d9429b3f0c5b462567d8e0ece00374e86` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x5553e8fae4da0df0ab6a38728bad2076e81e5361` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x587545a134dbe40c323bfc4d8186cd9778c35e5d` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x5dd8f3c50038cbaf29876eddf0897f5bd91a7b8a` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x602e94d90f34126f31444d001732a1974378d9fc` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x609fb23b9ea7cb3edaf56db5daf07c8e94c155de` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x62653343dee0706894af784ee5f7cb83290d12d1` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x648176a476289f05e06b0a50c080066cfab58d37` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x653d8f14292a1c5239d6183b333de1f2e8669310` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x6717a11e6cd2947041377c8bb3a2b99e29f5dd44` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x6920e13dcad8f19faa6f8aebf64c30c3b4600e4f` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x6dc3464f0450a1a2bb9b434ba826a6bd3035dcec` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x6f01709cdb0b2df3795f7dd74f5f0fab9c204921` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x74f2e76246f256c593728c9a1b9164ee2d9745e8` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x768d802b2e2f69c99ace001b6cb12eb832bef108` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x790f07657389f590d91330a75ccd633f4ab1b4c9` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x7ede9e1dafb3b0edc6c106106a138d8312cc1fb4` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x8070117b0c0c72904305b0bd38009409940caf0c` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x80a94cdf148654eb60d81a993204244c1ccca4fa` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x86d588534cd0e004c419c5909b49d99986760018` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x8b2ba835056965808ad88e7ad7866bd57ae75839` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x8c08448c20267621594027f92ab6990b446bea91` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x8c1d862c1fa91e0880deef621c7a17f9087bf50c` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x8edcfe9bc7d2a735117b94c16456d8303777abbb` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x92fb36b6933756d93552623e1800d8c98f4831f9` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x957320badf85e3c654c2709250b9ec03a710c1ad` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x957bb5d10f55e6121329163ab6e65f7a3113429d` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x98b8d3f9c08a082c593d54de4633e503ed40c77c` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x99284cb5207a7f5fe43e7803315da73c55ae6cd4` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x997523ef97e0b0a5625ed2c197e61250acf4e5f1` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x999881aa210b637fff7d22c8566319444b38695b` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x9a4bcef58eb50e9e51fa18ab79d732cc4a23748c` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x9b47cb3d10084d6123e9f005a69d047d03c98543` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xa04a36614e4c1eb8cc0137d6d34eaac963167828` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xa241a6670231ea66ac3bfe95f29c67f2bb28113b` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xa538b7f3c02c3f42e37fb0d557ee420de7f9d4d8` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xa5fee017772f77f5136547252f451f0aa443669d` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xa6ed52eb3e39891ce5029817cdb5eac97a2834b3` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xa8be7b1bf79d543b00cc5049eac709b770007b12` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xab68ed2a400a5bca49bf71703522c5ab766e3a44` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xb5757d5d93a26eaa3bc6b0b25cb2364be8d5b90e` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xb7258af45a0428753c9d32831b8da796b465e4f5` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xb8311fb394579b68f3b60b1e8c9b26d6fde69a39` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xbc269b4e4d056821edda92d936b8ec8979b1129c` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xc413ab9c6d3e60e41a530b0a68817baea7babbec` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xc4677c513aec114b65cee1c95d505c708cc77f6d` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xc698ee44836d4ab9a13ae4cf933b7a77a5d63f05` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xc9895f3a489e7c68caebf423402354a22c74f2e8` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xccd73d064ed07964ad2144fdfd1b99e7e6b5f626` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xce6dc32252d85e2e955bfd3b85660917f040a933` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xcf377332ca848274b95bb162807851d96b51a4d3` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xd0ae0a55082acfcb4049ee604a4988dbb4fa2c62` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xd2007b423efee7534b4fafc3b93d808740010366` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xd74bb89894d0027140779b065b6b003c27ec93de` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xdf2ab567290d218d85d83be596ba3c78d2c96dfd` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xe0be968a0d6bba03720dfdb2f3d4b3ed0083b4c7` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xe329134c2384cf59c34c98b0abd0c70ab524e335` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xe38a880bf996098887f7e33c6667d6807485385a` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xeb9c1dbd95dcf5190e6d31ba94f89593d48990be` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xef163c7bbdf15a19a7e703f3a6283995fa62abdb` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xf0ceabf99ddd591bbcc962596b228007ed4624ae` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xf13e938d7a1214ae438761941bc0c651405e68a4` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xf224390c58e1f24204578c2eb3be5a4bac183257` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xf2cb9b9d0d069b7820139d3def0a7a8074694306` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xf9f6f5f2250bd151797ddf2e02644123b0c4a114` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xfccdcd191ac681ca5cd14fffd01db88807ba10b8` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xfe626bf27722194dcc4e9ff9c55ca8f43c19abbf` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0xfe9e632998fee5541b33070eb867245916bdded3` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x089154a7e4c562d5998ab3d7ca57b504a8912482` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x12da7e0c469ceec4efada2f5e8caedcd3f3e6748` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x089154a7e4c562d5998ab3d7ca57b504a8912482` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x2aa638596429e4734d872fec6e7a42e3f3d9fbf8` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x2e2f6aece0b7caa7d3bfdfb2728f50b4e211f1eb` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | non_address_book | unknown | unknown | unverified | n/a | `0x9c9dd956b413cdbd81690c9394a6b4d22afe6745` |
| unverified unclassified | PendleMidasSY<br>`0x78bb1cccfd0fb5e9d46ba4e0e566a54df65d90be` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xc199215cd8704738e4ece4c04821546c8f95fb16` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xedb38732f51787a312268f19fe0a18d90075d78a` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x0482a2d6e2f895125b7237de70c675cd55fe17ca` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x19f916b6f3a4a8fab78fbbde36df84da7ac8d58b` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |
| unverified unclassified | UnnamedContract<br>`0x40c1c7bd620ae59215913f819c45af75f1b7afce` | non_address_book | unknown | unknown | unverified | n/a | `0x4ad5d7bfee184c8e7e746ad1329b6d59f8f2f31f` |

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
| needs_review | 147 |

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
