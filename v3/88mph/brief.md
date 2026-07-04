# Agentic Audit Brief: 88mph

## Project Overview

- Project: 88mph (`88mph`)
- Website: [https://88mph.app/](https://88mph.app/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:23.693Z
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

- Coverage of deployed-live implementations: 0/74 (0.0%)
- Deployed-live implementations: 74 of 75 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/75
- Verified + Unaudited implementations: 75
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 75
- Raw deployments: 75
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/88mphv3/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (75)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveMarket | unknown | ethereum | n/a | [`0x2d9028...555200`](./contracts/ethereum-1/0x2d9028e833645858e292d1d7deafdbdcd8555200/) | ⚠️ Unaudited |
| Astrodrop | unknown | ethereum | n/a | [`0x594c62...b12e24`](./contracts/ethereum-1/0x594c62030edbf4d09564bce0efe2885b34b12e24/) | ⚠️ Unaudited |
| AstrodropERC721 | unknown | ethereum | n/a | [`0x4f96cc...793a99`](./contracts/ethereum-1/0x4f96cccfd25b4b7a89062d52c3099e1a97793a99/) | ⚠️ Unaudited |
| AstrodropFactory | unknown | ethereum | n/a | [`0x10da26...633444`](./contracts/ethereum-1/0x10da261f68feaa66d6455d1710b3818edd633444/) | ⚠️ Unaudited |
| BetokenFund | unknown | ethereum | n/a | [`0x0df1a9...ffae08`](./contracts/ethereum-1/0x0df1a91e750581e0f565418ee6e26a1d60ffae08/) | ⚠️ Unaudited |
| BetokenLogic | unknown | ethereum | n/a | [`0x1e361d...97bd60`](./contracts/ethereum-1/0x1e361df9e3e47d86a26151da131c98291897bd60/) | ⚠️ Unaudited |
| BetokenLogic2 | unknown | ethereum | n/a | [`0x186b2a...c7e2ba`](./contracts/ethereum-1/0x186b2a8a462af7423e282ceaf24bc4b917c7e2ba/) | ⚠️ Unaudited |
| BetokenProxy | unknown | ethereum | n/a | [`0x36f928...883044`](./contracts/ethereum-1/0x36f928796f8ac12cc11834499e145d9772883044/) | ⚠️ Unaudited |
| BProtocolMarket | unknown | ethereum | n/a | [`0xd370ef...584b2f`](./contracts/ethereum-1/0xd370efe95a51de47661ecccfb4735d43d9584b2f/) | ⚠️ Unaudited |
| ClonedRewards | unknown | ethereum | n/a | [`0x88fd29...6a2541`](./contracts/ethereum-1/0x88fd291e22fa0ad97e88b686079d5641716a2541/) | ⚠️ Unaudited |
| ClonedRewardsFactory | unknown | ethereum | n/a | [`0x4b5244...6c6c68`](./contracts/ethereum-1/0x4b52448393b8ecf8d56186887976c794056c6c68/) | ⚠️ Unaudited |
| CompoundERC20Market | unknown | ethereum | n/a | [`0x983fd4...46c8b8`](./contracts/ethereum-1/0x983fd4988f6c6b8044efc6137ee4ab611846c8b8/) | ⚠️ Unaudited |
| CreamERC20Market | unknown | ethereum | n/a | [`0xd753fe...a8a83a`](./contracts/ethereum-1/0xd753fe070e47899d94747ea00f2b5f7e53a8a83a/) | ⚠️ Unaudited |
| Create2 | unknown | ethereum | n/a | [`0x35fe9c...8f7d5e`](./contracts/ethereum-1/0x35fe9c48f124ba068efdf584e6239d65618f7d5e/) | ⚠️ Unaudited |
| DelegatedYVaultMarket | unknown | ethereum | n/a | [`0x90aa32...14c658`](./contracts/ethereum-1/0x90aa32ce8a7547e71c18499bb25fe4e1cf14c658/) | ⚠️ Unaudited |
| DInterest | unknown | ethereum | n/a | [`0x062214...ce0392`](./contracts/ethereum-1/0x062214fbe3f15d217512deb14572eb01face0392/) | ⚠️ Unaudited |
| DInterestLens | unknown | ethereum | n/a | [`0x8fea3e...9e751d`](./contracts/ethereum-1/0x8fea3e2d505aae5af39186dc6e0d5ddba49e751d/) | ⚠️ Unaudited |
| DInterestWithDepositFee | unknown | ethereum | n/a | [`0x904f81...b7d4dd`](./contracts/ethereum-1/0x904f81eff3c35877865810cca9a63f2d9cb7d4dd/) | ⚠️ Unaudited |
| Dumper | unknown | ethereum | n/a | [`0x1bb67a...35ddeb`](./contracts/ethereum-1/0x1bb67aa336f21cfa5bd328c5930e5202ed35ddeb/) | ⚠️ Unaudited |
| Einstein | unknown | ethereum | n/a | [`0x25deb7...52ee96`](./contracts/ethereum-1/0x25deb74aac0a426b77bd897fbf063ba4ac52ee96/) | ⚠️ Unaudited |
| EMAOracle | unknown | ethereum | n/a | [`0x0018f8...44f79c`](./contracts/ethereum-1/0x0018f8aa6c919e12bdd0dc13bf593d336f44f79c/) | ⚠️ Unaudited |
| EMAOracleKeeperHub | unknown | ethereum | n/a | [`0xb14d59...21a2ed`](./contracts/ethereum-1/0xb14d595bd5046693a753dba1d9cc22d82421a2ed/) | ⚠️ Unaudited |
| ERC20Wrapper | unknown | ethereum | n/a | [`0x652076...06659d`](./contracts/ethereum-1/0x652076b1dd38354918577b5313e859c17406659d/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | [`0x4f9c8d...c57d14`](./contracts/ethereum-1/0x4f9c8ddd27c5440196af3fac23b427dd7fc57d14/) | ⚠️ Unaudited |
| Fantastic12 | unknown | ethereum | n/a | [`0x209b84...a57f74`](./contracts/ethereum-1/0x209b84226978538ee8de5f8841e5d33d95a57f74/) | ⚠️ Unaudited |
| FeeModel | unknown | ethereum | n/a | [`0x46bd88...4036c7`](./contracts/ethereum-1/0x46bd883903130a9f62de417894249167ec4036c7/) | ⚠️ Unaudited |
| FractionalDeposit | unknown | ethereum | n/a | [`0x226365...bcc958`](./contracts/ethereum-1/0x2263655696fc5c5a4ae2bacaed29b88708bcc958/) | ⚠️ Unaudited |
| FractionalDepositFactory | unknown | ethereum | n/a | [`0xed2ff2...c3eb46`](./contracts/ethereum-1/0xed2ff23aee9108cc9576179e0c4c12a879c3eb46/) | ⚠️ Unaudited |
| FundingMultitoken | unknown | ethereum | n/a | [`0x446ba3...6c980b`](./contracts/ethereum-1/0x446ba32a84440072b4ebdb1d5a4c8a5d1a6c980b/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x56f348...ae52ad`](./contracts/ethereum-1/0x56f34826cc63151f74fa8f701e4f73c5eaae52ad/) | ⚠️ Unaudited |
| HarvestMarket | unknown | ethereum | n/a | [`0x002162...66e9e9`](./contracts/ethereum-1/0x00216201c03c2011f1731ecdd5942cd8f366e9e9/) | ⚠️ Unaudited |
| LinearDecayInterestModel | unknown | ethereum | n/a | [`0xa3782f...2c5d16`](./contracts/ethereum-1/0xa3782f80474753fe0c3cf1792673ce3d572c5d16/) | ⚠️ Unaudited |
| LinearInterestModel | unknown | ethereum | n/a | [`0x53d8d3...54f5f8`](./contracts/ethereum-1/0x53d8d305d1bb3098a46ac97c84b210004c54f5f8/) | ⚠️ Unaudited |
| LongCERC20Order | unknown | ethereum | n/a | [`0x41b39d...1f4339`](./contracts/ethereum-1/0x41b39db040892e7fa9de07dda4573a87cc1f4339/) | ⚠️ Unaudited |
| LongCEtherOrder | unknown | ethereum | n/a | [`0x076ee3...b69b17`](./contracts/ethereum-1/0x076ee3f550bcceb597d0037681f7495144b69b17/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x4b3602...b1814b`](./contracts/ethereum-1/0x4b36027316ddc9bee9a1ae8eaf0e34d1f9b1814b/) | ⚠️ Unaudited |
| MetadataPooledCDAIFactory | unknown | ethereum | n/a | [`0x468546...7e765e`](./contracts/ethereum-1/0x468546fe5992928606041d1bc0f31e55157e765e/) | ⚠️ Unaudited |
| MPHConverter | unknown | ethereum | n/a | [`0x3f6799...0c855a`](./contracts/ethereum-1/0x3f67999583089ae872e082691d7ba61a820c855a/) | ⚠️ Unaudited |
| MPHIssuanceModel01 | unknown | ethereum | n/a | [`0x36ad54...1ac713`](./contracts/ethereum-1/0x36ad542dadc22078511d64b98aff818abd1ac713/) | ⚠️ Unaudited |
| MPHMinter | unknown | ethereum | n/a | [`0x01c2fe...1f2651`](./contracts/ethereum-1/0x01c2fee5d6e76ec26162daaf4e336beed01f2651/) | ⚠️ Unaudited |
| MPHMinterLegacy | unknown | ethereum | n/a | [`0x63167f...34b26e`](./contracts/ethereum-1/0x63167f3dc4e4ef5db1f1717275d2d150a634b26e/) | ⚠️ Unaudited |
| MPHRewarder | unknown | ethereum | n/a | [`0xe0182f...d7b3f4`](./contracts/ethereum-1/0xe0182f53efe7a0d4a0708eadd089e2cb0bd7b3f4/) | ⚠️ Unaudited |
| MPHToken | unknown | ethereum | n/a | [`0x68245b...d6291d`](./contracts/ethereum-1/0x68245bd25201b57f1928931b4332c0adf0d6291d/) | ⚠️ Unaudited |
| MPHVotingWeightWrapper | unknown | ethereum | n/a | [`0xc362b7...be9397`](./contracts/ethereum-1/0xc362b792012808efee33db34a9521a0300be9397/) | ⚠️ Unaudited |
| NFT | unknown | ethereum | n/a | [`0x073a43...866a3c`](./contracts/ethereum-1/0x073a4324a168d8dc76596fb50920593092866a3c/) | ⚠️ Unaudited |
| NFTDescriptor | unknown | ethereum | n/a | [`0x99dc67...d8caa7`](./contracts/ethereum-1/0x99dc678f49c7e6ba60932c2814ce13c225d8caa7/) | ⚠️ Unaudited |
| NFTFactory | unknown | ethereum | n/a | [`0x95816f...68e541`](./contracts/ethereum-1/0x95816fa25d54061086d4f4ad9a48fdbe9068e541/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x011735...11f56d`](./contracts/ethereum-1/0x011735dc889446b9582b6e7a9b792e2a0d11f56d/) | ⚠️ Unaudited |
| PaidFantastic12Factory | unknown | ethereum | n/a | [`0x5339ca...e881f8`](./contracts/ethereum-1/0x5339ca2b8148c5803236d8592a98411c4ae881f8/) | ⚠️ Unaudited |
| PercentageFeeModel | unknown | ethereum | n/a | [`0x11b2f9...bc41ab`](./contracts/ethereum-1/0x11b2f96c0040c0189fd9f6c4405d086b03bc41ab/) | ⚠️ Unaudited |
| PooledCDAI | unknown | ethereum | n/a | [`0x1a093b...e9aea9`](./contracts/ethereum-1/0x1a093b312a6a76b10e86460bcae580668ee9aea9/) | ⚠️ Unaudited |
| PooledCDAIKyberExtension | unknown | ethereum | n/a | [`0x44fbf7...d80c2b`](./contracts/ethereum-1/0x44fbf73a97cf50640a3208b883f810f730d80c2b/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x9ce2eb...908545`](./contracts/ethereum-1/0x9ce2eb5871adf6444004c3182960a4f5db908545/) | ⚠️ Unaudited |
| Quine | unknown | ethereum | n/a | [`0x0e0c6a...48e2b5`](./contracts/ethereum-1/0x0e0c6a8575d0cc3e9b65eb3259b52e2eb348e2b5/) | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | [`0x2c8ac1...5b8c4e`](./contracts/ethereum-1/0x2c8ac1173998ca1a06a69bf12cbb8155bd5b8c4e/) | ⚠️ Unaudited |
| Sai2Dai | unknown | ethereum | n/a | [`0x02c9e4...e6fdb8`](./contracts/ethereum-1/0x02c9e4174e9d23bb7619c83ef5f771fcb1e6fdb8/) | ⚠️ Unaudited |
| ShareToken | unknown | ethereum | n/a | [`0x4a8c31...12f7a4`](./contracts/ethereum-1/0x4a8c31600da5aa5b850324baeb6a3205f312f7a4/) | ⚠️ Unaudited |
| ShortCERC20Order | unknown | ethereum | n/a | [`0x52bd4a...01f855`](./contracts/ethereum-1/0x52bd4ad7525020081d5583da1993d8b8ab01f855/) | ⚠️ Unaudited |
| ShortCEtherOrder | unknown | ethereum | n/a | [`0x145712...4fea0d`](./contracts/ethereum-1/0x14571294127e33893be2ac907855f451bf4fea0d/) | ⚠️ Unaudited |
| StakingERC20Wrapper | unknown | ethereum | n/a | [`0xe00593...3828c1`](./contracts/ethereum-1/0xe00593040323cf68ea08c33bc8bff7695c3828c1/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x1fdd49...a09444`](./contracts/ethereum-1/0x1fdd4960df99aacc0f69d0f30e829ac77aa09444/) | ⚠️ Unaudited |
| TimelockController | unknown | polygon | n/a | [`0x83e475...eeadda`](./contracts/polygon-137/0x83e4758bea7c6c2e2b5ed4de9d1cc9e94deeadda/) | ⚠️ Unaudited |
| TREE | unknown | ethereum | n/a | [`0x278533...347517`](./contracts/ethereum-1/0x278533460acb4641bb32de7614a70d9682347517/) | ⚠️ Unaudited |
| TREERebaser | unknown | ethereum | n/a | [`0x504397...46c455`](./contracts/ethereum-1/0x504397f81b1676710815f09cc3f3e1f3ee46c455/) | ⚠️ Unaudited |
| TREEReserve | unknown | ethereum | n/a | [`0x390a8f...165d17`](./contracts/ethereum-1/0x390a8fb3fcff0bb0fcf1f91c7e36db9c53165d17/) | ⚠️ Unaudited |
| TREERewards | unknown | ethereum | n/a | [`0x0dfa38...860ce5`](./contracts/ethereum-1/0x0dfa38393f4c1c1250111f13a1bb6483e7860ce5/) | ⚠️ Unaudited |
| TREERewardsFactory | unknown | ethereum | n/a | [`0x35634e...6a5338`](./contracts/ethereum-1/0x35634efd0cecee7293ab95ba48cadba4ba6a5338/) | ⚠️ Unaudited |
| Vesting | unknown | ethereum | n/a | [`0x8943eb...18e0e7`](./contracts/ethereum-1/0x8943eb8f104bcf826910e7d2f4d59edfe018e0e7/) | ⚠️ Unaudited |
| Vesting02 | unknown | ethereum | n/a | [`0x137c9a...095cc8`](./contracts/ethereum-1/0x137c9a85cde23318e3fa8d4e486cd62f46095cc8/) | ⚠️ Unaudited |
| Vesting03 | unknown | ethereum | n/a | [`0xa907c7...07eb4b`](./contracts/ethereum-1/0xa907c7c3d13248f08a3fb52beb6d1c079507eb4b/) | ⚠️ Unaudited |
| WrapperFactory | unknown | ethereum | n/a | [`0x57c894...b99954`](./contracts/ethereum-1/0x57c894b3dc580f6176f5ccd1de2d9ed9ceb99954/) | ⚠️ Unaudited |
| xMPH | unknown | ethereum | n/a | [`0x1702f1...8f689b`](./contracts/ethereum-1/0x1702f18c1173b791900f81ebae59b908da8f689b/) | ⚠️ Unaudited |
| YVaultMarket | unknown | ethereum | n/a | [`0x08cc88...35fb70`](./contracts/ethereum-1/0x08cc88c379911bf6d778081a078b48bd7035fb70/) | ⚠️ Unaudited |
| ZeroCouponBond | unknown | ethereum | n/a | [`0x27e405...94c8b2`](./contracts/ethereum-1/0x27e40571efef08709655b900c6a4efa89594c8b2/) | ⚠️ Unaudited |
| ZeroCouponBondFactory | unknown | ethereum | n/a | [`0xa52333...18eec1`](./contracts/ethereum-1/0xa523330532bff11df1cb1bdf585379dc0b18eec1/) | ⚠️ Unaudited |

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
| [Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/88mph.pdf) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Code423n4](https://code4rena.com/reports/2021-05-88mph) | Code4rena | Contest | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [PeckShield (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-88mphv3-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/peckshield-audit-report-88mph-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Certik](https://skynet.certik.com/projects/88mph) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/peckshield-audit-report-88mph%20Zero%20Coupon%20Bonds-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/trailofbits/publications/f24432d47b1bd6b5dd3b1a1a98997b12e37dfa6e/reviews/88mph.pdf) | Defi Safety | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0x-protocol.pdf](https://github.com/trailofbits/publications/blob/master/reviews/0x-protocol.pdf) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DIP001_audit_report_2020_03_en_1_0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/DIP001_audit_report_2020_03_en_1_0.pdf) | PeckShield | Audit | 2020-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 75 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
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
- [19391] DIP001_audit_report_2020_03_en_1_0.pdf

Fork inheritance lineage and inherited audits are included when available.
