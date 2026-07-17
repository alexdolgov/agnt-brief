# Agentic Audit Brief: Cooler Loans

## Export Authority

- Production state: **published scope**
- Raw selected rows: 20 across 7 audit(s)
- Eligible audit results: 9 (7 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Cooler Loans (`cooler-loans`)
- Website: [https://app.olympusdao.finance/#/lending/cooler](https://app.olympusdao.finance/#/lending/cooler)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, boba, ethereum, fantom, goerli, optimism, polygon, sepolia
- Contract surface: 337 unique implementations (337 raw deployments)
- Coverage basis: 12/75 confirmed own live verified implementations (16.0%); conservative 16.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $440,168,046.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cooler Loans. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 86 contract row(s) across arbitrum, avalanche, base, berachain, boba, ethereum, fantom, goerli, optimism, polygon, sepolia. Structural roles: 74 core, 11 supporting, 1 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 86
- Structural roles: core (74), supporting (11), infra (1)
- Contract kinds: contract (86)
- Detected standards: erc165 (12), erc20 (7), erc20permit (5), erc1967proxy (2), ownable (2), accesscontrol (1), erc721 (1)
- Frameworks: openzeppelin (47), solmate (29), foundry (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

5 of 153 contracts are derived from known codebases. 148 contracts have no detected origin.

### Forked Contracts

**AuraAllocator** (`0x872ebdd8129aa328c89f6bf032bbd77a4c4bac7e`, chain 1)
Origin: cooler-loans (`0x061c8610a784b8a1599de5b1157631e35180d818`)
Containment: 82.4% - 14 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- addBPT(address,address,uint96,IERC20[])
- toggleShouldLock()

Removals (removed from original):
- fDataAdd(fData)
- fusePoolAdd(address)
- setRewards(address)

**BtrflyAllocator** (`0xc8431feb345b46c30a4576c1b5faf080fdc54e2f`, chain 1)
Origin: cooler-loans (`0x47d8d05f05f4ccb5ac48a5d90906d57b040e655c`)
Containment: 87.5% - 14 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- callRebase()

Removals (removed from original):
- sendETH(address)
- sendToken(address,address)

**LUSDAllocatorV2R** (`0x47d8d05f05f4ccb5ac48a5d90906d57b040e655c`, chain 1)
Origin: cooler-loans (`0x872ebdd8129aa328c89f6bf032bbd77a4c4bac7e`)
Containment: 87.5% - 14 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- sendETH(address)
- sendToken(address,address)

Removals (removed from original):
- addBPT(address,address,uint96,IERC20[])
- toggleShouldLock()

**OlympusBondDepository** (`0x10c0f93f64e3c8d0a1b0f4b87d6155fd9e89d08d`, chain 1)
Origin: pendle (`0x0daf1a9c474a8ea595b5bdafe0b142bf894a1e09`)
Containment: 88.9% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- initializeBondTerms(uint256,uint256,uint256,uint256,uint256,uint256,uint256)

Removals (removed from original):
- initializeBondTerms(uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256)
- setOLYMPUSTreasury(address)

**OlympusBondDepositoryV2** (`0x9025046c6fb25fb39e720d97a8fd881ed69a1ef6`, chain 1)
Origin: hectagon (`0x9ae390630eb2e60999e5065267b02f477beeebcf`)
Containment: 76.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- setAuthority(IOlympusAuthority)
- setRewards(uint256,uint256)
- whitelist(address)

Removals (removed from original):
- setAuthority(IHectagonAuthority)
- setDaoRewards(uint256,uint256)
- setPartnerTerm(address,uint256,uint256)
- setPartnerTermCap(uint256)
- setReferTerm(address,uint256,uint256)
- setReferTermCap(uint256)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x04f2694c8fcee23e8fd0dfea1d4f5bb8c352111f`, chain 1)
- UnnamedContract (`0x1c21f8ea7e39e2ba00bc12d2968d63f4acb38b7a`, chain 1)
- UnnamedContract (`0x2286d7f9639e8158fad1169e76d1fbc38247f54b`, chain 1)
- UnnamedContract (`0x245cc372c84b3645bf0ffe6538620b04a217988b`, chain 1)
- UnnamedContract (`0x30a967eb957e5b1ee053b75f1a57ea6bfb2e907e`, chain 1)
- UnnamedContract (`0x34d7d7aaf50ad4944b70b320acb24c95fa2def7c`, chain 1)
- UnnamedContract (`0x383518188c0c6d7730d91b2c03a03c837814a899`, chain 1)
- UnnamedContract (`0x45e563c39cddba8699a90078f42353a57509543a`, chain 1)
- UnnamedContract (`0x5206d13f625320cb73ccd222518ee0edb801f78b`, chain 1)
- UnnamedContract (`0x575409f8d77c12b05fed8b455815f0e54797381c`, chain 1)
- UnnamedContract (`0x5824850d8a6e46a473445a5af214c7ebd46c5ecb`, chain 1)
- UnnamedContract (`0x623164a9ee2556d524b08f34f1d2389d7b4e1a1c`, chain 1)
- UnnamedContract (`0x6417f206a0a6628da136c0faa39026d0134d2b52`, chain 1)
- UnnamedContract (`0x64aa3364f17a4d01c6f1751fd97c2bd3d7e7f1d5`, chain 1)
- UnnamedContract (`0x6cafd730dc199df73c16420c4fcab18e3afbfa59`, chain 1)
- UnnamedContract (`0x73df08ce9dcc8d74d22f23282c4d49f13b4c795e`, chain 1)
- UnnamedContract (`0x767e3459a35419122e5f6274fb1223d75881e0a9`, chain 1)
- UnnamedContract (`0x8510c8c2b6891e04864fa196693d44e6b6ec2514`, chain 1)
- UnnamedContract (`0x877caf628ea1f799b742909cf767c971e2a4d700`, chain 1)
- UnnamedContract (`0x956c43998316b6a2f21f89a1539f73fb5b78c151`, chain 1)
- UnnamedContract (`0x97b3ef4c558ec456d59cb95c65bfb79046e31fca`, chain 1)
- UnnamedContract (`0x9a315bdf513367c0377fb36545857d12e85813ef`, chain 1)
- UnnamedContract (`0xa6013bbfd70d6190fa1cc1afd0cb3859847711b4`, chain 1)
- UnnamedContract (`0xa61b846d5d8b757e3d541e0e4f80390e28f0b6ff`, chain 1)
- UnnamedContract (`0xa8687a15d4be32cc8f0a8a7b9704a4c3993d9613`, chain 1)
- UnnamedContract (`0xa8a6ff2606b24f61afa986381d8991dfcccd2d55`, chain 1)
- UnnamedContract (`0xa90bfe53217da78d900749eb6ef513ee5b6a491e`, chain 1)
- UnnamedContract (`0xb216d714d91eec4f7120a732c11428857c659ec8`, chain 1)
- UnnamedContract (`0xb63cac384247597756545b500253ff8e607a8020`, chain 1)
- UnnamedContract (`0xb6c9dc843dec44aa305217c2bbc58b44438b6e16`, chain 1)
- UnnamedContract (`0xc20cfff07076858a7e642e396180ec390e5a02f7`, chain 1)
- UnnamedContract (`0xc58e923bf8a00e4361fe3f4275226a543d7d3ce6`, chain 1)
- UnnamedContract (`0xc60a6656e08b62dd2644dc703d7855301363cc38`, chain 1)
- UnnamedContract (`0xc8c436271f9a6f10a5b80c8b8ed7d0e8f37a612d`, chain 1)
- UnnamedContract (`0xc9518ac915e46d707585116451dc19c164513ccf`, chain 1)
- UnnamedContract (`0xd6c4d723fdadcf0d171ef9a2a3bfa870675b282f`, chain 1)
- UnnamedContract (`0xdbf0683fc4fc8ac11e64a6817d3285ec4f2fc42d`, chain 1)
- UnnamedContract (`0xde3e735d37a8498ad2f141f603a6d0f976a6f772`, chain 1)
- UnnamedContract (`0xe6295201cd1ff13ced5f063a5421c39a1d236f1c`, chain 1)
- UnnamedContract (`0xeeeb97a127a342656191e0313df33d58d06b2e05`, chain 1)
- UnnamedContract (`0xf6d5d06a4e8e6904e4360108749c177692f59e90`, chain 1)
- UnnamedContract (`0xfb1776299e7804dd8016303df9c07a65c80f67b6`, chain 1)
- UnnamedContract (`0xfd31c7d00ca47653c6ce64af53c1571f9c36566a`, chain 1)
- UnnamedContract (`0x13dfeff85779118136bb9826dcad8f3bd25153a3`, chain 10)
- UnnamedContract (`0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0`, chain 10)
- UnnamedContract (`0x559a14a2219ae81f9a9f857cf31407de2b07f36c`, chain 10)
- UnnamedContract (`0xb1fa0ac44d399b778b14af0aaf4bcf8af3437ad1`, chain 10)
- UnnamedContract (`0xbc9ee0d911739cbc72cd094ada26f56e0c49eeae`, chain 10)
- UnnamedContract (`0xd8ca34fd379d9ca3c6ee3b3905678320f5b45195`, chain 137)
- UnnamedContract (`0xe06efa3d9ee6923240ee1195a16ddd96b5cce8f7`, chain 137)
- UnnamedContract (`0x2bc001ffeb862d843e0a02a7163c7d4828e5fb10`, chain 250)
- UnnamedContract (`0x91fa20244fb509e8289ca630e5db3e9166233fdc`, chain 250)
- UnnamedContract (`0xd22c0a4af486c7fa08e282e9eb5f30f9aaa62c95`, chain 288)
- UnnamedContract (`0x060cb087a9730e13aa191f31a6d86bff8dfcdcc0`, chain 8453)
- UnnamedContract (`0x13dfeff85779118136bb9826dcad8f3bd25153a3`, chain 8453)
- UnnamedContract (`0x18878df23e2a36f81e820e4b47b4a40576d3159c`, chain 8453)
- UnnamedContract (`0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0`, chain 8453)
- UnnamedContract (`0x623164a9ee2556d524b08f34f1d2389d7b4e1a1c`, chain 8453)
- UnnamedContract (`0x6ca1a916e883c7ce2bfbcf59dc70f2c1ef9dac6e`, chain 8453)
- UnnamedContract (`0xb1fa0ac44d399b778b14af0aaf4bcf8af3437ad1`, chain 8453)
- UnnamedContract (`0xbc9ee0d911739cbc72cd094ada26f56e0c49eeae`, chain 8453)
- UnnamedContract (`0x56db53e9801a6ea080569261b63925e0f1f3c81a`, chain 42161)
- UnnamedContract (`0x78f84998c73655ac2da0aa1e1270f6cb985a343e`, chain 42161)
- UnnamedContract (`0x8d9ba570d6cb60c7e3e0f31343efe75ab8e65fb1`, chain 42161)
- UnnamedContract (`0x8f6406edbfa393e327822d4a08bcf15503570d87`, chain 42161)
- UnnamedContract (`0xeac3ec0cc130f4826715187805d1b50e861f2dac`, chain 42161)
- UnnamedContract (`0xf0cb2dc0db5e6c66b9a70ac27b06b878da017028`, chain 42161)
- UnnamedContract (`0xff5f09d5efe13a9a424f30ec2e1af89d867834d6`, chain 42161)
- UnnamedContract (`0x321e7092a180bb43555132ec53aaa65a5bf84251`, chain 43114)
- UnnamedContract (`0x8cd309e14575203535ef120b5b0ab4dded0c2073`, chain 43114)
- UnnamedContract (`0x0d33c811d0fcc711bcb388dfb3a152de445be66f`, chain 80094)
- UnnamedContract (`0x18878df23e2a36f81e820e4b47b4a40576d3159c`, chain 80094)
- UnnamedContract (`0x623164a9ee2556d524b08f34f1d2389d7b4e1a1c`, chain 80094)
- UnnamedContract (`0xa5ea62894027d981d34bb99a04bd36b818b2aaf0`, chain 80094)
- UnnamedContract (`0xb1fa0ac44d399b778b14af0aaf4bcf8af3437ad1`, chain 80094)
- UnnamedContract (`0xba42be149e5260eba4b82418a6306f55d532ea47`, chain 80094)
- UnnamedContract (`0xbc9ee0d911739cbc72cd094ada26f56e0c49eeae`, chain 80094)
- UnnamedContract (`0xe37d9a2791707bbb858012d219960d5fbd190794`, chain 80094)
- AaveAllocator (`0x0e1177e47151be72e5992e0975000e73ab5fd9d4`, chain 1)
- AaveAllocatorV2 (`0x0d33c811d0fcc711bcb388dfb3a152de445be66f`, chain 1)
- AlchemixAllocatorV2 (`0x51563d61f8a5869b24eddfb2705308bae539bf56`, chain 1)
- AuraAllocatorV2 (`0x8caf91a6bb38d55fb530dec0fab535fa78d98fad`, chain 1)
- BalancerLiquidityMigrator (`0xa9b52a2d0ffdbabdb2cb23ebb7cd879cac6618a6`, chain 1)
- BondFixedTermTeller (`0x007f7735baf391e207e3aa380bb53c4bd9a5fed6`, chain 1)
- BondManager (`0xf577c77ee3578c7f216327f41b5d7221ead2b2a3`, chain 1)
- Burner (`0x9f08c2603e919a46d6d98289c9ada5250b310558`, chain 1)
- CCIPCrossChainBridge (`0xfbf6383dc3f6010d403ecdf12ddc1311701d143d`, chain 1)
- CDAuctioneerLimitOrders (`0x7d8f82a0d5b67d5fdd1b77a899ff517818fafc2e`, chain 1)
- ConvertibleDepositAuctioneer (`0xf35193da8c10e44af10853ba5a3a1a6f7529e39a`, chain 1)
- ConvertibleDepositFacility (`0xebde552d851dd6dfd3d360c596d3f4af6e5f9678`, chain 1)
- ConvexAllocator (`0x3df5a355457db3a4b5c744b8623a7721bf56df78`, chain 1)
- CoolerComposites (`0x6593768febf9c95ac857fb7ef244d5738d1c57fd`, chain 1)
- CoolerFactory (`0x30ce56e80aa96ebba1e1a74bc5c0feb5b0db4216`, chain 1)
- CoolerLtvOracle (`0x9ee9f0c2e91e4f6b195b988a9e6e19efcf91e8dc`, chain 1)
- CoolerTreasuryBorrower (`0xd58d7406e9ce34c90cf849fc3eed3764eb3779b0`, chain 1)
- CoolerV2Migrator (`0xe045bd0a0d85e980aa152064c06eae6b6ae358d2`, chain 1)
- CrossChainBridge (`0x20b3834091f038ce04d8686fac99ca44a0fb285c`, chain 42161)
- CVXAllocatorV2 (`0x2d643df5de4e9ba063760d475beaa62821c71681`, chain 1)
- DepositManager (`0xcb4e21eb404d80f3e1db781aad9ad6a1217fbbf2`, chain 1)
- DepositRedemptionVault (`0x20a3d8510f2e1176e8db4cea9883a8287a9029db`, chain 1)
- Distributor (`0x27e606fdb5c922f8213dc588a434bf7583697866`, chain 1)
- DSRAllocator (`0x0ea26319836ff05b8c5c5afd83b8ab17dd46d063`, chain 1)
- Emergency (`0x9229b0b6fa4a58d67eb465567daa2c6a34714a75`, chain 1)
- ETHBondDeposits (`0x2b0fbb411d355979005ab4f003d99d4aadf33639`, chain 1)
- FraxSharesAllocatorVoting (`0xde7b85f52577b113181921a7aa8fc0c22e309475`, chain 1)
- FraxswapPair (`0x38633ed142bcc8128b45ab04a2e4a6e53774699f`, chain 1)
- FxsAllocatorV2 (`0x0f953d861347414698f34b75dbfd6e7df1a73493`, chain 1)
- GnosisSafeL2 (`0x012bbf0481b97170577745d2167ee14f63e2ad4c`, chain 42161)
- GnosisSafeProxy (`0x91494d1bc2286343d51c55e46ae80c9356d099b5`, chain 80094)
- gOHM (`0x0ab87046fbb341d058f17cbc4c1133f25a20a52f`, chain 1)
- GovernorBravoDelegate (`0x0941233c964e7d7efeb05d253176e5e634ceffcd`, chain 1)
- Kernel (`0x18878df23e2a36f81e820e4b47b4a40576d3159c`, chain 10)
- LiquidityMigrator (`0x13dfeff85779118136bb9826dcad8f3bd25153a3`, chain 1)
- LockReleaseTokenPool (`0xa5588e518ce5ee0e4628c005e4edabd5e87de3ad`, chain 1)
- LUSDAllocator (`0x67bae867b62fed0d1ca5f5f059d9a170e7007180`, chain 1)
- LUSDAllocatorV2 (`0x2c1700f38c38c32595cfef3d6b0b275bc2d2a578`, chain 1)
- MetaGovernanceAllocator (`0x41afc1cd7d944cc38dba0afb31d5c6f83602d58c`, chain 1)
- MigrationRebalancer (`0x77b19adf335143d954cd5f59a01879fa532c404e`, chain 1)
- MonoCooler (`0xdb591ea2e5db886da872654d58f6cc584b68e7cc`, chain 1)
- MultiSigWalletWithDailyLimit (`0xd1f617fdc0e2e7af49f7250f163095e76f8e4b32`, chain 43114)
- OhmBondManager (`0x73d7e4bddecad7379d679e60f22788e501493896`, chain 1)
- OlympusAuthority (`0x060cb087a9730e13aa191f31a6d86bff8dfcdcc0`, chain 80094)
- OlympusBoostedLiquidityRegistry (`0x375e06c694b5e50af8be8fb03495a612ea3e2275`, chain 1)
- OlympusCvxHolder (`0xdfc95aaf0a107daae2b350458ded4b7906e7f728`, chain 1)
- OlympusDepositPositionManager (`0x02331a4c97a4841084df54d7c0ec04dd3f1a9f1c`, chain 1)
- OlympusERC20Token (`0x060cb087a9730e13aa191f31a6d86bff8dfcdcc0`, chain 10)
- OlympusGovDelegation (`0xd3204ae00d6599ba6e182c6d640a79d76cdaad74`, chain 1)
- OlympusLender (`0x868c3ae18fdea85bbb7a303e379c5b7e23b30f03`, chain 42161)
- OlympusMinter (`0x623164a9ee2556d524b08f34f1d2389d7b4e1a1c`, chain 10)
- OlympusProMarketCreator (`0xb1fa0ac44d399b778b14af0aaf4bcf8af3437ad1`, chain 1)
- OlympusProV2 (`0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0`, chain 1)
- OlympusRange (`0x399cd3685912bb56aaed0949119db6ce5df60fb5`, chain 1)
- OlympusRoles (`0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0`, chain 80094)
- OlympusTokenMigrator (`0x184f3fad8618a6f458c16bae63f70c426fe784b3`, chain 1)
- OlympusTreasury (`0x31f8cc382c9898b273eff4e0b7626a6987c846e8`, chain 1)
- RariFuseAllocator (`0x061c8610a784b8a1599de5b1157631e35180d818`, chain 1)
- ReceiptTokenManager (`0xd98b5b2e4d5d6cd554115de19efb7a9084beddd1`, chain 1)
- RolesAdmin (`0x69168c08acf66f002fd02e1b169f38c022c93b70`, chain 42161)
- sOlympus (`0x04906695d6d12cf5459975d7c3c03356e4ccd460`, chain 1)
- StakingWarmup (`0x2882a5cd82ac49e06620382660f5ed932607c5f1`, chain 1)
- SynapseERC20 (`0x0b5740c6b4a97f90ef2f0220651cca420b868ffb`, chain 10)
- Timelock (`0x953ea3223d2dd3c1a91e9d6cca1bf7af162c9c39`, chain 1)
- TreasuryExtender (`0xb32ad041f23eafd682f57fce31d3ea4fd92d17af`, chain 1)
- UniswapV2Pair (`0x2dce0dda1c2f98e0f171de8333c3c6fe1bbf4877`, chain 1)
- V1Migrator (`0x5131654efcd63f7b797e00118792e0d0dd90b8b0`, chain 1)
- wOHM (`0xca76543cf381ebbb277be79574059e32108e3e65`, chain 1)
- YieldDirector (`0x2604170762a1dd22bb4f96c963043cd4fc358f18`, chain 1)
- YieldRepurchaseFacility (`0x271e35a8555a62f6ba76508e85dfd76d580b0692`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 86; live-surface rows included: 86 (75 live, 11 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 153/251 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 12/75 (16.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 153 own, 95 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 89 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 153 of 337 unique; 184 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 12/175
- Verified + Unaudited implementations: 163
- Verified by bytecode match: 0
- Unverified implementations: 162
- Unique implementations: 337
- Raw deployments: 337
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 12 match-unverified
- Tier 1 coverage: 1.3% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| KebabSec | Tier 2 | 4 | 2.3% | 2022-11 |
| unknown | Tier 2 | 4 | 2.3% | 2025-04 |
| Electisec | Tier 2 | 2 | 1.1% | 2025-03 |
| Sherlock | Tier 1 | 1 | 0.6% | 2023-09 |
| Zac Obron | Tier 2 | 1 | 0.6% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CoolerComposites | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382499 | `0x6593768febf9c95ac857fb7ef244d5738d1c57fd` | ✅ Audited |
| CoolerFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382469 | `0x30ce56e80aa96ebba1e1a74bc5c0feb5b0db4216` | ✅ Audited |
| CoolerLtvOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382535 | `0x9ee9f0c2e91e4f6b195b988a9e6e19efcf91e8dc` | ✅ Audited |
| CoolerTreasuryBorrower | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382563 | `0xd58d7406e9ce34c90cf849fc3eed3764eb3779b0` | ✅ Audited |
| CoolerV2Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382573 | `0xe045bd0a0d85e980aa152064c06eae6b6ae358d2` | ✅ Audited |
| Distributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382462 | `0x27e606fdb5c922f8213dc588a434bf7583697866` | ✅ Audited |
| Emergency | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382523 | `0x9229b0b6fa4a58d67eb465567daa2c6a34714a75` | ✅ Audited |
| MonoCooler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382569 | `0xdb591ea2e5db886da872654d58f6cc584b68e7cc` | ✅ Audited |
| OlympusGovDelegation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382562 | `0xd3204ae00d6599ba6e182c6d640a79d76cdaad74` | ✅ Audited |
| OlympusLender | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382630 | `0x868c3ae18fdea85bbb7a303e379c5b7e23b30f03` | ✅ Audited |
| OlympusMinter | unknown | project_anchor | own_supporting | 0 | optimism | unit-382593 | `0x623164a9ee2556d524b08f34f1d2389d7b4e1a1c` | ✅ Audited |
| OlympusTreasury | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382470 | `0x31f8cc382c9898b273eff4e0b7626a6987c846e8` | ✅ Audited |

### ⚠️ Verified + Unaudited (163)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382446 | `0x0e1177e47151be72e5992e0975000e73ab5fd9d4` | ⚠️ Unaudited |
| AaveAllocatorV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382445 | `0x0d33c811d0fcc711bcb388dfb3a152de445be66f` | ⚠️ Unaudited |
| AlchemixAllocatorV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382487 | `0x51563d61f8a5869b24eddfb2705308bae539bf56` | ⚠️ Unaudited |
| AlphaOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ecfd535675f36ba1ab9c5d39b50dc097b0792e` | ⚠️ Unaudited |
| AltExercisepOLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x053449023313a67b0ea179ae2c4acd65afdaa729` | ⚠️ Unaudited |
| AnycallExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70d6b3cfaabd6c0eb6b99b80c6540fa754a72c40` | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x739ca6d71365a08f584c8fc4e1029045fa8abc4b` | ⚠️ Unaudited |
| aOHMMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906d7af3412e8f3cd9320629ebbd865c05ad8fd2` | ⚠️ Unaudited |
| AuraAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382516 | `0x872ebdd8129aa328c89f6bf032bbd77a4c4bac7e` | ⚠️ Unaudited |
| AuraAllocatorV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382519 | `0x8caf91a6bb38d55fb530dec0fab535fa78d98fad` | ⚠️ Unaudited |
| BackingRefill | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc448b27aea1a825354c3296fcb2af598aea09d8c` | ⚠️ Unaudited |
| BalancerLiquidityMigrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382546 | `0xa9b52a2d0ffdbabdb2cb23ebb7cd879cac6618a6` | ⚠️ Unaudited |
| BalancerStrategy | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382483 | `0x48bdc486c9df31848c62fdc85c5c77d4be013cdc` | ⚠️ Unaudited |
| BLVaultLido | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-382708 | `0xafe729d57d2cc58978c2e01b4ec39c47fb7c4b23` | ⚠️ Unaudited |
| BLVaultLusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bc4d4bd9a5dea5974c52ba2b8ca061eea9655db` | ⚠️ Unaudited |
| BLVaultManagerLusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x263828a42b1692f1b8efaf5ec6750cb7bb207bc9` | ⚠️ Unaudited |
| BondCallback | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382481 | `0x473f86ebfa7ab57c4c82c3592d6147104996c19b` | ⚠️ Unaudited |
| BondFixedTermTeller | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382436 | `0x007f7735baf391e207e3aa380bb53c4bd9a5fed6` | ⚠️ Unaudited |
| BondManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382581 | `0xf577c77ee3578c7f216327f41b5d7221ead2b2a3` | ⚠️ Unaudited |
| BtrflyAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382557 | `0xc8431feb345b46c30a4576c1b5faf080fdc54e2f` | ⚠️ Unaudited |
| BunniHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2519d8a47fa10c6ba062e7156cc391bcdaa300` | ⚠️ Unaudited |
| Burner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382538 | `0x9f08c2603e919a46d6d98289c9ada5250b310558` | ⚠️ Unaudited |
| CCIPCrossChainBridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382585 | `0xfbf6383dc3f6010d403ecdf12ddc1311701d143d` | ⚠️ Unaudited |
| CDAuctioneerLimitOrders | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382511 | `0x7d8f82a0d5b67d5fdd1b77a899ff517818fafc2e` | ⚠️ Unaudited |
| ClaimTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4778228ef5ef7c96e1106e38b1c0ce7252d4e203` | ⚠️ Unaudited |
| Clearinghouse | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382455 | `0x1e094fe00e13fd06d64eea4fb3cd912893606fe0` | ⚠️ Unaudited |
| ContractRegistryAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba05d48fb94dc76820eb7ea1b360fd6dfdeabdc5` | ⚠️ Unaudited |
| ConvertibleDepositActivator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5261fba7b50aa22b19b9edf939b771d109de991f` | ⚠️ Unaudited |
| ConvertibleDepositAuctioneer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382580 | `0xf35193da8c10e44af10853ba5a3a1a6f7529e39a` | ⚠️ Unaudited |
| ConvertibleDepositFacility | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382578 | `0xebde552d851dd6dfd3d360c596d3f4af6e5f9678` | ⚠️ Unaudited |
| ConvexAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382478 | `0x3df5a355457db3a4b5c744b8623a7721bf56df78` | ⚠️ Unaudited |
| CoolerMonitoring | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa00f4b7c57a4995796d6e2ae4a6d5dec8a557367` | ⚠️ Unaudited |
| CoolerUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3704da6b3e73e1c9ad4e2dd0ac1aedcc62df5264` | ⚠️ Unaudited |
| CrossChainBridge | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382626 | `0x20b3834091f038ce04d8686fac99ca44a0fb285c` | ⚠️ Unaudited |
| CurveStrategy | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382484 | `0x4b152ccb613ee248df9bb98195bc505665d6c4b2` | ⚠️ Unaudited |
| CustomBANKBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9df6a7fa0109839f38879620457ba7cc39e6771` | ⚠️ Unaudited |
| CVXAllocatorV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382466 | `0x2d643df5de4e9ba063760d475beaa62821c71681` | ⚠️ Unaudited |
| CvxCrvStakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3150141daff8c34b674ea3f925e3cd7d6eedcf52` | ⚠️ Unaudited |
| DelegateEscrowFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc84157c2306238c9330fea14774a82a53a127a59` | ⚠️ Unaudited |
| DepositManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382561 | `0xcb4e21eb404d80f3e1db781aad9ad6a1217fbbf2` | ⚠️ Unaudited |
| DepositRedemptionVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382456 | `0x20a3d8510f2e1176e8db4cea9883a8287a9029db` | ⚠️ Unaudited |
| DSRAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382447 | `0x0ea26319836ff05b8c5c5afd83b8ab17dd46d063` | ⚠️ Unaudited |
| EmissionManager | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382485 | `0x50f441a3387625bda8b8081ce3fd6c04cc48c0a2` | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3129662808bec728a27ab6a6b9afd3cbaca8a43c` | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4643d976e9b32dc26a316c5b5c75d7c57db0df5a` | ⚠️ Unaudited |
| ERC4626Price | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d23a83c9bec7ac6acea3760bc2eeca9186f3037` | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12e994e89c92b03df6c15fb8340f624aec1d8f3e` | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17e2e3d4a27e8e0790c85ff2ec13d001e749e49e` | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x869ec639a622a1bbdaf44d3b1fe0cc2b210d4964` | ⚠️ Unaudited |
| ETHBondDeposits | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382464 | `0x2b0fbb411d355979005ab4f003d99d4aadf33639` | ⚠️ Unaudited |
| ExercisepOLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06843e4b350a04f6722b792e2cd49f570dc50315` | ⚠️ Unaudited |
| FactoryPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ac03bf434db503f6f5f85c3954773731fc3f056` | ⚠️ Unaudited |
| FantomAnimals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cb1967b36c318510cc06ab901b428a166bb6dda` | ⚠️ Unaudited |
| FraxSharesAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55eae7195b14f38e46a686bba70b87f4c4c7123b` | ⚠️ Unaudited |
| FraxSharesAllocatorVoting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382707 | `0xde7b85f52577b113181921a7aa8fc0c22e309475` | ⚠️ Unaudited |
| FraxswapPair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382474 | `0x38633ed142bcc8128b45ab04a2e4a6e53774699f` | ⚠️ Unaudited |
| FxsAllocatorV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382448 | `0x0f953d861347414698f34b75dbfd6e7df1a73493` | ⚠️ Unaudited |
| GeneralizedTokemak | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0483de8c11ee2f0538a29f0c294246677cbc92f5` | ⚠️ Unaudited |
| GnosisSafe | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-382709 | `0x0cf30dc0d48604a301df8010cdc028c055336b2e` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-382711 | `0x012bbf0481b97170577745d2167ee14f63e2ad4c` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 0 | berachain | unit-382693 | `0x91494d1bc2286343d51c55e46ae80c9356d099b5` | ⚠️ Unaudited |
| gOHM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382443 | `0x0ab87046fbb341d058f17cbc4c1133f25a20a52f` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382710 | `0x0941233c964e7d7efeb05d253176e5e634ceffcd` | ⚠️ Unaudited |
| Incrementer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eddacf2c184a302ff17682a7e48a0e47550015d` | ⚠️ Unaudited |
| IncurDebt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x544f54c5f38d6d6b96331f7e75cb202b5ea72eca` | ⚠️ Unaudited |
| Kernel | unknown | project_anchor | own_supporting | 0 | optimism | unit-382590 | `0x18878df23e2a36f81e820e4b47b4a40576d3159c` | ⚠️ Unaudited |
| LegacyBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x367149cf2d04d3114ffd1cc6b273222664908d0b` | ⚠️ Unaudited |
| LiquidityMigrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382450 | `0x13dfeff85779118136bb9826dcad8f3bd25153a3` | ⚠️ Unaudited |
| LoanConsolidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x784ca0c006b8651bab183829a99fa46bece50dbc` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382540 | `0xa5588e518ce5ee0e4628c005e4edabd5e87de3ad` | ⚠️ Unaudited |
| LPLeverageLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26063b1f8dd844c07039f3bd172493d9fcfbdbbd` | ⚠️ Unaudited |
| LUSDAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382500 | `0x67bae867b62fed0d1ca5f5f059d9a170e7007180` | ⚠️ Unaudited |
| LUSDAllocatorV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382465 | `0x2c1700f38c38c32595cfef3d6b0b275bc2d2a578` | ⚠️ Unaudited |
| LUSDAllocatorV2R | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382482 | `0x47d8d05f05f4ccb5ac48a5d90906d57b040e655c` | ⚠️ Unaudited |
| LZBridgeActivator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f8cc53ac14dda2f9aebfccb6cc3a4426bff4af7` | ⚠️ Unaudited |
| LZBridgeAndDelegateConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x946b739a26a8e7f035b27b075eb0ce8a54bf2f12` | ⚠️ Unaudited |
| LZBridgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23ddfccdd5c573b9fd7fc0fcd70b687a0d0c5f23` | ⚠️ Unaudited |
| LZCrossChainBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ad85d2f5efc076bb321dca425e67cf2e6829330` | ⚠️ Unaudited |
| LZEndpointDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb218eb347218031b2b9d17a19b040bd3509efac0` | ⚠️ Unaudited |
| MetaGovernanceAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382479 | `0x41afc1cd7d944cc38dba0afb31d5c6f83602d58c` | ⚠️ Unaudited |
| MigrationProposalHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62633b567ed4fc4078db75a5cb4b896b3d44a5d4` | ⚠️ Unaudited |
| MigrationRebalancer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382510 | `0x77b19adf335143d954cd5f59a01879fa532c404e` | ⚠️ Unaudited |
| MimirToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30879a856a022a92d80a329d6ad4ce22c194a478` | ⚠️ Unaudited |
| MockTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb682fc2af3a1791081ac4efb60176c0a0c8ed20` | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x90d5f3aa862f87598011e6ef511e4e8ed2f5f095` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | project_anchor | own_supporting | 0 | avalanche | unit-382641 | `0xd1f617fdc0e2e7af49f7250f163095e76f8e4b32` | ⚠️ Unaudited |
| NFTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fbbc7dba1ef75ff43f955a5b9ceec3cc1692cd8` | ⚠️ Unaudited |
| NullValueCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d1c9b9bfda66226e4ff3b6bf8f565baeb26254f` | ⚠️ Unaudited |
| OhmBondManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382504 | `0x73d7e4bddecad7379d679e60f22788e501493896` | ⚠️ Unaudited |
| OHMCirculatingSupplyConrtact | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0efff9199aa1ac3c3e34e957567c1be8bf295034` | ⚠️ Unaudited |
| OHMPreSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e762067f824e9db190ad3565e3bf8cde314d893` | ⚠️ Unaudited |
| OHMPrincipleDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ee5c2865d6dff605e527b13c336f0b8774815b9` | ⚠️ Unaudited |
| OlympusAuthority | unknown | project_anchor | own_supporting | 0 | berachain | unit-382688 | `0x060cb087a9730e13aa191f31a6d86bff8dfcdcc0` | ⚠️ Unaudited |
| OlympusBondDepository | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382449 | `0x10c0f93f64e3c8d0a1b0f4b87d6155fd9e89d08d` | ⚠️ Unaudited |
| OlympusBondDepositoryV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382521 | `0x9025046c6fb25fb39e720d97a8fd881ed69a1ef6` | ⚠️ Unaudited |
| OlympusBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a617fe9163c1499b9d2773fb2d0105a2368bedc` | ⚠️ Unaudited |
| OlympusBoostedLiquidityRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382472 | `0x375e06c694b5e50af8be8fb03495a612ea3e2275` | ⚠️ Unaudited |
| OlympusClearinghouseRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24b96f2150bf1ed10d3e8b28ed33e392fbb4cad5` | ⚠️ Unaudited |
| OlympusContractRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89631595649cc6deba249a8012a5b2d88c8dde48` | ⚠️ Unaudited |
| OlympusCVXBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6754c69fe02178f54ada19ebf1c5569826021920` | ⚠️ Unaudited |
| OlympusCvxHolder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382572 | `0xdfc95aaf0a107daae2b350458ded4b7906e7f728` | ⚠️ Unaudited |
| OlympusDAIDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64ed1b66cb2838ef2a198d8345c0ce6967a2a3c` | ⚠️ Unaudited |
| OlympusDepositPositionManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382437 | `0x02331a4c97a4841084df54d7c0ec04dd3f1a9f1c` | ⚠️ Unaudited |
| OlympusDistributorContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce6568338708400d03f430d29f2eb40a33a3f4c4` | ⚠️ Unaudited |
| OlympusERC20Token | unknown | project_anchor | own_supporting | 0 | optimism | unit-382587 | `0x060cb087a9730e13aa191f31a6d86bff8dfcdcc0` | ⚠️ Unaudited |
| OlympusHeart | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382451 | `0x1652b503e0f1cf38b6246ed3b91cb3786bb11656` | ⚠️ Unaudited |
| OlympusLPRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39baa524eab3f5c9d0738bdf781c3ec9c8d34867` | ⚠️ Unaudited |
| OlympusLPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf11f0f078bfaf05a28eac345bb84fcb2a3722223` | ⚠️ Unaudited |
| OlympusPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ded6a8b099c57bbeb9f81b76400a5a9c63a6880` | ⚠️ Unaudited |
| OlympusPriceConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3019ff96bd8308d1b66846b795e0aeefbdf14ba5` | ⚠️ Unaudited |
| OlympusPricev1_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x465ccc69d285415bce199f855d3a68ea3537f8fe` | ⚠️ Unaudited |
| OlympusProInverseBondCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba42be149e5260eba4b82418a6306f55d532ea47` | ⚠️ Unaudited |
| OlympusProMarketCreator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382547 | `0xb1fa0ac44d399b778b14af0aaf4bcf8af3437ad1` | ⚠️ Unaudited |
| OlympusProV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382458 | `0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0` | ⚠️ Unaudited |
| OlympusRange | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382475 | `0x399cd3685912bb56aaed0949119db6ce5df60fb5` | ⚠️ Unaudited |
| OlympusRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ce62b196ea521c88d6cf884283cb0372f4a6cd1` | ⚠️ Unaudited |
| OlympusRoles | unknown | project_anchor | own_supporting | 0 | berachain | unit-382691 | `0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0` | ⚠️ Unaudited |
| OlympusSalesLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27446629dcf58834640b38464a50ecf742218116` | ⚠️ Unaudited |
| OlympusStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0822f3c03dcc24d200aff33493dc08d0e1f274a2` | ⚠️ Unaudited |
| OlympusStakingDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe731507810c8747c3e01e62c676b1ca6f93242f` | ⚠️ Unaudited |
| OlympusTokenMigrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382452 | `0x184f3fad8618a6f458c16bae63f70c426fe784b3` | ⚠️ Unaudited |
| OlympusV1BondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99e9b0a9dc965361c2cbc07525ea591761aeaa53` | ⚠️ Unaudited |
| OnsenAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0316508a1b5abf1cae42912dc2c8b9774b682ffc` | ⚠️ Unaudited |
| Operator | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382438 | `0x0374c001204ef5e7e4f5362a5a2430cb6c219326` | ⚠️ Unaudited |
| OTCEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3312c3f1ab30878d9686452f7205ebe11e965eb` | ⚠️ Unaudited |
| OwnedERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d94b3745b0ecf908b3b467907b947b43fba5f15` | ⚠️ Unaudited |
| pOLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb37796941ca55b7e4243841930c104ee325da5a1` | ⚠️ Unaudited |
| PositionTokenRenderer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c859dc91db65bd7375660341231227336daa134` | ⚠️ Unaudited |
| PreOlympusSales | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c6229d5f39ae5c53db75806002f380db73715ba` | ⚠️ Unaudited |
| PreOlympusToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36994486c6e97c170065899d8659a28d7371c800` | ⚠️ Unaudited |
| PriceConfigv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c69f61d384e41b55699c3b10523ed81c5ef9cbd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x419fa2e21092d834e3b02bd0802dee329c84268a` | ⚠️ Unaudited |
| RaribleUserToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b2c7666f64d266ca9a0f7302d7f22f4db06ddd4` | ⚠️ Unaudited |
| RariFuseAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382441 | `0x061c8610a784b8a1599de5b1157631e35180d818` | ⚠️ Unaudited |
| ReceiptTokenManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382567 | `0xd98b5b2e4d5d6cd554115de19efb7a9084beddd1` | ⚠️ Unaudited |
| RedeemHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1e83825613de12e8f0502da939523558f0b819e` | ⚠️ Unaudited |
| ReserveMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x986b99579bec7b990331474b66ccdb94fa2419f5` | ⚠️ Unaudited |
| ReserveWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca6cd4f0a0033f8c20cf68d6df277e7001a386f9` | ⚠️ Unaudited |
| RewardMasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x123706cdd8e60324e610e9a2cc7012d0f45a5b8e` | ⚠️ Unaudited |
| RolesAdmin | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382628 | `0x69168c08acf66f002fd02e1b169f38c022c93b70` | ⚠️ Unaudited |
| SiloAMO | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-382633 | `0xa8578c9a73c2b4f75968ec76d6689045ff68b97c` | ⚠️ Unaudited |
| SimplePriceFeedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b00cbc78fd9d43e5cddd86099b9394c4cef95d` | ⚠️ Unaudited |
| Skimmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82f0b8b456c1a451378467398982d4834b6829c1` | ⚠️ Unaudited |
| sOlympus | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382439 | `0x04906695d6d12cf5459975d7c3c03356e4ccd460` | ⚠️ Unaudited |
| StakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa55ce3e25bd4cb6c5375aa393335b708db790915` | ⚠️ Unaudited |
| StakingWarmup | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382463 | `0x2882a5cd82ac49e06620382660f5ed932607c5f1` | ⚠️ Unaudited |
| SynapseERC20 | unknown | project_anchor | own_supporting | 0 | optimism | unit-382588 | `0x0b5740c6b4a97f90ef2f0220651cca420b868ffb` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382525 | `0x953ea3223d2dd3c1a91e9d6cca1bf7af162c9c39` | ⚠️ Unaudited |
| TreasuryConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09236b98144602df2d0d675183595c6442cec2d2` | ⚠️ Unaudited |
| TreasuryExtender | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382549 | `0xb32ad041f23eafd682f57fce31d3ea4fd92d17af` | ⚠️ Unaudited |
| UniSwapStrategy | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382442 | `0x0692bdcaa767dc62c420b7893a1045e657771324` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382467 | `0x2dce0dda1c2f98e0f171de8333c3c6fe1bbf4877` | ⚠️ Unaudited |
| V1Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382486 | `0x5131654efcd63f7b797e00118792e0d0dd90b8b0` | ⚠️ Unaudited |
| ValueRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7fc5670b2041d34414b0b2178fc660b1e1faf801` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886ce997aa9ee4f8c2282e182ab72a705762399d` | ⚠️ Unaudited |
| wOHM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382560 | `0xca76543cf381ebbb277be79574059e32108e3e65` | ⚠️ Unaudited |
| wsOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x583043074788bec7c5b2bcb555bb926483d57d4f` | ⚠️ Unaudited |
| wsOHMStakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e0333d812a26df611dbc28e4e18703513f17939` | ⚠️ Unaudited |
| XrpSwapAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb288d60d3b66f9c3e231a9a39ed3f158a4269aa` | ⚠️ Unaudited |
| YieldDirector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382460 | `0x2604170762a1dd22bb4f96c963043cd4fc358f18` | ⚠️ Unaudited |
| YieldFUBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa38da9cc8797501d9235be00a9e9972bcf2b3f95` | ⚠️ Unaudited |
| YieldRepurchaseFacility | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382461 | `0x271e35a8555a62f6ba76508e85dfd76d580b0692` | ⚠️ Unaudited |
| ZeroDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ef13f5b6818f7746e0a1c70cc27fa2da0441695` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (162)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382440 | `0x04f2694c8fcee23e8fd0dfea1d4f5bb8c352111f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382444 | `0x0ae561226896da978eada0bec4a7d3cfae04f506` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382453 | `0x1c21f8ea7e39e2ba00bc12d2968d63f4acb38b7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382454 | `0x1ce568dbb34b2631acdb5b453c3195ea0070ec65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382457 | `0x2286d7f9639e8158fad1169e76d1fbc38247f54b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382459 | `0x245cc372c84b3645bf0ffe6538620b04a217988b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382468 | `0x30a967eb957e5b1ee053b75f1a57ea6bfb2e907e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382471 | `0x34d7d7aaf50ad4944b70b320acb24c95fa2def7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382473 | `0x383518188c0c6d7730d91b2c03a03c837814a899` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382476 | `0x39d1984051759830f0c0ae979b4aed776cf481e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382477 | `0x39f6aa3d445e6dd8ec232c6bd589889a88e3034d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382480 | `0x45e563c39cddba8699a90078f42353a57509543a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382488 | `0x5206d13f625320cb73ccd222518ee0edb801f78b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382490 | `0x575409f8d77c12b05fed8b455815f0e54797381c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382491 | `0x5824850d8a6e46a473445a5af214c7ebd46c5ecb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382493 | `0x623164a9ee2556d524b08f34f1d2389d7b4e1a1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382495 | `0x6417f206a0a6628da136c0faa39026d0134d2b52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382497 | `0x64aa3364f17a4d01c6f1751fd97c2bd3d7e7f1d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382502 | `0x6cafd730dc199df73c16420c4fcab18e3afbfa59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382506 | `0x73df08ce9dcc8d74d22f23282c4d49f13b4c795e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382508 | `0x767e3459a35419122e5f6274fb1223d75881e0a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382514 | `0x8510c8c2b6891e04864fa196693d44e6b6ec2514` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382518 | `0x877caf628ea1f799b742909cf767c971e2a4d700` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382527 | `0x956c43998316b6a2f21f89a1539f73fb5b78c151` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382529 | `0x97b3ef4c558ec456d59cb95c65bfb79046e31fca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382531 | `0x9a315bdf513367c0377fb36545857d12e85813ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382533 | `0x9c6220fe829d6fc889cde9b4966d2033c4effd48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382541 | `0xa6013bbfd70d6190fa1cc1afd0cb3859847711b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382542 | `0xa61b846d5d8b757e3d541e0e4f80390e28f0b6ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382543 | `0xa8687a15d4be32cc8f0a8a7b9704a4c3993d9613` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382544 | `0xa8a6ff2606b24f61afa986381d8991dfcccd2d55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382545 | `0xa90bfe53217da78d900749eb6ef513ee5b6a491e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382548 | `0xb216d714d91eec4f7120a732c11428857c659ec8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382550 | `0xb63cac384247597756545b500253ff8e607a8020` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382551 | `0xb6c9dc843dec44aa305217c2bbc58b44438b6e16` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382552 | `0xbb47c3fff4ef85703907d3ffca30de278b85df3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382553 | `0xbf2b6e99b0e8d4c96b946c182132f5752eaa55c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382554 | `0xc20cfff07076858a7e642e396180ec390e5a02f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382555 | `0xc58e923bf8a00e4361fe3f4275226a543d7d3ce6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382556 | `0xc60a6656e08b62dd2644dc703d7855301363cc38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382558 | `0xc8c436271f9a6f10a5b80c8b8ed7d0e8f37a612d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382559 | `0xc9518ac915e46d707585116451dc19c164513ccf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382564 | `0xd5a0ae3bf7309416e70cb14399bdd508fe82c658` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382565 | `0xd6a6e8d9e82534bd65821142fccd91ec9cf31880` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382566 | `0xd6c4d723fdadcf0d171ef9a2a3bfa870675b282f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382568 | `0xd9d87586774fb9d036fa95a5991474513ff6c96e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382570 | `0xdbf0683fc4fc8ac11e64a6817d3285ec4f2fc42d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382571 | `0xde3e735d37a8498ad2f141f603a6d0f976a6f772` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382574 | `0xe05646971ec444f8449d1ca6fc8d9793986017d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382575 | `0xe6295201cd1ff13ced5f063a5421c39a1d236f1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382576 | `0xe6343ad0675c9b8d3f32679ae6adba0766a2ab4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382577 | `0xeaf46bd21dd9b263f28eed7260a269ffba9ace6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382579 | `0xeeeb97a127a342656191e0313df33d58d06b2e05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382582 | `0xf6d5d06a4e8e6904e4360108749c177692f59e90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382583 | `0xf7602c0421c283a2fc113172ebdf64c30f21654d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382584 | `0xfb1776299e7804dd8016303df9c07a65c80f67b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382586 | `0xfd31c7d00ca47653c6ce64af53c1571f9c36566a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382642 | `0x007a66a2a13415db3613c1a4dd1c942a285902d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382643 | `0x007f7735baf391e207e3aa380bb53c4bd9a5fed6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382644 | `0x007f7a1cb838a872515c8ebd16be4b14ef43a222` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382645 | `0x022710a589c9796dce59a0c52ca4e36f0a5e991a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382646 | `0x0595328847af962f951a4f8f8ee9a3bf261e4f6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | goerli | unit-382647 | `0x075441d52ff9aedcbe9177d70895c0ad4775a50e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382648 | `0x0bb7509324ce409f7bbc4b701f932eaca9736ab7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382649 | `0x0c9d01fbd07cc2fd3e09bd953bb65698351af05d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382650 | `0x0ca928e9e75be317e8c83fbd8397adcfa06b4853` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382651 | `0x15915be9d272b353ba06fa5ce3918ae7d27f5463` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382652 | `0x196a59fb453da942f062be4407d923129c759435` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382653 | `0x1e5a6834a71770067fccbaeddbc86b6d8dfdcb27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382654 | `0x24963bea5a156e3dab8aba4fcb8a2dbe8c1aaa14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382655 | `0x2716a1451bde2b011f0d10ad6599e411d54ec491` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382656 | `0x2b954551307fb929df8bb96657db69fb4d72617c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | goerli | unit-382657 | `0x3b6edde642e9c1f541e2fa88a2e28f28fabac9da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382658 | `0x3dae418f8b6382b3d3d0cb9008924ba83d2e0e87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382659 | `0x3dc18017cf8d8f4219db7a8b93315fec2d15b8a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382660 | `0x41e38e70a36150d08a8c97aec194321b5eb545a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382661 | `0x4a8c9502a34962a2c6d73c5d181daaef3dcdc88d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382662 | `0x4efe119f4949319f2acb12efd615a7b63896482b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382663 | `0x54ffca586cd1b01e96a5682df93a55d7ef91eff0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | goerli | unit-382664 | `0x5c9352d333f4d9ea1fdbf374d8d392e1843d0e34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | goerli | unit-382665 | `0x61b79d10ebc48166f7495fce5e0c352b61777460` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382666 | `0x6620592f9bdffabadcea644a35946e7b93eaaf56` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382667 | `0x6982ccd55f95a7469746c123f73d54377f382454` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382668 | `0x704e104713dd874fc1c2493f2d98ff164ebdf735` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382669 | `0x7263372b9ff6e619d8774aeb046ce313677e2ec7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382670 | `0x776142abb0e274734a95da2a4749b52eb4e896f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382671 | `0x84c0c005cf574d0e5c602ea7b366ae9c707381e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382672 | `0x8786b19dfe251459a1177beb484cf3fc44d58e3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382673 | `0xa192ffbf73858831a137dd098a706139ca96abd5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382674 | `0xa247156a39169c0faff979f57361cc734e82e3d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382675 | `0xada3336fcd233ff0eb39bea0b1a7784e43ad4b00` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382676 | `0xb3e1df7951a62ffb5ef7d3b1c9d80cf09325580a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382677 | `0xbef6550c92bb68bd16cf1dc81f0ca8a55f678eaa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | goerli | unit-382678 | `0xbfe14b5950a530a5ce572cd2fac6d44c718a3c47` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | goerli | unit-382679 | `0xc1545804fb804fdc7756e8e40c91b7581b2a2856` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382680 | `0xc1863141dc1861122d5410fb5973951c82871d98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382681 | `0xd652bab0741abb568e4849a654c66e11a7613283` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382682 | `0xd8833594420db3d6589c1098dbdd073f52419dba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382683 | `0xd8c59cfe5afbdb83d904e56d379028a2f6a07a2d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382684 | `0xdb7cf68154bd422df5196d90285cea057786b4c3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382685 | `0xdc8e4ed326cfb730a759312b6b1727c6ef9ca233` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382686 | `0xe9a9d80ce3ee32fff7279dce4c2962ec8098f71b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382687 | `0xff88b47af188d91ac05ff5e843b5f6863472edd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382589 | `0x13dfeff85779118136bb9826dcad8f3bd25153a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382591 | `0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382592 | `0x559a14a2219ae81f9a9f857cf31407de2b07f36c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382594 | `0xb1fa0ac44d399b778b14af0aaf4bcf8af3437ad1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382595 | `0xbc9ee0d911739cbc72cd094ada26f56e0c49eeae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382620 | `0xd8ca34fd379d9ca3c6ee3b3905678320f5b45195` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382621 | `0xe06efa3d9ee6923240ee1195a16ddd96b5cce8f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-382622 | `0x2bc001ffeb862d843e0a02a7163c7d4828e5fb10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-382623 | `0x91fa20244fb509e8289ca630e5db3e9166233fdc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-382624 | `0xd22c0a4af486c7fa08e282e9eb5f30f9aaa62c95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382699 | `0x060cb087a9730e13aa191f31a6d86bff8dfcdcc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382700 | `0x13dfeff85779118136bb9826dcad8f3bd25153a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382701 | `0x18878df23e2a36f81e820e4b47b4a40576d3159c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382702 | `0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382703 | `0x623164a9ee2556d524b08f34f1d2389d7b4e1a1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382704 | `0x6ca1a916e883c7ce2bfbcf59dc70f2c1ef9dac6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382705 | `0xb1fa0ac44d399b778b14af0aaf4bcf8af3437ad1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382706 | `0xbc9ee0d911739cbc72cd094ada26f56e0c49eeae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382627 | `0x56db53e9801a6ea080569261b63925e0f1f3c81a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382629 | `0x78f84998c73655ac2da0aa1e1270f6cb985a343e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382631 | `0x8d9ba570d6cb60c7e3e0f31343efe75ab8e65fb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382632 | `0x8f6406edbfa393e327822d4a08bcf15503570d87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382634 | `0xeac3ec0cc130f4826715187805d1b50e861f2dac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382636 | `0xf0cb2dc0db5e6c66b9a70ac27b06b878da017028` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382637 | `0xff5f09d5efe13a9a424f30ec2e1af89d867834d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-382638 | `0x321e7092a180bb43555132ec53aaa65a5bf84251` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-382639 | `0x8cd309e14575203535ef120b5b0ab4dded0c2073` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382689 | `0x0d33c811d0fcc711bcb388dfb3a152de445be66f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382690 | `0x18878df23e2a36f81e820e4b47b4a40576d3159c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382692 | `0x623164a9ee2556d524b08f34f1d2389d7b4e1a1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382694 | `0xa5ea62894027d981d34bb99a04bd36b818b2aaf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382695 | `0xb1fa0ac44d399b778b14af0aaf4bcf8af3437ad1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382696 | `0xba42be149e5260eba4b82418a6306f55d532ea47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382697 | `0xbc9ee0d911739cbc72cd094ada26f56e0c49eeae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382698 | `0xe37d9a2791707bbb858012d219960d5fbd190794` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382596 | `0x0be69702e83f06a027e6841b614f6946d1265441` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382597 | `0x19b787549a05f7a3f8f20ed55b827a6c49baee9c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382598 | `0x1cb7f32ff640fc4a2a161c3d1f1a188a6670787d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382599 | `0x1dc2c4e15189a7aa61eff2b3dd3d5eae8fa03377` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382600 | `0x203c46cbb4fcc18977f521a9f7fde007e1a564f6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382601 | `0x247f1989adc0f63d07b91bf645de879b9de06fbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382602 | `0x2c9658b32e59cc4eb5ac90e2a3795c9e7fcaa644` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382603 | `0x3bd25e292dc36b674bbf1eeecaab4565bf2ef241` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382604 | `0x4b0bba51ce44175a9766f7e55e3d122a9f4be78e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382605 | `0x68009f5e809c5a3438438312f8eefb9f5c73d534` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382606 | `0x74feaede88962139f4d36a2f1998bcf56088d519` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382607 | `0x84785e392bfd02f97a9b84f85d86dec11933ef81` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382608 | `0x93acada86ad23c85e96869d46945fa6ffb7a4036` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382609 | `0x989b93efb6e9d90c2f3632d80ec7c4d1f61d4109` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382610 | `0xb4309cf4f876a2d18561b3fd8eec54899dfeb962` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382611 | `0xc48abd1431f17212379557397dd603912174131e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382612 | `0xd031777082dd0bfbd7027af34fb306c24e6c3d97` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382613 | `0xd5405c517631b15c5814fdb7e612ba4c86fc2f75` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382614 | `0xdb5cb2eba141d9cc4b2d35fbbc4d2b23a88eda52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382615 | `0xedd6ebffed7d29947957d096dd55e82f523ceb86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382616 | `0xef64bab08c3431bbc527b063354b95d1c5b549b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382617 | `0xef928e9ed1083636e34230543d4ad3b6270fa986` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382618 | `0xf33133e5356b9534e794468dacd424d11007f1cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382619 | `0xf8abe1d9502bbcad4576433490d851d03c22a6b4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Link](https://web.archive.org/web/20231210043017/https://hackmd.io/@12og4u7y8i/rk5PeIiEs) | KebabSec | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Link](https://web.archive.org/web/20231210045634/https://hackmd.io/@12og4u7y8i/Sk56otcBs) | KebabSec | Audit | n/a | unknown | Direct | contract_name | matched | 4 | 0 | 0 | 5 | high |
| [Link](https://gist.github.com/zobront/f1eec20c0e566632cf167004bf4076c6) | Zac Obron | Audit | 2023-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [Link](https://docs.olympusdao.finance/assets/files/Cooler_Update_Audit_Report-f3f983a8ee8632637790bcc136275aa0.pdf) | Sherlock | Contest | 2023-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [Manual audit seed](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2024_10_LoanConsolidator_Audit.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Manual audit seed](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-03-09_Cooler_V2-panprog.pdf) | unknown | Audit | 2025-03 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 8 | high |
| [Manual audit seed](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-03-19_Cooler_V2-Electisec.pdf) | unknown | Audit | 2025-03 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 9 | high |
| [Link](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-03-19_Cooler_V2_Migrator-Electisec.pdf) | Electisec | Audit | 2025-03 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 0 | high |
| [Manual audit seed](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-04-04%20Cooler%20V2%20-%20Nethermind.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 12 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24020] Link — no match: The audit explicitly targets Parthenon.sol and VohmVault.sol. OlympusVotes and OlympusInstructions are modules reviewed in findings.
- [24021] Link — matched: All contracts explicitly listed in the introduction as being in scope.
- [24025] Link — matched: Scope explicitly lists three contracts: LENDR.v1.sol, OlympusLender.sol, SiloAMO.sol. Audit date is the end date of the engagement period (June 19 to 23, 2023).
- [24026] Link — matched: Scope section mentions repository and branch; contracts identified from file paths and findings.
- [24031] Manual audit seed — no match: Scope section explicitly lists 8 contracts in a table. Audit date is 4 November 2024 from the title page.
- [24034] Manual audit seed — matched: All 12 files listed in scope section of the audit report.
- [24036] Manual audit seed — matched: All contracts listed in the Scope section of the audit report.
- [24037] Link — matched: Scope explicitly lists two contracts: CoolerComposites.sol and CoolerV2Migrator.sol. Audit date inferred from review period March 7-12, 2025, using end date.
- [24039] Manual audit seed — matched: All 16 contracts from the audited files table are extracted. The audit date is explicitly given as 'Final Report April 4, 2025' on page 2.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Link | Parthenon | unmatched — not counted | — | explicitly stated as target contract | no |
| Link | VohmVault | unmatched — not counted | — | explicitly stated as target contract | no |
| Link | OlympusVotes | unmatched — not counted | — | referenced in findings as VOTES module | no |
| Link | OlympusInstructions | unmatched — not counted | — | referenced in findings as INSTR module | no |
| Link | MINTR.v1.sol | unmatched — not counted | — | listed in scope | no |
| Link | OlympusMinter.sol | own contract | OlympusMinter (selected) `0x623164a9ee2556d524b08f34f1d2389d7b4e1a1c` — deployed 2023-05-15 20:32:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | OlympusTreasury.sol | own contract | OlympusTreasury (selected) `0x31f8cc382c9898b273eff4e0b7626a6987c846e8` — deployed 2021-05-29 00:43:36+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | TRSRY.v1.sol | unmatched — not counted | — | listed in scope | no |
| Link | BondCallback.sol | unmatched — not counted | — | listed in scope | no |
| Link | Distributor.sol | own contract | Distributor (selected) `0x27e606fdb5c922f8213dc588a434bf7583697866` — deployed 2022-11-18 19:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | Emergency.sol | own contract | Emergency (selected) `0x9229b0b6fa4a58d67eb465567daa2c6a34714a75` — deployed 2022-11-18 19:37:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | Operator.sol | unmatched — not counted | — | listed in scope | no |
| Link | TreasuryCustodian.sol | unmatched — not counted | — | listed in scope | no |
| Link | LENDR.v1 | unmatched — not counted | — | listed in scope | no |
| Link | OlympusLender | own contract | OlympusLender (selected) `0x868c3ae18fdea85bbb7a303e379c5b7e23b30f03` — deployed 2023-06-29 21:17:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | SiloAMO | unmatched — not counted | — | listed in scope | no |
| Link | Clearinghouse | unmatched — not counted | — | listed in scope and findings | no |
| Link | Cooler | unmatched — not counted | — | listed in scope and findings | no |
| Link | CoolerFactory | own contract | CoolerFactory (selected) `0x30ce56e80aa96ebba1e1a74bc5c0feb5b0db4216` — deployed 2023-09-28 16:23:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | CoolerCallback | unmatched — not counted | — | referenced in findings | no |
| Manual audit seed | IERC3156FlashBorrower | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | IERC3156FlashLender | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | CHREG.v1 | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | OlympusClearinghouseRegistry | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | RGSTY.v1 | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | OlympusContractRegistry | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | ContractRegistryAdmin | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | LoanConsolidator | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | DelegateEscrow | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | DelegateEscrowFactory | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | CompoundedInterest | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | SafeCast | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | DLGTE.v1 | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | OlympusGovDelegation | own contract | OlympusGovDelegation (selected) `0xd3204ae00d6599ba6e182c6d640a79d76cdaad74` — deployed 2025-05-06 10:16:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | CoolerLtvOracle | own contract | CoolerLtvOracle (selected) `0x9ee9f0c2e91e4f6b195b988a9e6e19efcf91e8dc` — deployed 2025-05-06 10:16:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | CoolerTreasuryBorrower | own contract | CoolerTreasuryBorrower (selected) `0xd58d7406e9ce34c90cf849fc3eed3764eb3779b0` — deployed 2025-05-06 10:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | MonoCooler | own contract | MonoCooler (selected) `0xdb591ea2e5db886da872654d58f6cc584b68e7cc` — deployed 2025-05-06 10:16:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | PolicyAdmin | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | PolicyEnabler | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | RoleDefinitions | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | DelegateEscrow | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | DelegateEscrowFactory | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | CompoundedInterest | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | SafeCast | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | DLGTE.v1 | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | IDLGTE.v1 | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | OlympusGovDelegation | own contract | OlympusGovDelegation (selected) `0xd3204ae00d6599ba6e182c6d640a79d76cdaad74` — deployed 2025-05-06 10:16:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | CoolerLtvOracle | own contract | CoolerLtvOracle (selected) `0x9ee9f0c2e91e4f6b195b988a9e6e19efcf91e8dc` — deployed 2025-05-06 10:16:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | CoolerTreasuryBorrower | own contract | CoolerTreasuryBorrower (selected) `0xd58d7406e9ce34c90cf849fc3eed3764eb3779b0` — deployed 2025-05-06 10:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | MonoCooler | own contract | MonoCooler (selected) `0xdb591ea2e5db886da872654d58f6cc584b68e7cc` — deployed 2025-05-06 10:16:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | PolicyAdmin | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | PolicyEnabler | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | RoleDefinitions | unmatched — not counted | — | listed in scope | no |
| Link | CoolerComposites | own contract | CoolerComposites (selected) `0x6593768febf9c95ac857fb7ef244d5738d1c57fd` — deployed 2025-05-19 10:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | CoolerV2Migrator | own contract | CoolerV2Migrator (selected) `0xe045bd0a0d85e980aa152064c06eae6b6ae358d2` — deployed 2025-05-19 10:22:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | CompoundedInterest | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | SafeCast | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | PolicyEnabler | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | RoleDefinitions | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | PolicyAdmin | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | MonoCooler | own contract | MonoCooler (selected) `0xdb591ea2e5db886da872654d58f6cc584b68e7cc` — deployed 2025-05-06 10:16:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | CoolerTreasuryBorrower | own contract | CoolerTreasuryBorrower (selected) `0xd58d7406e9ce34c90cf849fc3eed3764eb3779b0` — deployed 2025-05-06 10:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | CoolerLtvOracle | own contract | CoolerLtvOracle (selected) `0x9ee9f0c2e91e4f6b195b988a9e6e19efcf91e8dc` — deployed 2025-05-06 10:16:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | ICoolerLtvOracle | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | ICoolerTreasuryBorrower | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | IMonoCooler | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | DelegateEscrow | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | DelegateEscrowFactory | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | IDLGTE | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | OlympusGovDelegation | own contract | OlympusGovDelegation (selected) `0xd3204ae00d6599ba6e182c6d640a79d76cdaad74` — deployed 2025-05-06 10:16:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | DLGTE | unmatched — not counted | — | listed in audited files table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x51563d61f8a5869b24eddfb2705308bae539bf56` | AlchemixAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x872ebdd8129aa328c89f6bf032bbd77a4c4bac7e` | AuraAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8caf91a6bb38d55fb530dec0fab535fa78d98fad` | AuraAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa9b52a2d0ffdbabdb2cb23ebb7cd879cac6618a6` | BalancerLiquidityMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x007f7735baf391e207e3aa380bb53c4bd9a5fed6` | BondFixedTermTeller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf577c77ee3578c7f216327f41b5d7221ead2b2a3` | BondManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc8431feb345b46c30a4576c1b5faf080fdc54e2f` | BtrflyAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9f08c2603e919a46d6d98289c9ada5250b310558` | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfbf6383dc3f6010d403ecdf12ddc1311701d143d` | CCIPCrossChainBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7d8f82a0d5b67d5fdd1b77a899ff517818fafc2e` | CDAuctioneerLimitOrders | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf35193da8c10e44af10853ba5a3a1a6f7529e39a` | ConvertibleDepositAuctioneer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xebde552d851dd6dfd3d360c596d3f4af6e5f9678` | ConvertibleDepositFacility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x20b3834091f038ce04d8686fac99ca44a0fb285c` | CrossChainBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2d643df5de4e9ba063760d475beaa62821c71681` | CVXAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb4e21eb404d80f3e1db781aad9ad6a1217fbbf2` | DepositManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20a3d8510f2e1176e8db4cea9883a8287a9029db` | DepositRedemptionVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ea26319836ff05b8c5c5afd83b8ab17dd46d063` | DSRAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2b0fbb411d355979005ab4f003d99d4aadf33639` | ETHBondDeposits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f953d861347414698f34b75dbfd6e7df1a73493` | FxsAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ab87046fbb341d058f17cbc4c1133f25a20a52f` | gOHM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0941233c964e7d7efeb05d253176e5e634ceffcd` | GovernorBravoDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x18878df23e2a36f81e820e4b47b4a40576d3159c` | Kernel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x13dfeff85779118136bb9826dcad8f3bd25153a3` | LiquidityMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa5588e518ce5ee0e4628c005e4edabd5e87de3ad` | LockReleaseTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x67bae867b62fed0d1ca5f5f059d9a170e7007180` | LUSDAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c1700f38c38c32595cfef3d6b0b275bc2d2a578` | LUSDAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x47d8d05f05f4ccb5ac48a5d90906d57b040e655c` | LUSDAllocatorV2R | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x41afc1cd7d944cc38dba0afb31d5c6f83602d58c` | MetaGovernanceAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x77b19adf335143d954cd5f59a01879fa532c404e` | MigrationRebalancer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xd1f617fdc0e2e7af49f7250f163095e76f8e4b32` | MultiSigWalletWithDailyLimit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x73d7e4bddecad7379d679e60f22788e501493896` | OhmBondManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x060cb087a9730e13aa191f31a6d86bff8dfcdcc0` | OlympusAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x10c0f93f64e3c8d0a1b0f4b87d6155fd9e89d08d` | OlympusBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9025046c6fb25fb39e720d97a8fd881ed69a1ef6` | OlympusBondDepositoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x375e06c694b5e50af8be8fb03495a612ea3e2275` | OlympusBoostedLiquidityRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdfc95aaf0a107daae2b350458ded4b7906e7f728` | OlympusCvxHolder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x02331a4c97a4841084df54d7c0ec04dd3f1a9f1c` | OlympusDepositPositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x060cb087a9730e13aa191f31a6d86bff8dfcdcc0` | OlympusERC20Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb1fa0ac44d399b778b14af0aaf4bcf8af3437ad1` | OlympusProMarketCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0` | OlympusProV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x399cd3685912bb56aaed0949119db6ce5df60fb5` | OlympusRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0` | OlympusRoles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x184f3fad8618a6f458c16bae63f70c426fe784b3` | OlympusTokenMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x061c8610a784b8a1599de5b1157631e35180d818` | RariFuseAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd98b5b2e4d5d6cd554115de19efb7a9084beddd1` | ReceiptTokenManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x69168c08acf66f002fd02e1b169f38c022c93b70` | RolesAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x04906695d6d12cf5459975d7c3c03356e4ccd460` | sOlympus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2882a5cd82ac49e06620382660f5ed932607c5f1` | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0b5740c6b4a97f90ef2f0220651cca420b868ffb` | SynapseERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x953ea3223d2dd3c1a91e9d6cca1bf7af162c9c39` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb32ad041f23eafd682f57fce31d3ea4fd92d17af` | TreasuryExtender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5131654efcd63f7b797e00118792e0d0dd90b8b0` | V1Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xca76543cf381ebbb277be79574059e32108e3e65` | wOHM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2604170762a1dd22bb4f96c963043cd4fc358f18` | YieldDirector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x271e35a8555a62f6ba76508e85dfd76d580b0692` | YieldRepurchaseFacility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 159 |
| upstream | 12 |
| standard_library | 4 |
| needs_review | 162 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 20 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 51 unmatched
- Matched-own operational status: 20 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9
- Match method counts: unique_name=20

Zero-match audit list:

- [24020] Link
- [24031] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
