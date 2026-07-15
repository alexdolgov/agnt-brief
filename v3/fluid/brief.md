# Agentic Audit Brief: Fluid

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 16 (0 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Fluid (`fluid`)
- Website: [https://fluid.io/](https://fluid.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, plasma, polygon
- Contract surface: 261 unique implementations (262 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,115,045,985.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Fluid. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, base, ethereum. Structural roles: 1 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe16ccc...7b9743`, chain 1)
- FiatTokenProxy (`0xa0b869...06eb48`, chain 1)
- FluidLiteVaultProxy (`0x273da9...c29012`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 259 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 2 of 261 unique; 259 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/261
- Verified + Unaudited implementations: 261
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 261
- Raw deployments: 262
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 3 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (261)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f9b0a...396cff` | ⚠️ Unaudited |
| BatchMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x008f8e...f87f74` | ⚠️ Unaudited |
| BoringVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x917cee...909d88` | ⚠️ Unaudited |
| ConnectAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4b45...71de62` | ⚠️ Unaudited |
| ConnectAaveIncentives | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f1e38...504f1b` | ⚠️ Unaudited |
| ConnectAaveStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa96b2f...d64d78` | ⚠️ Unaudited |
| ConnectAaveV2PolygonMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9686ce...22e7ba` | ⚠️ Unaudited |
| ConnectCOMP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaac57...8f7b07` | ⚠️ Unaudited |
| ConnectCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4c77f...68e6fa` | ⚠️ Unaudited |
| ConnectInstaPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a2622...469bf8` | ⚠️ Unaudited |
| ConnectMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fca8d...069984` | ⚠️ Unaudited |
| ConnectMigrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f774c...ca727d` | ⚠️ Unaudited |
| ConnectOne | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x996b52...557a29` | ⚠️ Unaudited |
| ConnectPolygonBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62659f...c6dac6` | ⚠️ Unaudited |
| ConnectV2AaveImport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8358a9...5490a7` | ⚠️ Unaudited |
| ConnectV2AaveIncentives | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x611c1f...ee85e0` | ⚠️ Unaudited |
| ConnectV2AaveStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf73c94...c37d5b` | ⚠️ Unaudited |
| ConnectV2AaveV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x612c5c...f97e9d` | ⚠️ Unaudited |
| ConnectV2AaveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x497bc5...c9dbb8` | ⚠️ Unaudited |
| ConnectV2AaveV2Import | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x893056...4e3f14` | ⚠️ Unaudited |
| ConnectV2AaveV2ImportPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16a26a...974a38` | ⚠️ Unaudited |
| ConnectV2AaveV2MerkleImport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x335ddc...ef7e09` | ⚠️ Unaudited |
| ConnectV2Auth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x351bb3...f31c68` | ⚠️ Unaudited |
| ConnectV2Basic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x992695...061687` | ⚠️ Unaudited |
| ConnectV2BasicERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ecbf5...69c42b` | ⚠️ Unaudited |
| ConnectV2BasicERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dfa17...4f15e9` | ⚠️ Unaudited |
| ConnectV2BCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3eefd...62460f` | ⚠️ Unaudited |
| ConnectV2BMakerDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0a1f1...de7bf0` | ⚠️ Unaudited |
| ConnectV2COMP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01fef4...f60109` | ⚠️ Unaudited |
| ConnectV2Compound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b1eac...a3ae25` | ⚠️ Unaudited |
| ConnectV2CompoundImport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24bd20...29e8b4` | ⚠️ Unaudited |
| ConnectV2CompoundMerkleImport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda1018...4eb6c0` | ⚠️ Unaudited |
| ConnectV2InstaLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e5b90...1ea791` | ⚠️ Unaudited |
| ConnectV2InstaPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01a00d...fc9780` | ⚠️ Unaudited |
| ConnectV2InstaPoolV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08bae2...0c7222` | ⚠️ Unaudited |
| ConnectV2Interop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56230c...1ed7bf` | ⚠️ Unaudited |
| ConnectV2Liquity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3643ba...f31bfe` | ⚠️ Unaudited |
| ConnectV2LMClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe4ea1...22d9d1` | ⚠️ Unaudited |
| ConnectV2Maker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x839c2d...b41556` | ⚠️ Unaudited |
| ConnectV2MakerDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4049db...653ef6` | ⚠️ Unaudited |
| ConnectV2MakerDAOClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f8cbe...c5a4e8` | ⚠️ Unaudited |
| ConnectV2Migrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a0068...763c88` | ⚠️ Unaudited |
| ConnectV2OneInch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x235fca...3e4b7c` | ⚠️ Unaudited |
| ConnectV2OneProto | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabac3d...bc5e04` | ⚠️ Unaudited |
| ConnectV2PolygonBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b79b3...510ad5` | ⚠️ Unaudited |
| ConnectV2Refinance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f2293...b27856` | ⚠️ Unaudited |
| ConnectV2Reflexer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6dc2...9ae2c8` | ⚠️ Unaudited |
| connectV2StakeGUNI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8e9ef...14d2f8` | ⚠️ Unaudited |
| ConnectV2UniswapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e5ce4...afc43c` | ⚠️ Unaudited |
| ConnectV2UniswapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25b0c7...d4c475` | ⚠️ Unaudited |
| ConnectV2UniswapV3Staker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x917de7...dbe414` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21bee1...4dd901` | ⚠️ Unaudited |
| EthRateExecuteUpdate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49e4db...da3207` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386497 | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| FluidDexResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1de429...946e6d` | ⚠️ Unaudited |
| FluidLiquidityDummyImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x52aa89...f4e497` | ⚠️ Unaudited |
| FluidLiquidityResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35a915...d3b0cd` | ⚠️ Unaudited |
| FluidLiteVaultProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386498 | 2 deployments: ethereum `0x273da9...c29012`; ethereum `0xe16ccc...7b9743` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ca074...6ad53a` | ⚠️ Unaudited |
| GUD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8f9e1...d08713` | ⚠️ Unaudited |
| IDAIPriceResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37a448...08a882` | ⚠️ Unaudited |
| IETHPriceResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce5b90...271cc9` | ⚠️ Unaudited |
| IEthRebalancerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfcdb6...173a35` | ⚠️ Unaudited |
| IEthSupplyWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x814072...8824d6` | ⚠️ Unaudited |
| InstaAaveV2MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ba631...b28944` | ⚠️ Unaudited |
| InstaAaveV2MigratorSenderImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cd072...599301` | ⚠️ Unaudited |
| InstaAaveV2Resolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb3a1d...54578b` | ⚠️ Unaudited |
| InstaAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb208cd...9a149f` | ⚠️ Unaudited |
| InstaAdminProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12d7d1...99e65b` | ⚠️ Unaudited |
| InstaChiefTimelockContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3e586...cdc370` | ⚠️ Unaudited |
| InstaCompoundMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a85d...519e88` | ⚠️ Unaudited |
| InstaCompoundMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x630008...05b896` | ⚠️ Unaudited |
| InstaCompoundResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccaa4b...03321b` | ⚠️ Unaudited |
| InstaConnectorsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97b0b3...b8ad11` | ⚠️ Unaudited |
| InstaDefaultImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60faee...2117b3` | ⚠️ Unaudited |
| InstaDelegateClone | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x665817...a74196` | ⚠️ Unaudited |
| InstaDelegateFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43e444...c056c9` | ⚠️ Unaudited |
| InstaDSProxyMakerDAOClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49fad2...834649` | ⚠️ Unaudited |
| InstaEmptyImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a0908...79abf4` | ⚠️ Unaudited |
| InstaFlashAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb436ca...74cef0` | ⚠️ Unaudited |
| InstaFlashResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10c7b5...5caec1` | ⚠️ Unaudited |
| InstaGovernanceAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d07ec...b1cf6a` | ⚠️ Unaudited |
| InstaGovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00613f...32ee47` | ⚠️ Unaudited |
| InstaGUNIV3PoolResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x729bf0...061b13` | ⚠️ Unaudited |
| InstaImplementationM1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a3462...d90021` | ⚠️ Unaudited |
| InstaImplementationM2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fbff3...0aa814` | ⚠️ Unaudited |
| InstaLiquityResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc5fc...ba92ea` | ⚠️ Unaudited |
| InstaMakerDAOMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8383...e2743c` | ⚠️ Unaudited |
| InstaMappingController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddd075...8a08d4` | ⚠️ Unaudited |
| InstaMasterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa471d8...4064ff` | ⚠️ Unaudited |
| InstaMasterSigProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e03e...7e4815` | ⚠️ Unaudited |
| InstaMerkleDistributorLM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b9ae6...00bfb4` | ⚠️ Unaudited |
| InstaPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7e8e6...8a585d` | ⚠️ Unaudited |
| InstaPoolCompoundMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x309eff...341f4c` | ⚠️ Unaudited |
| InstaPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf19ee...efe418` | ⚠️ Unaudited |
| InstaPoolV2Implementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2a1739...87992f` | ⚠️ Unaudited |
| InstaPoolV2ImplementationV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x276b88...c79726` | ⚠️ Unaudited |
| InstaReflexerGebMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x573e51...ba41b4` | ⚠️ Unaudited |
| InstaTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2386dc...481f4c` | ⚠️ Unaudited |
| InstaTimelockContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68206e...b25a18` | ⚠️ Unaudited |
| InstaTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31de20...1f8773` | ⚠️ Unaudited |
| InstaTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0d921...232a9e` | ⚠️ Unaudited |
| InstaUniswapStakerResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a96af...49a3c9` | ⚠️ Unaudited |
| InstaUniswapV3Resolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x465ac3...5717e3` | ⚠️ Unaudited |
| InstaVaultImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x039488...59a703` | ⚠️ Unaudited |
| InstaVaultResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d114...91c27a` | ⚠️ Unaudited |
| InstaVaultUIResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ada30...bfa7b3` | ⚠️ Unaudited |
| InstaVaultWrapperImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x012c21...a4a95e` | ⚠️ Unaudited |
| InstaVestingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3730d9...dd054a` | ⚠️ Unaudited |
| InteropAaveResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90478c...863e06` | ⚠️ Unaudited |
| InteropBetaImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25ef95...a12dca` | ⚠️ Unaudited |
| IUSDCPriceResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5a95d...5f4b7c` | ⚠️ Unaudited |
| IWBTCPriceResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85f8b0...e09d44` | ⚠️ Unaudited |
| LeverageModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9e35...a3a784` | ⚠️ Unaudited |
| LiquidityQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc15adb...4a2904` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| PayloadIGP10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe935e8...9556d0` | ⚠️ Unaudited |
| PayloadIGP100 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee1e9a...b6b8c0` | ⚠️ Unaudited |
| PayloadIGP101 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64fb3f...1fc569` | ⚠️ Unaudited |
| PayloadIGP102 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35148e...e2c8d0` | ⚠️ Unaudited |
| PayloadIGP103 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfe2ce...718ebe` | ⚠️ Unaudited |
| PayloadIGP104 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eb746...967af2` | ⚠️ Unaudited |
| PayloadIGP105 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87532d...bf6525` | ⚠️ Unaudited |
| PayloadIGP106 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96c23b...d5ff15` | ⚠️ Unaudited |
| PayloadIGP107 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26f40b...641fe6` | ⚠️ Unaudited |
| PayloadIGP108 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x462b53...58b097` | ⚠️ Unaudited |
| PayloadIGP109 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f65c0...e55e49` | ⚠️ Unaudited |
| PayloadIGP11 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaed69c...6a59a1` | ⚠️ Unaudited |
| PayloadIGP110 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x310638...a06db9` | ⚠️ Unaudited |
| PayloadIGP111 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59ebc4...9d0aae` | ⚠️ Unaudited |
| PayloadIGP112 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b35f2...306deb` | ⚠️ Unaudited |
| PayloadIGP113 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38693a...1f4a5e` | ⚠️ Unaudited |
| PayloadIGP114 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb3359...cdfb8d` | ⚠️ Unaudited |
| PayloadIGP115 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8f66f...b7709b` | ⚠️ Unaudited |
| PayloadIGP116 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7003f...fea25b` | ⚠️ Unaudited |
| PayloadIGP117 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41edb8...5d42fa` | ⚠️ Unaudited |
| PayloadIGP118 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ad0f4...b13478` | ⚠️ Unaudited |
| PayloadIGP119 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dcc1f...a1d30a` | ⚠️ Unaudited |
| PayloadIGP12 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe83188...c93dcd` | ⚠️ Unaudited |
| PayloadIGP120 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x954790...95069a` | ⚠️ Unaudited |
| PayloadIGP121 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3caf9...4457a2` | ⚠️ Unaudited |
| PayloadIGP122 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78b7f5...62968b` | ⚠️ Unaudited |
| PayloadIGP123 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fc215...d917f2` | ⚠️ Unaudited |
| PayloadIGP124 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28806b...6de3d8` | ⚠️ Unaudited |
| PayloadIGP125 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0aeb5...829d77` | ⚠️ Unaudited |
| PayloadIGP126 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x987cb3...2a4f32` | ⚠️ Unaudited |
| PayloadIGP127 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9823c...d25458` | ⚠️ Unaudited |
| PayloadIGP128 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43a5e7...bb4e63` | ⚠️ Unaudited |
| PayloadIGP129 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21d8f1...f2b30e` | ⚠️ Unaudited |
| PayloadIGP13 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee2551...8693a9` | ⚠️ Unaudited |
| PayloadIGP130 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd054f...8e0e89` | ⚠️ Unaudited |
| PayloadIGP131 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd55583...b5f743` | ⚠️ Unaudited |
| PayloadIGP132 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x079145...c8c960` | ⚠️ Unaudited |
| PayloadIGP133 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac4fb1...883757` | ⚠️ Unaudited |
| PayloadIGP134 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcca061...c9f7d3` | ⚠️ Unaudited |
| PayloadIGP135 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf909b...f17d11` | ⚠️ Unaudited |
| PayloadIGP14 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c5f9e...560ae8` | ⚠️ Unaudited |
| PayloadIGP15 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43b57c...7df982` | ⚠️ Unaudited |
| PayloadIGP16 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47483e...edc15c` | ⚠️ Unaudited |
| PayloadIGP17 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd6781...88022d` | ⚠️ Unaudited |
| PayloadIGP18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cbe01...91d408` | ⚠️ Unaudited |
| PayloadIGP19 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23cf32...dded71` | ⚠️ Unaudited |
| PayloadIGP20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6bcc3...881889` | ⚠️ Unaudited |
| PayloadIGP21 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6f441...83635d` | ⚠️ Unaudited |
| PayloadIGP22 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93554b...14eb69` | ⚠️ Unaudited |
| PayloadIGP23 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa7f3...11ca9f` | ⚠️ Unaudited |
| PayloadIGP24 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaab305...2cdac8` | ⚠️ Unaudited |
| PayloadIGP25 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba2820...5dd636` | ⚠️ Unaudited |
| PayloadIGP26 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c2b40...4024a1` | ⚠️ Unaudited |
| PayloadIGP27 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa47fd9...8167bc` | ⚠️ Unaudited |
| PayloadIGP28 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x840155...1429a5` | ⚠️ Unaudited |
| PayloadIGP29 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceb709...2e12c9` | ⚠️ Unaudited |
| PayloadIGP30 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b7269...7e8e75` | ⚠️ Unaudited |
| PayloadIGP31 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14fc27...457ab1` | ⚠️ Unaudited |
| PayloadIGP32 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a8d2a...a2e30e` | ⚠️ Unaudited |
| PayloadIGP33 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0a2bd...5acdb3` | ⚠️ Unaudited |
| PayloadIGP34 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x827746...659c00` | ⚠️ Unaudited |
| PayloadIGP35 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea0896...882ce4` | ⚠️ Unaudited |
| PayloadIGP36 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25ee4f...d2e154` | ⚠️ Unaudited |
| PayloadIGP37 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81fe88...cdfe24` | ⚠️ Unaudited |
| PayloadIGP38 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x316423...ef92a3` | ⚠️ Unaudited |
| PayloadIGP39 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c5e1f...f1c6ac` | ⚠️ Unaudited |
| PayloadIGP40 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c571b...e7430b` | ⚠️ Unaudited |
| PayloadIGP41 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe517fb...ef5dd9` | ⚠️ Unaudited |
| PayloadIGP42 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x589cff...0940fc` | ⚠️ Unaudited |
| PayloadIGP43 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0476b7...b73fc0` | ⚠️ Unaudited |
| PayloadIGP44 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62692b...6f49b2` | ⚠️ Unaudited |
| PayloadIGP45 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x748b66...9a8470` | ⚠️ Unaudited |
| PayloadIGP46 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x212e6c...086cdf` | ⚠️ Unaudited |
| PayloadIGP47 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb77ff...952f54` | ⚠️ Unaudited |
| PayloadIGP48 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038642...740b96` | ⚠️ Unaudited |
| PayloadIGP49 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x320882...d23de1` | ⚠️ Unaudited |
| PayloadIGP50 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaf7ad...e691e3` | ⚠️ Unaudited |
| PayloadIGP51 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6ca71...f470e1` | ⚠️ Unaudited |
| PayloadIGP52 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x594743...af36da` | ⚠️ Unaudited |
| PayloadIGP53 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178c23...de2186` | ⚠️ Unaudited |
| PayloadIGP54 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90a962...28b50e` | ⚠️ Unaudited |
| PayloadIGP55 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd05f...782990` | ⚠️ Unaudited |
| PayloadIGP56 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31110c...a07018` | ⚠️ Unaudited |
| PayloadIGP57 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc65006...0c5225` | ⚠️ Unaudited |
| PayloadIGP58 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92019a...f5d65b` | ⚠️ Unaudited |
| PayloadIGP59 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ff7b1...1b57e3` | ⚠️ Unaudited |
| PayloadIGP60 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8cbe...006460` | ⚠️ Unaudited |
| PayloadIGP61 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53a7cc...740606` | ⚠️ Unaudited |
| PayloadIGP62 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd79b0...074355` | ⚠️ Unaudited |
| PayloadIGP63 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47b4a6...bc28bb` | ⚠️ Unaudited |
| PayloadIGP64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf472c6...1e6959` | ⚠️ Unaudited |
| PayloadIGP65 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ee1f5...ed3a7f` | ⚠️ Unaudited |
| PayloadIGP66 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2cd2a...d0b195` | ⚠️ Unaudited |
| PayloadIGP67 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x563620...579d8c` | ⚠️ Unaudited |
| PayloadIGP68 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c174...55afc7` | ⚠️ Unaudited |
| PayloadIGP69 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3290b7...5df948` | ⚠️ Unaudited |
| PayloadIGP7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d148...ac04b3` | ⚠️ Unaudited |
| PayloadIGP70 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xada8b7...233508` | ⚠️ Unaudited |
| PayloadIGP71 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f1dc0...a2a9fc` | ⚠️ Unaudited |
| PayloadIGP72 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f633e...e4d943` | ⚠️ Unaudited |
| PayloadIGP73 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b366b...3979ad` | ⚠️ Unaudited |
| PayloadIGP74 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd39ccf...dc0669` | ⚠️ Unaudited |
| PayloadIGP75 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33253a...5f60b9` | ⚠️ Unaudited |
| PayloadIGP76 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64c37...adf842` | ⚠️ Unaudited |
| PayloadIGP77 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52ce81...7d819d` | ⚠️ Unaudited |
| PayloadIGP78 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d3c9...874820` | ⚠️ Unaudited |
| PayloadIGP79 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f7045...656d6a` | ⚠️ Unaudited |
| PayloadIGP8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15640e...87eaea` | ⚠️ Unaudited |
| PayloadIGP80 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3100...6ee35b` | ⚠️ Unaudited |
| PayloadIGP81 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x256a1c...788beb` | ⚠️ Unaudited |
| PayloadIGP82 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c59b4...1f48e7` | ⚠️ Unaudited |
| PayloadIGP83 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x396e10...6d3254` | ⚠️ Unaudited |
| PayloadIGP84 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ffdc5...3c4da6` | ⚠️ Unaudited |
| PayloadIGP85 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e0684...ebf189` | ⚠️ Unaudited |
| PayloadIGP86 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a889c...6a7732` | ⚠️ Unaudited |
| PayloadIGP87 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0856f1...44e8b7` | ⚠️ Unaudited |
| PayloadIGP88 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54e819...dc6310` | ⚠️ Unaudited |
| PayloadIGP89 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4356...42695a` | ⚠️ Unaudited |
| PayloadIGP9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdca36a...2a6cdd` | ⚠️ Unaudited |
| PayloadIGP90 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd60efb...067953` | ⚠️ Unaudited |
| PayloadIGP91 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6195c2...73ab48` | ⚠️ Unaudited |
| PayloadIGP92 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee6790...656a06` | ⚠️ Unaudited |
| PayloadIGP93 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd30c16...307d98` | ⚠️ Unaudited |
| PayloadIGP94 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf79ee6...7ad572` | ⚠️ Unaudited |
| PayloadIGP95 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f585a...2db55b` | ⚠️ Unaudited |
| PayloadIGP96 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0eba...dc8015` | ⚠️ Unaudited |
| PayloadIGP97 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef6c6f...ac0609` | ⚠️ Unaudited |
| PayloadIGP98 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb02ce6...97f956` | ⚠️ Unaudited |
| PayloadIGP99 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe90266...07e22d` | ⚠️ Unaudited |
| ReadModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3301a8...0b6435` | ⚠️ Unaudited |
| RebalancerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24855b...092004` | ⚠️ Unaudited |
| RefinanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f885f...ff10b4` | ⚠️ Unaudited |
| SecurityModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0dfec...fa469c` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d7945...374bab` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c4de...91a8f5` | ⚠️ Unaudited |
| TransferAssets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93c4b8...ef13ee` | ⚠️ Unaudited |
| UserModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153ac7...46d48b` | ⚠️ Unaudited |
| VaultDummyImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121be6...a6be5b` | ⚠️ Unaudited |
| VaultResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1951de...41a06f` | ⚠️ Unaudited |
| ZtakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x221c2b...d881f0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://docs.fluid.instadapp.io/audits-and-security.html) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/Peckshield_Fluid_Audit.pdf) | PeckShield | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/Statemind_Fluid_Audit.pdf) | Statemind | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 48 | high |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/Mixbytes_Fluid_Vault_Protocol_Audit.pdf) | MixBytes | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/cantina-audit-dex.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/Mixbytes_Fluid_Dex_Audit.pdf) | MixBytes | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/MixBytes_Fluid_Liquidity_Audit.pdf) | MixBytes | Audit | 2025-12 | fresh | Direct | address | no match | 0 | 0 | 0 | 16 | high |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/Statemind_Fluid_Liquidity_Updates_Audit.pdf) | Statemind | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [/URI ()](https://github.com/mixbytes/audits_public) | MixBytes | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20308] DL audit link — no match: The document is a summary page listing audit reports for Fluid protocol components (Vault, Dex, Liquidity Layer) but does not provide specific contract names, file paths, or scope details. No individual contracts are named.
- [20309] See here — no match: Extracted contract names from findings targets and referenced contracts. Audit date from cover page and table.
- [20310] See here — no match: Extracted contract names from the 'Project Scope' section listing files and from findings that explicitly mention contract names as audited targets. The audit date is the end date of the timeline '30-10-2023 - 29-12-2023'.
- [20311] See here — no match: Extracted contract names from scope table and project overview. Audit date from cover page.
- [20312] See here — no match: No explicit scope section or contract listing found. The report mentions 'instadapp-fluid' and 'Fluid DEX' but does not list specific contract names or files in scope.
- [20313] See here — no match: Scope table lists 14 Solidity files. Deployments table lists deployed instances of colOperations, debtOperations, perfectOperationsAndSwapOut for multiple pools, but those are deployments, not separate contracts in scope. The audit date is from the cover page.
- [20314] See here — no match: Extracted 16 contract/library names from the scope table. Audit date from cover page: DECEMBER 10, 2025.
- [20315] See here — no match: Scope section lists 15 files (some duplicates due to same name in different directories). Audit date from timeline: 14-10-2025.
- [20323] /URI () — no match: The provided text is a GitHub repository listing of audit reports, not an actual audit report. No specific contracts in scope or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| See here | VaultAdmin | unmatched — not counted | — | Target in finding PVE-001 | no |
| See here | ChainlinkOracleImpl | unmatched — not counted | — | Target in finding PVE-002 | no |
| See here | LiquidityCalcs | unmatched — not counted | — | Target in finding PVE-003 | no |
| See here | VaultT1 | unmatched — not counted | — | Target in findings PVE-004, PVE-009, PVE-010, PVE-011, PVE-012 | no |
| See here | AuthModule | unmatched — not counted | — | Target in finding PVE-005 | no |
| See here | iTokenCore | unmatched — not counted | — | Target in finding PVE-006 | no |
| See here | iTokenEIP2612Deposits | unmatched — not counted | — | Target in finding PVE-007 | no |
| See here | VaultT1Factory | unmatched — not counted | — | Target in finding PVE-008 | no |
| See here | ERC721 | unmatched — not counted | — | Referenced in finding PVE-008 as internal contract | no |
| See here | GovernanceModule | unmatched — not counted | — | Referenced in finding PVE-013 as example of privileged operations | no |
| See here | uniV3TWAP3Chainlink1Oracle | unmatched — not counted | — | listed in scope | no |
| See here | errorTypes | unmatched — not counted | — | listed in scope | no |
| See here | wstETHChainlink2HopOracle | unmatched — not counted | — | listed in scope | no |
| See here | chainlink3HopOracle | unmatched — not counted | — | listed in scope | no |
| See here | fluidOracle | unmatched — not counted | — | listed in scope | no |
| See here | wstETHOracle | unmatched — not counted | — | listed in scope | no |
| See here | chainlink2HopOracle | unmatched — not counted | — | listed in scope | no |
| See here | chainlink1HopOracle | unmatched — not counted | — | listed in scope | no |
| See here | error | unmatched — not counted | — | listed in scope | no |
| See here | chainlink3HopOracleImpl | unmatched — not counted | — | listed in scope | no |
| See here | wstETHOracleImpl | unmatched — not counted | — | listed in scope | no |
| See here | chainlink2HopOracleImpl | unmatched — not counted | — | listed in scope | no |
| See here | uniV3OracleImpl | unmatched — not counted | — | listed in scope | no |
| See here | chainlinkOracleImpl | unmatched — not counted | — | listed in scope | no |
| See here | TickMath | unmatched — not counted | — | listed in scope | no |
| See here | FullMath | unmatched — not counted | — | listed in scope | no |
| See here | storageRead | unmatched — not counted | — | listed in scope | no |
| See here | liquiditySlotsLink | unmatched — not counted | — | listed in scope | no |
| See here | liquidityCalcs | unmatched — not counted | — | listed in scope | no |
| See here | bigMath | unmatched — not counted | — | listed in scope | no |
| See here | events | unmatched — not counted | — | listed in scope | no |
| See here | proxy | unmatched — not counted | — | listed in scope | no |
| See here | main | unmatched — not counted | — | listed in scope | no |
| See here | constantVariables | unmatched — not counted | — | listed in scope | no |
| See here | helpers | unmatched — not counted | — | listed in scope | no |
| See here | IVault | unmatched — not counted | — | listed in scope | no |
| See here | variables | unmatched — not counted | — | listed in scope | no |
| See here | lendingRewardsRateModel | unmatched — not counted | — | listed in scope | no |
| See here | iTokenNativeUnderlying | unmatched — not counted | — | listed in scope | no |
| See here | iTokenEIP2612Deposits | unmatched — not counted | — | listed in scope | no |
| See here | iTokenPermit2Deposits | unmatched — not counted | — | listed in scope | no |
| See here | lendingFactory | unmatched — not counted | — | listed in scope | no |
| See here | vaultFactory | unmatched — not counted | — | mentioned in finding INFORMATIONAL-30 | no |
| See here | IVaultFactory | unmatched — not counted | — | listed in scope | no |
| See here | vaultT1Logic | unmatched — not counted | — | listed in scope | no |
| See here | ERC721 | unmatched — not counted | — | listed in scope | no |
| See here | structs | unmatched — not counted | — | listed in scope | no |
| See here | dummyImpl | unmatched — not counted | — | listed in scope | no |
| See here | BigMathVault | unmatched — not counted | — | mentioned in finding CRITICAL-02 | no |
| See here | LendingRewardRateModel | unmatched — not counted | — | mentioned in finding CRITICAL-01 | no |
| See here | StETHQueue | unmatched — not counted | — | mentioned in findings HIGH-07, MEDIUM-12, MEDIUM-13, INFORMATIONAL-32 | no |
| See here | UniV3CheckFallbackCLRSOracle | unmatched — not counted | — | mentioned in finding HIGH-08 | no |
| See here | AdminModule | unmatched — not counted | — | mentioned in findings HIGH-03, INFORMATIONAL-13, INFORMATIONAL-14 | no |
| See here | UserModule | unmatched — not counted | — | mentioned in findings HIGH-03, MEDIUM-03 | no |
| See here | GovernanceModule | unmatched — not counted | — | mentioned in finding INFORMATIONAL-03 | no |
| See here | Liquidity | unmatched — not counted | — | mentioned in findings HIGH-03, HIGH-04, HIGH-07, MEDIUM-05, INFORMATIONAL-18, INFORMATIONAL-20 | no |
| See here | Vault | unmatched — not counted | — | mentioned in findings INFORMATIONAL-28, INFORMATIONAL-37 | no |
| See here | iToken | unmatched — not counted | — | mentioned in findings HIGH-05, MEDIUM-05, MEDIUM-06, MEDIUM-07, MEDIUM-08, INFORMATIONAL-22, INFORMATIONAL-23 | no |
| See here | FluidVaultT1 | unmatched — not counted | — | Listed in scope table and findings | no |
| See here | VaultT1 | unmatched — not counted | — | Mentioned as core component in project overview | no |
| See here | VaultT1AdminModule | unmatched — not counted | — | Listed in scope table | no |
| See here | FluidVaultT1Secondary | unmatched — not counted | — | Mentioned in project overview | no |
| See here | VaultFactory | unmatched — not counted | — | Mentioned in project overview | no |
| See here | Liquidity | unmatched — not counted | — | Mentioned as central contract in project overview and findings | no |
| See here | variables.sol | unmatched — not counted | — | listed in scope table | no |
| See here | constantVariables.sol | unmatched — not counted | — | listed in scope table | no |
| See here | userHelpers.sol | unmatched — not counted | — | listed in scope table | no |
| See here | coreHelpers.sol | unmatched — not counted | — | listed in scope table | no |
| See here | secondaryHelpers.sol | unmatched — not counted | — | listed in scope table | no |
| See here | events.sol | unmatched — not counted | — | listed in scope table | no |
| See here | immutableVariables.sol | unmatched — not counted | — | listed in scope table | no |
| See here | interfaces.sol | unmatched — not counted | — | listed in scope table | no |
| See here | structs.sol | unmatched — not counted | — | listed in scope table | no |
| See here | perfectOperationsAndSwapOut.sol | unmatched — not counted | — | listed in scope table | no |
| See here | shift.sol | unmatched — not counted | — | listed in scope table | no |
| See here | main.sol | unmatched — not counted | — | listed in scope table | no |
| See here | colOperations.sol | unmatched — not counted | — | listed in scope table | no |
| See here | debtOperations.sol | unmatched — not counted | — | listed in scope table | no |
| See here | bigMathMinified | unmatched — not counted | — | listed in scope table | no |
| See here | liquidityCalcs | unmatched — not counted | — | listed in scope table | no |
| See here | liquiditySlotsLink | unmatched — not counted | — | listed in scope table | no |
| See here | safeTransfer | unmatched — not counted | — | listed in scope table | no |
| See here | main (adminModule) | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See here | structs (adminModule) | unmatched — not counted | — | listed in scope table | no |
| See here | events (adminModule) | unmatched — not counted | — | listed in scope table | no |
| See here | variables (common) | unmatched — not counted | — | listed in scope table | no |
| See here | helpers (common) | unmatched — not counted | — | listed in scope table | no |
| See here | main (userModule) | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See here | events (userModule) | unmatched — not counted | — | listed in scope table | no |
| See here | errorTypes | unmatched — not counted | — | listed in scope table | no |
| See here | proxy | unmatched — not counted | — | listed in scope table | no |
| See here | dummyImpl | unmatched — not counted | — | listed in scope table | no |
| See here | error | unmatched — not counted | — | listed in scope table | no |
| See here | iLiquidity | unmatched — not counted | — | listed in scope table | no |
| See here | bigMathMinified | unmatched — not counted | — | listed in scope | no |
| See here | liquidityCalcs | unmatched — not counted | — | listed in scope | no |
| See here | liquiditySlotsLink | unmatched — not counted | — | listed in scope | no |
| See here | safeTransfer | unmatched — not counted | — | listed in scope | no |
| See here | main | unmatched — not counted | — | listed in scope (two occurrences) | no |
| See here | variables | unmatched — not counted | — | listed in scope | no |
| See here | structs | unmatched — not counted | — | listed in scope | no |
| See here | errorTypes | unmatched — not counted | — | listed in scope | no |
| See here | dummyImpl | unmatched — not counted | — | listed in scope | no |
| See here | helpers | unmatched — not counted | — | listed in scope | no |
| See here | events | unmatched — not counted | — | listed in scope (two occurrences) | no |
| See here | proxy | unmatched — not counted | — | listed in scope | no |
| See here | error | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xa0b869...06eb48` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x273da9...c29012` | FluidLiteVaultProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 260 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 107 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=3
- Match method counts: n/a

Zero-match audit list:

- [20308] DL audit link
- [20309] See here
- [20310] See here
- [20311] See here
- [20312] See here
- [20313] See here
- [20314] See here
- [20315] See here
- [20323] /URI ()

Fork inheritance lineage and inherited audits are included when available.
