# Agentic Audit Brief: 88mph

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 12 (0 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: 88mph (`88mph`)
- Website: [https://88mph.app/](https://88mph.app/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, ethereum, fantom, polygon
- Contract surface: 75 unique implementations (75 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $323,863.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for 88mph. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum, polygon. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: none
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- GnosisSafe (`0x56f34826cc63151f74fa8f701e4f73c5eaae52ad`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 74 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 1 of 75 unique; 74 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/75
- Verified + Unaudited implementations: 75
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 75
- Raw deployments: 75
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/88mphv3/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (75)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d9028e833645858e292d1d7deafdbdcd8555200` | ⚠️ Unaudited |
| Astrodrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x594c62030edbf4d09564bce0efe2885b34b12e24` | ⚠️ Unaudited |
| AstrodropERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f96cccfd25b4b7a89062d52c3099e1a97793a99` | ⚠️ Unaudited |
| AstrodropFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10da261f68feaa66d6455d1710b3818edd633444` | ⚠️ Unaudited |
| BetokenFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0df1a91e750581e0f565418ee6e26a1d60ffae08` | ⚠️ Unaudited |
| BetokenLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e361df9e3e47d86a26151da131c98291897bd60` | ⚠️ Unaudited |
| BetokenLogic2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x186b2a8a462af7423e282ceaf24bc4b917c7e2ba` | ⚠️ Unaudited |
| BetokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f928796f8ac12cc11834499e145d9772883044` | ⚠️ Unaudited |
| BProtocolMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd370efe95a51de47661ecccfb4735d43d9584b2f` | ⚠️ Unaudited |
| ClonedRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88fd291e22fa0ad97e88b686079d5641716a2541` | ⚠️ Unaudited |
| ClonedRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b52448393b8ecf8d56186887976c794056c6c68` | ⚠️ Unaudited |
| CompoundERC20Market | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x983fd4988f6c6b8044efc6137ee4ab611846c8b8` | ⚠️ Unaudited |
| CreamERC20Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd753fe070e47899d94747ea00f2b5f7e53a8a83a` | ⚠️ Unaudited |
| Create2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35fe9c48f124ba068efdf584e6239d65618f7d5e` | ⚠️ Unaudited |
| DelegatedYVaultMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90aa32ce8a7547e71c18499bb25fe4e1cf14c658` | ⚠️ Unaudited |
| DInterest | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x062214fbe3f15d217512deb14572eb01face0392` | ⚠️ Unaudited |
| DInterestLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fea3e2d505aae5af39186dc6e0d5ddba49e751d` | ⚠️ Unaudited |
| DInterestWithDepositFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x904f81eff3c35877865810cca9a63f2d9cb7d4dd` | ⚠️ Unaudited |
| Dumper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bb67aa336f21cfa5bd328c5930e5202ed35ddeb` | ⚠️ Unaudited |
| Einstein | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25deb74aac0a426b77bd897fbf063ba4ac52ee96` | ⚠️ Unaudited |
| EMAOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0018f8aa6c919e12bdd0dc13bf593d336f44f79c` | ⚠️ Unaudited |
| EMAOracleKeeperHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb14d595bd5046693a753dba1d9cc22d82421a2ed` | ⚠️ Unaudited |
| ERC20Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x652076b1dd38354918577b5313e859c17406659d` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9c8ddd27c5440196af3fac23b427dd7fc57d14` | ⚠️ Unaudited |
| Fantastic12 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x209b84226978538ee8de5f8841e5d33d95a57f74` | ⚠️ Unaudited |
| FeeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46bd883903130a9f62de417894249167ec4036c7` | ⚠️ Unaudited |
| FractionalDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2263655696fc5c5a4ae2bacaed29b88708bcc958` | ⚠️ Unaudited |
| FractionalDepositFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2ff23aee9108cc9576179e0c4c12a879c3eb46` | ⚠️ Unaudited |
| FundingMultitoken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x446ba32a84440072b4ebdb1d5a4c8a5d1a6c980b` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378300 | `0x56f34826cc63151f74fa8f701e4f73c5eaae52ad` | ⚠️ Unaudited |
| HarvestMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00216201c03c2011f1731ecdd5942cd8f366e9e9` | ⚠️ Unaudited |
| LinearDecayInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3782f80474753fe0c3cf1792673ce3d572c5d16` | ⚠️ Unaudited |
| LinearInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53d8d305d1bb3098a46ac97c84b210004c54f5f8` | ⚠️ Unaudited |
| LongCERC20Order | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b39db040892e7fa9de07dda4573a87cc1f4339` | ⚠️ Unaudited |
| LongCEtherOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076ee3f550bcceb597d0037681f7495144b69b17` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b36027316ddc9bee9a1ae8eaf0e34d1f9b1814b` | ⚠️ Unaudited |
| MetadataPooledCDAIFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x468546fe5992928606041d1bc0f31e55157e765e` | ⚠️ Unaudited |
| MPHConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f67999583089ae872e082691d7ba61a820c855a` | ⚠️ Unaudited |
| MPHIssuanceModel01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36ad542dadc22078511d64b98aff818abd1ac713` | ⚠️ Unaudited |
| MPHMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x01c2fee5d6e76ec26162daaf4e336beed01f2651` | ⚠️ Unaudited |
| MPHMinterLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63167f3dc4e4ef5db1f1717275d2d150a634b26e` | ⚠️ Unaudited |
| MPHRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0182f53efe7a0d4a0708eadd089e2cb0bd7b3f4` | ⚠️ Unaudited |
| MPHToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68245bd25201b57f1928931b4332c0adf0d6291d` | ⚠️ Unaudited |
| MPHVotingWeightWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc362b792012808efee33db34a9521a0300be9397` | ⚠️ Unaudited |
| NFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073a4324a168d8dc76596fb50920593092866a3c` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99dc678f49c7e6ba60932c2814ce13c225d8caa7` | ⚠️ Unaudited |
| NFTFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95816fa25d54061086d4f4ad9a48fdbe9068e541` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x011735dc889446b9582b6e7a9b792e2a0d11f56d` | ⚠️ Unaudited |
| PaidFantastic12Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5339ca2b8148c5803236d8592a98411c4ae881f8` | ⚠️ Unaudited |
| PercentageFeeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11b2f96c0040c0189fd9f6c4405d086b03bc41ab` | ⚠️ Unaudited |
| PooledCDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a093b312a6a76b10e86460bcae580668ee9aea9` | ⚠️ Unaudited |
| PooledCDAIKyberExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44fbf73a97cf50640a3208b883f810f730d80c2b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ce2eb5871adf6444004c3182960a4f5db908545` | ⚠️ Unaudited |
| Quine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0c6a8575d0cc3e9b65eb3259b52e2eb348e2b5` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c8ac1173998ca1a06a69bf12cbb8155bd5b8c4e` | ⚠️ Unaudited |
| Sai2Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02c9e4174e9d23bb7619c83ef5f771fcb1e6fdb8` | ⚠️ Unaudited |
| ShareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a8c31600da5aa5b850324baeb6a3205f312f7a4` | ⚠️ Unaudited |
| ShortCERC20Order | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52bd4ad7525020081d5583da1993d8b8ab01f855` | ⚠️ Unaudited |
| ShortCEtherOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14571294127e33893be2ac907855f451bf4fea0d` | ⚠️ Unaudited |
| StakingERC20Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe00593040323cf68ea08c33bc8bff7695c3828c1` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fdd4960df99aacc0f69d0f30e829ac77aa09444` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83e4758bea7c6c2e2b5ed4de9d1cc9e94deeadda` | ⚠️ Unaudited |
| TREE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x278533460acb4641bb32de7614a70d9682347517` | ⚠️ Unaudited |
| TREERebaser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x504397f81b1676710815f09cc3f3e1f3ee46c455` | ⚠️ Unaudited |
| TREEReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x390a8fb3fcff0bb0fcf1f91c7e36db9c53165d17` | ⚠️ Unaudited |
| TREERewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dfa38393f4c1c1250111f13a1bb6483e7860ce5` | ⚠️ Unaudited |
| TREERewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35634efd0cecee7293ab95ba48cadba4ba6a5338` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8943eb8f104bcf826910e7d2f4d59edfe018e0e7` | ⚠️ Unaudited |
| Vesting02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x137c9a85cde23318e3fa8d4e486cd62f46095cc8` | ⚠️ Unaudited |
| Vesting03 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa907c7c3d13248f08a3fb52beb6d1c079507eb4b` | ⚠️ Unaudited |
| WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57c894b3dc580f6176f5ccd1de2d9ed9ceb99954` | ⚠️ Unaudited |
| xMPH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1702f18c1173b791900f81ebae59b908da8f689b` | ⚠️ Unaudited |
| YVaultMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08cc88c379911bf6d778081a078b48bd7035fb70` | ⚠️ Unaudited |
| ZeroCouponBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27e40571efef08709655b900c6a4efa89594c8b2` | ⚠️ Unaudited |
| ZeroCouponBondFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa523330532bff11df1cb1bdf585379dc0b18eec1` | ⚠️ Unaudited |

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
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/88mphv3/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/88mph.pdf) | Trail of Bits | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [Code423n4](https://code4rena.com/reports/2021-05-88mph) | Code4rena | Contest | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [PeckShield (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-88mphv3-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/peckshield-audit-report-88mph-v1.0.pdf) | PeckShield | Audit | 2020-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Certik](https://skynet.certik.com/projects/88mph) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/peckshield-audit-report-88mph%20Zero%20Coupon%20Bonds-v1.0.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/trailofbits/publications/f24432d47b1bd6b5dd3b1a1a98997b12e37dfa6e/reviews/88mph.pdf) | Defi Safety | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [0x-protocol.pdf](https://github.com/trailofbits/publications/blob/master/reviews/0x-protocol.pdf) | Trail of Bits | Audit | 2019-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19379] Active Bug Bounty Program — no match: The document is a bug bounty program description, not an audit report. No specific contracts are listed in scope; only the protocol name '88mphV3' is mentioned.
- [19380] Trail of Bits — no match: Extracted from the executive summary and engagement goals sections. The report covers the full 88mph-contracts repository at commit 76cd9d1f, including contracts in models, moneymarkets, libraries, tokens, rewards, ZeroCouponBond, DInterest, Factory, and upgradeability mechanism.
- [19381] Code423n4 — no match: Extracted contract names from findings and scope section. The scope mentions 39 smart contracts but only names are inferred from findings. Audit date from report header.
- [19382] PeckShield — no match: Extracted contract names from findings targets. No explicit scope table found, but contracts are clearly audited targets.
- [19383] PeckShield — no match: Extracted contract names from findings targets. No explicit scope section found, but contracts are clearly audited.
- [19384] Certik — no match: The provided text is a CertiK Skynet project insight page for 88mph, not an audit report. It contains no scope section, contract listings, or audit findings. The only contract address mentioned is 0x8888801af4d980682e47f1a9036e589479e835c5, but it is not explicitly named as a contract in scope.
- [19385] PeckShield — no match: Audit report for 88mph Zero Coupon Bonds. Scope explicitly states only ZeroCouponBond.sol and ZeroCouponBondFactory.sol in fractionals sub-directory are covered.
- [19386] Rendered PDF capture — no match: Extracted contracts from scope descriptions, findings targets, and file paths. Audit date from cover page and executive summary.
- [19390] 0x-protocol.pdf — no match: Extracted contracts from scope sections and file paths in the audit report. Date from changelog: October 11, 2019 final report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Trail of Bits | DInterest | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-001, TOB-88MPH-004, etc.) | no |
| Trail of Bits | EMAOracle | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-006 | no |
| Trail of Bits | LinearDecayInterestModel | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-006 | no |
| Trail of Bits | YVaultMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-005, TOB-88MPH-014, TOB-88MPH-015) | no |
| Trail of Bits | HarvestMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-011, TOB-88MPH-012, TOB-88MPH-014) | no |
| Trail of Bits | AaveMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-012) | no |
| Trail of Bits | BProtocolMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-012, TOB-88MPH-014) | no |
| Trail of Bits | CompoundERC20Market | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-012, TOB-88MPH-014) | no |
| Trail of Bits | CreamERC20Market | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-012 | no |
| Trail of Bits | xMPH | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-002 | no |
| Trail of Bits | MPHToken | unmatched — not counted | — | Listed in scope and mentioned in finding TOB-88MPH-002 | no |
| Trail of Bits | ERC20Wrapper | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-017 | no |
| Trail of Bits | Sponsorable | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-016 | no |
| Trail of Bits | Rescuable | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-012 | no |
| Trail of Bits | MoneyMarket | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-012 | no |
| Trail of Bits | SafeERC20 | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-013 | no |
| Trail of Bits | DecMath | unmatched — not counted | — | Listed in scope as a library | no |
| Trail of Bits | DInterestLens | unmatched — not counted | — | Listed in scope (not fully reviewed) | no |
| Trail of Bits | ZeroCouponBond | unmatched — not counted | — | Listed in scope | no |
| Trail of Bits | Factory | unmatched — not counted | — | Listed in scope | no |
| Trail of Bits | OwnableUpgradeable | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-003 | no |
| Trail of Bits | TransparentUpgradeableProxy | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-007, TOB-88MPH-008) | no |
| Trail of Bits | Proxy | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-008 | no |
| Code423n4 | DInterest | unmatched — not counted | — | mentioned in findings M-01, M-02, L-04, L-05 | no |
| Code423n4 | MPHMinter | unmatched — not counted | — | mentioned in finding M-02 | no |
| Code423n4 | Vesting | unmatched — not counted | — | mentioned in findings L-02, N-01 | no |
| Code423n4 | Vesting02 | unmatched — not counted | — | mentioned in finding L-02 as main vesting contract | no |
| Code423n4 | EMAOracle | unmatched — not counted | — | mentioned in finding L-03 | no |
| Code423n4 | Sponsorable | unmatched — not counted | — | mentioned in finding L-01 | no |
| Code423n4 | Dumper | unmatched — not counted | — | mentioned in finding N-02 | no |
| Code423n4 | OneSplitDumper | unmatched — not counted | — | mentioned in finding N-02 | no |
| Code423n4 | AaveMarket | unmatched — not counted | — | mentioned in finding N-04 | no |
| Code423n4 | HarvestMarket | unmatched — not counted | — | mentioned in finding N-04 as misleading revert message | no |
| PeckShield | ERC1155DividentToken | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield | MPHIssuanceModel02 | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield | WrappedERC1155Token | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield | AaveMarket | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield | xMPH | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield | MPHToken | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield | AaveMarket | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield | CompoundERC20Market | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield | HarvestMarket | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield | YVaultMarket | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield | DInterest | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield | Ownable | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield | MPHIssuanceModel01 | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield | ZeroCouponBond | unmatched — not counted | — | listed in scope: 'this audit covers only the ZeroCouponBond.sol and ZeroCouponBondFactory.sol in fractionals sub-directory' | no |
| PeckShield | ZeroCouponBondFactory | unmatched — not counted | — | listed in scope: 'this audit covers only the ZeroCouponBond.sol and ZeroCouponBondFactory.sol in fractionals sub-directory' | no |
| Rendered PDF capture | DInterest | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-001, TOB-88MPH-004, etc.) | no |
| Rendered PDF capture | EMAOracle | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-006 | no |
| Rendered PDF capture | LinearDecayInterestModel | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-006 | no |
| Rendered PDF capture | YVaultMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-005, TOB-88MPH-012, TOB-88MPH-014, TOB-88MPH-015) | no |
| Rendered PDF capture | HarvestMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-011, TOB-88MPH-012, TOB-88MPH-014) | no |
| Rendered PDF capture | AaveMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-012) | no |
| Rendered PDF capture | BProtocolMarket | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-012, TOB-88MPH-014) | no |
| Rendered PDF capture | CompoundERC20Market | unmatched — not counted | — | Listed in scope and findings (TOB-88MPH-009, TOB-88MPH-012, TOB-88MPH-014) | no |
| Rendered PDF capture | CreamERC20Market | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-012 | no |
| Rendered PDF capture | xMPH | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-002 | no |
| Rendered PDF capture | MPHToken | unmatched — not counted | — | Mentioned in scope and fix log | no |
| Rendered PDF capture | ERC20Wrapper | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-017 | no |
| Rendered PDF capture | Sponsorable | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-016 | no |
| Rendered PDF capture | Rescuable | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-012 | no |
| Rendered PDF capture | MoneyMarket | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-012 | no |
| Rendered PDF capture | SafeERC20 | unmatched — not counted | — | Listed in scope and finding TOB-88MPH-013 | no |
| Rendered PDF capture | DecMath | unmatched — not counted | — | Listed in scope as custom library | no |
| Rendered PDF capture | DInterestLens | unmatched — not counted | — | Mentioned as not sufficiently covered | no |
| Rendered PDF capture | ZeroCouponBond | unmatched — not counted | — | Listed in scope | no |
| Rendered PDF capture | Factory | unmatched — not counted | — | Listed in scope | no |
| 0x-protocol.pdf | Exchange | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinTransactions | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinTransferSimulator | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinAssetProxyDispatcher | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinProtocolFees | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinSignatureValidator | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinExchangeCore | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinMatchOrders | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibOrder | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibZeroExTransaction | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibMath | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibSafeMath | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibFractions | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibAddressArray | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibBytes | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | Refundable | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | LibCobbDouglas | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MultiSigWallet | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MultiSigWalletWithTimeLock | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | AssetProxyOwner | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | StakingProxy | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | ZrxVault | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinStakingPool | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | MixinParams | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | ERC20Proxy | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | WETH9 | unmatched — not counted | — | listed in scope | no |
| 0x-protocol.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 97 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=2
- Match method counts: n/a

Zero-match audit list:

- [19380] Trail of Bits
- [19381] Code423n4
- [19382] PeckShield
- [19383] PeckShield
- [19384] Certik
- [19385] PeckShield
- [19386] Rendered PDF capture
- [19390] 0x-protocol.pdf

Fork inheritance lineage and inherited audits are included when available.
