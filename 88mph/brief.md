# Agentic Audit Brief: 88mph

## Project Overview

- Project: 88mph (`88mph`)
- Website: [https://88mph.app/](https://88mph.app/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:52:57.864Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum, polygon
- Contract surface: 75 unique implementations (75 raw deployments)
- DeFi Llama TVL: $323,863.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 74 project-authored contract(s) across 2 chain(s); 5 ERC20 tokens, 2 ERC721 NFTs, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 8 common project-authored base contract(s) (rescuable, upgradeableproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 75; live-surface contracts included: 75 (74 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 27/69 (39.1%)
- Deployed-live implementations: 74 of 75 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 31/75
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 75
- Raw deployments: 75
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/88mphv3/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 31 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 37.7% (Code4rena, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Defi Safety | Tier 2 | 29 | 38.7% | 2021-08 |
| Trail of Bits | Tier 1 | 28 | 37.3% | 2021-08 |
| PeckShield | Tier 2 | 22 | 29.3% | 2021-05 |
| Code4rena | Tier 1 | 21 | 28.0% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveMarket | unknown | ethereum | n/a | [`0x2d9028e833645858e292d1d7deafdbdcd8555200`](./contracts/ethereum-1/0x2d9028e833645858e292d1d7deafdbdcd8555200/) | ✅ Audited |
| BProtocolMarket | unknown | ethereum | n/a | [`0xd370efe95a51de47661ecccfb4735d43d9584b2f`](./contracts/ethereum-1/0xd370efe95a51de47661ecccfb4735d43d9584b2f/) | ✅ Audited |
| CompoundERC20Market | unknown | ethereum | n/a | [`0x983fd4988f6c6b8044efc6137ee4ab611846c8b8`](./contracts/ethereum-1/0x983fd4988f6c6b8044efc6137ee4ab611846c8b8/) | ✅ Audited |
| CreamERC20Market | unknown | ethereum | n/a | [`0xd753fe070e47899d94747ea00f2b5f7e53a8a83a`](./contracts/ethereum-1/0xd753fe070e47899d94747ea00f2b5f7e53a8a83a/) | ✅ Audited |
| DInterest | unknown | ethereum | n/a | [`0x062214fbe3f15d217512deb14572eb01face0392`](./contracts/ethereum-1/0x062214fbe3f15d217512deb14572eb01face0392/) | ✅ Audited |
| DInterestLens | unknown | ethereum | n/a | [`0x8fea3e2d505aae5af39186dc6e0d5ddba49e751d`](./contracts/ethereum-1/0x8fea3e2d505aae5af39186dc6e0d5ddba49e751d/) | ✅ Audited |
| Dumper | unknown | ethereum | n/a | [`0x1bb67aa336f21cfa5bd328c5930e5202ed35ddeb`](./contracts/ethereum-1/0x1bb67aa336f21cfa5bd328c5930e5202ed35ddeb/) | ✅ Audited |
| EMAOracle | unknown | ethereum | n/a | [`0x0018f8aa6c919e12bdd0dc13bf593d336f44f79c`](./contracts/ethereum-1/0x0018f8aa6c919e12bdd0dc13bf593d336f44f79c/) | ✅ Audited |
| ERC20Wrapper | unknown | ethereum | n/a | [`0x652076b1dd38354918577b5313e859c17406659d`](./contracts/ethereum-1/0x652076b1dd38354918577b5313e859c17406659d/) | ✅ Audited |
| Factory | unknown | ethereum | n/a | [`0x4f9c8ddd27c5440196af3fac23b427dd7fc57d14`](./contracts/ethereum-1/0x4f9c8ddd27c5440196af3fac23b427dd7fc57d14/) | ✅ Audited |
| FractionalDeposit | unknown | ethereum | n/a | [`0x2263655696fc5c5a4ae2bacaed29b88708bcc958`](./contracts/ethereum-1/0x2263655696fc5c5a4ae2bacaed29b88708bcc958/) | ✅ Audited |
| FractionalDepositFactory | unknown | ethereum | n/a | [`0xed2ff23aee9108cc9576179e0c4c12a879c3eb46`](./contracts/ethereum-1/0xed2ff23aee9108cc9576179e0c4c12a879c3eb46/) | ✅ Audited |
| GnosisSafe | unknown | ethereum | n/a | [`0x56f34826cc63151f74fa8f701e4f73c5eaae52ad`](./contracts/ethereum-1/0x56f34826cc63151f74fa8f701e4f73c5eaae52ad/) | ✅ Audited |
| HarvestMarket | unknown | ethereum | n/a | [`0x00216201c03c2011f1731ecdd5942cd8f366e9e9`](./contracts/ethereum-1/0x00216201c03c2011f1731ecdd5942cd8f366e9e9/) | ✅ Audited |
| LinearDecayInterestModel | unknown | ethereum | n/a | [`0xa3782f80474753fe0c3cf1792673ce3d572c5d16`](./contracts/ethereum-1/0xa3782f80474753fe0c3cf1792673ce3d572c5d16/) | ✅ Audited |
| MPHConverter | unknown | ethereum | n/a | [`0x3f67999583089ae872e082691d7ba61a820c855a`](./contracts/ethereum-1/0x3f67999583089ae872e082691d7ba61a820c855a/) | ✅ Audited |
| MPHIssuanceModel01 | unknown | ethereum | n/a | [`0x36ad542dadc22078511d64b98aff818abd1ac713`](./contracts/ethereum-1/0x36ad542dadc22078511d64b98aff818abd1ac713/) | ✅ Audited |
| MPHMinter | unknown | ethereum | n/a | [`0x01c2fee5d6e76ec26162daaf4e336beed01f2651`](./contracts/ethereum-1/0x01c2fee5d6e76ec26162daaf4e336beed01f2651/) | ✅ Audited |
| MPHMinterLegacy | unknown | ethereum | n/a | [`0x63167f3dc4e4ef5db1f1717275d2d150a634b26e`](./contracts/ethereum-1/0x63167f3dc4e4ef5db1f1717275d2d150a634b26e/) | ✅ Audited |
| MPHToken | unknown | ethereum | n/a | [`0x68245bd25201b57f1928931b4332c0adf0d6291d`](./contracts/ethereum-1/0x68245bd25201b57f1928931b4332c0adf0d6291d/) | ✅ Audited |
| NFT | unknown | ethereum | n/a | [`0x073a4324a168d8dc76596fb50920593092866a3c`](./contracts/ethereum-1/0x073a4324a168d8dc76596fb50920593092866a3c/) | ✅ Audited |
| NFTFactory | unknown | ethereum | n/a | [`0x95816fa25d54061086d4f4ad9a48fdbe9068e541`](./contracts/ethereum-1/0x95816fa25d54061086d4f4ad9a48fdbe9068e541/) | ✅ Audited |
| PercentageFeeModel | unknown | ethereum | n/a | [`0x11b2f96c0040c0189fd9f6c4405d086b03bc41ab`](./contracts/ethereum-1/0x11b2f96c0040c0189fd9f6c4405d086b03bc41ab/) | ✅ Audited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x9ce2eb5871adf6444004c3182960a4f5db908545`](./contracts/ethereum-1/0x9ce2eb5871adf6444004c3182960a4f5db908545/) | ✅ Audited |
| Rewards | unknown | ethereum | n/a | [`0x2c8ac1173998ca1a06a69bf12cbb8155bd5b8c4e`](./contracts/ethereum-1/0x2c8ac1173998ca1a06a69bf12cbb8155bd5b8c4e/) | ✅ Audited |
| Vesting | unknown | ethereum | n/a | [`0x8943eb8f104bcf826910e7d2f4d59edfe018e0e7`](./contracts/ethereum-1/0x8943eb8f104bcf826910e7d2f4d59edfe018e0e7/) | ✅ Audited |
| Vesting02 | unknown | ethereum | n/a | [`0x137c9a85cde23318e3fa8d4e486cd62f46095cc8`](./contracts/ethereum-1/0x137c9a85cde23318e3fa8d4e486cd62f46095cc8/) | ✅ Audited |
| xMPH | unknown | ethereum | n/a | [`0x1702f18c1173b791900f81ebae59b908da8f689b`](./contracts/ethereum-1/0x1702f18c1173b791900f81ebae59b908da8f689b/) | ✅ Audited |
| YVaultMarket | unknown | ethereum | n/a | [`0x08cc88c379911bf6d778081a078b48bd7035fb70`](./contracts/ethereum-1/0x08cc88c379911bf6d778081a078b48bd7035fb70/) | ✅ Audited |
| ZeroCouponBond | unknown | ethereum | n/a | [`0x27e40571efef08709655b900c6a4efa89594c8b2`](./contracts/ethereum-1/0x27e40571efef08709655b900c6a4efa89594c8b2/) | ✅ Audited |
| ZeroCouponBondFactory | unknown | ethereum | n/a | [`0xa523330532bff11df1cb1bdf585379dc0b18eec1`](./contracts/ethereum-1/0xa523330532bff11df1cb1bdf585379dc0b18eec1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Astrodrop | unknown | ethereum | n/a | [`0x594c62030edbf4d09564bce0efe2885b34b12e24`](./contracts/ethereum-1/0x594c62030edbf4d09564bce0efe2885b34b12e24/) | ⚠️ Unaudited |
| AstrodropERC721 | unknown | ethereum | n/a | [`0x4f96cccfd25b4b7a89062d52c3099e1a97793a99`](./contracts/ethereum-1/0x4f96cccfd25b4b7a89062d52c3099e1a97793a99/) | ⚠️ Unaudited |
| AstrodropFactory | unknown | ethereum | n/a | [`0x10da261f68feaa66d6455d1710b3818edd633444`](./contracts/ethereum-1/0x10da261f68feaa66d6455d1710b3818edd633444/) | ⚠️ Unaudited |
| BetokenFund | unknown | ethereum | n/a | [`0x0df1a91e750581e0f565418ee6e26a1d60ffae08`](./contracts/ethereum-1/0x0df1a91e750581e0f565418ee6e26a1d60ffae08/) | ⚠️ Unaudited |
| BetokenLogic | unknown | ethereum | n/a | [`0x1e361df9e3e47d86a26151da131c98291897bd60`](./contracts/ethereum-1/0x1e361df9e3e47d86a26151da131c98291897bd60/) | ⚠️ Unaudited |
| BetokenLogic2 | unknown | ethereum | n/a | [`0x186b2a8a462af7423e282ceaf24bc4b917c7e2ba`](./contracts/ethereum-1/0x186b2a8a462af7423e282ceaf24bc4b917c7e2ba/) | ⚠️ Unaudited |
| BetokenProxy | unknown | ethereum | n/a | [`0x36f928796f8ac12cc11834499e145d9772883044`](./contracts/ethereum-1/0x36f928796f8ac12cc11834499e145d9772883044/) | ⚠️ Unaudited |
| ClonedRewards | unknown | ethereum | n/a | [`0x88fd291e22fa0ad97e88b686079d5641716a2541`](./contracts/ethereum-1/0x88fd291e22fa0ad97e88b686079d5641716a2541/) | ⚠️ Unaudited |
| ClonedRewardsFactory | unknown | ethereum | n/a | [`0x4b52448393b8ecf8d56186887976c794056c6c68`](./contracts/ethereum-1/0x4b52448393b8ecf8d56186887976c794056c6c68/) | ⚠️ Unaudited |
| Create2 | unknown | ethereum | n/a | [`0x35fe9c48f124ba068efdf584e6239d65618f7d5e`](./contracts/ethereum-1/0x35fe9c48f124ba068efdf584e6239d65618f7d5e/) | ⚠️ Unaudited |
| DelegatedYVaultMarket | unknown | ethereum | n/a | [`0x90aa32ce8a7547e71c18499bb25fe4e1cf14c658`](./contracts/ethereum-1/0x90aa32ce8a7547e71c18499bb25fe4e1cf14c658/) | ⚠️ Unaudited |
| DInterestWithDepositFee | unknown | ethereum | n/a | [`0x904f81eff3c35877865810cca9a63f2d9cb7d4dd`](./contracts/ethereum-1/0x904f81eff3c35877865810cca9a63f2d9cb7d4dd/) | ⚠️ Unaudited |
| Einstein | unknown | ethereum | n/a | [`0x25deb74aac0a426b77bd897fbf063ba4ac52ee96`](./contracts/ethereum-1/0x25deb74aac0a426b77bd897fbf063ba4ac52ee96/) | ⚠️ Unaudited |
| EMAOracleKeeperHub | unknown | ethereum | n/a | [`0xb14d595bd5046693a753dba1d9cc22d82421a2ed`](./contracts/ethereum-1/0xb14d595bd5046693a753dba1d9cc22d82421a2ed/) | ⚠️ Unaudited |
| Fantastic12 | unknown | ethereum | n/a | [`0x209b84226978538ee8de5f8841e5d33d95a57f74`](./contracts/ethereum-1/0x209b84226978538ee8de5f8841e5d33d95a57f74/) | ⚠️ Unaudited |
| FeeModel | unknown | ethereum | n/a | [`0x46bd883903130a9f62de417894249167ec4036c7`](./contracts/ethereum-1/0x46bd883903130a9f62de417894249167ec4036c7/) | ⚠️ Unaudited |
| FundingMultitoken | unknown | ethereum | n/a | [`0x446ba32a84440072b4ebdb1d5a4c8a5d1a6c980b`](./contracts/ethereum-1/0x446ba32a84440072b4ebdb1d5a4c8a5d1a6c980b/) | ⚠️ Unaudited |
| LinearInterestModel | unknown | ethereum | n/a | [`0x53d8d305d1bb3098a46ac97c84b210004c54f5f8`](./contracts/ethereum-1/0x53d8d305d1bb3098a46ac97c84b210004c54f5f8/) | ⚠️ Unaudited |
| LongCERC20Order | unknown | ethereum | n/a | [`0x41b39db040892e7fa9de07dda4573a87cc1f4339`](./contracts/ethereum-1/0x41b39db040892e7fa9de07dda4573a87cc1f4339/) | ⚠️ Unaudited |
| LongCEtherOrder | unknown | ethereum | n/a | [`0x076ee3f550bcceb597d0037681f7495144b69b17`](./contracts/ethereum-1/0x076ee3f550bcceb597d0037681f7495144b69b17/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x4b36027316ddc9bee9a1ae8eaf0e34d1f9b1814b`](./contracts/ethereum-1/0x4b36027316ddc9bee9a1ae8eaf0e34d1f9b1814b/) | ⚠️ Unaudited |
| MetadataPooledCDAIFactory | unknown | ethereum | n/a | [`0x468546fe5992928606041d1bc0f31e55157e765e`](./contracts/ethereum-1/0x468546fe5992928606041d1bc0f31e55157e765e/) | ⚠️ Unaudited |
| MPHRewarder | unknown | ethereum | n/a | [`0xe0182f53efe7a0d4a0708eadd089e2cb0bd7b3f4`](./contracts/ethereum-1/0xe0182f53efe7a0d4a0708eadd089e2cb0bd7b3f4/) | ⚠️ Unaudited |
| MPHVotingWeightWrapper | unknown | ethereum | n/a | [`0xc362b792012808efee33db34a9521a0300be9397`](./contracts/ethereum-1/0xc362b792012808efee33db34a9521a0300be9397/) | ⚠️ Unaudited |
| NFTDescriptor | unknown | ethereum | n/a | [`0x99dc678f49c7e6ba60932c2814ce13c225d8caa7`](./contracts/ethereum-1/0x99dc678f49c7e6ba60932c2814ce13c225d8caa7/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x011735dc889446b9582b6e7a9b792e2a0d11f56d`](./contracts/ethereum-1/0x011735dc889446b9582b6e7a9b792e2a0d11f56d/) | ⚠️ Unaudited |
| PaidFantastic12Factory | unknown | ethereum | n/a | [`0x5339ca2b8148c5803236d8592a98411c4ae881f8`](./contracts/ethereum-1/0x5339ca2b8148c5803236d8592a98411c4ae881f8/) | ⚠️ Unaudited |
| PooledCDAI | unknown | ethereum | n/a | [`0x1a093b312a6a76b10e86460bcae580668ee9aea9`](./contracts/ethereum-1/0x1a093b312a6a76b10e86460bcae580668ee9aea9/) | ⚠️ Unaudited |
| PooledCDAIKyberExtension | unknown | ethereum | n/a | [`0x44fbf73a97cf50640a3208b883f810f730d80c2b`](./contracts/ethereum-1/0x44fbf73a97cf50640a3208b883f810f730d80c2b/) | ⚠️ Unaudited |
| Quine | unknown | ethereum | n/a | [`0x0e0c6a8575d0cc3e9b65eb3259b52e2eb348e2b5`](./contracts/ethereum-1/0x0e0c6a8575d0cc3e9b65eb3259b52e2eb348e2b5/) | ⚠️ Unaudited |
| Sai2Dai | unknown | ethereum | n/a | [`0x02c9e4174e9d23bb7619c83ef5f771fcb1e6fdb8`](./contracts/ethereum-1/0x02c9e4174e9d23bb7619c83ef5f771fcb1e6fdb8/) | ⚠️ Unaudited |
| ShareToken | unknown | ethereum | n/a | [`0x4a8c31600da5aa5b850324baeb6a3205f312f7a4`](./contracts/ethereum-1/0x4a8c31600da5aa5b850324baeb6a3205f312f7a4/) | ⚠️ Unaudited |
| ShortCERC20Order | unknown | ethereum | n/a | [`0x52bd4ad7525020081d5583da1993d8b8ab01f855`](./contracts/ethereum-1/0x52bd4ad7525020081d5583da1993d8b8ab01f855/) | ⚠️ Unaudited |
| ShortCEtherOrder | unknown | ethereum | n/a | [`0x14571294127e33893be2ac907855f451bf4fea0d`](./contracts/ethereum-1/0x14571294127e33893be2ac907855f451bf4fea0d/) | ⚠️ Unaudited |
| StakingERC20Wrapper | unknown | ethereum | n/a | [`0xe00593040323cf68ea08c33bc8bff7695c3828c1`](./contracts/ethereum-1/0xe00593040323cf68ea08c33bc8bff7695c3828c1/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x1fdd4960df99aacc0f69d0f30e829ac77aa09444`](./contracts/ethereum-1/0x1fdd4960df99aacc0f69d0f30e829ac77aa09444/) | ⚠️ Unaudited |
| TimelockController | unknown | polygon | n/a | [`0x83e4758bea7c6c2e2b5ed4de9d1cc9e94deeadda`](./contracts/polygon-137/0x83e4758bea7c6c2e2b5ed4de9d1cc9e94deeadda/) | ⚠️ Unaudited |
| TREE | unknown | ethereum | n/a | [`0x278533460acb4641bb32de7614a70d9682347517`](./contracts/ethereum-1/0x278533460acb4641bb32de7614a70d9682347517/) | ⚠️ Unaudited |
| TREERebaser | unknown | ethereum | n/a | [`0x504397f81b1676710815f09cc3f3e1f3ee46c455`](./contracts/ethereum-1/0x504397f81b1676710815f09cc3f3e1f3ee46c455/) | ⚠️ Unaudited |
| TREEReserve | unknown | ethereum | n/a | [`0x390a8fb3fcff0bb0fcf1f91c7e36db9c53165d17`](./contracts/ethereum-1/0x390a8fb3fcff0bb0fcf1f91c7e36db9c53165d17/) | ⚠️ Unaudited |
| TREERewards | unknown | ethereum | n/a | [`0x0dfa38393f4c1c1250111f13a1bb6483e7860ce5`](./contracts/ethereum-1/0x0dfa38393f4c1c1250111f13a1bb6483e7860ce5/) | ⚠️ Unaudited |
| TREERewardsFactory | unknown | ethereum | n/a | [`0x35634efd0cecee7293ab95ba48cadba4ba6a5338`](./contracts/ethereum-1/0x35634efd0cecee7293ab95ba48cadba4ba6a5338/) | ⚠️ Unaudited |
| Vesting03 | unknown | ethereum | n/a | [`0xa907c7c3d13248f08a3fb52beb6d1c079507eb4b`](./contracts/ethereum-1/0xa907c7c3d13248f08a3fb52beb6d1c079507eb4b/) | ⚠️ Unaudited |
| WrapperFactory | unknown | ethereum | n/a | [`0x57c894b3dc580f6176f5ccd1de2d9ed9ceb99954`](./contracts/ethereum-1/0x57c894b3dc580f6176f5ccd1de2d9ed9ceb99954/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/88mphv3/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/88mph.pdf) | Trail of Bits | Audit | 2021-08 | stale | Direct | contract_name | 28 | high |
| [Code423n4](https://code4rena.com/reports/2021-05-88mph) | Code4rena | Contest | 2021-05 | stale | Direct | contract_name | 21 | high |
| [PeckShield (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-88mphv3-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 2 | high |
| [PeckShield (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/peckshield-audit-report-88mph-v1.0.pdf) | PeckShield | Audit | 2020-01 | stale | Direct | contract_name | 21 | high |
| [Certik](https://skynet.certik.com/projects/88mph) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/peckshield-audit-report-88mph%20Zero%20Coupon%20Bonds-v1.0.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | 2 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/trailofbits/publications/f24432d47b1bd6b5dd3b1a1a98997b12e37dfa6e/reviews/88mph.pdf) | Defi Safety | Audit | 2021-08 | stale | Direct | contract_name | 29 | high |
| [0x-protocol.pdf](https://github.com/trailofbits/publications/blob/master/reviews/0x-protocol.pdf) | Trail of Bits | Audit | 2019-10 | stale | Direct | n/a | 0 | n/a |
| [DIP001_audit_report_2020_03_en_1_0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/DIP001_audit_report_2020_03_en_1_0.pdf) | PeckShield | Audit | 2020-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x594c62030edbf4d09564bce0efe2885b34b12e24`](./contracts/ethereum-1/0x594c62030edbf4d09564bce0efe2885b34b12e24/) | Astrodrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f96cccfd25b4b7a89062d52c3099e1a97793a99`](./contracts/ethereum-1/0x4f96cccfd25b4b7a89062d52c3099e1a97793a99/) | AstrodropERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10da261f68feaa66d6455d1710b3818edd633444`](./contracts/ethereum-1/0x10da261f68feaa66d6455d1710b3818edd633444/) | AstrodropFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0df1a91e750581e0f565418ee6e26a1d60ffae08`](./contracts/ethereum-1/0x0df1a91e750581e0f565418ee6e26a1d60ffae08/) | BetokenFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e361df9e3e47d86a26151da131c98291897bd60`](./contracts/ethereum-1/0x1e361df9e3e47d86a26151da131c98291897bd60/) | BetokenLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x186b2a8a462af7423e282ceaf24bc4b917c7e2ba`](./contracts/ethereum-1/0x186b2a8a462af7423e282ceaf24bc4b917c7e2ba/) | BetokenLogic2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36f928796f8ac12cc11834499e145d9772883044`](./contracts/ethereum-1/0x36f928796f8ac12cc11834499e145d9772883044/) | BetokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88fd291e22fa0ad97e88b686079d5641716a2541`](./contracts/ethereum-1/0x88fd291e22fa0ad97e88b686079d5641716a2541/) | ClonedRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b52448393b8ecf8d56186887976c794056c6c68`](./contracts/ethereum-1/0x4b52448393b8ecf8d56186887976c794056c6c68/) | ClonedRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35fe9c48f124ba068efdf584e6239d65618f7d5e`](./contracts/ethereum-1/0x35fe9c48f124ba068efdf584e6239d65618f7d5e/) | Create2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90aa32ce8a7547e71c18499bb25fe4e1cf14c658`](./contracts/ethereum-1/0x90aa32ce8a7547e71c18499bb25fe4e1cf14c658/) | DelegatedYVaultMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x904f81eff3c35877865810cca9a63f2d9cb7d4dd`](./contracts/ethereum-1/0x904f81eff3c35877865810cca9a63f2d9cb7d4dd/) | DInterestWithDepositFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25deb74aac0a426b77bd897fbf063ba4ac52ee96`](./contracts/ethereum-1/0x25deb74aac0a426b77bd897fbf063ba4ac52ee96/) | Einstein | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb14d595bd5046693a753dba1d9cc22d82421a2ed`](./contracts/ethereum-1/0xb14d595bd5046693a753dba1d9cc22d82421a2ed/) | EMAOracleKeeperHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x209b84226978538ee8de5f8841e5d33d95a57f74`](./contracts/ethereum-1/0x209b84226978538ee8de5f8841e5d33d95a57f74/) | Fantastic12 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46bd883903130a9f62de417894249167ec4036c7`](./contracts/ethereum-1/0x46bd883903130a9f62de417894249167ec4036c7/) | FeeModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x446ba32a84440072b4ebdb1d5a4c8a5d1a6c980b`](./contracts/ethereum-1/0x446ba32a84440072b4ebdb1d5a4c8a5d1a6c980b/) | FundingMultitoken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53d8d305d1bb3098a46ac97c84b210004c54f5f8`](./contracts/ethereum-1/0x53d8d305d1bb3098a46ac97c84b210004c54f5f8/) | LinearInterestModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41b39db040892e7fa9de07dda4573a87cc1f4339`](./contracts/ethereum-1/0x41b39db040892e7fa9de07dda4573a87cc1f4339/) | LongCERC20Order | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x076ee3f550bcceb597d0037681f7495144b69b17`](./contracts/ethereum-1/0x076ee3f550bcceb597d0037681f7495144b69b17/) | LongCEtherOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b36027316ddc9bee9a1ae8eaf0e34d1f9b1814b`](./contracts/ethereum-1/0x4b36027316ddc9bee9a1ae8eaf0e34d1f9b1814b/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x468546fe5992928606041d1bc0f31e55157e765e`](./contracts/ethereum-1/0x468546fe5992928606041d1bc0f31e55157e765e/) | MetadataPooledCDAIFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0182f53efe7a0d4a0708eadd089e2cb0bd7b3f4`](./contracts/ethereum-1/0xe0182f53efe7a0d4a0708eadd089e2cb0bd7b3f4/) | MPHRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc362b792012808efee33db34a9521a0300be9397`](./contracts/ethereum-1/0xc362b792012808efee33db34a9521a0300be9397/) | MPHVotingWeightWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99dc678f49c7e6ba60932c2814ce13c225d8caa7`](./contracts/ethereum-1/0x99dc678f49c7e6ba60932c2814ce13c225d8caa7/) | NFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x011735dc889446b9582b6e7a9b792e2a0d11f56d`](./contracts/ethereum-1/0x011735dc889446b9582b6e7a9b792e2a0d11f56d/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5339ca2b8148c5803236d8592a98411c4ae881f8`](./contracts/ethereum-1/0x5339ca2b8148c5803236d8592a98411c4ae881f8/) | PaidFantastic12Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a093b312a6a76b10e86460bcae580668ee9aea9`](./contracts/ethereum-1/0x1a093b312a6a76b10e86460bcae580668ee9aea9/) | PooledCDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44fbf73a97cf50640a3208b883f810f730d80c2b`](./contracts/ethereum-1/0x44fbf73a97cf50640a3208b883f810f730d80c2b/) | PooledCDAIKyberExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e0c6a8575d0cc3e9b65eb3259b52e2eb348e2b5`](./contracts/ethereum-1/0x0e0c6a8575d0cc3e9b65eb3259b52e2eb348e2b5/) | Quine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02c9e4174e9d23bb7619c83ef5f771fcb1e6fdb8`](./contracts/ethereum-1/0x02c9e4174e9d23bb7619c83ef5f771fcb1e6fdb8/) | Sai2Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a8c31600da5aa5b850324baeb6a3205f312f7a4`](./contracts/ethereum-1/0x4a8c31600da5aa5b850324baeb6a3205f312f7a4/) | ShareToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52bd4ad7525020081d5583da1993d8b8ab01f855`](./contracts/ethereum-1/0x52bd4ad7525020081d5583da1993d8b8ab01f855/) | ShortCERC20Order | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14571294127e33893be2ac907855f451bf4fea0d`](./contracts/ethereum-1/0x14571294127e33893be2ac907855f451bf4fea0d/) | ShortCEtherOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe00593040323cf68ea08c33bc8bff7695c3828c1`](./contracts/ethereum-1/0xe00593040323cf68ea08c33bc8bff7695c3828c1/) | StakingERC20Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fdd4960df99aacc0f69d0f30e829ac77aa09444`](./contracts/ethereum-1/0x1fdd4960df99aacc0f69d0f30e829ac77aa09444/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x278533460acb4641bb32de7614a70d9682347517`](./contracts/ethereum-1/0x278533460acb4641bb32de7614a70d9682347517/) | TREE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x504397f81b1676710815f09cc3f3e1f3ee46c455`](./contracts/ethereum-1/0x504397f81b1676710815f09cc3f3e1f3ee46c455/) | TREERebaser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x390a8fb3fcff0bb0fcf1f91c7e36db9c53165d17`](./contracts/ethereum-1/0x390a8fb3fcff0bb0fcf1f91c7e36db9c53165d17/) | TREEReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dfa38393f4c1c1250111f13a1bb6483e7860ce5`](./contracts/ethereum-1/0x0dfa38393f4c1c1250111f13a1bb6483e7860ce5/) | TREERewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35634efd0cecee7293ab95ba48cadba4ba6a5338`](./contracts/ethereum-1/0x35634efd0cecee7293ab95ba48cadba4ba6a5338/) | TREERewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa907c7c3d13248f08a3fb52beb6d1c079507eb4b`](./contracts/ethereum-1/0xa907c7c3d13248f08a3fb52beb6d1c079507eb4b/) | Vesting03 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57c894b3dc580f6176f5ccd1de2d9ed9ceb99954`](./contracts/ethereum-1/0x57c894b3dc580f6176f5ccd1de2d9ed9ceb99954/) | WrapperFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=128

Zero-match audit list:

- [19384] Certik
- [19390] 0x-protocol.pdf
- [19391] DIP001_audit_report_2020_03_en_1_0.pdf

Fork inheritance lineage and inherited audits are included when available.
